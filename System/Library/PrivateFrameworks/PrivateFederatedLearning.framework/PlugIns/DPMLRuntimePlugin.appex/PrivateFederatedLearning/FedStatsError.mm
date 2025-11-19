@interface FedStatsError
+ (id)errorWithCode:(int64_t)a3 description:(id)a4;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5;
+ (id)errorWithCode:(int64_t)a3 underlyingErrors:(id)a4 description:(id)a5;
@end

@implementation FedStatsError

+ (id)errorWithCode:(int64_t)a3 description:(id)a4
{
  v5 = a4;
  v6 = [NSError alloc];
  v10 = NSLocalizedDescriptionKey;
  v11 = v5;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v8 = [v6 initWithDomain:@"com.apple.FedStats" code:a3 userInfo:v7];

  return v8;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5
{
  if (a4)
  {
    v7 = a5;
    v8 = a4;
    v9 = [NSError alloc];
    v15[0] = NSLocalizedDescriptionKey;
    v15[1] = NSUnderlyingErrorKey;
    v16[0] = v7;
    v16[1] = v8;
    v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    v11 = [v9 initWithDomain:@"com.apple.FedStats" code:a3 userInfo:v10];
  }

  else
  {
    v12 = a5;
    v13 = 0;
    v11 = [FedStatsError errorWithCode:a3 description:v12];
  }

  return v11;
}

+ (id)errorWithCode:(int64_t)a3 underlyingErrors:(id)a4 description:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [NSError alloc];
  v13[0] = NSLocalizedDescriptionKey;
  v13[1] = NSMultipleUnderlyingErrorsKey;
  v14[0] = v7;
  v14[1] = v8;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [v9 initWithDomain:@"com.apple.FedStats" code:a3 userInfo:v10];

  return v11;
}

@end