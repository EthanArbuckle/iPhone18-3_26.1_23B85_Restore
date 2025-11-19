@interface TRIDeferralNotifier
+ (void)forwardDeferralsFromMonitoredActivity:(id)a3 usingDarwinNotificationName:(const char *)a4 whileExecutingBlock:(id)a5;
@end

@implementation TRIDeferralNotifier

+ (void)forwardDeferralsFromMonitoredActivity:(id)a3 usingDarwinNotificationName:(const char *)a4 whileExecutingBlock:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (a4)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"TRIDeferralNotifier.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"notificationName"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:a1 file:@"TRIDeferralNotifier.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"block"}];

LABEL_3:
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  if (v9)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __109__TRIDeferralNotifier_forwardDeferralsFromMonitoredActivity_usingDarwinNotificationName_whileExecutingBlock___block_invoke;
    v25 = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
    v26 = a4;
    v12 = xpc_activity_add_eligibility_changed_handler();
    v13 = MEMORY[0x277D425A0];
    v14 = dispatch_get_global_queue(17, 0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __109__TRIDeferralNotifier_forwardDeferralsFromMonitoredActivity_usingDarwinNotificationName_whileExecutingBlock___block_invoke_2;
    v18[3] = &unk_279DE5450;
    v20 = &v27;
    v19 = v9;
    v21 = a4;
    [v13 runAsyncOnQueue:v14 afterDelaySeconds:v18 block:1.0];
  }

  else
  {
    v12 = 0;
  }

  v15 = objc_autoreleasePoolPush();
  v11[2](v11);
  objc_autoreleasePoolPop(v15);
  atomic_store(0, v28 + 24);
  if (v12)
  {
    xpc_activity_remove_eligibility_changed_handler();
  }

  _Block_object_dispose(&v27, 8);
}

uint64_t __109__TRIDeferralNotifier_forwardDeferralsFromMonitoredActivity_usingDarwinNotificationName_whileExecutingBlock___block_invoke(uint64_t a1, xpc_activity_t activity)
{
  result = xpc_activity_should_defer(activity);
  if (result)
  {
    v4 = *(a1 + 32);

    return notify_post(v4);
  }

  return result;
}

uint64_t __109__TRIDeferralNotifier_forwardDeferralsFromMonitoredActivity_usingDarwinNotificationName_whileExecutingBlock___block_invoke_2(uint64_t result)
{
  v1 = atomic_load((*(*(result + 40) + 8) + 24));
  if (v1)
  {
    v2 = result;
    result = xpc_activity_should_defer(*(result + 32));
    if (result)
    {
      v3 = *(v2 + 48);

      return notify_post(v3);
    }
  }

  return result;
}

@end