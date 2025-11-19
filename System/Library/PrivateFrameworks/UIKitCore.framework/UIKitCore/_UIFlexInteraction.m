@interface _UIFlexInteraction
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)initialTouchLocation;
- (CGPoint)internalTranslation;
- (CGPoint)translation;
- (UIView)_view;
- (UIView)view;
- (_UIFlexInteractionDelegate)delegate;
- (_UIFlexInteractionPanGestureRecognizer)panGesture;
- (unint64_t)resolvedActivationMode;
- (void)_outermostLayerDidChange:(id)a3;
- (void)_willMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)activateIfPermitted;
- (void)deactivate;
- (void)didMoveToView:(id)a3;
- (void)handlePan:(id)a3;
- (void)hideGlow;
- (void)moveGlowTo:(CGPoint)a3 shouldDissipate:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setPanGesture:(id)a3;
- (void)setPreferredActivationMode:(unint64_t)a3;
- (void)setUpdateLink:(id)a3;
- (void)showGlowAt:(CGPoint)a3;
- (void)updateFlex;
- (void)updateWithInteractionPulse;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIFlexInteraction

- (unint64_t)resolvedActivationMode
{
  v2 = self;
  if ([(_UIFlexInteraction *)v2 preferredActivationMode])
  {
    v3 = [(_UIFlexInteraction *)v2 preferredActivationMode];
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (UIView)view
{
  v2 = [(_UIFlexInteraction *)self _view];

  return v2;
}

- (UIView)_view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_UIFlexInteractionPanGestureRecognizer)panGesture
{
  v2 = self;
  v3 = sub_188B0F6F8();

  return v3;
}

- (void)willMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188B0F7E8(a3);
}

- (void)setUpdateLink:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIFlexInteraction_updateLink);
  *(self + OBJC_IVAR____UIFlexInteraction_updateLink) = a3;
  v3 = a3;
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_188B0FBB8(a3);
}

- (void)_willMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_188B74F6C(a3, a4);
}

- (void)setPreferredActivationMode:(unint64_t)a3
{
  v4 = self;
  sub_188B753F4(a3);
}

- (void)deactivate
{
  v2 = self;
  sub_188EA73B4();
}

- (void)setDelegate:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIFlexInteraction_animationContext);
  swift_unknownObjectRetain();
  v5 = self;
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
  v3 = self;
  os_unfair_lock_lock(v2 + 12);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v2 + 12);

  return Strong;
}

- (void)activateIfPermitted
{
  v2 = self;
  sub_188EA71E4();
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_188D76558(v4);

  return self & 1;
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188D7F46C(v4);
}

- (void)showGlowAt:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_188D768F0(x, y);
}

- (void)moveGlowTo:(CGPoint)a3 shouldDissipate:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v7 = self;
  sub_188D76F28(a4, x, y);
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
  v2 = self;
  sub_188D8002C();
}

- (void)setPanGesture:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIFlexInteraction____lazy_storage___panGesture);
  *(self + OBJC_IVAR____UIFlexInteraction____lazy_storage___panGesture) = a3;
  v3 = a3;
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
  v2 = self;
  sub_188EA7518();
}

- (void)updateWithInteractionPulse
{
  v2 = self;
  sub_188EA827C();
}

- (void)_outermostLayerDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 _outermostLayer];
  v7 = *(v5 + OBJC_IVAR____UIFlexInteraction_animationContext);
  os_unfair_lock_lock(v7 + 12);
  sub_188EA97A8(&v7[4]);
  os_unfair_lock_unlock(v7 + 12);
}

@end