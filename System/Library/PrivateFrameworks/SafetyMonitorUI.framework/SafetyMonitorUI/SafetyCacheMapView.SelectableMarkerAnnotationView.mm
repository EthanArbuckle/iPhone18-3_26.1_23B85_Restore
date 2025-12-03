@interface SafetyCacheMapView.SelectableMarkerAnnotationView
- (_TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView)initWithCoder:(id)coder;
- (void)tapHandler:(id)handler;
@end

@implementation SafetyCacheMapView.SelectableMarkerAnnotationView

- (void)tapHandler:(id)handler
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_onTapHandler);
  if (v3)
  {
    v4 = *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_onTapHandler);
    selfCopy = self;
    v6 = sub_264611394(v3);
    v3(v6);

    sub_26460C9A0(v3);
  }
}

- (_TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_onTapHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_264785D94();
  __break(1u);
  return result;
}

- (_TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end