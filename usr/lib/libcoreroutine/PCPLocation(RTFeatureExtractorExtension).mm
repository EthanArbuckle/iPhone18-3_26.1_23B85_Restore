@interface PCPLocation(RTFeatureExtractorExtension)
- (id)initWithCLLocation:()RTFeatureExtractorExtension;
- (id)initWithRTLocation:()RTFeatureExtractorExtension;
@end

@implementation PCPLocation(RTFeatureExtractorExtension)

- (id)initWithRTLocation:()RTFeatureExtractorExtension
{
  v4 = MEMORY[0x277D3F888];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v5 latitude];
  [v6 setLocationLatitudeDeg:?];
  [v5 longitude];
  [v6 setLocationLongitudeDeg:?];
  [v5 horizontalUncertainty];
  [v6 setLocationHorizontalUncertaintyMeters:?];
  referenceFrame = [v5 referenceFrame];

  [v6 setLocationReferenceFrame:referenceFrame];
  return v6;
}

- (id)initWithCLLocation:()RTFeatureExtractorExtension
{
  v4 = MEMORY[0x277D3F888];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v5 coordinate];
  [v6 setLocationLatitudeDeg:?];
  [v5 coordinate];
  [v6 setLocationLongitudeDeg:v7];
  [v5 horizontalAccuracy];
  [v6 setLocationHorizontalUncertaintyMeters:?];
  referenceFrame = [v5 referenceFrame];

  [v6 setLocationReferenceFrame:referenceFrame];
  return v6;
}

@end