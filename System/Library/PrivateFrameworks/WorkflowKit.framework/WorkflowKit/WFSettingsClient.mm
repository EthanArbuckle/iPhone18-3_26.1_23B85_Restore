@interface WFSettingsClient
+ (void)createClientWithCompletionHandler:(id)handler;
@end

@implementation WFSettingsClient

+ (void)createClientWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x1E696ABC0];
  handlerCopy = handler;
  v6 = [v4 errorWithDomain:@"WFSettingsClientErrorDomain" code:0 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v6);
}

@end