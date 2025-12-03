@interface AddBookmarkShareSheetActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)activityTitle;
- (NSString)activityType;
- (UIImage)activityImage;
- (_TtC9SeymourUI29AddBookmarkShareSheetActivity)init;
- (void)performActivity;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation AddBookmarkShareSheetActivity

- (NSString)activityType
{
  if (qword_27C760AB8 != -1)
  {
    swift_once();
  }

  v3 = qword_27C79BF98;

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
  v3 = [objc_opt_self() smm:v2 systemImageNamed:?];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = sub_20C13CC74();
  selfCopy = self;
  v6 = sub_20BD07E48(v4);

  return v6 & 1;
}

- (void)prepareWithActivityItems:(id)items
{
  v4 = sub_20C13CC74();
  selfCopy = self;
  sub_20BFA8610(v4);
}

- (void)performActivity
{
  selfCopy = self;
  sub_20BFA8730();
}

- (_TtC9SeymourUI29AddBookmarkShareSheetActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end