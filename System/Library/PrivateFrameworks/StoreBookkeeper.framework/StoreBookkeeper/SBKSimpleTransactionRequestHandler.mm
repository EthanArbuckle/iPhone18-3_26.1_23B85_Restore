@interface SBKSimpleTransactionRequestHandler
- (SBKSimpleTransactionRequestHandler)initWithBagContext:(id)a3;
- (void)cancelWithError:(id)a3;
- (void)scheduleTransaction:(id)a3 finishedBlock:(id)a4;
- (void)timeout;
@end

@implementation SBKSimpleTransactionRequestHandler

- (void)cancelWithError:(id)a3
{
  v5 = a3;
  self->_canceled = 1;
  v4 = [(SBKSimpleTransactionRequestHandler *)self transactionController];
  if (v5)
  {
    [v4 cancelAllTransactionsCancelCode:{objc_msgSend(v5, "code")}];
  }

  else
  {
    [v4 cancelAllTransactions];
  }
}

- (void)timeout
{
  if (![(SBKTransactionController *)self->_transactionController isIdle])
  {
    v4 = [(SBKTransactionController *)self->_transactionController currentTransaction];
    v3 = [SBKStoreError transactionTimeoutErrorWithTransaction:v4 underlyingError:0];
    [(SBKSimpleTransactionRequestHandler *)self cancelWithError:v3];
  }
}

- (void)scheduleTransaction:(id)a3 finishedBlock:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  v8 = [(SBKSimpleTransactionRequestHandler *)self transactionController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SBKSimpleTransactionRequestHandler_scheduleTransaction_finishedBlock___block_invoke;
  v10[3] = &unk_279D231F0;
  v11 = v7;
  v9 = v7;
  [v8 scheduleTransaction:v6 withTransactionFinishedBlock:v10];
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

- (SBKSimpleTransactionRequestHandler)initWithBagContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBKSimpleTransactionRequestHandler;
  v5 = [(SBKSimpleTransactionRequestHandler *)&v12 init];
  if (v5)
  {
    v6 = [SBKTransactionController alloc];
    v7 = [v4 domain];
    v8 = [v4 syncRequestURL];
    v9 = [(SBKTransactionController *)v6 initWithDomain:v7 requestURL:v8];
    transactionController = v5->_transactionController;
    v5->_transactionController = v9;
  }

  return v5;
}

@end