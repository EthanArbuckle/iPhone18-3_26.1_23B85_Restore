@interface CALogger
+ (unsigned)bucketRawTrackingRequestDuration:(double)duration;
+ (void)postCAEventFor:(id)for eventInput:(id)input;
@end

@implementation CALogger

+ (void)postCAEventFor:(id)for eventInput:(id)input
{
  forCopy = for;
  inputCopy = input;
  v5 = inputCopy;
  v6 = forCopy;
  AnalyticsSendEventLazy();
}

id __38__CALogger_postCAEventFor_eventInput___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = SESDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1E0FCB000, v2, OS_LOG_TYPE_DEBUG, "Posting for %@ = %@", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (unsigned)bucketRawTrackingRequestDuration:(double)duration
{
  if (duration <= 5.0)
  {
    return 1;
  }

  if (duration <= 120.0)
  {
    return 2;
  }

  if (duration <= 600.0)
  {
    return 3;
  }

  return 4;
}

@end