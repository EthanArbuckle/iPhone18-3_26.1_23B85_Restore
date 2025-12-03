@interface SiriAnalyticsLogicalTimeStamp
- (SiriAnalyticsLogicalTimeStamp)initWithMachAbsoluteTime:(unint64_t)time clockIdentifier:(id)identifier;
- (SiriAnalyticsLogicalTimeStamp)initWithNanosecondsSinceBoot:(unint64_t)boot clockIdentifier:(id)identifier;
- (id)loggingRepresentation;
@end

@implementation SiriAnalyticsLogicalTimeStamp

- (id)loggingRepresentation
{
  v3 = objc_alloc(MEMORY[0x1E69CF640]);
  clockIdentifier = [(SiriAnalyticsLogicalTimeStamp *)self clockIdentifier];
  v5 = [v3 initWithNSUUID:clockIdentifier];

  v6 = objc_alloc_init(MEMORY[0x1E69CF5B8]);
  [v6 setClockIdentifier:v5];
  [v6 setTimestampInNanoseconds:{-[SiriAnalyticsLogicalTimeStamp nanoSecondsSinceBoot](self, "nanoSecondsSinceBoot")}];

  return v6;
}

- (SiriAnalyticsLogicalTimeStamp)initWithNanosecondsSinceBoot:(unint64_t)boot clockIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SiriAnalyticsLogicalTimeStamp;
  v8 = [(SiriAnalyticsLogicalTimeStamp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_nanoSecondsSinceBoot = boot;
    objc_storeStrong(&v8->_clockIdentifier, identifier);
  }

  return v9;
}

- (SiriAnalyticsLogicalTimeStamp)initWithMachAbsoluteTime:(unint64_t)time clockIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (_SiriAnalyticsMachAbsoluteTimeRate_onceToken[0] != -1)
  {
    dispatch_once(_SiriAnalyticsMachAbsoluteTimeRate_onceToken, &__block_literal_global);
  }

  v7 = [(SiriAnalyticsLogicalTimeStamp *)self initWithNanosecondsSinceBoot:(*&_SiriAnalyticsMachAbsoluteTimeRate_rate * time) clockIdentifier:identifierCopy];

  return v7;
}

@end