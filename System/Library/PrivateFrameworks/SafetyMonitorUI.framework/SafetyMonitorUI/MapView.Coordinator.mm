@interface MapView.Coordinator
- (_TtCV15SafetyMonitorUI7MapView11Coordinator)init;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)longPressActionWithSender:(id)sender;
- (void)mapView:(id)view annotationView:(id)annotationView didChangeDragState:(unint64_t)state fromOldState:(unint64_t)oldState;
- (void)mapView:(id)view didAddAnnotationViews:(id)views;
- (void)mapViewDidChangeVisibleRegion:(id)region;
@end

@implementation MapView.Coordinator

- (void)mapViewDidChangeVisibleRegion:(id)region
{
  v4 = *&self->parent[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 128];
  v20 = *&self->parent[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 112];
  v21 = v4;
  v22 = *&self->parent[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 144];
  v5 = *&self->parent[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 64];
  v16 = *&self->parent[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 48];
  v17 = v5;
  v6 = *&self->parent[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 96];
  v18 = *&self->parent[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 80];
  v19 = v6;
  v7 = *&self->parent[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent];
  v12 = *(&self->super.isa + OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent);
  v13 = v7;
  v8 = *&self->parent[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 32];
  v14 = *&self->parent[OBJC_IVAR____TtCV15SafetyMonitorUI7MapView11Coordinator_parent + 16];
  v15 = v8;
  regionCopy = region;
  selfCopy = self;
  sub_264686F50(&v12, v11);
  [regionCopy region];
  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76938, &qword_26478B1D8);
  sub_2647853E4();

  sub_2646870F0(&v12);
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_264687120(overlay);

  swift_unknownObjectRelease();

  return v8;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_264687224(viewCopy, annotation);

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapView:(id)view didAddAnnotationViews:(id)views
{
  sub_264659B70(0, &unk_27FF769B0, 0x277CD4D98);
  v6 = sub_2647857F4();
  viewCopy = view;
  selfCopy = self;
  sub_26468736C(viewCopy, v6);
}

- (void)mapView:(id)view annotationView:(id)annotationView didChangeDragState:(unint64_t)state fromOldState:(unint64_t)oldState
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  selfCopy = self;
  sub_2646874A8(viewCopy, annotationViewCopy, state);
}

- (void)longPressActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_264685388(senderCopy);
}

- (_TtCV15SafetyMonitorUI7MapView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end