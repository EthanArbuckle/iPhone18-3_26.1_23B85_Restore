@interface ISURLOperationPoolOperation
- (BOOL)containsOperation:(id)operation;
- (ISURLOperation)mainOperation;
- (void)_forwardResponseFromOperation:(id)operation toOperation:(id)toOperation;
- (void)addOperation:(id)operation;
- (void)cancelOperation:(id)operation;
- (void)dealloc;
- (void)run;
@end

@implementation ISURLOperationPoolOperation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISURLOperationPoolOperation;
  [(ISURLOperationPoolOperation *)&v3 dealloc];
}

- (void)addOperation:(id)operation
{
  [(ISOperation *)self lock];
  operations = self->_operations;
  if (!operations)
  {
    operations = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_operations = operations;
  }

  if (self->_forwardImmediately && (v6 = [(NSMutableArray *)operations count], operations = self->_operations, v6))
  {
    v7 = [(NSMutableArray *)operations objectAtIndex:0];
    operations = self->_operations;
  }

  else
  {
    v7 = 0;
  }

  [(NSMutableArray *)operations addObject:operation];
  [(ISOperation *)self unlock];
  if (v7)
  {
    [(ISURLOperationPoolOperation *)self _forwardResponseFromOperation:v7 toOperation:operation];
  }
}

- (void)cancelOperation:(id)operation
{
  [(ISOperation *)self lock];
  v4 = self->_cancelCount + 1;
  self->_cancelCount = v4;
  v5 = [(NSMutableArray *)self->_operations count];
  [(ISOperation *)self unlock];
  if (v4 >= v5)
  {

    [(ISOperation *)self cancel];
  }
}

- (BOOL)containsOperation:(id)operation
{
  [(ISOperation *)self lock];
  LOBYTE(operation) = [(NSMutableArray *)self->_operations indexOfObjectIdenticalTo:operation]!= 0x7FFFFFFFFFFFFFFFLL;
  [(ISOperation *)self unlock];
  return operation;
}

- (ISURLOperation)mainOperation
{
  [(ISOperation *)self lock];
  if ([(NSMutableArray *)self->_operations count])
  {
    v3 = [(NSMutableArray *)self->_operations objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  [(ISOperation *)self unlock];
  return v3;
}

- (void)run
{
  mainOperation = [(ISURLOperationPoolOperation *)self mainOperation];
  v9 = 0;
  v4 = [(ISOperation *)self runSubOperation:mainOperation returningError:&v9];
  [(ISOperation *)self setError:v9];
  [(ISOperation *)self setSuccess:v4];
  [(ISOperation *)self lock];
  self->_forwardImmediately = 1;
  v5 = [(NSMutableArray *)self->_operations copy];
  [(ISOperation *)self unlock];
  v6 = [v5 count];
  if (v6 >= 2)
  {
    v7 = v6;
    for (i = 1; i != v7; ++i)
    {
      -[ISURLOperationPoolOperation _forwardResponseFromOperation:toOperation:](self, "_forwardResponseFromOperation:toOperation:", mainOperation, [v5 objectAtIndex:i]);
    }
  }
}

- (void)_forwardResponseFromOperation:(id)operation toOperation:(id)toOperation
{
  error = [operation error];
  success = [operation success];
  [toOperation setError:error];
  [toOperation setResponse:{objc_msgSend(operation, "response")}];
  [toOperation setSuccess:success];
  delegate = [toOperation delegate];
  if (success)
  {
    v9 = [objc_msgSend(operation "dataProvider")];
    if (objc_opt_respondsToSelector())
    {
      [delegate operation:toOperation finishedWithOutput:v9];
    }

    if (objc_opt_respondsToSelector())
    {

      [delegate operationFinished:toOperation];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__ISURLOperationPoolOperation__forwardResponseFromOperation_toOperation___block_invoke;
    v10[3] = &unk_27A671388;
    v10[4] = delegate;
    v10[5] = toOperation;
    v10[6] = error;
    [toOperation delegateDispatch:v10];
  }
}

@end