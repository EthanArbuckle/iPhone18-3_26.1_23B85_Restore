@interface SearchUIBasicLayerAnimation
+ (id)blurFrom:(double)from to:(double)to;
+ (id)horizontalScaleFrom:(double)from to:(double)to;
+ (id)opacityFrom:(double)from to:(double)to;
+ (id)scaleFrom:(double)from to:(double)to;
+ (id)verticalScaleFrom:(double)from to:(double)to;
- (_TtC8SearchUI27SearchUIBasicLayerAnimation)init;
@end

@implementation SearchUIBasicLayerAnimation

+ (id)opacityFrom:(double)from to:(double)to
{
  initWithDouble_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  initWithDouble_2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = type metadata accessor for SearchUIBasicLayerAnimation();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_keyPath];
  *v9 = 0x7974696361706FLL;
  *(v9 + 1) = 0xE700000000000000;
  *&v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_fromValue] = initWithDouble_;
  *&v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_toValue] = initWithDouble_2;
  v12.receiver = v8;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

+ (id)blurFrom:(double)from to:(double)to
{
  initWithDouble_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  initWithDouble_2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = type metadata accessor for SearchUIBasicLayerAnimation();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_keyPath];
  *v9 = 0xD000000000000020;
  *(v9 + 1) = 0x80000001DA279700;
  *&v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_fromValue] = initWithDouble_;
  *&v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_toValue] = initWithDouble_2;
  v12.receiver = v8;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

+ (id)verticalScaleFrom:(double)from to:(double)to
{
  initWithDouble_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  initWithDouble_2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = type metadata accessor for SearchUIBasicLayerAnimation();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_keyPath];
  *v9 = 0xD000000000000011;
  *(v9 + 1) = 0x80000001DA279730;
  *&v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_fromValue] = initWithDouble_;
  *&v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_toValue] = initWithDouble_2;
  v12.receiver = v8;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

+ (id)horizontalScaleFrom:(double)from to:(double)to
{
  initWithDouble_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  initWithDouble_2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = type metadata accessor for SearchUIBasicLayerAnimation();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_keyPath];
  *v9 = 0xD000000000000011;
  *(v9 + 1) = 0x80000001DA279750;
  *&v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_fromValue] = initWithDouble_;
  *&v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_toValue] = initWithDouble_2;
  v12.receiver = v8;
  v12.super_class = v7;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

+ (id)scaleFrom:(double)from to:(double)to
{
  v4 = _s8SearchUI0A21UIBasicLayerAnimationC5scale4from2toAA0a7UILayerE0_p12CoreGraphics7CGFloatV_AJtFZ_0(from, to);

  return v4;
}

- (_TtC8SearchUI27SearchUIBasicLayerAnimation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end