@interface SBOverrideContinuousExposeIdentifiersSwitcherModifier
- (SBOverrideContinuousExposeIdentifiersSwitcherModifier)initWithContinuousExposeIdentifiersInSwitcher:(id)switcher continuousExposeIdentifiersInStrip:(id)strip;
- (id)continuousExposeIdentifiersInStrip;
- (id)continuousExposeIdentifiersInSwitcher;
- (void)didMoveToParentModifier:(id)modifier;
- (void)setState:(int64_t)state;
@end

@implementation SBOverrideContinuousExposeIdentifiersSwitcherModifier

- (SBOverrideContinuousExposeIdentifiersSwitcherModifier)initWithContinuousExposeIdentifiersInSwitcher:(id)switcher continuousExposeIdentifiersInStrip:(id)strip
{
  switcherCopy = switcher;
  stripCopy = strip;
  v14.receiver = self;
  v14.super_class = SBOverrideContinuousExposeIdentifiersSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v14 init];
  if (v8)
  {
    v9 = [switcherCopy copy];
    overrideContinuousExposeIdentifiersInSwitcher = v8->_overrideContinuousExposeIdentifiersInSwitcher;
    v8->_overrideContinuousExposeIdentifiersInSwitcher = v9;

    v11 = [stripCopy copy];
    overrideContinuousExposeIdentifiersInStrip = v8->_overrideContinuousExposeIdentifiersInStrip;
    v8->_overrideContinuousExposeIdentifiersInStrip = v11;
  }

  return v8;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v5.receiver = self;
  v5.super_class = SBOverrideContinuousExposeIdentifiersSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (modifier)
  {
    [(SBOverrideContinuousExposeIdentifiersSwitcherModifier *)self newContinuousExposeIdentifiersGenerationCount];
  }
}

- (void)setState:(int64_t)state
{
  state = [(SBChainableModifier *)self state];
  if (state == 1 && state != 1)
  {
    parentModifier = [(SBChainableModifier *)self parentModifier];
    if (parentModifier)
    {

LABEL_6:
      [(SBOverrideContinuousExposeIdentifiersSwitcherModifier *)self newContinuousExposeIdentifiersGenerationCount];
      goto LABEL_7;
    }

    delegate = [(SBChainableModifier *)self delegate];

    if (delegate)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  v8.receiver = self;
  v8.super_class = SBOverrideContinuousExposeIdentifiersSwitcherModifier;
  [(SBChainableModifier *)&v8 setState:state];
}

- (id)continuousExposeIdentifiersInSwitcher
{
  overrideContinuousExposeIdentifiersInSwitcher = self->_overrideContinuousExposeIdentifiersInSwitcher;
  if (overrideContinuousExposeIdentifiersInSwitcher)
  {
    continuousExposeIdentifiersInSwitcher = overrideContinuousExposeIdentifiersInSwitcher;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBOverrideContinuousExposeIdentifiersSwitcherModifier;
    continuousExposeIdentifiersInSwitcher = [(SBOverrideContinuousExposeIdentifiersSwitcherModifier *)&v5 continuousExposeIdentifiersInSwitcher];
  }

  return continuousExposeIdentifiersInSwitcher;
}

- (id)continuousExposeIdentifiersInStrip
{
  overrideContinuousExposeIdentifiersInStrip = self->_overrideContinuousExposeIdentifiersInStrip;
  if (overrideContinuousExposeIdentifiersInStrip)
  {
    continuousExposeIdentifiersInStrip = overrideContinuousExposeIdentifiersInStrip;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBOverrideContinuousExposeIdentifiersSwitcherModifier;
    continuousExposeIdentifiersInStrip = [(SBOverrideContinuousExposeIdentifiersSwitcherModifier *)&v5 continuousExposeIdentifiersInStrip];
  }

  return continuousExposeIdentifiersInStrip;
}

@end