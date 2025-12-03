@interface NSError
+ (id)error:(int64_t)error description:(id)description;
+ (id)error:(int64_t)error description:(id)description underlyingError:(id)underlyingError;
+ (id)passiveTraceError:(int64_t)error description:(id)description;
@end

@implementation NSError

+ (id)error:(int64_t)error description:(id)description
{
  descriptionCopy = @"Unknown Error (description cannot be nil)";
  if (description)
  {
    descriptionCopy = description;
  }

  else
  {
    error = 0;
  }

  v6 = [NSDictionary dictionaryWithObject:descriptionCopy forKey:NSLocalizedDescriptionKey];
  v7 = [NSError errorWithDomain:@"PerformanceTraceError" code:error userInfo:v6];

  return v7;
}

+ (id)error:(int64_t)error description:(id)description underlyingError:(id)underlyingError
{
  descriptionCopy = description;
  underlyingErrorCopy = underlyingError;
  v9 = underlyingErrorCopy;
  if (descriptionCopy)
  {
    if (underlyingErrorCopy)
    {
      v16[0] = NSLocalizedDescriptionKey;
      v16[1] = NSUnderlyingErrorKey;
      v17[0] = descriptionCopy;
      v17[1] = underlyingErrorCopy;
      v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      errorCopy = error;
      goto LABEL_7;
    }

    v12 = NSLocalizedDescriptionKey;
    v13 = @"Unknown Error (underlyingError cannot be nil)";
  }

  else
  {
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Unknown Error (description cannot be nil)";
  }

  v10 = [NSDictionary dictionaryWithObject:v13 forKey:v12];
  errorCopy = 0;
LABEL_7:
  v14 = [NSError errorWithDomain:@"PerformanceTraceError" code:errorCopy userInfo:v10];

  return v14;
}

+ (id)passiveTraceError:(int64_t)error description:(id)description
{
  descriptionCopy = @"Unknown Error (description cannot be nil)";
  if (description)
  {
    descriptionCopy = description;
  }

  else
  {
    error = 0;
  }

  v6 = [NSDictionary dictionaryWithObject:descriptionCopy forKey:NSLocalizedDescriptionKey];
  v7 = [NSError errorWithDomain:@"PerformanceTraceError" code:error userInfo:v6];

  return v7;
}

@end