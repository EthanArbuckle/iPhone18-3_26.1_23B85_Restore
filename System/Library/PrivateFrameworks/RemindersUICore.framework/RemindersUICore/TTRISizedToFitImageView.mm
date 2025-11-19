@interface TTRISizedToFitImageView
- (UIImage)image;
- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithFrame:(CGRect)a3;
- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithImage:(id)a3;
- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (void)setImage:(id)a3;
@end

@implementation TTRISizedToFitImageView

- (UIImage)image
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(TTRISizedToFitImageView *)&v4 image];

  return v2;
}

- (void)setImage:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(TTRISizedToFitImageView *)&v6 setImage:v4];
  sub_21DAD34C4();
}

- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithImage:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(TTRISizedToFitImageView *)&v9 initWithImage:v6];
  [(TTRISizedToFitImageView *)v7 setContentMode:2, v9.receiver, v9.super_class];
  sub_21DAD34C4();

  return v7;
}

- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(TTRISizedToFitImageView *)&v11 initWithFrame:x, y, width, height];
  [(TTRISizedToFitImageView *)v9 setContentMode:2];
  sub_21DAD34C4();

  return v9;
}

- (_TtC15RemindersUICore23TTRISizedToFitImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end