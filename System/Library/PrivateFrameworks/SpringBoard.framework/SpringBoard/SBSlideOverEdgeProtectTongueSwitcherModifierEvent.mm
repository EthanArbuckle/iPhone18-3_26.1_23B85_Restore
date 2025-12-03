@interface SBSlideOverEdgeProtectTongueSwitcherModifierEvent
- (SBSlideOverEdgeProtectTongueSwitcherModifierEvent)initWithTonguePresented:(BOOL)presented edge:(unint64_t)edge;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBSlideOverEdgeProtectTongueSwitcherModifierEvent

- (SBSlideOverEdgeProtectTongueSwitcherModifierEvent)initWithTonguePresented:(BOOL)presented edge:(unint64_t)edge
{
  v7.receiver = self;
  v7.super_class = SBSlideOverEdgeProtectTongueSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v7 init];
  if (result)
  {
    result->_tonguePresented = presented;
    result->_edge = edge;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBSlideOverEdgeProtectTongueSwitcherModifierEvent alloc];
  tonguePresented = self->_tonguePresented;
  edge = self->_edge;

  return [(SBSlideOverEdgeProtectTongueSwitcherModifierEvent *)v4 initWithTonguePresented:tonguePresented edge:edge];
}

@end