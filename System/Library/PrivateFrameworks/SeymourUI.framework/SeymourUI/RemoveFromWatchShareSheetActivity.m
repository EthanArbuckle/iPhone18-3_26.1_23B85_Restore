@interface RemoveFromWatchShareSheetActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC9SeymourUI33RemoveFromWatchShareSheetActivity)init;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation RemoveFromWatchShareSheetActivity

- (NSString)activityType
{
  if (qword_27C760AE8 != -1)
  {
    swift_once();
  }

  v3 = qword_27C79BFC8;

  return v3;
}

- (NSString)activityTitle
{
  __swift_project_boxed_opaque_existential_1((&self->super.super.isa + OBJC_IVAR____TtC9SeymourUI33RemoveFromWatchShareSheetActivity_storefrontLocalizer), *(&self->super._activitySettingsImageLoader + OBJC_IVAR____TtC9SeymourUI33RemoveFromWatchShareSheetActivity_storefrontLocalizer));
  v3 = self;
  sub_20C138D34();

  v4 = sub_20C13C914();

  return v4;
}

- (UIImage)activityImage
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 configurationWithScale_];
  v6 = sub_20C13C914();
  v7 = [objc_opt_self() systemImageNamed_];

  if (v7)
  {
    v8 = [(RemoveFromWatchShareSheetActivity *)v7 imageWithConfiguration:v5];

    v4 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
  sub_20BCC15D8(v4);
}

- (void)performActivity
{
  v2 = self;
  sub_20BCC16FC();
}

- (_TtC9SeymourUI33RemoveFromWatchShareSheetActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end