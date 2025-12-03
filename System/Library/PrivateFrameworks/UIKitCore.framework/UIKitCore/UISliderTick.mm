@interface UISliderTick
+ (id)tickWithPosition:(float)position title:(id)title image:(id)image;
- (NSString)title;
- (UISliderTick)init;
- (UISliderTick)initWithCoder:(id)coder;
- (UISliderTick)initWithPosition:(float)position title:(id)title image:(id)image;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setImage:(id)image;
- (void)setTitle:(id)title;
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

- (void)setTitle:(id)title
{
  if (title)
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

- (void)setImage:(id)image
{
  v4 = *&self->_tick[OBJC_IVAR___UISliderTick__tick + 16];
  *&self->_tick[OBJC_IVAR___UISliderTick__tick + 16] = image;
  imageCopy = image;
}

- (UISliderTick)initWithPosition:(float)position title:(id)title image:(id)image
{
  if (title)
  {
    v7 = sub_18A4A7288();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  imageCopy = image;
  v11 = sub_1891CC648(v7, v9, image, position);

  return v11;
}

+ (id)tickWithPosition:(float)position title:(id)title image:(id)image
{
  if (title)
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
  imageCopy = image;
  v11 = sub_1891CA104(position, v7, v9, image);

  return v11;
}

- (int64_t)hash
{
  v3 = *&self->_tick[OBJC_IVAR___UISliderTick__tick + 16];
  sub_18A4A8888();
  v4 = v3;
  selfCopy = self;

  UISlider.TrackConfiguration.Tick.hash(into:)();
  v6 = sub_18A4A88E8();

  return v6;
}

- (UISliderTick)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1891CC7B0(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1891CA744(coderCopy);
}

- (UISliderTick)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end