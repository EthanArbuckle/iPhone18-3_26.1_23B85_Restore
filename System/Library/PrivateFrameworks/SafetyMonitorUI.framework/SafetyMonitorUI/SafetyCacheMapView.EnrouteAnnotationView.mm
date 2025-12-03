@interface SafetyCacheMapView.EnrouteAnnotationView
- (MKAnnotation)annotation;
- (_TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (_TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView)initWithCoder:(id)coder;
- (void)prepareForReuse;
- (void)setAnnotation:(id)annotation;
@end

@implementation SafetyCacheMapView.EnrouteAnnotationView

- (MKAnnotation)annotation
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  annotation = [(MKAnnotationView *)&v4 annotation];

  return annotation;
}

- (void)setAnnotation:(id)annotation
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(MKAnnotationView *)&v5 setAnnotation:annotation];
  sub_2646EFD20();
  swift_unknownObjectRelease();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_2646F019C();
}

- (_TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_264785724();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView_annotationHostingController) = 0;
    swift_unknownObjectRetain();
    identifier = sub_264785714();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView_annotationHostingController) = 0;
    swift_unknownObjectRetain();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(MKAnnotationView *)&v10 initWithAnnotation:annotation reuseIdentifier:identifier];

  swift_unknownObjectRelease();
  return v8;
}

- (_TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView_annotationHostingController) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(MKAnnotationView *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end