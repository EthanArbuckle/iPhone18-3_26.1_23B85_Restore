@interface NonMaxLineSuppressFilter
- (CIImage)outputImage;
- (_TtC16VisualGeneration24NonMaxLineSuppressFilter)init;
- (_TtC16VisualGeneration24NonMaxLineSuppressFilter)initWithCoder:(id)coder;
@end

@implementation NonMaxLineSuppressFilter

- (CIImage)outputImage
{
  selfCopy = self;
  v3 = sub_19A44FDF8();

  return v3;
}

- (_TtC16VisualGeneration24NonMaxLineSuppressFilter)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16VisualGeneration24NonMaxLineSuppressFilter_inputImage) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC16VisualGeneration24NonMaxLineSuppressFilter_threshold) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for NonMaxLineSuppressFilter();
  return [(NonMaxLineSuppressFilter *)&v3 init];
}

- (_TtC16VisualGeneration24NonMaxLineSuppressFilter)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16VisualGeneration24NonMaxLineSuppressFilter_inputImage) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC16VisualGeneration24NonMaxLineSuppressFilter_threshold) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for NonMaxLineSuppressFilter();
  coderCopy = coder;
  v5 = [(NonMaxLineSuppressFilter *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end