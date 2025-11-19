@interface SiriAnalyticsSensitiveConditionsLedger
- (SiriAnalyticsSensitiveConditionsLedger)initWithClockIdentifier:(id)a3 metastore:(id)a4;
@end

@implementation SiriAnalyticsSensitiveConditionsLedger

- (SiriAnalyticsSensitiveConditionsLedger)initWithClockIdentifier:(id)a3 metastore:(id)a4
{
  v5 = sub_1D992AE84();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  return SensitiveConditionsLedger.init(clockIdentifier:metastore:)(v8, a4);
}

@end