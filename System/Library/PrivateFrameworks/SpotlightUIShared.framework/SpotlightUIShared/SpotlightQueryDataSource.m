@interface SpotlightQueryDataSource
- (_TtC17SpotlightUIShared24SpotlightQueryDataSource)init;
@end

@implementation SpotlightQueryDataSource

- (_TtC17SpotlightUIShared24SpotlightQueryDataSource)init
{
  v3 = sub_26B9AB584();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentTask) = 0;
  v8 = self + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentQuery;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_currentContinuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280426748, qword_26B9B2A20);
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v11 = (&self->super.isa + OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_resultHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC17SpotlightUIShared24SpotlightQueryDataSource_signpostState;
  v13 = sub_26B9A7568();
  (*(v4 + 16))(v7, v13, v3);
  v14 = sub_26B948BC8();
  SignpostIntervals.init(with:log:)(0, v7, &type metadata for SpotlightSignpostInterval, v14, (self + v12));
  DataSource = type metadata accessor for SpotlightQueryDataSource(0);
  v17.receiver = self;
  v17.super_class = DataSource;
  return [(SpotlightQueryDataSource *)&v17 init];
}

@end