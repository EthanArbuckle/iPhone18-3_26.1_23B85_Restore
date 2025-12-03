@interface TTRISizedToFitImageView
- (UIImage)image;
- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithFrame:(CGRect)frame;
- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithImage:(id)image;
- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (void)setImage:(id)image;
@end

@implementation TTRISizedToFitImageView

- (UIImage)image
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  image = [(TTRISizedToFitImageView *)&v4 image];

  return image;
}

- (void)setImage:(id)image
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  imageCopy = image;
  v5 = v6.receiver;
  [(TTRISizedToFitImageView *)&v6 setImage:imageCopy];
  sub_21DAD34C4();
}

- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithImage:(id)image
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  imageCopy = image;
  v7 = [(TTRISizedToFitImageView *)&v9 initWithImage:imageCopy];
  [(TTRISizedToFitImageView *)v7 setContentMode:2, v9.receiver, v9.super_class];
  sub_21DAD34C4();

  return v7;
}

- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  height = [(TTRISizedToFitImageView *)&v11 initWithFrame:x, y, width, height];
  [(TTRISizedToFitImageView *)height setContentMode:2];
  sub_21DAD34C4();

  return height;
}

- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end