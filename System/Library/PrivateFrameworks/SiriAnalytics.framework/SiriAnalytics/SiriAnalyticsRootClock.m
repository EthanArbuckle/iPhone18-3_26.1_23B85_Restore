@interface SiriAnalyticsRootClock
- (BOOL)isTrackingDerivativeClockByStreamUUID:(id)a3;
- (SiriAnalyticsRootClock)initWithClockIdentifier:(id)a3 timestampOffset:(unint64_t)a4 startedOn:(unint64_t)a5 metastore:(id)a6;
- (id)derivativeClockForStreamUUID:(id)a3;
@end

@implementation SiriAnalyticsRootClock

- (id)derivativeClockForStreamUUID:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_derivativeClocksByStreamUUID objectForKey:v4];
  if (!v5)
  {
    v6 = MEMORY[0x1E696AFB0];
    v7 = [(SiriAnalyticsLogicalClock *)self clockIdentifier];
    v8 = [v6 sa_deterministicUUIDv5ForNamespaceUUID:v7 sourceUUID:v4];

    v5 = [[SiriAnalyticsDerivativeClock alloc] initWithClockIdentifier:v8 isolatedStreamUUID:v4 timestampOffset:[(SiriAnalyticsLogicalClock *)self timestampOffset] rootClock:self];
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
      v19 = v4;
      v20 = 2112;
      v21 = self;
      _os_log_impl(&dword_1D9863000, v9, OS_LOG_TYPE_INFO, "%s Created derivative clock: %@ with identifer: %@ for streamUUID: %@ with parent clock: %@", &v12, 0x34u);
    }

    [(NSMutableDictionary *)self->_derivativeClocksByStreamUUID setObject:v5 forKey:v4];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isTrackingDerivativeClockByStreamUUID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_derivativeClocksByStreamUUID objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (SiriAnalyticsRootClock)initWithClockIdentifier:(id)a3 timestampOffset:(unint64_t)a4 startedOn:(unint64_t)a5 metastore:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = SiriAnalyticsRootClock;
  v12 = [(SiriAnalyticsLogicalClock *)&v18 initWithClockIdentifier:v10 timestampOffset:a4 startedOn:a5];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    derivativeClocksByStreamUUID = v12->_derivativeClocksByStreamUUID;
    v12->_derivativeClocksByStreamUUID = v13;

    v15 = [[SiriAnalyticsSensitiveConditionsLedger alloc] initWithClockIdentifier:v10 metastore:v11];
    sensitiveConditionsLedger = v12->_sensitiveConditionsLedger;
    v12->_sensitiveConditionsLedger = v15;
  }

  return v12;
}

@end