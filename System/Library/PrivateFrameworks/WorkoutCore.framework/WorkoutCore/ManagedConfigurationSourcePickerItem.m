@interface ManagedConfigurationSourcePickerItem
- (BOOL)isEqual:(id)a3;
- (_TtC11WorkoutCore36ManagedConfigurationSourcePickerItem)init;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
@end

@implementation ManagedConfigurationSourcePickerItem

- (_TtC11WorkoutCore36ManagedConfigurationSourcePickerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider);
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel);
  v5 = type metadata accessor for ManagedConfigurationSourcePickerItem();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_type] = 4;
  *&v6[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider] = v3;
  *&v6[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel] = v4;
  v8.receiver = v6;
  v8.super_class = v5;

  return [(ManagedConfigurationSourcePickerItem *)&v8 init];
}

- (int64_t)hash
{
  Hasher.init()();
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider);
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = self;

  String.hash(into:)();

  v7 = *(&v6->super.isa + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel);
  ManagedConfigurationsViewModel.hash(into:)(v10);
  v8 = Hasher.finalize()();

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = ManagedConfigurationSourcePickerItem.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6;
}

@end