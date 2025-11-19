@interface AddToWatchShareSheetActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC9SeymourUI28AddToWatchShareSheetActivity)init;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation AddToWatchShareSheetActivity

- (NSString)activityType
{
  if (qword_27C760AC0 != -1)
  {
    swift_once();
  }

  v3 = qword_27C79BFA0;

  return v3;
}

- (NSString)activityTitle
{
  __swift_project_boxed_opaque_existential_1((&self->super.super.isa + OBJC_IVAR____TtC9SeymourUI28AddToWatchShareSheetActivity_storefrontLocalizer), *(&self->super._activitySettingsImageLoader + OBJC_IVAR____TtC9SeymourUI28AddToWatchShareSheetActivity_storefrontLocalizer));
  v3 = self;
  sub_20C138D34();

  v4 = sub_20C13C914();

  return v4;
}

- (UIImage)activityImage
{
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() smm:v2 systemImageNamed:?];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = sub_20C13CC74();
  v5 = self;
  v6 = sub_20B624760(v4);

  return v6 & 1;
}

- (void)prepareWithActivityItems:(id)a3
{
  v4 = sub_20C13CC74();
  v5 = self;
  sub_20B624304(v4);
}

- (void)performActivity
{
  v2 = self;
  sub_20B624428();
}

- (_TtC9SeymourUI28AddToWatchShareSheetActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end