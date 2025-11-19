@interface _PXStoryInternalErrorRecoveryAttempter
- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (_PXStoryInternalErrorRecoveryAttempter)initWithRecoveryAttempter:(id)a3;
- (id)description;
- (id)recoveryAttempter;
- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 delegate:(id)a5 didRecoverSelector:(SEL)a6 contextInfo:(void *)a7;
@end

@implementation _PXStoryInternalErrorRecoveryAttempter

- (id)recoveryAttempter
{
  WeakRetained = objc_loadWeakRetained(&self->_recoveryAttempter);

  return WeakRetained;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (sel_attemptRecoveryFromError_optionIndex_delegate_didRecoverSelector_contextInfo_ == a3 || sel_attemptRecoveryFromError_optionIndex_ == a3)
  {
    v4 = [(_PXStoryInternalErrorRecoveryAttempter *)self recoveryAttempter];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PXStoryInternalErrorRecoveryAttempter;
    v5 = [(_PXStoryInternalErrorRecoveryAttempter *)&v7 respondsToSelector:a3];
  }

  return v5 & 1;
}

- (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_PXStoryInternalErrorRecoveryAttempter *)self recoveryAttempter];
  LOBYTE(a4) = [v7 attemptRecoveryFromError:v6 optionIndex:a4];

  return a4;
}

- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 delegate:(id)a5 didRecoverSelector:(SEL)a6 contextInfo:(void *)a7
{
  v12 = a5;
  v13 = a3;
  v14 = [(_PXStoryInternalErrorRecoveryAttempter *)self recoveryAttempter];
  [v14 attemptRecoveryFromError:v13 optionIndex:a4 delegate:v12 didRecoverSelector:a6 contextInfo:a7];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(_PXStoryInternalErrorRecoveryAttempter *)self recoveryAttempter];
  v6 = [v3 initWithFormat:@"<%@; %p, recoveryAttempter: %@>", v4, self, v5];

  return v6;
}

- (_PXStoryInternalErrorRecoveryAttempter)initWithRecoveryAttempter:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _PXStoryInternalErrorRecoveryAttempter;
  v5 = [(_PXStoryInternalErrorRecoveryAttempter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_recoveryAttempter, v4);
  }

  return v6;
}

@end