@interface FedStatsError
+ (id)errorWithCode:(int64_t)code description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description;
+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors description:(id)description;
@end

@implementation FedStatsError

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  v6 = [NSError alloc];
  v10 = NSLocalizedDescriptionKey;
  v11 = descriptionCopy;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

  v8 = [v6 initWithDomain:@"com.apple.FedStats" code:code userInfo:v7];

  return v8;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error description:(id)description
{
  if (error)
  {
    descriptionCopy = description;
    errorCopy = error;
    v9 = [NSError alloc];
    v15[0] = NSLocalizedDescriptionKey;
    v15[1] = NSUnderlyingErrorKey;
    v16[0] = descriptionCopy;
    v16[1] = errorCopy;
    v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    v11 = [v9 initWithDomain:@"com.apple.FedStats" code:code userInfo:v10];
  }

  else
  {
    descriptionCopy2 = description;
    v13 = 0;
    v11 = [FedStatsError errorWithCode:code description:descriptionCopy2];
  }

  return v11;
}

+ (id)errorWithCode:(int64_t)code underlyingErrors:(id)errors description:(id)description
{
  descriptionCopy = description;
  errorsCopy = errors;
  v9 = [NSError alloc];
  v13[0] = NSLocalizedDescriptionKey;
  v13[1] = NSMultipleUnderlyingErrorsKey;
  v14[0] = descriptionCopy;
  v14[1] = errorsCopy;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];

  v11 = [v9 initWithDomain:@"com.apple.FedStats" code:code userInfo:v10];

  return v11;
}

@end