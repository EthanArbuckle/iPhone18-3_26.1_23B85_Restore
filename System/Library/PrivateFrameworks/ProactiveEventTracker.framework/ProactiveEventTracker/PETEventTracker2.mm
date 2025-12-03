@interface PETEventTracker2
+ (double)roundToSigFigs:(double)figs sigFigs:(unint64_t)sigFigs;
+ (id)_writeMessage:(id)message objCClassName:(id)name;
+ (id)defaultRootDir;
+ (id)formattedTextForAggregatedMessage:(id)message;
+ (id)formattedTextForUnaggregatedMessage:(id)message messageGroup:(id)group config:(id)config;
+ (id)sharedInstance;
+ (unsigned)typeIdForMessageName:(id)name;
- (PETEventTracker2)initWithAsyncEnabled:(BOOL)enabled;
- (PETEventTracker2)initWithRootDir:(id)dir config:(id)config;
- (double)_roundToSigFigs:(double)figs forRawMessage:(id)message;
- (id)_getLogStore:(id)store;
- (id)initForTestingWithRootDir:(id)dir;
- (void)_dispatchAsyncForLogging:(id)logging txnName:(const char *)name;
- (void)_init;
- (void)_initWithRootDir:(id)dir config:(id)config;
- (void)_logMessage:(id)message subGroup:(id)group;
- (void)_logMessageData:(id)data objcClassName:(id)name subGroup:(id)group;
- (void)_runBlockWithRBSAssertion:(id)assertion;
- (void)_trackDistributionForMessage:(id)message value:(double)value;
- (void)_trackScalarForMessage:(id)message count:(int)count overwrite:(BOOL)overwrite;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertionWillInvalidate:(id)invalidate;
- (void)clearLogStores;
- (void)enumerateAggregatedMessagesWithBlock:(id)block clearStore:(BOOL)store;
- (void)enumerateMessageGroups:(id)groups;
- (void)enumerateMessagesWithBlock:(id)block clearStore:(BOOL)store;
- (void)enumerateMessagesWithBlock:(id)block messageGroup:(id)group clearStore:(BOOL)store;
- (void)logMessage:(id)message subGroup:(id)group;
- (void)logMessageData:(id)data objcClassName:(id)name subGroup:(id)group;
- (void)trackDistributionForMessage:(id)message value:(double)value;
- (void)trackScalarForMessage:(id)message count:(int)count;
- (void)trackScalarForMessage:(id)message updateCount:(int)count;
@end

@implementation PETEventTracker2

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1592 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1592, &__block_literal_global_1593);
  }

  v3 = sharedInstance_instance_1594;

  return v3;
}

- (void)clearLogStores
{
  if (self->_inited)
  {
    v4[5] = v2;
    v4[6] = v3;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __34__PETEventTracker2_clearLogStores__block_invoke;
    v4[3] = &unk_1E86C2CE8;
    v4[4] = self;
    [(PETEventTracker2 *)self enumerateMessageGroups:v4];
  }
}

void __34__PETEventTracker2_clearLogStores__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _getLogStore:a2];
  [v2 clear];
}

- (void)enumerateAggregatedMessagesWithBlock:(id)block clearStore:(BOOL)store
{
  storeCopy = store;
  blockCopy = block;
  v7 = blockCopy;
  if (self->_inited)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__PETEventTracker2_enumerateAggregatedMessagesWithBlock_clearStore___block_invoke;
    v19[3] = &unk_1E86C2C98;
    v19[4] = self;
    v8 = blockCopy;
    v20 = v8;
    v9 = MEMORY[0x1E12DDDC0](v19);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __68__PETEventTracker2_enumerateAggregatedMessagesWithBlock_clearStore___block_invoke_174;
    v16 = &unk_1E86C2CC0;
    selfCopy = self;
    v18 = v8;
    v10 = MEMORY[0x1E12DDDC0](&v13);
    v11 = [(PETEventTracker2 *)self aggregateState:v13];
    v12 = v11;
    if (storeCopy)
    {
      [v11 enumerateAndResetCounters:v9 distributions:v10];
    }

    else
    {
      [v11 enumerateCounters:v9 distributions:v10];
    }
  }
}

void __68__PETEventTracker2_enumerateAggregatedMessagesWithBlock_clearStore___block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, double a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
  v11 = [[PETAggregationKey alloc] initWithData:v10];
  v12 = [(PETAggregationKey *)v11 rawMessage];
  v13 = [v12 name];

  if (v13)
  {
    [v9 setKey:v11];
    v14 = *(a1 + 32);
    v15 = [(PETAggregationKey *)v11 rawMessage];
    [v14 _roundToSigFigs:v15 forRawMessage:a4];
    [v9 setCount:v16];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v11;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Message name is nil in raw message: %@", &v18, 0xCu);
    }

    AnalyticsSendEvent();
  }

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x1E69E9840];
}

void __68__PETEventTracker2_enumerateAggregatedMessagesWithBlock_clearStore___block_invoke_174(uint64_t a1, uint64_t a2, unsigned int a3, double a4, double a5, double a6, double a7, uint64_t a8, unsigned int a9)
{
  v39 = *MEMORY[0x1E69E9840];
  v17 = objc_autoreleasePoolPush();
  v18 = objc_opt_new();
  v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
  v20 = [[PETAggregationKey alloc] initWithData:v19];
  v21 = [(PETAggregationKey *)v20 rawMessage];
  v22 = [v21 name];

  if (v22)
  {
    [v18 setKey:v20];
    v23 = *(a1 + 32);
    v24 = a9;
    v25 = [(PETAggregationKey *)v20 rawMessage];
    [v23 _roundToSigFigs:v25 forRawMessage:v24];
    [v18 setCount:v26];

    v27 = objc_opt_new();
    v28 = *(a1 + 32);
    v29 = [(PETAggregationKey *)v20 rawMessage];
    [v28 _roundToSigFigs:v29 forRawMessage:a6];
    [v27 setMin:?];

    v30 = *(a1 + 32);
    v31 = [(PETAggregationKey *)v20 rawMessage];
    [v30 _roundToSigFigs:v31 forRawMessage:a7];
    [v27 setMax:?];

    v32 = *(a1 + 32);
    v33 = [(PETAggregationKey *)v20 rawMessage];
    [v32 _roundToSigFigs:v33 forRawMessage:a4];
    [v27 setMean:?];

    v34 = *(a1 + 32);
    v35 = [(PETAggregationKey *)v20 rawMessage];
    [v34 _roundToSigFigs:v35 forRawMessage:a5];
    [v27 setVariance:?];

    [v18 setDistribution:v27];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = 138412290;
      v38 = v20;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Message name is nil in raw message: %@", &v37, 0xCu);
    }

    AnalyticsSendEvent();
  }

  objc_autoreleasePoolPop(v17);
  v36 = *MEMORY[0x1E69E9840];
}

- (double)_roundToSigFigs:(double)figs forRawMessage:(id)message
{
  messageCopy = message;
  config = [(PETEventTracker2 *)self config];
  name = [messageCopy name];

  v9 = [config sigFigsForMessageName:name];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return figs;
  }

  v11 = objc_opt_class();

  [v11 roundToSigFigs:v9 sigFigs:figs];
  return result;
}

- (void)enumerateMessagesWithBlock:(id)block messageGroup:(id)group clearStore:(BOOL)store
{
  storeCopy = store;
  blockCopy = block;
  if (self->_inited)
  {
    v9 = [(PETEventTracker2 *)self _getLogStore:group];
    if (v9)
    {
      if (storeCopy)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __71__PETEventTracker2_enumerateMessagesWithBlock_messageGroup_clearStore___block_invoke;
        v13[3] = &unk_1E86C2C70;
        v10 = &v14;
        v14 = blockCopy;
        [v9 enumerateAndClearItemsWithBlock:v13];
      }

      else
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __71__PETEventTracker2_enumerateMessagesWithBlock_messageGroup_clearStore___block_invoke_2;
        v11[3] = &unk_1E86C2C70;
        v10 = &v12;
        v12 = blockCopy;
        [v9 enumerateItemsWithBlock:v11];
      }
    }
  }
}

void __71__PETEventTracker2_enumerateMessagesWithBlock_messageGroup_clearStore___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [[PETRawMessage alloc] initWithData:v5];
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v3);
}

void __71__PETEventTracker2_enumerateMessagesWithBlock_messageGroup_clearStore___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [[PETRawMessage alloc] initWithData:v5];
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v3);
}

- (void)enumerateMessagesWithBlock:(id)block clearStore:(BOOL)store
{
  blockCopy = block;
  v7 = blockCopy;
  if (self->_inited)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PETEventTracker2_enumerateMessagesWithBlock_clearStore___block_invoke;
    v8[3] = &unk_1E86C2C48;
    v8[4] = self;
    v9 = blockCopy;
    storeCopy = store;
    [(PETEventTracker2 *)self enumerateMessageGroups:v8];
  }
}

void __58__PETEventTracker2_enumerateMessagesWithBlock_clearStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__PETEventTracker2_enumerateMessagesWithBlock_clearStore___block_invoke_2;
  v8[3] = &unk_1E86C2C20;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = *(a1 + 48);
  v7 = v3;
  [v4 enumerateMessagesWithBlock:v8 messageGroup:v7 clearStore:v6];
}

- (void)enumerateMessageGroups:(id)groups
{
  v23[1] = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  if (self->_inited)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    logStoresDir = self->_logStoresDir;
    v20 = 0;
    v7 = [defaultManager contentsOfDirectoryAtPath:logStoresDir error:&v20];
    v8 = v20;

    if (v7)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            groupsCopy[2](groupsCopy, *(*(&v16 + 1) + 8 * i));
          }

          v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v22 = @"code";
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
      v23[0] = v9;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      AnalyticsSendEvent();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_logMessage:(id)message subGroup:(id)group
{
  groupCopy = group;
  messageCopy = message;
  v8 = objc_opt_class();
  v10 = NSStringFromClass(v8);
  data = [messageCopy data];

  [(PETEventTracker2 *)self _logMessageData:data objcClassName:v10 subGroup:groupCopy];
}

- (void)_logMessageData:(id)data objcClassName:(id)name subGroup:(id)group
{
  dataCopy = data;
  nameCopy = name;
  groupCopy = group;
  if (self->_inited)
  {
    config = [(PETEventTracker2 *)self config];
    v11 = [config groupForMessageName:nameCopy];

    v12 = objc_autoreleasePoolPush();
    if (groupCopy)
    {
      groupCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v11, groupCopy];

      v11 = groupCopy;
    }

    objc_autoreleasePoolPop(v12);
    v14 = [(PETEventTracker2 *)self _getLogStore:v11];
    if (v14)
    {
      v15 = [PETEventTracker2 _writeMessage:dataCopy objCClassName:nameCopy];
      v16 = v15;
      if (v15)
      {
        data = [v15 data];
        [v14 log:data];
      }
    }
  }
}

- (id)_getLogStore:(id)store
{
  v23 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v5 = [(NSMutableDictionary *)self->_storeCache objectForKey:storeCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(NSString *)self->_logStoresDir stringByAppendingPathComponent:storeCopy];
    config = [(PETEventTracker2 *)self config];
    v9 = [config samplingLimitForMessageGroup:storeCopy];

    v10 = [[PETReservoirSamplingLog alloc] initWithPath:v7 limit:v9];
    if (v10)
    {
      [(NSMutableDictionary *)self->_storeCache setValue:v10 forKey:storeCopy];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [defaultManager attributesOfItemAtPath:v7 error:0];
      fileSize = [v12 fileSize];

      if (fileSize > 0xA00000)
      {
        [(PETReservoirSamplingLog *)v10 clear];
        v17[0] = @"type";
        v17[1] = @"msg_group";
        v18[0] = &unk_1F5AB6CA8;
        v18[1] = storeCopy;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
        AnalyticsSendEvent();
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = storeCopy;
        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create store for unaggregated message group: %@", buf, 0xCu);
      }

      v19[0] = @"reason";
      v19[1] = @"msg_group";
      v20[0] = @"init_log_store";
      v20[1] = storeCopy;
      defaultManager = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
      AnalyticsSendEvent();
    }

    v6 = v10;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_trackDistributionForMessage:(id)message value:(double)value
{
  if (self->_inited)
  {
    messageCopy = message;
    v27 = objc_opt_new();
    [v27 setType:2];
    [v27 setDatestamp:_getDatestamp()];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    data = [messageCopy data];
    v11 = objc_opt_class();

    v12 = NSStringFromClass(v11);
    v13 = [PETEventTracker2 _writeMessage:data objCClassName:v12];
    [v27 setRawMessage:v13];

    rawMessage = [v27 rawMessage];

    if (rawMessage)
    {
      data2 = [v27 data];
      aggregateState = [(PETEventTracker2 *)self aggregateState];
      [aggregateState updateDistributionWithValue:objc_msgSend(data2 forKey:"bytes") keyLength:objc_msgSend(data2 maxSampleSize:{"length"), 1, value}];

      config = [(PETEventTracker2 *)self config];
      v18 = [config bucketsForMessageName:v9];

      if (v18)
      {
        [v27 setType:3];
        v19 = [v18 sortedArrayUsingSelector:sel_compare_];
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:value];
        v21 = [v19 indexOfObject:v20 inSortedRange:0 options:objc_msgSend(v19 usingComparator:{"count"), 1280, &__block_literal_global_381}];

        if (v21 >= [v19 count])
        {
          v24 = INFINITY;
        }

        else
        {
          v22 = [v19 objectAtIndexedSubscript:v21];
          [v22 doubleValue];
          v24 = v23;
        }

        [v27 setBucket:v24];
        data3 = [v27 data];

        aggregateState2 = [(PETEventTracker2 *)self aggregateState];
        [aggregateState2 incrementCounterBy:objc_msgSend(data3 forKey:"bytes") keyLength:{objc_msgSend(data3, "length"), 1.0}];

        data2 = data3;
      }
    }
  }
}

- (void)_trackScalarForMessage:(id)message count:(int)count overwrite:(BOOL)overwrite
{
  if (self->_inited)
  {
    overwriteCopy = overwrite;
    messageCopy = message;
    v21 = objc_opt_new();
    [v21 setType:1];
    [v21 setDatestamp:_getDatestamp()];
    data = [messageCopy data];
    v11 = objc_opt_class();

    v12 = NSStringFromClass(v11);
    v13 = [PETEventTracker2 _writeMessage:data objCClassName:v12];
    [v21 setRawMessage:v13];

    rawMessage = [v21 rawMessage];

    v15 = v21;
    if (rawMessage)
    {
      data2 = [v21 data];
      aggregateState = [(PETEventTracker2 *)self aggregateState];
      countCopy = count;
      bytes = [data2 bytes];
      v20 = [data2 length];
      if (overwriteCopy)
      {
        [aggregateState updateCounterTo:bytes forKey:v20 keyLength:countCopy];
      }

      else
      {
        [aggregateState incrementCounterBy:bytes forKey:v20 keyLength:countCopy];
      }

      v15 = v21;
    }
  }
}

- (void)logMessageData:(id)data objcClassName:(id)name subGroup:(id)group
{
  dataCopy = data;
  nameCopy = name;
  groupCopy = group;
  if (self->_isAsyncEnabled)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__PETEventTracker2_logMessageData_objcClassName_subGroup___block_invoke;
    v16[3] = &unk_1E86C2BF8;
    v16[4] = self;
    v17 = dataCopy;
    v18 = nameCopy;
    v19 = groupCopy;
    [(PETEventTracker2 *)self _dispatchAsyncForLogging:v16 txnName:"com.apple.proactive.eventtracker.logMessageData"];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__PETEventTracker2_logMessageData_objcClassName_subGroup___block_invoke_2;
    v12[3] = &unk_1E86C2BF8;
    v12[4] = self;
    v13 = dataCopy;
    v14 = nameCopy;
    v15 = groupCopy;
    [(PETEventTracker2 *)self _runBlockWithRBSAssertion:v12];

    objc_autoreleasePoolPop(v11);
  }
}

- (void)logMessage:(id)message subGroup:(id)group
{
  messageCopy = message;
  groupCopy = group;
  if (self->_isAsyncEnabled)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__PETEventTracker2_logMessage_subGroup___block_invoke;
    v12[3] = &unk_1E86C2BD0;
    v12[4] = self;
    v13 = messageCopy;
    v14 = groupCopy;
    [(PETEventTracker2 *)self _dispatchAsyncForLogging:v12 txnName:"com.apple.proactive.eventtracker.logMessage"];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__PETEventTracker2_logMessage_subGroup___block_invoke_2;
    v9[3] = &unk_1E86C2BD0;
    v9[4] = self;
    v10 = messageCopy;
    v11 = groupCopy;
    [(PETEventTracker2 *)self _runBlockWithRBSAssertion:v9];

    objc_autoreleasePoolPop(v8);
  }
}

- (void)trackDistributionForMessage:(id)message value:(double)value
{
  messageCopy = message;
  v7 = messageCopy;
  if (self->_isAsyncEnabled)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PETEventTracker2_trackDistributionForMessage_value___block_invoke;
    v12[3] = &unk_1E86C2BA8;
    v12[4] = self;
    v13 = messageCopy;
    valueCopy = value;
    [(PETEventTracker2 *)self _dispatchAsyncForLogging:v12 txnName:"com.apple.proactive.eventtracker.trackDistribution"];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PETEventTracker2_trackDistributionForMessage_value___block_invoke_2;
    v9[3] = &unk_1E86C2BA8;
    v9[4] = self;
    v10 = v7;
    valueCopy2 = value;
    [(PETEventTracker2 *)self _runBlockWithRBSAssertion:v9];

    objc_autoreleasePoolPop(v8);
  }
}

- (void)trackScalarForMessage:(id)message updateCount:(int)count
{
  messageCopy = message;
  v7 = messageCopy;
  if (self->_isAsyncEnabled)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PETEventTracker2_trackScalarForMessage_updateCount___block_invoke;
    v12[3] = &unk_1E86C2B80;
    v12[4] = self;
    v13 = messageCopy;
    countCopy = count;
    [(PETEventTracker2 *)self _dispatchAsyncForLogging:v12 txnName:"com.apple.proactive.eventtracker.trackScalar"];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PETEventTracker2_trackScalarForMessage_updateCount___block_invoke_2;
    v9[3] = &unk_1E86C2B80;
    v9[4] = self;
    v10 = v7;
    countCopy2 = count;
    [(PETEventTracker2 *)self _runBlockWithRBSAssertion:v9];

    objc_autoreleasePoolPop(v8);
  }
}

- (void)trackScalarForMessage:(id)message count:(int)count
{
  messageCopy = message;
  v7 = messageCopy;
  if (self->_isAsyncEnabled)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__PETEventTracker2_trackScalarForMessage_count___block_invoke;
    v12[3] = &unk_1E86C2B80;
    v12[4] = self;
    v13 = messageCopy;
    countCopy = count;
    [(PETEventTracker2 *)self _dispatchAsyncForLogging:v12 txnName:"com.apple.proactive.eventtracker.trackScalar"];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__PETEventTracker2_trackScalarForMessage_count___block_invoke_2;
    v9[3] = &unk_1E86C2B80;
    v9[4] = self;
    v10 = v7;
    countCopy2 = count;
    [(PETEventTracker2 *)self _runBlockWithRBSAssertion:v9];

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_runBlockWithRBSAssertion:(id)assertion
{
  v23[1] = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  v5 = assertionCopy;
  if (self->_inited)
  {
    if (self->_isProcessManagedByRBS)
    {
      pthread_mutex_lock(&self->_rbsAssertionLock);
      rbsAssertion = self->_rbsAssertion;
      if (rbsAssertion)
      {
        goto LABEL_14;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Requesting Runningboard assertion", buf, 2u);
      }

      v7 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
      v8 = objc_alloc(MEMORY[0x1E69C7548]);
      rbsTarget = self->_rbsTarget;
      v23[0] = v7;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      v11 = [v8 initWithExplanation:@"ProactiveEventTracker" target:rbsTarget attributes:v10];
      v12 = self->_rbsAssertion;
      self->_rbsAssertion = v11;

      v13 = self->_rbsAssertion;
      v20 = 0;
      LODWORD(rbsTarget) = [(RBSAssertion *)v13 acquireWithError:&v20];
      v14 = v20;
      if (rbsTarget)
      {
        self->_rbsShouldInvalidate = 0;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Runningboard assertion has been acquired", buf, 2u);
        }

        v15 = dispatch_time(0, 1000000000);
        v16 = dispatch_queue_create("com.apple.proactive.eventtracker.rbsAssertionCheck", 0);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __46__PETEventTracker2__runBlockWithRBSAssertion___block_invoke;
        v19[3] = &unk_1E86C2B30;
        v19[4] = self;
        dispatch_after(v15, v16, v19);
      }

      else
      {
        v17 = self->_rbsAssertion;
        self->_rbsAssertion = 0;

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v14;
          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to acquire the RunningBoard assertion: %@", buf, 0xCu);
        }
      }

      rbsAssertion = self->_rbsAssertion;
      if (rbsAssertion)
      {
LABEL_14:
        [(RBSAssertion *)rbsAssertion addObserver:self];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Running logging block", buf, 2u);
        }

        v5[2](v5);
        if (!self->_rbsShouldInvalidate)
        {
          self->_rbsShouldInvalidate = 1;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Setting Runningboard assertion to be invalidated", buf, 2u);
          }
        }
      }

      else
      {
        AnalyticsSendEvent();
      }

      pthread_mutex_unlock(&self->_rbsAssertionLock);
    }

    else
    {
      assertionCopy[2](assertionCopy);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __46__PETEventTracker2__runBlockWithRBSAssertion___block_invoke(uint64_t a1)
{
  while (1)
  {
    pthread_mutex_lock((*(a1 + 32) + 128));
    v2 = *(a1 + 32);
    if (*(v2 + 120) == 1)
    {
      v3 = *(v2 + 112);
      if (v3)
      {
        break;
      }
    }

    pthread_mutex_unlock((v2 + 128));
    [MEMORY[0x1E696AF00] sleepForTimeInterval:1.0];
  }

  [v3 invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 112);
  *(v4 + 112) = 0;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Runningboard assertion has been invalidated", v7, 2u);
  }

  return pthread_mutex_unlock((*(a1 + 32) + 128));
}

- (void)assertionWillInvalidate:(id)invalidate
{
  v18 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = invalidateCopy;
    _os_log_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Runningboard assertion (%@) will be invalidated soon. Force unlocking all store files...", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_storeCache allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v9++) unlock];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  errorCopy = error;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v13 = assertionCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Runningboard assertion (%@) was invalidated unexpectedly with error %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code", @"error_code"}];
  v11 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  AnalyticsSendEvent();

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_dispatchAsyncForLogging:(id)logging txnName:(const char *)name
{
  loggingCopy = logging;
  pthread_mutex_lock(&self->_loggingQueueLock);
  loggingQueueSize = self->_loggingQueueSize;
  if (loggingQueueSize < 1024)
  {
    self->_loggingQueueSize = loggingQueueSize + 1;
    pthread_mutex_unlock(&self->_loggingQueueLock);
    v7 = os_transaction_create();
    loggingQueue = self->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__PETEventTracker2__dispatchAsyncForLogging_txnName___block_invoke;
    block[3] = &unk_1E86C2B58;
    block[4] = self;
    v11 = v7;
    v12 = loggingCopy;
    v9 = v7;
    dispatch_async(loggingQueue, block);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dropping message due to exceeding the logging queue limit", buf, 2u);
    }

    AnalyticsSendEvent();
    pthread_mutex_unlock(&self->_loggingQueueLock);
  }
}

uint64_t __53__PETEventTracker2__dispatchAsyncForLogging_txnName___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _runBlockWithRBSAssertion:*(a1 + 48)];
  pthread_mutex_lock((*(a1 + 32) + 32));
  --*(*(a1 + 32) + 24);
  v2 = (*(a1 + 32) + 32);

  return pthread_mutex_unlock(v2);
}

- (void)_initWithRootDir:(id)dir config:(id)config
{
  dirCopy = dir;
  v44 = *MEMORY[0x1E69E9840];
  dirCopy2 = dir;
  configCopy = config;
  objc_storeStrong(&self->_rootDir, dirCopy);
  objc_storeStrong(&self->_config, config);
  v9 = [dirCopy2 stringByAppendingPathComponent:@"log_stores"];
  logStoresDir = self->_logStoresDir;
  self->_logStoresDir = v9;

  v11 = objc_opt_new();
  storeCache = self->_storeCache;
  self->_storeCache = v11;

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  rootDir = self->_rootDir;
  v37 = 0;
  LOBYTE(dirCopy) = [defaultManager createDirectoryAtPath:rootDir withIntermediateDirectories:1 attributes:0 error:&v37];
  v15 = v37;

  if (dirCopy)
  {
    v16 = [(NSString *)self->_rootDir stringByAppendingPathComponent:@"aggr_state"];
    v17 = [[PETAggregateState alloc] initWithPath:v16];
    aggregateState = self->_aggregateState;
    self->_aggregateState = v17;

    if (self->_aggregateState)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v20 = [defaultManager2 attributesOfItemAtPath:v16 error:0];
      fileSize = [v20 fileSize];

      if (fileSize > 0xA00000)
      {
        [(PETAggregateState *)self->_aggregateState reset];
        AnalyticsSendEvent();
      }

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v23 = self->_logStoresDir;
      v36 = v15;
      v24 = [defaultManager3 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:0 error:&v36];
      v25 = v36;

      if (v24)
      {
        processInfo = [MEMORY[0x1E696AE30] processInfo];
        processIdentifier = [processInfo processIdentifier];

        v28 = [MEMORY[0x1E69C7640] targetWithPid:processIdentifier];
        rbsTarget = self->_rbsTarget;
        self->_rbsTarget = v28;

        pthread_mutex_init(&self->_rbsAssertionLock, 0);
        currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
        self->_isProcessManagedByRBS = [currentProcess isManaged];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          if (self->_isProcessManagedByRBS)
          {
            v31 = @"YES";
          }

          else
          {
            v31 = @"NO";
          }

          *buf = 138412290;
          v43 = v31;
          _os_log_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_isProcessManagedByRBS: %@", buf, 0xCu);
        }

        self->_inited = 1;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v43 = v25;
          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create log stores dir: %@", buf, 0xCu);
        }

        v38[0] = @"reason";
        v38[1] = @"code";
        v39[0] = &unk_1F5AB6CA8;
        v33 = [MEMORY[0x1E696AD98] numberWithInteger:{-[__CFString code](v25, "code")}];
        v39[1] = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
        AnalyticsSendEvent();
      }

      v15 = v25;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create store for aggregate state", buf, 2u);
      }

      AnalyticsSendEvent();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = v15;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create root dir: %@", buf, 0xCu);
    }

    v40[0] = @"reason";
    v40[1] = @"code";
    v41[0] = &unk_1F5AB6CA8;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[__CFString code](v15, "code")}];
    v41[1] = v16;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    AnalyticsSendEvent();
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (PETEventTracker2)initWithRootDir:(id)dir config:(id)config
{
  dirCopy = dir;
  configCopy = config;
  v13.receiver = self;
  v13.super_class = PETEventTracker2;
  v8 = [(PETEventTracker2 *)&v13 init];
  v9 = v8;
  if (v8 && (v8->_isAsyncEnabled = 0, [(PETEventTracker2 *)v8 _initWithRootDir:dirCopy config:configCopy], !v9->_inited))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to initialize PETEventTracker2.", v12, 2u);
    }

    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (id)initForTestingWithRootDir:(id)dir
{
  dirCopy = dir;
  v5 = [[PETConfig alloc] initWithDictionary:&unk_1F5AB6E40];
  if (v5)
  {
    self = [(PETEventTracker2 *)self initWithRootDir:dirCopy config:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_init
{
  v13[2] = *MEMORY[0x1E69E9840];
  self->_isTesting = 0;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  if ([MEMORY[0x1E69C5D20] hasTrueBooleanEntitlement:@"com.apple.proactive.eventtracker" logHandle:0])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v5 pathForResource:@"pet_config" ofType:@"bin"];

    if (v6)
    {
      v7 = [[PETConfig alloc] initWithFile:v6];
      if (v7)
      {
        v8 = +[PETEventTracker2 defaultRootDir];
        if (v8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v10 = 138412290;
            v11 = v8;
            _os_log_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Initializing PETEventTracker2 with root dir: %@", &v10, 0xCu);
          }

          [(PETEventTracker2 *)self _initWithRootDir:v8 config:v7];
        }

        else
        {
          AnalyticsSendEvent();
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LOWORD(v10) = 0;
          _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to initialize PETEventTracker2 due to corrupted config", &v10, 2u);
        }

        AnalyticsSendEvent();
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to initialize PETEventTracker2 due to missing config", &v10, 2u);
      }

      AnalyticsSendEvent();
      v6 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "The process calling PET2 doesn't have the correct entitlement (com.apple.proactive.eventtracker)", &v10, 2u);
    }

    v12[0] = @"reason";
    v12[1] = @"process";
    v13[0] = &unk_1F5AB6C48;
    v13[1] = processName;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    AnalyticsSendEvent();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (PETEventTracker2)initWithAsyncEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16.receiver = self;
  v16.super_class = PETEventTracker2;
  v4 = [(PETEventTracker2 *)&v16 init];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v4->_isAsyncEnabled = enabledCopy;
  if (enabledCopy)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("PETEventTracker2", v7);
    loggingQueue = v5->_loggingQueue;
    v5->_loggingQueue = v8;

    v5->_loggingQueueSize = 0;
    pthread_mutex_init(&v5->_loggingQueueLock, 0);
    v10 = v5->_loggingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PETEventTracker2_initWithAsyncEnabled___block_invoke;
    block[3] = &unk_1E86C2B30;
    v15 = v5;
    dispatch_async(v10, block);

LABEL_5:
    v11 = v5;
    goto LABEL_6;
  }

  [(PETEventTracker2 *)v4 _init];
  if (v5->_inited)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = 0;
    _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to initialize PETEventTracker2.", &v13, 2u);
  }

  v11 = 0;
LABEL_6:

  return v11;
}

void __41__PETEventTracker2_initWithAsyncEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _init];
  if ((*(*(a1 + 32) + 96) & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to initialize PETEventTracker2.", v2, 2u);
  }
}

+ (id)formattedTextForUnaggregatedMessage:(id)message messageGroup:(id)group config:(id)config
{
  configCopy = config;
  groupCopy = group;
  messageCopy = message;
  v10 = objc_opt_new();
  [v10 appendFormat:@"Message Group: %@\n", groupCopy];

  name = [messageCopy name];
  [v10 appendFormat:@"Message Name: %@\n", name];

  [v10 appendFormat:@"Message Type: %08x\n", objc_msgSend(messageCopy, "typeId")];
  name2 = [messageCopy name];
  v13 = [configCopy nestedFieldsForMessageName:name2];

  v14 = [PETProtobufRawDecodedMessage alloc];
  rawBytes = [messageCopy rawBytes];

  v16 = [(PETProtobufRawDecodedMessage *)v14 initWithData:rawBytes nestedFields:v13];
  [v10 appendFormat:@"Message Body:\n"];
  formattedText = [(PETProtobufRawDecodedMessage *)v16 formattedText];
  [v10 appendFormat:@"%@", formattedText];

  return v10;
}

+ (id)formattedTextForAggregatedMessage:(id)message
{
  messageCopy = message;
  v4 = objc_opt_new();
  v5 = [messageCopy key];
  datestamp = [v5 datestamp];
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v8 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v9 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:(86400 * datestamp)];
  [v7 setTimeZone:v8];
  [v7 setDateFormat:@"yyyy-MM-dd"];
  v10 = [v7 stringFromDate:v9];

  [v4 appendFormat:@"UTC Date: %@\n", v10];
  v11 = [messageCopy key];
  rawMessage = [v11 rawMessage];
  name = [rawMessage name];
  [v4 appendFormat:@"Message Name: %@\n", name];

  v14 = [messageCopy key];
  rawMessage2 = [v14 rawMessage];
  [v4 appendFormat:@"Message Type: %08x\n", objc_msgSend(rawMessage2, "typeId")];

  v16 = [messageCopy key];
  type = [v16 type];

  v18 = [messageCopy key];
  v19 = [v18 typeAsString:type];
  [v4 appendFormat:@"Aggregation Type: %@\n", v19];

  [v4 appendFormat:@"Count: %u\n", objc_msgSend(messageCopy, "count")];
  if (type == 3)
  {
    distribution4 = [messageCopy key];
    [distribution4 bucket];
    [v4 appendFormat:@"Bucket: %f\n", v28];
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_6;
    }

    distribution = [messageCopy distribution];
    [distribution min];
    [v4 appendFormat:@"Min: %f\n", v21];

    distribution2 = [messageCopy distribution];
    [distribution2 max];
    [v4 appendFormat:@"Max: %f\n", v23];

    distribution3 = [messageCopy distribution];
    [distribution3 mean];
    [v4 appendFormat:@"Mean: %f\n", v25];

    distribution4 = [messageCopy distribution];
    [distribution4 variance];
    [v4 appendFormat:@"Variance: %f\n", v27];
  }

LABEL_6:
  v29 = [PETProtobufRawDecodedMessage alloc];
  v30 = [messageCopy key];
  rawMessage3 = [v30 rawMessage];
  rawBytes = [rawMessage3 rawBytes];
  v33 = [(PETProtobufRawDecodedMessage *)v29 initWithData:rawBytes];

  [v4 appendFormat:@"Message Body:\n"];
  formattedText = [(PETProtobufRawDecodedMessage *)v33 formattedText];
  [v4 appendFormat:@"%@", formattedText];

  return v4;
}

+ (double)roundToSigFigs:(double)figs sigFigs:(unint64_t)sigFigs
{
  figsCopy = figs;
  v5 = figs < 0.0;
  if (figs != 0.0)
  {
    sigFigsCopy = sigFigs;
    v7 = -figs;
    if (!v5)
    {
      v7 = figsCopy;
    }

    v8 = log10(v7);
    v9 = __exp10((sigFigsCopy - vcvtpd_s64_f64(v8)));
    return round(v9 * figsCopy) / v9;
  }

  return figsCopy;
}

+ (id)_writeMessage:(id)message objCClassName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  nameCopy = name;
  v7 = [PETEventTracker2 typeIdForMessageName:nameCopy];
  if ([messageCopy length] <= 0x100000)
  {
    v10 = objc_opt_new();
    [v10 setTypeId:v7];
    [v10 setRawBytes:messageCopy];
    [v10 setName:nameCopy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v16 = nameCopy;
      v17 = 2048;
      v18 = [messageCopy length];
      v19 = 1024;
      v20 = 0x100000;
      _os_log_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dropping large message %@ with length %lu. max length: %ul", buf, 0x1Cu);
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "length", @"name", @"size", nameCopy)}];
    v14[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:2];
    AnalyticsSendEvent();

    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (unsigned)typeIdForMessageName:(id)name
{
  v8 = *MEMORY[0x1E69E9840];
  uTF8String = [name UTF8String];
  v4 = strlen(uTF8String);
  CC_MD5(uTF8String, v4, md);
  v5 = *MEMORY[0x1E69E9840];
  return bswap32(*md);
}

+ (id)defaultRootDir
{
  v20 = *MEMORY[0x1E69E9840];
  *__error() = 0;
  v2 = getuid();
  v3 = getpwuid(v2);
  if (v3 && v3->pw_dir)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = [v4 stringByAppendingPathComponent:@"Library/Caches"];
    v6 = [v5 stringByAppendingPathComponent:@"com.apple.proactive.eventtracker"];

    goto LABEL_9;
  }

  v7 = *__error();
  v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v8)
    {
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      v17[0] = 67109378;
      v17[1] = v9;
      v18 = 2080;
      v19 = v11;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "Failed to get user passwd entry: [%i] %s";
      v14 = 18;
LABEL_13:
      _os_log_error_impl(&dword_1DF726000, v12, OS_LOG_TYPE_ERROR, v13, v17, v14);
    }
  }

  else if (v8)
  {
    LOWORD(v17[0]) = 0;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "User passwd entry or home directory is not found";
    v14 = 2;
    goto LABEL_13;
  }

  v6 = 0;
LABEL_9:
  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

void __34__PETEventTracker2_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[PETEventTracker2 alloc] initWithAsyncEnabled:1];
  v2 = sharedInstance_instance_1594;
  sharedInstance_instance_1594 = v1;

  objc_autoreleasePoolPop(v0);
}

@end