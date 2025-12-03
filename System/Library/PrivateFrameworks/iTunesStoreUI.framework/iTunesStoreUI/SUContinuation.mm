@interface SUContinuation
- (void)sendErrorToDelegate:(id)delegate;
- (void)sendFinishToDelegate;
@end

@implementation SUContinuation

- (void)sendErrorToDelegate:(id)delegate
{
  selfCopy = self;
  delegate = self->_delegate;

  [(SUContinuationDelegate *)delegate continuation:self failedWithError:delegate];
}

- (void)sendFinishToDelegate
{
  selfCopy = self;
  delegate = self->_delegate;

  [(SUContinuationDelegate *)delegate continuationFinished:self];
}

@end