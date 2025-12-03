@interface SBContinuousExposeIdentifiersChangedModifierEvent
- (SBContinuousExposeIdentifiersChangedModifierEvent)initWithPreviousContinuousExposeIdentifiersInSwitcher:(id)switcher previousContinuousExposeIdentifiersInStrip:(id)strip transitioningFromAppLayout:(id)layout transitioningToAppLayout:(id)appLayout animated:(BOOL)animated gestureInitiated:(BOOL)initiated;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBContinuousExposeIdentifiersChangedModifierEvent

- (SBContinuousExposeIdentifiersChangedModifierEvent)initWithPreviousContinuousExposeIdentifiersInSwitcher:(id)switcher previousContinuousExposeIdentifiersInStrip:(id)strip transitioningFromAppLayout:(id)layout transitioningToAppLayout:(id)appLayout animated:(BOOL)animated gestureInitiated:(BOOL)initiated
{
  switcherCopy = switcher;
  stripCopy = strip;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v25.receiver = self;
  v25.super_class = SBContinuousExposeIdentifiersChangedModifierEvent;
  v19 = [(SBWindowingModifierActivity *)&v25 init];
  if (v19)
  {
    if (switcherCopy)
    {
      if (stripCopy)
      {
LABEL_4:
        v20 = [switcherCopy copy];
        previousContinuousExposeIdentifiersInSwitcher = v19->_previousContinuousExposeIdentifiersInSwitcher;
        v19->_previousContinuousExposeIdentifiersInSwitcher = v20;

        v22 = [stripCopy copy];
        previousContinuousExposeIdentifiersInStrip = v19->_previousContinuousExposeIdentifiersInStrip;
        v19->_previousContinuousExposeIdentifiersInStrip = v22;

        objc_storeStrong(&v19->_transitioningFromAppLayout, layout);
        objc_storeStrong(&v19->_transitioningToAppLayout, appLayout);
        v19->_animated = animated;
        v19->_gestureInitiated = initiated;
        goto LABEL_5;
      }
    }

    else
    {
      [SBContinuousExposeIdentifiersChangedModifierEvent initWithPreviousContinuousExposeIdentifiersInSwitcher:a2 previousContinuousExposeIdentifiersInStrip:v19 transitioningFromAppLayout:? transitioningToAppLayout:? animated:? gestureInitiated:?];
      if (stripCopy)
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

- (id)copyWithZone:(_NSZone *)zone
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

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = SBContinuousExposeIdentifiersChangedModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v11 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:self->_previousContinuousExposeIdentifiersInStrip withName:@"previousContinuousExposeIdentifiersInStrip"];
  v6 = [v4 appendObject:self->_previousContinuousExposeIdentifiersInSwitcher withName:@"previousContinuousExposeIdentifiersInSwitcher"];
  succinctDescription = [(SBAppLayout *)self->_transitioningFromAppLayout succinctDescription];
  [v4 appendString:succinctDescription withName:@"transitioningFromAppLayout"];

  succinctDescription2 = [(SBAppLayout *)self->_transitioningToAppLayout succinctDescription];
  [v4 appendString:succinctDescription2 withName:@"transitioningToAppLayout"];

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