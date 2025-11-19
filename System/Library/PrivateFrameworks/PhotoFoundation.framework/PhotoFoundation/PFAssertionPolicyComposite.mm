@interface PFAssertionPolicyComposite
- (PFAssertionPolicyComposite)init;
- (void)notifyAssertion:(id)a3;
@end

@implementation PFAssertionPolicyComposite

- (void)notifyAssertion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PFAssertionPolicyComposite *)self policies];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) notifyAssertion:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (PFAssertionPolicyComposite)init
{
  v6.receiver = self;
  v6.super_class = PFAssertionPolicyComposite;
  v2 = [(PFAssertionPolicyComposite *)&v6 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  policies = v2->_policies;
  v2->_policies = v3;

  return v2;
}

@end