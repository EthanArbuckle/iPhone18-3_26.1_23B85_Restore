@interface RemoveUpNextQueueShareSheetActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC9SeymourUI35RemoveUpNextQueueShareSheetActivity)init;
- (void)performActivity;
@end

@implementation RemoveUpNextQueueShareSheetActivity

- (NSString)activityType
{
  if (qword_27C760AF0 != -1)
  {
    swift_once();
  }

  v3 = qword_27C79BFD0;

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

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = sub_20C13CC74();
  selfCopy = self;
  v6 = sub_20C0045F0(v4);

  return v6 & 1;
}

- (void)performActivity
{
  selfCopy = self;
  sub_20C0EFE34();
}

- (_TtC9SeymourUI35RemoveUpNextQueueShareSheetActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end