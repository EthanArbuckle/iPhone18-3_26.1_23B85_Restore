@interface PNGRestrictOptions
@end

@implementation PNGRestrictOptions

void ___PNGRestrictOptions_block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (([v1 isEqualToString:@"com.apple.MessagesBlastDoorService"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.MessagesAirlockService") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"com.apple.SubcredentialUIService.SubcredentialInvitationMessagesExtension") & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"com.apple.CredentialSharingService.ShareableCredentialsMessagesExtension"))
  {
    v2 = *MEMORY[0x1E696E118];
    v5[0] = *MEMORY[0x1E696E0E8];
    v5[1] = v2;
    v6[0] = MEMORY[0x1E695E118];
    v6[1] = @"public.png";
    v5[2] = *MEMORY[0x1E696E040];
    v6[2] = MEMORY[0x1E695E118];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
    v4 = qword_1ED6D17B0;
    qword_1ED6D17B0 = v3;
  }
}

void ___PNGRestrictOptions_block_invoke_0()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696E118];
  v3[0] = *MEMORY[0x1E696E0E8];
  v3[1] = v0;
  v4[0] = MEMORY[0x1E695E118];
  v4[1] = @"public.png";
  v3[2] = *MEMORY[0x1E696E040];
  v4[2] = MEMORY[0x1E695E118];
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = _MergedGlobals_268;
  _MergedGlobals_268 = v1;
}

@end