@interface PXPhotosPPTTestUtilities
+ (BOOL)requestTargetSelectorWithTestName:(id)name testOptions:(id)options application:(id)application gesturePerformer:(id)performer scrollTestPerformer:(id)testPerformer resultHandler:(id)handler;
- (PXPhotosPPTTestUtilities)init;
@end

@implementation PXPhotosPPTTestUtilities

+ (BOOL)requestTargetSelectorWithTestName:(id)name testOptions:(id)options application:(id)application gesturePerformer:(id)performer scrollTestPerformer:(id)testPerformer resultHandler:(id)handler
{
  v11 = _Block_copy(handler);
  v12 = sub_1A524C674();
  v14 = v13;
  v15 = sub_1A524C3E4();
  v18[2] = v11;
  swift_getObjCClassMetadata();
  applicationCopy = application;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(application) = static PhotosPPTTestUtilities.requestTargetSelector(testName:testOptions:application:gesturePerformer:scrollTestPerformer:resultHandler:)(v12, v14, v15, applicationCopy, performer, testPerformer, sub_1A4484988, v18);
  _Block_release(v11);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return application & 1;
}

- (PXPhotosPPTTestUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosPPTTestUtilities();
  return [(PXPhotosPPTTestUtilities *)&v3 init];
}

@end