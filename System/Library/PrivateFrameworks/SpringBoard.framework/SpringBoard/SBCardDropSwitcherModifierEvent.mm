@interface SBCardDropSwitcherModifierEvent
- (SBCardDropSwitcherModifierEvent)initWithPhase:(unint64_t)a3 context:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBCardDropSwitcherModifierEvent

- (SBCardDropSwitcherModifierEvent)initWithPhase:(unint64_t)a3 context:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBCardDropSwitcherModifierEvent;
  v8 = [(SBWindowingModifierActivity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_phase = a3;
    objc_storeStrong(&v8->_context, a4);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SBCardDropSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:a3];
  v4[5] = self->_phase;
  v5 = [(SBSwitcherDropRegionContext *)self->_context copy];
  v6 = v4[4];
  v4[4] = v5;

  return v4;
}

@end