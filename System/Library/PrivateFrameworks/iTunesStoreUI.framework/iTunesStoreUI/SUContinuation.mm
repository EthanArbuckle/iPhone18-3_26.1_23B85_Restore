@interface SUContinuation
- (void)sendErrorToDelegate:(id)a3;
- (void)sendFinishToDelegate;
@end

@implementation SUContinuation

- (void)sendErrorToDelegate:(id)a3
{
  v5 = self;
  delegate = self->_delegate;

  [(SUContinuationDelegate *)delegate continuation:self failedWithError:a3];
}

- (void)sendFinishToDelegate
{
  v3 = self;
  delegate = self->_delegate;

  [(SUContinuationDelegate *)delegate continuationFinished:self];
}

@end