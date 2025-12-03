@interface _UIFlexInteraction
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)initialTouchLocation;
- (CGPoint)internalTranslation;
- (CGPoint)translation;
- (UIView)_view;
- (UIView)view;
- (_UIFlexInteractionDelegate)delegate;
- (_UIFlexInteractionPanGestureRecognizer)panGesture;
- (unint64_t)resolvedActivationMode;
- (void)_outermostLayerDidChange:(id)change;
- (void)_willMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)activateIfPermitted;
- (void)deactivate;
- (void)didMoveToView:(id)view;
- (void)handlePan:(id)pan;
- (void)hideGlow;
- (void)moveGlowTo:(CGPoint)to shouldDissipate:(BOOL)dissipate;
- (void)setDelegate:(id)delegate;
- (void)setPanGesture:(id)gesture;
- (void)setPreferredActivationMode:(unint64_t)mode;
- (void)setUpdateLink:(id)link;
- (void)showGlowAt:(CGPoint)at;
- (void)updateFlex;
- (void)updateWithInteractionPulse;
- (void)willMoveToView:(id)view;
@end

@implementation _UIFlexInteraction

- (unint64_t)resolvedActivationMode
{
  selfCopy = self;
  if ([(_UIFlexInteraction *)selfCopy preferredActivationMode])
  {
    preferredActivationMode = [(_UIFlexInteraction *)selfCopy preferredActivationMode];
  }

  else
  {
    preferredActivationMode = 2;
  }

  return preferredActivationMode;
}

- (UIView)view
{
  _view = [(_UIFlexInteraction *)self _view];

  return _view;
}

- (UIView)_view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UIFlexInteractionPanGestureRecognizer)panGesture
{
  selfCopy = self;
  v3 = sub_188B0F6F8();

  return v3;
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188B0F7E8(view);
}

- (void)setUpdateLink:(id)link
{
  v4 = *(self + OBJC_IVAR____UIFlexInteraction_updateLink);
  *(self + OBJC_IVAR____UIFlexInteraction_updateLink) = link;
  linkCopy = link;
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_188B0FBB8(view);
}

- (void)_willMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  selfCopy = self;
  sub_188B74F6C(window, toWindow);
}

- (void)setPreferredActivationMode:(unint64_t)mode
{
  selfCopy = self;
  sub_188B753F4(mode);
}

- (void)deactivate
{
  selfCopy = self;
  sub_188EA73B4();
}

- (void)setDelegate:(id)delegate
{
  v4 = *(self + OBJC_IVAR____UIFlexInteraction_animationContext);
  swift_unknownObjectRetain();
  selfCopy = self;
  os_unfair_lock_lock(v4 + 12);
  sub_188EA9B00();
  os_unfair_lock_unlock(v4 + 12);

  swift_unknownObjectRelease();
}

- (CGPoint)translation
{
  v2 = *(self + OBJC_IVAR____UIFlexInteraction_translation);
  v3 = *(self + OBJC_IVAR____UIFlexInteraction_translation + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (_UIFlexInteractionDelegate)delegate
{
  v2 = *(self + OBJC_IVAR____UIFlexInteraction_animationContext);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 12);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v2 + 12);

  return Strong;
}

- (void)activateIfPermitted
{
  selfCopy = self;
  sub_188EA71E4();
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_188D76558(beginCopy);

  return self & 1;
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  sub_188D7F46C(panCopy);
}

- (void)showGlowAt:(CGPoint)at
{
  y = at.y;
  x = at.x;
  selfCopy = self;
  sub_188D768F0(x, y);
}

- (void)moveGlowTo:(CGPoint)to shouldDissipate:(BOOL)dissipate
{
  y = to.y;
  x = to.x;
  selfCopy = self;
  sub_188D76F28(dissipate, x, y);
}

- (CGPoint)initialTouchLocation
{
  v2 = *(self + OBJC_IVAR____UIFlexInteraction_initialTouchLocation);
  v3 = *(self + OBJC_IVAR____UIFlexInteraction_initialTouchLocation + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)hideGlow
{
  selfCopy = self;
  sub_188D8002C();
}

- (void)setPanGesture:(id)gesture
{
  v4 = *(self + OBJC_IVAR____UIFlexInteraction____lazy_storage___panGesture);
  *(self + OBJC_IVAR____UIFlexInteraction____lazy_storage___panGesture) = gesture;
  gestureCopy = gesture;
}

- (CGPoint)internalTranslation
{
  v2 = *(self + OBJC_IVAR____UIFlexInteraction_internalTranslation);
  v3 = *(self + OBJC_IVAR____UIFlexInteraction_internalTranslation + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)updateFlex
{
  selfCopy = self;
  sub_188EA7518();
}

- (void)updateWithInteractionPulse
{
  selfCopy = self;
  sub_188EA827C();
}

- (void)_outermostLayerDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  _outermostLayer = [changeCopy _outermostLayer];
  v7 = *(selfCopy + OBJC_IVAR____UIFlexInteraction_animationContext);
  os_unfair_lock_lock(v7 + 12);
  sub_188EA97A8(&v7[4]);
  os_unfair_lock_unlock(v7 + 12);
}

@end