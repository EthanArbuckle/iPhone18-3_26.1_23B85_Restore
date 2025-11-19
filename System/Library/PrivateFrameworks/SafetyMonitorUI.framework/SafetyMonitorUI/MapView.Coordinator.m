@interface MapView.Coordinator
- (_TtCV15SafetyMonitorUI7MapView11Coordinator)init;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)longPressActionWithSender:(id)a3;
- (void)mapView:(id)a3 annotationView:(id)a4 didChangeDragState:(unint64_t)a5 fromOldState:(unint64_t)a6;
- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4;
- (void)mapViewDidChangeVisibleRegion:(id)a3;
@end

@implementation MapView.Coordinator

- (void)mapViewDidChangeVisibleRegion:(id)a3
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
  v9 = a3;
  v10 = self;
  sub_264686F50(&v12, v11);
  [v9 region];
  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76938, &qword_26478B1D8);
  sub_2647853E4();

  sub_2646870F0(&v12);
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_264687120(a4);

  swift_unknownObjectRelease();

  return v8;
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_264687224(v6, a4);

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4
{
  sub_264659B70(0, &unk_27FF769B0, 0x277CD4D98);
  v6 = sub_2647857F4();
  v7 = a3;
  v8 = self;
  sub_26468736C(v7, v6);
}

- (void)mapView:(id)a3 annotationView:(id)a4 didChangeDragState:(unint64_t)a5 fromOldState:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_2646874A8(v9, v10, a5);
}

- (void)longPressActionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_264685388(v4);
}

- (_TtCV15SafetyMonitorUI7MapView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end