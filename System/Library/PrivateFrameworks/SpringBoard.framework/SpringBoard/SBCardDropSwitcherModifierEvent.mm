@interface SBCardDropSwitcherModifierEvent
- (SBCardDropSwitcherModifierEvent)initWithPhase:(unint64_t)phase context:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBCardDropSwitcherModifierEvent

- (SBCardDropSwitcherModifierEvent)initWithPhase:(unint64_t)phase context:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = SBCardDropSwitcherModifierEvent;
  v8 = [(SBWindowingModifierActivity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_phase = phase;
    objc_storeStrong(&v8->_context, context);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SBCardDropSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:zone];
  v4[5] = self->_phase;
  v5 = [(SBSwitcherDropRegionContext *)self->_context copy];
  v6 = v4[4];
  v4[4] = v5;

  return v4;
}

@end