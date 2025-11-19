@interface SXJSONPrimitives
+ (void)initializePrimitives;
@end

@implementation SXJSONPrimitives

+ (void)initializePrimitives
{
  NSRangeJSONObjectInitializer();
  CGSizeJSONObjectInitializer();
  CGPointJSONObjectInitializer();
  UIEdgeInsetsJSONObjectInitializer();
  MKCoordinateRegionJSONObjectInitializer();
  CLLocationCoordinate2DJSONObjectInitializer();
  MKCoordinateSpanJSONObjectInitializer();
  SXComponentContentInsetJSONObjectInitializer();
  SXDataTablePaddingJSONObjectInitializer();

  SXConvertibleValueJSONObjectInitializer();
}

@end