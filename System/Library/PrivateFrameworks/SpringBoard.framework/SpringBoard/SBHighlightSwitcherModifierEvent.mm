@interface SBHighlightSwitcherModifierEvent
- (SBHighlightSwitcherModifierEvent)initWithLayoutRole:(int64_t)role inAppLayout:(id)layout phase:(unint64_t)phase hover:(BOOL)hover pencilHover:(BOOL)pencilHover;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBHighlightSwitcherModifierEvent

- (SBHighlightSwitcherModifierEvent)initWithLayoutRole:(int64_t)role inAppLayout:(id)layout phase:(unint64_t)phase hover:(BOOL)hover pencilHover:(BOOL)pencilHover
{
  layoutCopy = layout;
  v17.receiver = self;
  v17.super_class = SBHighlightSwitcherModifierEvent;
  v14 = [(SBWindowingModifierActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_layoutRole = role;
    objc_storeStrong(&v14->_appLayout, layout);
    v15->_phase = phase;
    v15->_hoverEvent = hover;
    v15->_pencilHoverEvent = pencilHover;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SBHighlightSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:zone];
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