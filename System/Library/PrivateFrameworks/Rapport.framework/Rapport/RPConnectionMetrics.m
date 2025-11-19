@interface RPConnectionMetrics
+ (id)sharedMetrics;
- (RPConnectionMetrics)init;
- (unsigned)lengthToBucketIndex:(unint64_t)a3;
- (unsigned)linkTypeToBucketIndex:(int)a3;
- (unsigned)rttToBucketIndex:(unint64_t)a3;
- (void)reportMetrics;
@end

@implementation RPConnectionMetrics

+ (id)sharedMetrics
{
  if (sharedMetrics_sOnce != -1)
  {
    +[RPConnectionMetrics sharedMetrics];
  }

  v3 = gMetrics;

  return v3;
}

- (RPConnectionMetrics)init
{
  v19.receiver = self;
  v19.super_class = RPConnectionMetrics;
  v2 = [(RPConnectionMetrics *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_reportLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);

    v6 = dispatch_queue_create("RPConnectionMetrics", v5);
    reportQueue = v3->_reportQueue;
    v3->_reportQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rttMetrics = v3->_rttMetrics;
    v3->_rttMetrics = v8;

    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3->_reportQueue);
    reportTimer = v3->_reportTimer;
    v3->_reportTimer = v10;

    v12 = v3->_reportTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __27__RPConnectionMetrics_init__block_invoke;
    handler[3] = &unk_1E7C92CE8;
    v13 = v3;
    v18 = v13;
    dispatch_source_set_event_handler(v12, handler);
    v14 = v3->_reportTimer;
    CUDispatchTimerSet();
    dispatch_resume(v3->_reportTimer);
    v13->_eventCount = 0;
    v15 = v13;
  }

  return v3;
}

void __36__RPConnectionMetrics_sharedMetrics__block_invoke()
{
  v0 = objc_alloc_init(RPConnectionMetrics);
  v1 = gMetrics;
  gMetrics = v0;
}

- (unsigned)lengthToBucketIndex:(unint64_t)a3
{
  if (a3 < 0x7D001)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  if (a3 <= 0x19000)
  {
    v3 = 2;
  }

  if (a3 >= 0x2801)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a3 < 0x401)
  {
    return 0;
  }

  return v4;
}

- (unsigned)linkTypeToBucketIndex:(int)a3
{
  if ((a3 & 0xFFFFFFFE) == 8)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  if (a3 == 6)
  {
    v3 = 2;
  }

  if (a3 == 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if ((a3 - 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (unsigned)rttToBucketIndex:(unint64_t)a3
{
  if (a3 < 0x1F5)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (a3 >= 0xC9)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (a3 >= 0x65)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (a3 >= 0x33)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (a3 < 0xB)
  {
    return 0;
  }

  return v6;
}

- (void)reportMetrics
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_reportLock);
  if (self->_sendReport)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [(NSMutableDictionary *)self->_rttMetrics allKeys];
    v3 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v20;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v19 + 1) + 8 * i);
          v8 = [v7 componentsSeparatedByString:{@", "}];
          v23[0] = @"rttCount";
          v9 = [(NSMutableDictionary *)self->_rttMetrics objectForKey:v7];
          v24[0] = v9;
          v23[1] = @"linkType";
          v10 = [v8 objectAtIndexedSubscript:0];
          v24[1] = v10;
          v23[2] = @"lengthBytes";
          v11 = [v8 objectAtIndexedSubscript:1];
          v24[2] = v11;
          v23[3] = @"rttMs";
          v12 = [v8 objectAtIndexedSubscript:2];
          v24[3] = v12;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];

          CUMetricsLog();
        }

        v4 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v4);
    }

    v14 = [MEMORY[0x1E695DF90] dictionary];
    rttMetrics = self->_rttMetrics;
    self->_rttMetrics = v14;

    self->_sendReport = 0;
    self->_eventCount = 0;
    os_unfair_lock_unlock(&self->_reportLock);
    v16 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v17 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock(&self->_reportLock);
  }
}

@end