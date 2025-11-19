@interface SafetyCacheMapView._Annotation
- (CLLocationCoordinate2D)coordinate;
- (_TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation)init;
@end

@implementation SafetyCacheMapView._Annotation

- (CLLocationCoordinate2D)coordinate
{
  v2 = *&self->wrappedAnnotation[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation];
  v3 = *&self->wrappedAnnotation[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation + 8];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (_TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end