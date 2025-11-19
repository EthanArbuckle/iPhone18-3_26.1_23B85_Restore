@interface UIUDetectorCompat
- (UIUDetectorCompat)init;
- (UIUDetectorCompat)initWithPlatform:(int64_t)a3 elementConfidenceThresholds:(id)a4 clickabilityConfidenceThresholds:(id)a5 elementConfig:(id)a6 clickabilityConfig:(id)a7 error:(id *)a8;
- (id)getUIObjectsInScreen:(CGImage *)a3 addOCR:(BOOL)a4 addIconRecognition:(BOOL)a5 addClickability:(BOOL)a6 addFocusElements:(BOOL)a7 nmsThreshold:(float)a8 useAccurateOCR:(BOOL)a9 error:(id *)a10;
@end

@implementation UIUDetectorCompat

- (UIUDetectorCompat)initWithPlatform:(int64_t)a3 elementConfidenceThresholds:(id)a4 clickabilityConfidenceThresholds:(id)a5 elementConfig:(id)a6 clickabilityConfig:(id)a7 error:(id *)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  return UIUDetector.init(platform:elementConfidenceThresholds:clickabilityConfidenceThresholds:elementConfig:clickabilityConfig:)(a3, a4, a5, a6, a7);
}

- (UIUDetectorCompat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)getUIObjectsInScreen:(CGImage *)a3 addOCR:(BOOL)a4 addIconRecognition:(BOOL)a5 addClickability:(BOOL)a6 addFocusElements:(BOOL)a7 nmsThreshold:(float)a8 useAccurateOCR:(BOOL)a9 error:(id *)a10
{
  v10 = a9;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v18 = type metadata accessor for UIUDetectorResult();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3;
  v22 = self;
  UIUDetector.getUIDetectionsInScreen(_:addOCR:addIconRecognition:addClickability:addFocusElements:nmsThreshold:useAccurateOCR:)(v21, v15, v14, v13, v12, v10, v20, a8);

  sub_27025C4E4(v20);
  type metadata accessor for UIObject();
  v23 = sub_2702B41AC();

  return v23;
}

@end