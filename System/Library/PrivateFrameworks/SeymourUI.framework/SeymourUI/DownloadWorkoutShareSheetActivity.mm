@interface DownloadWorkoutShareSheetActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC9SeymourUI33DownloadWorkoutShareSheetActivity)init;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation DownloadWorkoutShareSheetActivity

- (NSString)activityType
{
  if (qword_27C760AD0 != -1)
  {
    swift_once();
  }

  v3 = qword_27C79BFB0;

  return v3;
}

- (NSString)activityTitle
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  bundleForClass_ = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v4 = sub_20C13C914();

  return v4;
}

- (UIImage)activityImage
{
  v2 = sub_20C13C914();
  systemImageNamed_ = [objc_opt_self() systemImageNamed_];

  return systemImageNamed_;
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
  sub_20B9429F0(v4);
}

- (void)performActivity
{
  selfCopy = self;
  sub_20B942B14();
}

- (_TtC9SeymourUI33DownloadWorkoutShareSheetActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end