@interface WBSTabDialogCancellationContext
+ (id)cancellationContextWithReason:(id)reason userInfo:(id)info;
+ (id)committedNavigationContextWithURL:(id)l;
- (WBSTabDialogCancellationContext)initWithReason:(id)reason userInfo:(id)info;
@end

@implementation WBSTabDialogCancellationContext

- (WBSTabDialogCancellationContext)initWithReason:(id)reason userInfo:(id)info
{
  reasonCopy = reason;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = WBSTabDialogCancellationContext;
  v9 = [(WBSTabDialogCancellationContext *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reason, reason);
    v11 = [infoCopy copy];
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

+ (id)cancellationContextWithReason:(id)reason userInfo:(id)info
{
  infoCopy = info;
  reasonCopy = reason;
  v8 = [[self alloc] initWithReason:reasonCopy userInfo:infoCopy];

  return v8;
}

+ (id)committedNavigationContextWithURL:(id)l
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (l)
  {
    v9 = @"WBSTabDialogCancellationReasonCommittedNavigationCurrentURLKey";
    v10[0] = l;
    v4 = MEMORY[0x1E695DF20];
    lCopy = l;
    v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [self cancellationContextWithReason:@"WBSTabDialogCancellationReasonCommittedNavigation" userInfo:v6];

  return v7;
}

@end