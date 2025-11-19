@interface FLFollowUpController(ICQUI)
+ (void)icq_dismissFollowUpWithIdentifier:()ICQUI;
@end

@implementation FLFollowUpController(ICQUI)

+ (void)icq_dismissFollowUpWithIdentifier:()ICQUI
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.icloud.quota"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__FLFollowUpController_ICQUI__icq_dismissFollowUpWithIdentifier___block_invoke;
  v7[3] = &unk_27A652CF0;
  v8 = v3;
  v9 = v4;
  v5 = v4;
  v6 = v3;
  [v5 pendingFollowUpItemsWithCompletion:v7];
}

@end