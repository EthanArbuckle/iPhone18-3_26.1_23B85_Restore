@interface PXPhotosPPTTestUtilities
+ (BOOL)requestTargetSelectorWithTestName:(id)a3 testOptions:(id)a4 application:(id)a5 gesturePerformer:(id)a6 scrollTestPerformer:(id)a7 resultHandler:(id)a8;
- (PXPhotosPPTTestUtilities)init;
@end

@implementation PXPhotosPPTTestUtilities

+ (BOOL)requestTargetSelectorWithTestName:(id)a3 testOptions:(id)a4 application:(id)a5 gesturePerformer:(id)a6 scrollTestPerformer:(id)a7 resultHandler:(id)a8
{
  v11 = _Block_copy(a8);
  v12 = sub_1A524C674();
  v14 = v13;
  v15 = sub_1A524C3E4();
  v18[2] = v11;
  swift_getObjCClassMetadata();
  v16 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(a5) = static PhotosPPTTestUtilities.requestTargetSelector(testName:testOptions:application:gesturePerformer:scrollTestPerformer:resultHandler:)(v12, v14, v15, v16, a6, a7, sub_1A4484988, v18);
  _Block_release(v11);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return a5 & 1;
}

- (PXPhotosPPTTestUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PhotosPPTTestUtilities();
  return [(PXPhotosPPTTestUtilities *)&v3 init];
}

@end