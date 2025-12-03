@interface SearchUIShowPurchaseRequestSheetHandler
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIShowPurchaseRequestSheetHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  v5 = MEMORY[0x1E698CFB8];
  requestIdentifier = [command requestIdentifier];
  [v5 presentApprovalSheetWithRequestIdentifier:requestIdentifier completion:0];
}

@end