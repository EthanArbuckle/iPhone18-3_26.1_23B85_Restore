@interface AnyVIAEvent
- (BOOL)shouldReportDirectly;
- (NSString)originatingApplication;
- (_TtC12VisualLookUp11AnyVIAEvent)init;
- (id)feedback;
- (unint64_t)queryID;
@end

@implementation AnyVIAEvent

- (NSString)originatingApplication
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 32);
  v7 = self;
  v6(v4, v5);

  v8 = sub_1D9C7DC4C();

  return v8;
}

- (unint64_t)queryID
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 16);
  v7 = self;
  v8 = v6(v4, v5);

  return v8;
}

- (id)feedback
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 24);
  v7 = self;
  v8 = v6(v4, v5);

  return v8;
}

- (BOOL)shouldReportDirectly
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 40);
  v7 = self;
  v8 = v6(v4, v5);

  return v8 & 1;
}

- (_TtC12VisualLookUp11AnyVIAEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end