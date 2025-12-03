@interface SBKSimpleTransactionRequestHandler
- (SBKSimpleTransactionRequestHandler)initWithBagContext:(id)context;
- (void)cancelWithError:(id)error;
- (void)scheduleTransaction:(id)transaction finishedBlock:(id)block;
- (void)timeout;
@end

@implementation SBKSimpleTransactionRequestHandler

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  self->_canceled = 1;
  transactionController = [(SBKSimpleTransactionRequestHandler *)self transactionController];
  if (errorCopy)
  {
    [transactionController cancelAllTransactionsCancelCode:{objc_msgSend(errorCopy, "code")}];
  }

  else
  {
    [transactionController cancelAllTransactions];
  }
}

- (void)timeout
{
  if (![(SBKTransactionController *)self->_transactionController isIdle])
  {
    currentTransaction = [(SBKTransactionController *)self->_transactionController currentTransaction];
    v3 = [SBKStoreError transactionTimeoutErrorWithTransaction:currentTransaction underlyingError:0];
    [(SBKSimpleTransactionRequestHandler *)self cancelWithError:v3];
  }
}

- (void)scheduleTransaction:(id)transaction finishedBlock:(id)block
{
  transactionCopy = transaction;
  v7 = [block copy];
  transactionController = [(SBKSimpleTransactionRequestHandler *)self transactionController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SBKSimpleTransactionRequestHandler_scheduleTransaction_finishedBlock___block_invoke;
  v10[3] = &unk_279D231F0;
  v11 = v7;
  v9 = v7;
  [transactionController scheduleTransaction:transactionCopy withTransactionFinishedBlock:v10];
}

uint64_t __72__SBKSimpleTransactionRequestHandler_scheduleTransaction_finishedBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return 1;
}

- (SBKSimpleTransactionRequestHandler)initWithBagContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SBKSimpleTransactionRequestHandler;
  v5 = [(SBKSimpleTransactionRequestHandler *)&v12 init];
  if (v5)
  {
    v6 = [SBKTransactionController alloc];
    domain = [contextCopy domain];
    syncRequestURL = [contextCopy syncRequestURL];
    v9 = [(SBKTransactionController *)v6 initWithDomain:domain requestURL:syncRequestURL];
    transactionController = v5->_transactionController;
    v5->_transactionController = v9;
  }

  return v5;
}

@end