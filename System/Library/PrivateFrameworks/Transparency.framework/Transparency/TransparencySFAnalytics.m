@interface TransparencySFAnalytics
+ (id)databasePath;
+ (id)logger;
- (void)backgroundPerform:(id)a3;
- (void)logHardFailureForEventNamed:(id)a3 withAttributes:(id)a4;
- (void)logMetric:(id)a3 withName:(id)a4;
- (void)logResultForEvent:(id)a3 hardFailure:(BOOL)a4 result:(id)a5;
- (void)logResultForEvent:(id)a3 hardFailure:(BOOL)a4 result:(id)a5 withAttributes:(id)a6;
- (void)logRockwellForEventNamed:(id)a3 withAttributes:(id)a4;
- (void)logSoftFailureForEventNamed:(id)a3 withAttributes:(id)a4;
- (void)logSuccessForEventNamed:(id)a3;
- (void)noteEventNamed:(id)a3;
@end

@implementation TransparencySFAnalytics

+ (id)logger
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___TransparencySFAnalytics;
  v2 = objc_msgSendSuper2(&v4, sel_logger);

  return v2;
}

+ (id)databasePath
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 processName];

  if ([v4 isEqualToString:@"swtransparencyd"])
  {
    +[SWTransparencySFAnalytics databasePath];
  }

  else
  {
    [a1 defaultAnalyticsDatabasePath:@"TransparencyAnalytics"];
  }
  v5 = ;

  return v5;
}

- (void)backgroundPerform:(id)a3
{
  v3 = a3;
  if (backgroundPerform__onceToken != -1)
  {
    [TransparencySFAnalytics backgroundPerform:];
  }

  v4 = backgroundPerform__backgroundQueue;
  v5 = backgroundPerform__analyticsGroup;
  if (backgroundPerform__backgroundQueue)
  {
    v6 = backgroundPerform__analyticsGroup == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__TransparencySFAnalytics_backgroundPerform___block_invoke_2;
    block[3] = &unk_1E8701F68;
    v11 = v3;
    dispatch_group_async(v5, v4, block);
    if ((atomic_exchange(backgroundPerform__has_transaction, 1u) & 1) == 0)
    {
      v8[0] = 0;
      v8[1] = v8;
      v8[2] = 0x3032000000;
      v8[3] = __Block_byref_object_copy__4;
      v8[4] = __Block_byref_object_dispose__4;
      v9 = os_transaction_create();
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __45__TransparencySFAnalytics_backgroundPerform___block_invoke_26;
      v7[3] = &unk_1E8701F90;
      v7[4] = v8;
      dispatch_group_notify(backgroundPerform__analyticsGroup, backgroundPerform__backgroundQueue, v7);
      _Block_object_dispose(v8, 8);
    }
  }
}

void __45__TransparencySFAnalytics_backgroundPerform___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  attr = dispatch_queue_attr_make_with_autorelease_frequency(v0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v1 = dispatch_queue_create("com.apple.transparencyd.analytics", attr);
  v2 = backgroundPerform__backgroundQueue;
  backgroundPerform__backgroundQueue = v1;

  v3 = dispatch_group_create();
  v4 = backgroundPerform__analyticsGroup;
  backgroundPerform__analyticsGroup = v3;
}

void __45__TransparencySFAnalytics_backgroundPerform___block_invoke_26(uint64_t a1)
{
  if (atomic_exchange(backgroundPerform__has_transaction, 0))
  {
    v1 = *(*(a1 + 32) + 8);
    v2 = *(v1 + 40);
    *(v1 + 40) = 0;
  }
}

- (void)logSuccessForEventNamed:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__TransparencySFAnalytics_logSuccessForEventNamed___block_invoke;
  v6[3] = &unk_1E8701FB8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(TransparencySFAnalytics *)self backgroundPerform:v6];
}

id __51__TransparencySFAnalytics_logSuccessForEventNamed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TransparencySFAnalytics;
  return objc_msgSendSuper2(&v3, sel_logSuccessForEventNamed_, v1);
}

- (void)logHardFailureForEventNamed:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__TransparencySFAnalytics_logHardFailureForEventNamed_withAttributes___block_invoke;
  v10[3] = &unk_1E8701FE0;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  [(TransparencySFAnalytics *)self backgroundPerform:v10];
}

id __70__TransparencySFAnalytics_logHardFailureForEventNamed_withAttributes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = TransparencySFAnalytics;
  return objc_msgSendSuper2(&v4, sel_logHardFailureForEventNamed_withAttributes_, v2, v1);
}

- (void)logSoftFailureForEventNamed:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__TransparencySFAnalytics_logSoftFailureForEventNamed_withAttributes___block_invoke;
  v10[3] = &unk_1E8701FE0;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  [(TransparencySFAnalytics *)self backgroundPerform:v10];
}

id __70__TransparencySFAnalytics_logSoftFailureForEventNamed_withAttributes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = TransparencySFAnalytics;
  return objc_msgSendSuper2(&v4, sel_logSoftFailureForEventNamed_withAttributes_, v2, v1);
}

- (void)logRockwellForEventNamed:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TransparencySFAnalytics;
  if ([(TransparencySFAnalytics *)&v12 respondsToSelector:sel_logRockwellFailureForEventNamed_withAttributes_])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__TransparencySFAnalytics_logRockwellForEventNamed_withAttributes___block_invoke;
    v8[3] = &unk_1E8701FE0;
    v9 = v6;
    v10 = v7;
    v11 = self;
    [(TransparencySFAnalytics *)self backgroundPerform:v8];
  }
}

id __67__TransparencySFAnalytics_logRockwellForEventNamed_withAttributes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = TransparencySFAnalytics;
  return objc_msgSendSuper2(&v4, sel_logRockwellFailureForEventNamed_withAttributes_, v2, v1);
}

- (void)noteEventNamed:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__TransparencySFAnalytics_noteEventNamed___block_invoke;
  v6[3] = &unk_1E8701FB8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(TransparencySFAnalytics *)self backgroundPerform:v6];
}

id __42__TransparencySFAnalytics_noteEventNamed___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TransparencySFAnalytics;
  return objc_msgSendSuper2(&v3, sel_noteEventNamed_, v1);
}

- (void)logResultForEvent:(id)a3 hardFailure:(BOOL)a4 result:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__TransparencySFAnalytics_logResultForEvent_hardFailure_result___block_invoke;
  v12[3] = &unk_1E8702008;
  v16 = a4;
  v13 = v8;
  v14 = v9;
  v15 = self;
  v10 = v9;
  v11 = v8;
  [(TransparencySFAnalytics *)self backgroundPerform:v12];
}

id __64__TransparencySFAnalytics_logResultForEvent_hardFailure_result___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v5.receiver = *(a1 + 48);
  v5.super_class = TransparencySFAnalytics;
  return objc_msgSendSuper2(&v5, sel_logResultForEvent_hardFailure_result_, v3, v2, v1);
}

- (void)logResultForEvent:(id)a3 hardFailure:(BOOL)a4 result:(id)a5 withAttributes:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__TransparencySFAnalytics_logResultForEvent_hardFailure_result_withAttributes___block_invoke;
  v16[3] = &unk_1E8702030;
  v21 = a4;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = self;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(TransparencySFAnalytics *)self backgroundPerform:v16];
}

id __79__TransparencySFAnalytics_logResultForEvent_hardFailure_result_withAttributes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6.receiver = *(a1 + 56);
  v6.super_class = TransparencySFAnalytics;
  return objc_msgSendSuper2(&v6, sel_logResultForEvent_hardFailure_result_withAttributes_, v2, v1, v3, v4);
}

- (void)logMetric:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__TransparencySFAnalytics_logMetric_withName___block_invoke;
  v10[3] = &unk_1E8701FE0;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  [(TransparencySFAnalytics *)self backgroundPerform:v10];
}

id __46__TransparencySFAnalytics_logMetric_withName___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v4.receiver = *(a1 + 48);
  v4.super_class = TransparencySFAnalytics;
  return objc_msgSendSuper2(&v4, sel_logMetric_withName_, v2, v1);
}

@end