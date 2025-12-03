@interface PBFLegacyMigrationAnalyticsReporter
+ (void)recordWithEvent:(int64_t)event migrationInfo:(id)info duration:(double)duration errorCode:(int64_t)code;
- (PBFLegacyMigrationAnalyticsReporter)init;
@end

@implementation PBFLegacyMigrationAnalyticsReporter

+ (void)recordWithEvent:(int64_t)event migrationInfo:(id)info duration:(double)duration errorCode:(int64_t)code
{
  infoCopy = info;
  LegacyMigrationEvent.analyticsIdentifier.getter(event);
  v10 = sub_21B6C8D74();

  v11 = swift_allocObject();
  *(v11 + 16) = infoCopy;
  *(v11 + 24) = duration;
  *(v11 + 32) = event;
  *(v11 + 40) = code;
  v14[4] = sub_21B65A898;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21B65A4F8;
  v14[3] = &block_descriptor_8;
  v12 = _Block_copy(v14);
  v13 = infoCopy;

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