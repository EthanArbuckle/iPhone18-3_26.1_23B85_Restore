@interface WBSTabDialogCancellationContext
+ (id)cancellationContextWithReason:(id)a3 userInfo:(id)a4;
+ (id)committedNavigationContextWithURL:(id)a3;
- (WBSTabDialogCancellationContext)initWithReason:(id)a3 userInfo:(id)a4;
@end

@implementation WBSTabDialogCancellationContext

- (WBSTabDialogCancellationContext)initWithReason:(id)a3 userInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = WBSTabDialogCancellationContext;
  v9 = [(WBSTabDialogCancellationContext *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reason, a3);
    v11 = [v8 copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v10->_userInfo, v13);

    v14 = v10;
  }

  return v10;
}

+ (id)cancellationContextWithReason:(id)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithReason:v7 userInfo:v6];

  return v8;
}

+ (id)committedNavigationContextWithURL:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = @"WBSTabDialogCancellationReasonCommittedNavigationCurrentURLKey";
    v10[0] = a3;
    v4 = MEMORY[0x1E695DF20];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 cancellationContextWithReason:@"WBSTabDialogCancellationReasonCommittedNavigation" userInfo:v6];

  return v7;
}

@end