@interface PXErrorRecoveryAttempter
- (int64_t)_alertActionStyleForRecoveryOptionAtIndex:(unint64_t)index;
- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index delegate:(id)delegate didRecoverSelector:(SEL)selector contextInfo:(void *)info;
@end

@implementation PXErrorRecoveryAttempter

- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index delegate:(id)delegate didRecoverSelector:(SEL)selector contextInfo:(void *)info
{
  delegateCopy = delegate;
  errorCopy = error;
  recoveryOptions = [(PXErrorRecoveryAttempter *)self recoveryOptions];
  v15 = [recoveryOptions objectAtIndexedSubscript:index];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __105__PXErrorRecoveryAttempter_attemptRecoveryFromError_optionIndex_delegate_didRecoverSelector_contextInfo___block_invoke;
  v17[3] = &unk_1E7735F50;
  v18 = delegateCopy;
  selectorCopy = selector;
  infoCopy = info;
  v16 = delegateCopy;
  [v15 _attemptRecoveryFromError:errorCopy completionHandler:v17];
}

id __105__PXErrorRecoveryAttempter_attemptRecoveryFromError_optionIndex_delegate_didRecoverSelector_contextInfo___block_invoke(void *a1, uint64_t a2)
{
  result = a1[4];
  if (result)
  {
    v5 = a1[5];
    if (v5)
    {
      return [result v5];
    }
  }

  return result;
}

- (int64_t)_alertActionStyleForRecoveryOptionAtIndex:(unint64_t)index
{
  recoveryOptions = [(PXErrorRecoveryAttempter *)self recoveryOptions];
  v5 = [recoveryOptions objectAtIndex:index];

  style = [v5 style];
  if (style == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = style == 1;
  }

  return v7;
}

@end