@interface SBSlideOverEdgeProtectTongueSwitcherModifierEvent
- (SBSlideOverEdgeProtectTongueSwitcherModifierEvent)initWithTonguePresented:(BOOL)a3 edge:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBSlideOverEdgeProtectTongueSwitcherModifierEvent

- (SBSlideOverEdgeProtectTongueSwitcherModifierEvent)initWithTonguePresented:(BOOL)a3 edge:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SBSlideOverEdgeProtectTongueSwitcherModifierEvent;
  result = [(SBWindowingModifierActivity *)&v7 init];
  if (result)
  {
    result->_tonguePresented = a3;
    result->_edge = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBSlideOverEdgeProtectTongueSwitcherModifierEvent alloc];
  tonguePresented = self->_tonguePresented;
  edge = self->_edge;

  return [(SBSlideOverEdgeProtectTongueSwitcherModifierEvent *)v4 initWithTonguePresented:tonguePresented edge:edge];
}

@end