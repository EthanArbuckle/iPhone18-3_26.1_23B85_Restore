@interface PCSServiceItemsGetTooRolledServiceTypes
@end

@implementation PCSServiceItemsGetTooRolledServiceTypes

void ___PCSServiceItemsGetTooRolledServiceTypes_block_invoke()
{
  v4[16] = *MEMORY[0x1E69E9840];
  v4[0] = kPCSBTCloudPairing;
  v4[1] = @"IdentityServicesEngram";
  v4[2] = kPCSServiceKeyboardServicesSecure;
  v4[3] = kPCSServiceRoutined;
  v4[4] = kPCSServiceHealthSync;
  v4[5] = kPCSServiceSiriProfile;
  v4[6] = kPCSServiceSiriKnowledge;
  v4[7] = kPCSServiceKnowledgestore;
  v4[8] = kPCSServiceWalletPaymentServices;
  v4[9] = kPCSServiceNewsContent;
  v4[10] = kPCSBTCloudPairing;
  v4[11] = kPCSMessagesDevelopment;
  v4[12] = kPCSMessages;
  v4[13] = kPCSIDServicesEngram;
  v4[14] = kPCSCoreSuggestionsPseudoEvents;
  v4[15] = kPCSAccessibilityVOPronunciation;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:16];
  v1 = [MEMORY[0x1E695DFD8] setWithArray:v0];
  v2 = _PCSServiceItemsGetTooRolledServiceTypes_tooRolled;
  _PCSServiceItemsGetTooRolledServiceTypes_tooRolled = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end