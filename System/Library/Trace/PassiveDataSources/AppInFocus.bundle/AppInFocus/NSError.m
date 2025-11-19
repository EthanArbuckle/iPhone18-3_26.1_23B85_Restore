@interface NSError
+ (NSError)errorWithCode:(unint64_t)a3 description:(id)a4;
@end

@implementation NSError

+ (NSError)errorWithCode:(unint64_t)a3 description:(id)a4
{
  v5 = [NSDictionary dictionaryWithObject:a4 forKey:NSLocalizedDescriptionKey];
  v6 = [NSError errorWithDomain:@"AppInFocusPassiveDataSource" code:a3 userInfo:v5];

  return v6;
}

@end