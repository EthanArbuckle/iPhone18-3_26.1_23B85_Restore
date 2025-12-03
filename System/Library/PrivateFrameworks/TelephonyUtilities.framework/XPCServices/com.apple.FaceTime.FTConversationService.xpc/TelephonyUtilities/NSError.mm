@interface NSError
- (NSError)conversationServiceDataSourceError;
@end

@implementation NSError

- (NSError)conversationServiceDataSourceError
{
  domain = [(NSError *)self domain];
  v4 = [NSError errorWithDomain:domain code:[(NSError *)self code] userInfo:0];

  v8 = NSUnderlyingErrorKey;
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [NSError errorWithDomain:@"com.apple.FaceTime.FTConversationService" code:2 userInfo:v5];

  return v6;
}

@end