@interface UIForcedOrientationTransactionToken
@end

@implementation UIForcedOrientationTransactionToken

void __78___UIForcedOrientationTransactionToken_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) state];
  if (v3 > 2)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = off_1E7114708[v3];
  }

  [v2 appendString:v4 withName:@"state"];
  v5 = [*(a1 + 32) ui_appendInterfaceOrientation:objc_msgSend(*(a1 + 40) withName:{"originalInterfaceOrientation"), @"originalOrientation"}];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) transactionReason];
  [v6 appendString:v7 withName:@"reason"];

  v8 = *(a1 + 32);
  v14 = [*(a1 + 40) transactionHandler];
  if (v14)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"<%@: %p>", v11, v14];
  }

  else
  {
    v12 = @"(nil)";
  }

  v13 = [v8 appendObject:v12 withName:@"handler"];
}

@end