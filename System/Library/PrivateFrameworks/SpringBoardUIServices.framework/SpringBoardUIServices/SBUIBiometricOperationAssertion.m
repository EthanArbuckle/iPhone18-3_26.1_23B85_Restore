@interface SBUIBiometricOperationAssertion
@end

@implementation SBUIBiometricOperationAssertion

void __89___SBUIBiometricOperationAssertion_initWithIdentifier_forReason_queue_invalidationBlock___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = v3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 operations];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [v5 setOperations:0];
}

void __74___SBUIBiometricOperationAssertion_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  [v2 appendString:v3 withName:@"identifier"];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) reason];
  [v4 appendString:v5 withName:@"reason"];

  v6 = *(a1 + 32);
  v8 = [*(a1 + 40) operations];
  v7 = [v8 allObjects];
  [v6 appendArraySection:v7 withName:@"operations" skipIfEmpty:0];
}

@end