@interface SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent
- (SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent)initWithTonguePresented:(BOOL)presented;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent

- (SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent)initWithTonguePresented:(BOOL)presented
{
  v5.receiver = self;
  v5.super_class = SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v5 init];
  if (result)
  {
    result->_tonguePresented = presented;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent alloc];
  tonguePresented = self->_tonguePresented;

  return [(SBContinuousExposeStripEdgeProtectTongueSwitcherModifierEvent *)v4 initWithTonguePresented:tonguePresented];
}

@end