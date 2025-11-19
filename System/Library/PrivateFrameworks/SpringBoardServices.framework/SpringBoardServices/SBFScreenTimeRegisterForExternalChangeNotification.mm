@interface SBFScreenTimeRegisterForExternalChangeNotification
@end

@implementation SBFScreenTimeRegisterForExternalChangeNotification

void ___SBFScreenTimeRegisterForExternalChangeNotification_block_invoke_2(int a1, int token)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = 0;
  notify_get_state(token, &v5);
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = @"SBScreenTimeCategory";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"SBScreenTimeTrackingChanged" object:0 userInfo:v4];
}

@end