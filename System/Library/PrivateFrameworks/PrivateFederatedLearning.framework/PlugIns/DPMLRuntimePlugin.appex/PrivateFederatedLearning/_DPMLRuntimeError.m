@interface _DPMLRuntimeError
+ (id)errorWithCode:(int64_t)a3 description:(id)a4;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5;
+ (id)errorWithCode:(int64_t)a3 underlyingErrors:(id)a4 description:(id)a5;
@end

@implementation _DPMLRuntimeError

+ (id)errorWithCode:(int64_t)a3 description:(id)a4
{
  v10 = NSLocalizedDescriptionKey;
  v11 = a4;
  v5 = a4;
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [NSError alloc];

  v8 = [v7 initWithDomain:@"com.apple.DPMLRuntime" code:a3 userInfo:v6];

  return v8;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4 description:(id)a5
{
  if (a4)
  {
    v15[0] = NSLocalizedDescriptionKey;
    v15[1] = NSUnderlyingErrorKey;
    v16[0] = a5;
    v16[1] = a4;
    v7 = a5;
    v8 = a4;
    v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v10 = [NSError alloc];

    v11 = [v10 initWithDomain:@"com.apple.DPMLRuntime" code:a3 userInfo:v9];
  }

  else
  {
    v12 = a5;
    v13 = 0;
    v11 = [_DPMLRuntimeError errorWithCode:a3 description:v12];
  }

  return v11;
}

+ (id)errorWithCode:(int64_t)a3 underlyingErrors:(id)a4 description:(id)a5
{
  if (a4)
  {
    v15[0] = NSLocalizedDescriptionKey;
    v15[1] = NSMultipleUnderlyingErrorsKey;
    v16[0] = a5;
    v16[1] = a4;
    v7 = a5;
    v8 = a4;
    v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v10 = [NSError alloc];

    v11 = [v10 initWithDomain:@"com.apple.DPMLRuntime" code:a3 userInfo:v9];
  }

  else
  {
    v12 = a5;
    v13 = 0;
    v11 = [_DPMLRuntimeError errorWithCode:a3 description:v12];
  }

  return v11;
}

@end