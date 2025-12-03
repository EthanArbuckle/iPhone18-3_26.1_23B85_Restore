@interface _PXStoryInternalErrorRecoveryAttempter
- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index;
- (BOOL)respondsToSelector:(SEL)selector;
- (_PXStoryInternalErrorRecoveryAttempter)initWithRecoveryAttempter:(id)attempter;
- (id)description;
- (id)recoveryAttempter;
- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index delegate:(id)delegate didRecoverSelector:(SEL)selector contextInfo:(void *)info;
@end

@implementation _PXStoryInternalErrorRecoveryAttempter

- (id)recoveryAttempter
{
  WeakRetained = objc_loadWeakRetained(&self->_recoveryAttempter);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (sel_attemptRecoveryFromError_optionIndex_delegate_didRecoverSelector_contextInfo_ == selector || sel_attemptRecoveryFromError_optionIndex_ == selector)
  {
    recoveryAttempter = [(_PXStoryInternalErrorRecoveryAttempter *)self recoveryAttempter];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PXStoryInternalErrorRecoveryAttempter;
    v5 = [(_PXStoryInternalErrorRecoveryAttempter *)&v7 respondsToSelector:selector];
  }

  return v5 & 1;
}

- (BOOL)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index
{
  errorCopy = error;
  recoveryAttempter = [(_PXStoryInternalErrorRecoveryAttempter *)self recoveryAttempter];
  LOBYTE(index) = [recoveryAttempter attemptRecoveryFromError:errorCopy optionIndex:index];

  return index;
}

- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index delegate:(id)delegate didRecoverSelector:(SEL)selector contextInfo:(void *)info
{
  delegateCopy = delegate;
  errorCopy = error;
  recoveryAttempter = [(_PXStoryInternalErrorRecoveryAttempter *)self recoveryAttempter];
  [recoveryAttempter attemptRecoveryFromError:errorCopy optionIndex:index delegate:delegateCopy didRecoverSelector:selector contextInfo:info];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  recoveryAttempter = [(_PXStoryInternalErrorRecoveryAttempter *)self recoveryAttempter];
  v6 = [v3 initWithFormat:@"<%@; %p, recoveryAttempter: %@>", v4, self, recoveryAttempter];

  return v6;
}

- (_PXStoryInternalErrorRecoveryAttempter)initWithRecoveryAttempter:(id)attempter
{
  attempterCopy = attempter;
  v8.receiver = self;
  v8.super_class = _PXStoryInternalErrorRecoveryAttempter;
  v5 = [(_PXStoryInternalErrorRecoveryAttempter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_recoveryAttempter, attempterCopy);
  }

  return v6;
}

@end