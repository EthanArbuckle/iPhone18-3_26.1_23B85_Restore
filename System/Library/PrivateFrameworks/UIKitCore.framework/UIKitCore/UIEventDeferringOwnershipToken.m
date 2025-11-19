@interface UIEventDeferringOwnershipToken
@end

@implementation UIEventDeferringOwnershipToken

void __73___UIEventDeferringOwnershipToken_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73___UIEventDeferringOwnershipToken_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

id __73___UIEventDeferringOwnershipToken_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"ownerClass"];
  v3 = *(*(a1 + 40) + 40);
  if (v3 > 3)
  {
    v4 = &stru_1EFB14550;
  }

  else
  {
    v4 = off_1E70F6710[v3];
  }

  v5 = [*(a1 + 32) appendObject:v4 withName:@"owningInterfaceElementCategory"];
  v6 = [*(a1 + 32) appendPointer:*(*(a1 + 40) + 48) withName:@"ownerPointer"];
  v7 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 64) withName:{"count"), @"environments.count"}];
  v8 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 8) withName:{"count"), @"environmentsPendingInvalidation.count"}];
  v9 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 72) withName:@"target"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"reason"];
}

@end