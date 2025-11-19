@interface NLWeatherSummaryManager
- (NLWeatherSummaryManager)init;
- (NLWeatherSummaryManager)initWithLocation:(id)a3 delegate:(id)a4;
- (void)fetchSummary;
@end

@implementation NLWeatherSummaryManager

- (NLWeatherSummaryManager)initWithLocation:(id)a3 delegate:(id)a4
{
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___NLWeatherSummaryManager_location) = a3;
  swift_unknownObjectWeakAssign();
  v8.receiver = self;
  v8.super_class = type metadata accessor for WeatherSummaryManager();
  v6 = a3;
  return [(NLWeatherSummaryManager *)&v8 init];
}

- (void)fetchSummary
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in WeatherSummaryManager.fetchSummary()partial apply, v8);
}

- (NLWeatherSummaryManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end