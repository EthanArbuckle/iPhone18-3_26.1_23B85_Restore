@interface WFSettingsClient
+ (void)createClientWithCompletionHandler:(id)a3;
@end

@implementation WFSettingsClient

+ (void)createClientWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [v4 errorWithDomain:@"WFSettingsClientErrorDomain" code:0 userInfo:0];
  (*(a3 + 2))(v5, 0, v6);
}

@end