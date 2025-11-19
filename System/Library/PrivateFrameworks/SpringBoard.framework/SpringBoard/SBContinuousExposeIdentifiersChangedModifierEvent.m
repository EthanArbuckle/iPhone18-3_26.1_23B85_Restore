@interface SBContinuousExposeIdentifiersChangedModifierEvent
- (SBContinuousExposeIdentifiersChangedModifierEvent)initWithPreviousContinuousExposeIdentifiersInSwitcher:(id)a3 previousContinuousExposeIdentifiersInStrip:(id)a4 transitioningFromAppLayout:(id)a5 transitioningToAppLayout:(id)a6 animated:(BOOL)a7 gestureInitiated:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBContinuousExposeIdentifiersChangedModifierEvent

- (SBContinuousExposeIdentifiersChangedModifierEvent)initWithPreviousContinuousExposeIdentifiersInSwitcher:(id)a3 previousContinuousExposeIdentifiersInStrip:(id)a4 transitioningFromAppLayout:(id)a5 transitioningToAppLayout:(id)a6 animated:(BOOL)a7 gestureInitiated:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v25.receiver = self;
  v25.super_class = SBContinuousExposeIdentifiersChangedModifierEvent;
  v19 = [(SBWindowingModifierActivity *)&v25 init];
  if (v19)
  {
    if (v15)
    {
      if (v16)
      {
LABEL_4:
        v20 = [v15 copy];
        previousContinuousExposeIdentifiersInSwitcher = v19->_previousContinuousExposeIdentifiersInSwitcher;
        v19->_previousContinuousExposeIdentifiersInSwitcher = v20;

        v22 = [v16 copy];
        previousContinuousExposeIdentifiersInStrip = v19->_previousContinuousExposeIdentifiersInStrip;
        v19->_previousContinuousExposeIdentifiersInStrip = v22;

        objc_storeStrong(&v19->_transitioningFromAppLayout, a5);
        objc_storeStrong(&v19->_transitioningToAppLayout, a6);
        v19->_animated = a7;
        v19->_gestureInitiated = a8;
        goto LABEL_5;
      }
    }

    else
    {
      [SBContinuousExposeIdentifiersChangedModifierEvent initWithPreviousContinuousExposeIdentifiersInSwitcher:a2 previousContinuousExposeIdentifiersInStrip:v19 transitioningFromAppLayout:? transitioningToAppLayout:? animated:? gestureInitiated:?];
      if (v16)
      {
        goto LABEL_4;
      }
    }

    [SBContinuousExposeIdentifiersChangedModifierEvent initWithPreviousContinuousExposeIdentifiersInSwitcher:a2 previousContinuousExposeIdentifiersInStrip:v19 transitioningFromAppLayout:? transitioningToAppLayout:? animated:? gestureInitiated:?];
    goto LABEL_4;
  }

LABEL_5:

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  previousContinuousExposeIdentifiersInSwitcher = self->_previousContinuousExposeIdentifiersInSwitcher;
  previousContinuousExposeIdentifiersInStrip = self->_previousContinuousExposeIdentifiersInStrip;
  transitioningFromAppLayout = self->_transitioningFromAppLayout;
  transitioningToAppLayout = self->_transitioningToAppLayout;
  animated = self->_animated;
  gestureInitiated = self->_gestureInitiated;

  return [v4 initWithPreviousContinuousExposeIdentifiersInSwitcher:previousContinuousExposeIdentifiersInSwitcher previousContinuousExposeIdentifiersInStrip:previousContinuousExposeIdentifiersInStrip transitioningFromAppLayout:transitioningFromAppLayout transitioningToAppLayout:transitioningToAppLayout animated:animated gestureInitiated:gestureInitiated];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBContinuousExposeIdentifiersChangedModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v11 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_previousContinuousExposeIdentifiersInStrip withName:@"previousContinuousExposeIdentifiersInStrip"];
  v6 = [v4 appendObject:self->_previousContinuousExposeIdentifiersInSwitcher withName:@"previousContinuousExposeIdentifiersInSwitcher"];
  v7 = [(SBAppLayout *)self->_transitioningFromAppLayout succinctDescription];
  [v4 appendString:v7 withName:@"transitioningFromAppLayout"];

  v8 = [(SBAppLayout *)self->_transitioningToAppLayout succinctDescription];
  [v4 appendString:v8 withName:@"transitioningToAppLayout"];

  v9 = [v4 appendBool:self->_gestureInitiated withName:@"gestureInitiated"];

  return v4;
}

- (void)initWithPreviousContinuousExposeIdentifiersInSwitcher:(uint64_t)a1 previousContinuousExposeIdentifiersInStrip:(uint64_t)a2 transitioningFromAppLayout:transitioningToAppLayout:animated:gestureInitiated:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeIdentifiersChangedModifierEvent.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"previousContinuousExposeIdentifiersInSwitcher"}];
}

- (void)initWithPreviousContinuousExposeIdentifiersInSwitcher:(uint64_t)a1 previousContinuousExposeIdentifiersInStrip:(uint64_t)a2 transitioningFromAppLayout:transitioningToAppLayout:animated:gestureInitiated:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeIdentifiersChangedModifierEvent.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"previousContinuousExposeIdentifiersInStrip"}];
}

@end