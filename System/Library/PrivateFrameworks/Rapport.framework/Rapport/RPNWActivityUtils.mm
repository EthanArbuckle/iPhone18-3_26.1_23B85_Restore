@interface RPNWActivityUtils
+ (id)activityFromToken:(id)a3;
+ (id)tokenForActivity:(id)a3;
+ (id)updateOptions:(id)a3 withNWActivityMetrics:(id)a4;
+ (void)failActivity:(id)a3 error:(id)a4;
@end

@implementation RPNWActivityUtils

+ (id)tokenForActivity:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3 && nw_activity_is_activated())
  {
    *uu = 0;
    v8 = 0;
    nw_activity_get_token();
    v4 = 0;
    if (!uuid_is_null(uu))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)activityFromToken:(id)a3
{
  v3 = a3;
  v6[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6[0] = 0;
    v6[1] = 0;
    [a3 getUUIDBytes:v6];
    v3 = nw_activity_create_from_token();
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (void)failActivity:(id)a3 error:(id)a4
{
  v7 = a4;
  v5 = a3;
  if (v7)
  {
    v6 = [v7 domain];
    [v6 UTF8String];

    [v7 code];
    nw_activity_complete_with_reason_and_underlying_error_string();
  }

  else
  {
    nw_activity_complete_with_reason();
  }
}

+ (id)updateOptions:(id)a3 withNWActivityMetrics:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [v5 mutableCopy];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v7 setObject:v6 forKeyedSubscript:@"nwActivityMetrics"];

    v5 = v7;
  }

  return v5;
}

@end