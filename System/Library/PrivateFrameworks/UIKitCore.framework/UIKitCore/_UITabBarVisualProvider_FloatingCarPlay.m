@interface _UITabBarVisualProvider_FloatingCarPlay
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)intrinsicContentSizeGivenSize:(CGSize)result;
- (_TtC5UIKit39_UITabBarVisualProvider_FloatingCarPlay)init;
- (_TtC5UIKit39_UITabBarVisualProvider_FloatingCarPlay)initWithTabBar:(id)a3;
@end

@implementation _UITabBarVisualProvider_FloatingCarPlay

- (CGSize)intrinsicContentSizeGivenSize:(CGSize)result
{
  v3 = 44.0;
  result.height = v3;
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64B710;
  *(inited + 32) = a4;
  v8 = a4;
  v9 = a3;
  v10 = self;
  sub_188FBF708(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_188E4059C();
  sub_188E405E8();
  v11 = sub_18A4A7798();

  LOBYTE(self) = _UITouchesContainsTouchFromCarTouchpad(v11);

  return self ^ 1;
}

- (_TtC5UIKit39_UITabBarVisualProvider_FloatingCarPlay)initWithTabBar:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for _UITabBarVisualProvider_FloatingCarPlay();
  return [(_UITabBarVisualProvider_Floating *)&v5 initWithTabBar:a3];
}

- (_TtC5UIKit39_UITabBarVisualProvider_FloatingCarPlay)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UITabBarVisualProvider_FloatingCarPlay();
  return [(_UITabBarVisualProvider_Floating *)&v3 init];
}

@end