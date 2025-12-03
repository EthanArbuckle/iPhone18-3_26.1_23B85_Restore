@interface SCUIAnalyticsContextWrapper
- (SCUIAnalyticsContextWrapper)init;
- (SCUIAnalyticsContextWrapper)initWithContextWrapper:(id)wrapper;
- (SCUIAnalyticsContextWrapper)initWithInterventionType:(int64_t)type menuType:(int64_t)menuType actions:(id)actions;
- (SCUIAnalyticsContextWrapper)initWithInterventionType:(int64_t)type menuType:(int64_t)menuType actions:(id)actions authority:(id)authority;
- (void)collectResourcesInteractionEventWithRequestedResource:(int64_t)resource;
- (void)collectResourcesShownEvent;
@end

@implementation SCUIAnalyticsContextWrapper

- (SCUIAnalyticsContextWrapper)initWithInterventionType:(int64_t)type menuType:(int64_t)menuType actions:(id)actions authority:(id)authority
{
  v10 = type metadata accessor for AnalyticsUIContext(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC66B0F8();
  v14 = sub_1BC75BD00();
  ObjectType = swift_getObjectType();
  authorityCopy = authority;
  sub_1BC665400(type, menuType, v14, authority, v13);
  v17 = (*(ObjectType + 112))(v13);

  v18 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v19 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v17;
}

- (SCUIAnalyticsContextWrapper)initWithInterventionType:(int64_t)type menuType:(int64_t)menuType actions:(id)actions
{
  sub_1BC66B0F8();
  v7 = sub_1BC75BD00();
  return AnalyticsContextWrapper.init(interventionType:menuType:actions:)(type, menuType, v7);
}

- (SCUIAnalyticsContextWrapper)initWithContextWrapper:(id)wrapper
{
  v5 = type metadata accessor for AnalyticsUIContext(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  ObjectType = swift_getObjectType();
  v13 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & *wrapper) + 0x58);
  wrapperCopy = wrapper;
  v14();
  sub_1BC664BAC(v9, v11);
  v16 = (*(ObjectType + 112))(v11);

  v17 = *((*v13 & self->super.isa) + 0x30);
  v18 = *((*v13 & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v16;
}

- (void)collectResourcesInteractionEventWithRequestedResource:(int64_t)resource
{
  v5 = type metadata accessor for AnalyticsUIContext(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v9();
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  sub_1BC653F90(v8, resource);

  sub_1BC6689C4(v8, type metadata accessor for AnalyticsUIContext);
}

- (void)collectResourcesShownEvent
{
  v3 = type metadata accessor for AnalyticsUIContext(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v7();
  type metadata accessor for SCUIAnalytics(0);
  isa = SCUIAnalytics.init()().super.isa;
  sub_1BC654C64(v6);

  sub_1BC6689C4(v6, type metadata accessor for AnalyticsUIContext);
}

- (SCUIAnalyticsContextWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end