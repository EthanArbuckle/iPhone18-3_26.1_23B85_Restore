@interface UICoreHostingViewForUIKitTester
+ (id)make;
- (UICoreHostingViewForUIKitTester)init;
@end

@implementation UICoreHostingViewForUIKitTester

+ (id)make
{
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344A8));
  v3 = sub_1890F8190();

  return v3;
}

- (UICoreHostingViewForUIKitTester)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UICoreHostingViewForUIKitTester();
  return [(UICoreHostingViewForUIKitTester *)&v3 init];
}

@end