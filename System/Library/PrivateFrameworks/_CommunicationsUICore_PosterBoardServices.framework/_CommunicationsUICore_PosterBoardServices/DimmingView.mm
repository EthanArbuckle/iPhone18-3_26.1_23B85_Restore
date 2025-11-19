@interface DimmingView
+ (Class)layerClass;
- (_TtC41_CommunicationsUICore_PosterBoardServices11DimmingView)initWithCoder:(id)a3;
- (_TtC41_CommunicationsUICore_PosterBoardServices11DimmingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation DimmingView

- (_TtC41_CommunicationsUICore_PosterBoardServices11DimmingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices11DimmingView_dimmingGradients) = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices11DimmingView_gradientLayer;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(DimmingView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC41_CommunicationsUICore_PosterBoardServices11DimmingView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices11DimmingView_dimmingGradients) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices11DimmingView_gradientLayer;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  result = sub_27526D4B8();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  sub_27525E82C(0, &qword_2809B93F0);

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSubviews
{
  v2 = self;
  DimmingView.layoutSubviews()();
}

@end