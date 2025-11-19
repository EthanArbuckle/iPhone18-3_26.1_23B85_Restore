@interface WBSTabDialogInformation
- ($74EE3C8A9A83D7DA9DE4D87A9C9037E2)slot;
- (BOOL)isExemptFromCancellationInContext:(id)a3;
- (WBSTabDialogInformation)initWithPresentationBlock:(id)a3 dismissalBlock:(id)a4 blocksWebProcessUntilDismissed:(BOOL)a5;
- (id)description;
- (void)dismissWithResponse:(id)a3;
- (void)presentIfNeeded;
@end

@implementation WBSTabDialogInformation

- (WBSTabDialogInformation)initWithPresentationBlock:(id)a3 dismissalBlock:(id)a4 blocksWebProcessUntilDismissed:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = WBSTabDialogInformation;
  v10 = [(WBSTabDialogInformation *)&v18 init];
  if (v10)
  {
    v11 = MEMORY[0x1BFB13CE0](v9);
    dismissalBlock = v10->_dismissalBlock;
    v10->_dismissalBlock = v11;

    v13 = MEMORY[0x1BFB13CE0](v8);
    presentationBlock = v10->_presentationBlock;
    v10->_presentationBlock = v13;

    v10->_blockingWebProcess = a5;
    cancellationExemptions = v10->_cancellationExemptions;
    v10->_cancellationExemptions = MEMORY[0x1E695E0F0];

    v16 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"NO";
  if (self->_presented)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_dismissed)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_blockingWebProcess)
  {
    v5 = @"YES";
  }

  v8 = *&self->_slot.webProcessID;
  tabID = self->_slot.tabID;
  v10 = MEMORY[0x1E696AEC0];
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v14 = [v10 stringWithFormat:@"{pid:%d, tab:0x%lx}", v8, tabID];
  v15 = [v3 stringWithFormat:@"<%@:%p presented = %@, dismissed = %@, blockingWebProcess = %@, slot = %@>", v4, self, v13, v12, v11, v14];;

  return v15;
}

- (void)presentIfNeeded
{
  if (!self->_presented && !self->_isInvokingPresentationBlock)
  {
    self->_isInvokingPresentationBlock = 1;
    v3 = (*(self->_presentationBlock + 2))();
    self->_isInvokingPresentationBlock = 0;
    if (!v3)
    {
      self->_presented = 1;
    }
  }
}

- (void)dismissWithResponse:(id)a3
{
  if (!self->_dismissed)
  {
    self->_dismissed = 1;
    (*(self->_dismissalBlock + 2))();
    self->_blockingWebProcess = 0;
  }
}

- (BOOL)isExemptFromCancellationInContext:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_cancellationExemptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isExemptFromCancellationInContext:{v4, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- ($74EE3C8A9A83D7DA9DE4D87A9C9037E2)slot
{
  tabID = self->_slot.tabID;
  v3 = *&self->_slot.webProcessID;
  result.var1 = tabID;
  result.var0 = v3;
  return result;
}

@end