@interface SiriAnalyticsRootClock
- (BOOL)isTrackingDerivativeClockByStreamUUID:(id)d;
- (SiriAnalyticsRootClock)initWithClockIdentifier:(id)identifier timestampOffset:(unint64_t)offset startedOn:(unint64_t)on metastore:(id)metastore;
- (id)derivativeClockForStreamUUID:(id)d;
@end

@implementation SiriAnalyticsRootClock

- (id)derivativeClockForStreamUUID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_derivativeClocksByStreamUUID objectForKey:dCopy];
  if (!v5)
  {
    v6 = MEMORY[0x1E696AFB0];
    clockIdentifier = [(SiriAnalyticsLogicalClock *)self clockIdentifier];
    v8 = [v6 sa_deterministicUUIDv5ForNamespaceUUID:clockIdentifier sourceUUID:dCopy];

    v5 = [[SiriAnalyticsDerivativeClock alloc] initWithClockIdentifier:v8 isolatedStreamUUID:dCopy timestampOffset:[(SiriAnalyticsLogicalClock *)self timestampOffset] rootClock:self];
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v9 = SiriAnalyticsLogContextTime;
    if (os_log_type_enabled(SiriAnalyticsLogContextTime, OS_LOG_TYPE_INFO))
    {
      v12 = 136316162;
      v13 = "[SiriAnalyticsRootClock derivativeClockForStreamUUID:]";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = dCopy;
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1D9863000, v9, OS_LOG_TYPE_INFO, "%s Created derivative clock: %@ with identifer: %@ for streamUUID: %@ with parent clock: %@", &v12, 0x34u);
    }

    [(NSMutableDictionary *)self->_derivativeClocksByStreamUUID setObject:v5 forKey:dCopy];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isTrackingDerivativeClockByStreamUUID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_derivativeClocksByStreamUUID objectForKey:d];
  v4 = v3 != 0;

  return v4;
}

- (SiriAnalyticsRootClock)initWithClockIdentifier:(id)identifier timestampOffset:(unint64_t)offset startedOn:(unint64_t)on metastore:(id)metastore
{
  identifierCopy = identifier;
  metastoreCopy = metastore;
  v18.receiver = self;
  v18.super_class = SiriAnalyticsRootClock;
  v12 = [(SiriAnalyticsLogicalClock *)&v18 initWithClockIdentifier:identifierCopy timestampOffset:offset startedOn:on];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    derivativeClocksByStreamUUID = v12->_derivativeClocksByStreamUUID;
    v12->_derivativeClocksByStreamUUID = v13;

    v15 = [[SiriAnalyticsSensitiveConditionsLedger alloc] initWithClockIdentifier:identifierCopy metastore:metastoreCopy];
    sensitiveConditionsLedger = v12->_sensitiveConditionsLedger;
    v12->_sensitiveConditionsLedger = v15;
  }

  return v12;
}

@end