@interface AddUpNextQueueShareSheetActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC9SeymourUI32AddUpNextQueueShareSheetActivity)init;
- (void)performActivity;
@end

@implementation AddUpNextQueueShareSheetActivity

- (NSString)activityType
{
  if (qword_27C760AC8 != -1)
  {
    swift_once();
  }

  v3 = qword_27C79BFA8;

  return v3;
}

- (NSString)activityTitle
{

  v2 = sub_20C13C914();

  return v2;
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
  v6 = sub_20C0045F0(v4);

  return v6 & 1;
}

- (void)performActivity
{
  v2 = self;
  sub_20C001D88();
}

- (_TtC9SeymourUI32AddUpNextQueueShareSheetActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end