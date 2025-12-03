@interface UIUDetectorCompat
- (UIUDetectorCompat)init;
- (UIUDetectorCompat)initWithPlatform:(int64_t)platform elementConfidenceThresholds:(id)thresholds clickabilityConfidenceThresholds:(id)confidenceThresholds elementConfig:(id)config clickabilityConfig:(id)clickabilityConfig error:(id *)error;
- (id)getUIObjectsInScreen:(CGImage *)screen addOCR:(BOOL)r addIconRecognition:(BOOL)recognition addClickability:(BOOL)clickability addFocusElements:(BOOL)elements nmsThreshold:(float)threshold useAccurateOCR:(BOOL)cR error:(id *)self0;
@end

@implementation UIUDetectorCompat

- (UIUDetectorCompat)initWithPlatform:(int64_t)platform elementConfidenceThresholds:(id)thresholds clickabilityConfidenceThresholds:(id)confidenceThresholds elementConfig:(id)config clickabilityConfig:(id)clickabilityConfig error:(id *)error
{
  thresholdsCopy = thresholds;
  confidenceThresholdsCopy = confidenceThresholds;
  configCopy = config;
  clickabilityConfigCopy = clickabilityConfig;
  return UIUDetector.init(platform:elementConfidenceThresholds:clickabilityConfidenceThresholds:elementConfig:clickabilityConfig:)(platform, thresholds, confidenceThresholds, config, clickabilityConfig);
}

- (UIUDetectorCompat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)getUIObjectsInScreen:(CGImage *)screen addOCR:(BOOL)r addIconRecognition:(BOOL)recognition addClickability:(BOOL)clickability addFocusElements:(BOOL)elements nmsThreshold:(float)threshold useAccurateOCR:(BOOL)cR error:(id *)self0
{
  cRCopy = cR;
  elementsCopy = elements;
  clickabilityCopy = clickability;
  recognitionCopy = recognition;
  rCopy = r;
  v18 = type metadata accessor for UIUDetectorResult();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  screenCopy = screen;
  selfCopy = self;
  UIUDetector.getUIDetectionsInScreen(_:addOCR:addIconRecognition:addClickability:addFocusElements:nmsThreshold:useAccurateOCR:)(screenCopy, rCopy, recognitionCopy, clickabilityCopy, elementsCopy, cRCopy, v20, threshold);

  sub_27025C4E4(v20);
  type metadata accessor for UIObject();
  v23 = sub_2702B41AC();

  return v23;
}

@end