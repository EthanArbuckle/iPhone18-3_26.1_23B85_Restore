@interface SiriAnalyticsLogicalTimeStamp
- (SiriAnalyticsLogicalTimeStamp)initWithMachAbsoluteTime:(unint64_t)a3 clockIdentifier:(id)a4;
- (SiriAnalyticsLogicalTimeStamp)initWithNanosecondsSinceBoot:(unint64_t)a3 clockIdentifier:(id)a4;
- (id)loggingRepresentation;
@end

@implementation SiriAnalyticsLogicalTimeStamp

- (id)loggingRepresentation
{
  v3 = objc_alloc(MEMORY[0x1E69CF640]);
  v4 = [(SiriAnalyticsLogicalTimeStamp *)self clockIdentifier];
  v5 = [v3 initWithNSUUID:v4];

  v6 = objc_alloc_init(MEMORY[0x1E69CF5B8]);
  [v6 setClockIdentifier:v5];
  [v6 setTimestampInNanoseconds:{-[SiriAnalyticsLogicalTimeStamp nanoSecondsSinceBoot](self, "nanoSecondsSinceBoot")}];

  return v6;
}

- (SiriAnalyticsLogicalTimeStamp)initWithNanosecondsSinceBoot:(unint64_t)a3 clockIdentifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SiriAnalyticsLogicalTimeStamp;
  v8 = [(SiriAnalyticsLogicalTimeStamp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_nanoSecondsSinceBoot = a3;
    objc_storeStrong(&v8->_clockIdentifier, a4);
  }

  return v9;
}

- (SiriAnalyticsLogicalTimeStamp)initWithMachAbsoluteTime:(unint64_t)a3 clockIdentifier:(id)a4
{
  v6 = a4;
  if (_SiriAnalyticsMachAbsoluteTimeRate_onceToken[0] != -1)
  {
    dispatch_once(_SiriAnalyticsMachAbsoluteTimeRate_onceToken, &__block_literal_global);
  }

  v7 = [(SiriAnalyticsLogicalTimeStamp *)self initWithNanosecondsSinceBoot:(*&_SiriAnalyticsMachAbsoluteTimeRate_rate * a3) clockIdentifier:v6];

  return v7;
}

@end