@interface TPSBiomeSQLQueryManager
+ (unint64_t)countsForEvent:(id)event interval:(id)interval;
- (TPSBiomeSQLQueryManager)init;
@end

@implementation TPSBiomeSQLQueryManager

+ (unint64_t)countsForEvent:(id)event interval:(id)interval
{
  eventCopy = event;
  intervalCopy = interval;
  v7 = _s8TipsCore0A20BiomeSQLQueryManagerC14countsForEvent_8intervalSuSo013TPSContextualcH0C_So14NSDateIntervalCtFZ_0(eventCopy, intervalCopy);

  return v7;
}

- (TPSBiomeSQLQueryManager)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TipsBiomeSQLQueryManager();
  return [(TPSBiomeSQLQueryManager *)&v3 init];
}

@end