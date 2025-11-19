@interface _SBHTodayViewControllerCancelTouchesAssertion
- (_SBHTodayViewControllerCancelTouchesAssertion)initWithAssertions:(id)a3;
- (void)invalidate;
@end

@implementation _SBHTodayViewControllerCancelTouchesAssertion

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(_SBHTodayViewControllerCancelTouchesAssertion *)self assertions];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (_SBHTodayViewControllerCancelTouchesAssertion)initWithAssertions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SBHTodayViewControllerCancelTouchesAssertion;
  v5 = [(_SBHTodayViewControllerCancelTouchesAssertion *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    assertions = v5->_assertions;
    v5->_assertions = v6;
  }

  return v5;
}

@end