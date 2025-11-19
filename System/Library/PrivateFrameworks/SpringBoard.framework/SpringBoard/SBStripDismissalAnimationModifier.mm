@interface SBStripDismissalAnimationModifier
- (id)animationAttributesForItem:(id)a3;
- (id)topMostItems;
- (void)timerFired:(id)a3;
- (void)willBegin;
@end

@implementation SBStripDismissalAnimationModifier

- (void)willBegin
{
  v3 = [(SBStripDismissalAnimationModifier *)self strip];
  v4 = [v3 appLayoutsInStrip];
  v5 = [v4 bs_flatten];
  v6 = [v5 bs_set];
  appLayoutsInStrip = self->_appLayoutsInStrip;
  self->_appLayoutsInStrip = v6;

  v8 = [(SBStripDismissalAnimationModifier *)self switcherSettings];
  v9 = [v8 animationSettings];
  v10 = [v9 layoutSettings];
  [v10 settlingDuration];
  v12 = v11 * 0.6;

  v13 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBStripAnimationCompleteReason" reason:v12];
  [(SBWindowingModifier *)self appendResponse:v13];
}

- (void)timerFired:(id)a3
{
  v4 = [a3 reason];
  v5 = [v4 isEqualToString:@"SBStripAnimationCompleteReason"];

  if (v5)
  {

    [(SBWindowingModifier *)self complete];
  }
}

- (id)topMostItems
{
  v3 = [(SBStripDismissalAnimationModifier *)self strip];
  v4 = [v3 appLayoutsInStrip];
  v5 = [v4 bs_flatten];
  v9.receiver = self;
  v9.super_class = SBStripDismissalAnimationModifier;
  v6 = [(SBWindowingModifier *)&v9 topMostItems];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (id)animationAttributesForItem:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBStripDismissalAnimationModifier;
  v5 = [(SBWindowingModifier *)&v10 animationAttributesForItem:v4];
  v6 = [v5 mutableCopy];

  if ([v4 isAppLayout])
  {
    appLayoutsInStrip = self->_appLayoutsInStrip;
    v8 = [v4 appLayout];
    LODWORD(appLayoutsInStrip) = [(NSSet *)appLayoutsInStrip containsObject:v8];

    if (appLayoutsInStrip)
    {
      [v6 setUpdateMode:3];
    }
  }

  return v6;
}

@end