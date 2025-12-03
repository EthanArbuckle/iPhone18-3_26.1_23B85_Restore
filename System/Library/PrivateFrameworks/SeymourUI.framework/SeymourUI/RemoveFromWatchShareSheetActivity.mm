@interface RemoveFromWatchShareSheetActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC9SeymourUI33RemoveFromWatchShareSheetActivity)init;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
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
  selfCopy = self;
  sub_20C138D34();

  v4 = sub_20C13C914();

  return v4;
}

- (UIImage)activityImage
{
  v3 = objc_opt_self();
  selfCopy = self;
  configurationWithScale_ = [v3 configurationWithScale_];
  v6 = sub_20C13C914();
  systemImageNamed_ = [objc_opt_self() systemImageNamed_];

  if (systemImageNamed_)
  {
    v8 = [(RemoveFromWatchShareSheetActivity *)systemImageNamed_ imageWithConfiguration:configurationWithScale_];

    selfCopy = systemImageNamed_;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = sub_20C13CC74();
  selfCopy = self;
  v6 = sub_20B624760(v4);

  return v6 & 1;
}

- (void)prepareWithActivityItems:(id)items
{
  v4 = sub_20C13CC74();
  selfCopy = self;
  sub_20BCC15D8(v4);
}

- (void)performActivity
{
  selfCopy = self;
  sub_20BCC16FC();
}

- (_TtC9SeymourUI33RemoveFromWatchShareSheetActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end