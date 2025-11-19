@interface UISliderTick
+ (id)tickWithPosition:(float)a3 title:(id)a4 image:(id)a5;
- (NSString)title;
- (UISliderTick)init;
- (UISliderTick)initWithCoder:(id)a3;
- (UISliderTick)initWithPosition:(float)a3 title:(id)a4 image:(id)a5;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setImage:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation UISliderTick

- (NSString)title
{
  if (*&self->_tick[OBJC_IVAR___UISliderTick__tick + 8])
  {

    v2 = sub_18A4A7258();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_18A4A7288();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = self + OBJC_IVAR___UISliderTick__tick;
  *(v6 + 1) = v4;
  *(v6 + 2) = v5;
}

- (void)setImage:(id)a3
{
  v4 = *&self->_tick[OBJC_IVAR___UISliderTick__tick + 16];
  *&self->_tick[OBJC_IVAR___UISliderTick__tick + 16] = a3;
  v3 = a3;
}

- (UISliderTick)initWithPosition:(float)a3 title:(id)a4 image:(id)a5
{
  if (a4)
  {
    v7 = sub_18A4A7288();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  v11 = sub_1891CC648(v7, v9, a5, a3);

  return v11;
}

+ (id)tickWithPosition:(float)a3 title:(id)a4 image:(id)a5
{
  if (a4)
  {
    v7 = sub_18A4A7288();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  swift_getObjCClassMetadata();
  v10 = a5;
  v11 = sub_1891CA104(a3, v7, v9, a5);

  return v11;
}

- (int64_t)hash
{
  v3 = *&self->_tick[OBJC_IVAR___UISliderTick__tick + 16];
  sub_18A4A8888();
  v4 = v3;
  v5 = self;

  UISlider.TrackConfiguration.Tick.hash(into:)();
  v6 = sub_18A4A88E8();

  return v6;
}

- (UISliderTick)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1891CC7B0(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1891CA744(v4);
}

- (UISliderTick)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end