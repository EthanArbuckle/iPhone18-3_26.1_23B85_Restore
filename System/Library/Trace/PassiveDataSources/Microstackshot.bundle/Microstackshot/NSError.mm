@interface NSError
+ (NSError)errorWithCode:(unint64_t)code description:(id)description;
@end

@implementation NSError

+ (NSError)errorWithCode:(unint64_t)code description:(id)description
{
  v5 = [NSDictionary dictionaryWithObject:description forKey:NSLocalizedDescriptionKey];
  v6 = [NSError errorWithDomain:@"MicrostackshotPassiveDataSource" code:code userInfo:v5];

  return v6;
}

@end