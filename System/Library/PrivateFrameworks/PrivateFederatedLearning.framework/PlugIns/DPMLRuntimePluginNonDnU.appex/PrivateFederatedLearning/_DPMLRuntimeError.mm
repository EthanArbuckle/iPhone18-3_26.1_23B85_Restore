@interface _DPMLRuntimeError
+ (id)errorWithCode:(int64_t)code description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors description:(id)description;
@end

@implementation _DPMLRuntimeError

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  v10 = NSLocalizedDescriptionKey;
  descriptionCopy = description;
  descriptionCopy2 = description;
  v6 = [NSDictionary dictionaryWithObjects:&descriptionCopy forKeys:&v10 count:1];
  v7 = [NSError alloc];

  v8 = [v7 initWithDomain:@"com.apple.DPMLRuntime" code:code userInfo:v6];

  return v8;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  if (error)
  {
    v15[0] = NSLocalizedDescriptionKey;
    v15[1] = NSUnderlyingErrorKey;
    v16[0] = description;
    v16[1] = error;
    descriptionCopy = description;
    errorCopy = error;
    v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v10 = [NSError alloc];

    v11 = [v10 initWithDomain:@"com.apple.DPMLRuntime" code:code userInfo:v9];
  }

  else
  {
    descriptionCopy2 = description;
    v13 = 0;
    v11 = [_DPMLRuntimeError errorWithCode:code description:descriptionCopy2];
  }

  return v11;
}

+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors description:(id)description
{
  if (errors)
  {
    v15[0] = NSLocalizedDescriptionKey;
    v15[1] = NSMultipleUnderlyingErrorsKey;
    v16[0] = description;
    v16[1] = errors;
    descriptionCopy = description;
    errorsCopy = errors;
    v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v10 = [NSError alloc];

    v11 = [v10 initWithDomain:@"com.apple.DPMLRuntime" code:code userInfo:v9];
  }

  else
  {
    descriptionCopy2 = description;
    v13 = 0;
    v11 = [_DPMLRuntimeError errorWithCode:code description:descriptionCopy2];
  }

  return v11;
}

@end