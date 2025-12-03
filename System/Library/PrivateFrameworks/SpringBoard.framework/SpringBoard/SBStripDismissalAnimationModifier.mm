@interface SBStripDismissalAnimationModifier
- (id)animationAttributesForItem:(id)item;
- (id)topMostItems;
- (void)timerFired:(id)fired;
- (void)willBegin;
@end

@implementation SBStripDismissalAnimationModifier

- (void)willBegin
{
  strip = [(SBStripDismissalAnimationModifier *)self strip];
  appLayoutsInStrip = [strip appLayoutsInStrip];
  bs_flatten = [appLayoutsInStrip bs_flatten];
  bs_set = [bs_flatten bs_set];
  appLayoutsInStrip = self->_appLayoutsInStrip;
  self->_appLayoutsInStrip = bs_set;

  switcherSettings = [(SBStripDismissalAnimationModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v12 = v11 * 0.6;

  v13 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBStripAnimationCompleteReason" reason:v12];
  [(SBWindowingModifier *)self appendResponse:v13];
}

- (void)timerFired:(id)fired
{
  reason = [fired reason];
  v5 = [reason isEqualToString:@"SBStripAnimationCompleteReason"];

  if (v5)
  {

    [(SBWindowingModifier *)self complete];
  }
}

- (id)topMostItems
{
  strip = [(SBStripDismissalAnimationModifier *)self strip];
  appLayoutsInStrip = [strip appLayoutsInStrip];
  bs_flatten = [appLayoutsInStrip bs_flatten];
  v9.receiver = self;
  v9.super_class = SBStripDismissalAnimationModifier;
  topMostItems = [(SBWindowingModifier *)&v9 topMostItems];
  v7 = [bs_flatten arrayByAddingObjectsFromArray:topMostItems];

  return v7;
}

- (id)animationAttributesForItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = SBStripDismissalAnimationModifier;
  v5 = [(SBWindowingModifier *)&v10 animationAttributesForItem:itemCopy];
  v6 = [v5 mutableCopy];

  if ([itemCopy isAppLayout])
  {
    appLayoutsInStrip = self->_appLayoutsInStrip;
    appLayout = [itemCopy appLayout];
    LODWORD(appLayoutsInStrip) = [(NSSet *)appLayoutsInStrip containsObject:appLayout];

    if (appLayoutsInStrip)
    {
      [v6 setUpdateMode:3];
    }
  }

  return v6;
}

@end