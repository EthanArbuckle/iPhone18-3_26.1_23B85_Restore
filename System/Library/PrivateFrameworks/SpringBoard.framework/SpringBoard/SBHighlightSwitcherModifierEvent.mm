@interface SBHighlightSwitcherModifierEvent
- (SBHighlightSwitcherModifierEvent)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 phase:(unint64_t)a5 hover:(BOOL)a6 pencilHover:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBHighlightSwitcherModifierEvent

- (SBHighlightSwitcherModifierEvent)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 phase:(unint64_t)a5 hover:(BOOL)a6 pencilHover:(BOOL)a7
{
  v13 = a4;
  v17.receiver = self;
  v17.super_class = SBHighlightSwitcherModifierEvent;
  v14 = [(SBWindowingModifierActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_layoutRole = a3;
    objc_storeStrong(&v14->_appLayout, a4);
    v15->_phase = a5;
    v15->_hoverEvent = a6;
    v15->_pencilHoverEvent = a7;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SBHighlightSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:a3];
  v4[5] = self->_layoutRole;
  v5 = [(SBAppLayout *)self->_appLayout copy];
  v6 = v4[6];
  v4[6] = v5;

  v4[7] = self->_phase;
  *(v4 + 32) = self->_hoverEvent;
  *(v4 + 33) = self->_pencilHoverEvent;
  return v4;
}

@end