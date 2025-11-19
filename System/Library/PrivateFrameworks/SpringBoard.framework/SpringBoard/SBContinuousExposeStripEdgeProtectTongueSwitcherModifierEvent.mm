@interface SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent
- (SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent)initWithTonguePresented:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent

- (SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent)initWithTonguePresented:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v5 init];
  if (result)
  {
    result->_tonguePresented = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent alloc];
  tonguePresented = self->_tonguePresented;

  return [(SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent *)v4 initWithTonguePresented:tonguePresented];
}

@end