@interface WBSTabDialogCancellationExemption
+ (id)committedNavigationExemption;
+ (id)provisionalNavigationExemption;
+ (id)sameOriginNavigationExemption:(id)a3;
- (WBSTabDialogCancellationExemption)initWithCancellationHandler:(id)a3;
@end

@implementation WBSTabDialogCancellationExemption

- (WBSTabDialogCancellationExemption)initWithCancellationHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSTabDialogCancellationExemption;
  v5 = [(WBSTabDialogCancellationExemption *)&v10 init];
  if (v5)
  {
    v6 = MEMORY[0x1BFB13CE0](v4);
    cancellationExemptionHandler = v5->_cancellationExemptionHandler;
    v5->_cancellationExemptionHandler = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)provisionalNavigationExemption
{
  v2 = [[a1 alloc] initWithCancellationHandler:&__block_literal_global_107];

  return v2;
}

uint64_t __67__WBSTabDialogCancellationExemption_provisionalNavigationExemption__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 reason];
  v3 = [v2 isEqualToString:@"WBSTabDialogCancellationReasonProvisionalNavigation"];

  return v3;
}

+ (id)committedNavigationExemption
{
  v2 = [[a1 alloc] initWithCancellationHandler:&__block_literal_global_2_0];

  return v2;
}

uint64_t __65__WBSTabDialogCancellationExemption_committedNavigationExemption__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 reason];
  v3 = [v2 isEqualToString:@"WBSTabDialogCancellationReasonCommittedNavigation"];

  return v3;
}

+ (id)sameOriginNavigationExemption:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__WBSTabDialogCancellationExemption_sameOriginNavigationExemption___block_invoke;
  v9[3] = &unk_1E7FCAD80;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithCancellationHandler:v9];

  return v7;
}

uint64_t __67__WBSTabDialogCancellationExemption_sameOriginNavigationExemption___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 reason];
  v5 = [v4 isEqualToString:@"WBSTabDialogCancellationReasonCommittedNavigation"];

  if (v5)
  {
    v6 = [v3 userInfo];
    v7 = [v6 safari_URLForKey:@"WBSTabDialogCancellationReasonCommittedNavigationCurrentURLKey"];

    v8 = [v7 safari_hasSameOriginAsURL:*(a1 + 32)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end