@interface PBFLegacyMigrationAnalyticsReporter
+ (void)recordWithEvent:(int64_t)a3 migrationInfo:(id)a4 duration:(double)a5 errorCode:(int64_t)a6;
- (PBFLegacyMigrationAnalyticsReporter)init;
@end

@implementation PBFLegacyMigrationAnalyticsReporter

+ (void)recordWithEvent:(int64_t)a3 migrationInfo:(id)a4 duration:(double)a5 errorCode:(int64_t)a6
{
  v9 = a4;
  LegacyMigrationEvent.analyticsIdentifier.getter(a3);
  v10 = sub_21B6C8D74();

  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a5;
  *(v11 + 32) = a3;
  *(v11 + 40) = a6;
  v14[4] = sub_21B65A898;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21B65A4F8;
  v14[3] = &block_descriptor_8;
  v12 = _Block_copy(v14);
  v13 = v9;

  AnalyticsSendEventLazy();

  _Block_release(v12);
}

- (PBFLegacyMigrationAnalyticsReporter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LegacyMigrationAnalyticsReporter();
  return [(PBFLegacyMigrationAnalyticsReporter *)&v3 init];
}

@end