@interface SearchUIShowPurchaseRequestSheetHandler
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIShowPurchaseRequestSheetHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v5 = MEMORY[0x1E698CFB8];
  v6 = [a3 requestIdentifier];
  [v5 presentApprovalSheetWithRequestIdentifier:v6 completion:0];
}

@end