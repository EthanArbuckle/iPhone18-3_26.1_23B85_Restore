@interface PALOngoingAccessIntervalState
- (PALOngoingAccessIntervalState)initWithAccess:(id)access queue:(id)queue applicationMetadataResolver:(id)resolver eligibleForMetricCollection:(BOOL)collection startTimestamp:(unint64_t)timestamp;
- (double)intervalSinceStart;
- (void)dealloc;
- (void)invalidate;
- (void)recordAccessToAssetIdentifiers:(id)identifiers withVisibilityState:(int64_t)state accessEventCount:(unint64_t)count;
@end

@implementation PALOngoingAccessIntervalState

- (PALOngoingAccessIntervalState)initWithAccess:(id)access queue:(id)queue applicationMetadataResolver:(id)resolver eligibleForMetricCollection:(BOOL)collection startTimestamp:(unint64_t)timestamp
{
  accessCopy = access;
  queueCopy = queue;
  resolverCopy = resolver;
  v34.receiver = self;
  v34.super_class = PALOngoingAccessIntervalState;
  v16 = [(PALOngoingAccessIntervalState *)&v34 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_access, access);
    v17->_eligibleForMetricCollection = collection;
    v17->_startTimestamp = timestamp;
    v18 = os_transaction_create();
    transaction = v17->_transaction;
    v17->_transaction = v18;

    v20 = [PAAssetIdentifierPool alloc];
    v21 = PADefaultAssetIdentifierPoolMaxSize;
    v22 = PADefaultAssetIdentifierPoolAutoDrainInterval;
    bundleRecordRetriever = [resolverCopy bundleRecordRetriever];
    accessor = [accessCopy accessor];
    v25 = (bundleRecordRetriever)[2](bundleRecordRetriever, accessor);
    aggregateVisibilityStateMonitor = [resolverCopy aggregateVisibilityStateMonitor];
    v27 = [v20 initWithMaxPoolSize:v21 autoDrainInterval:v25 bundleRecord:aggregateVisibilityStateMonitor aggregateVisibilityStateMonitor:queueCopy onQueue:v17 delegate:v22];
    assetIdentifierPool = v17->_assetIdentifierPool;
    v17->_assetIdentifierPool = v27;

    v29 = +[NSMutableDictionary dictionary];
    assetIdentifierHashesByVisibilityState = v17->_assetIdentifierHashesByVisibilityState;
    v17->_assetIdentifierHashesByVisibilityState = v29;

    v31 = +[NSMutableDictionary dictionary];
    eventCountByVisibilityState = v17->_eventCountByVisibilityState;
    v17->_eventCountByVisibilityState = v31;
  }

  return v17;
}

- (void)dealloc
{
  [(PALOngoingAccessIntervalState *)self invalidate];
  v3.receiver = self;
  v3.super_class = PALOngoingAccessIntervalState;
  [(PALOngoingAccessIntervalState *)&v3 dealloc];
}

- (void)invalidate
{
  [(PAAssetIdentifierPool *)self->_assetIdentifierPool invalidate];
  assetIdentifierPool = self->_assetIdentifierPool;
  self->_assetIdentifierPool = 0;
}

- (double)intervalSinceStart
{
  v2 = mach_continuous_time() - self->_startTimestamp;

  _TMConvertTicksToSeconds(v2);
  return result;
}

- (void)recordAccessToAssetIdentifiers:(id)identifiers withVisibilityState:(int64_t)state accessEventCount:(unint64_t)count
{
  identifiersCopy = identifiers;
  if ([(PALOngoingAccessIntervalState *)self eligibleForMetricCollection])
  {
    eventCountByVisibilityState = self->_eventCountByVisibilityState;
    v10 = [NSNumber numberWithInteger:state];
    v11 = [(NSMutableDictionary *)eventCountByVisibilityState objectForKeyedSubscript:v10];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 integerValue] + count);
    v13 = self->_eventCountByVisibilityState;
    v14 = [NSNumber numberWithInteger:state];
    [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];

    if ([identifiersCopy count])
    {
      assetIdentifierHashesByVisibilityState = self->_assetIdentifierHashesByVisibilityState;
      v16 = [NSNumber numberWithInteger:state];
      v17 = [(NSMutableDictionary *)assetIdentifierHashesByVisibilityState objectForKeyedSubscript:v16];

      if (!v17)
      {
        v17 = +[NSMutableSet set];
        v18 = self->_assetIdentifierHashesByVisibilityState;
        v19 = [NSNumber numberWithInteger:state];
        [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:v19];
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v20 = identifiersCopy;
      v21 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v27;
        do
        {
          v24 = 0;
          do
          {
            if (*v27 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(&v26 + 1) + 8 * v24) hash]);
            [v17 addObject:v25];

            v24 = v24 + 1;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v22);
      }
    }
  }
}

@end