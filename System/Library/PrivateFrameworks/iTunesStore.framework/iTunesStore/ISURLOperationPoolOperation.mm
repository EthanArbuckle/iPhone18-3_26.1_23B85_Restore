@interface ISURLOperationPoolOperation
- (BOOL)containsOperation:(id)a3;
- (ISURLOperation)mainOperation;
- (void)_forwardResponseFromOperation:(id)a3 toOperation:(id)a4;
- (void)addOperation:(id)a3;
- (void)cancelOperation:(id)a3;
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

- (void)addOperation:(id)a3
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

  [(NSMutableArray *)operations addObject:a3];
  [(ISOperation *)self unlock];
  if (v7)
  {
    [(ISURLOperationPoolOperation *)self _forwardResponseFromOperation:v7 toOperation:a3];
  }
}

- (void)cancelOperation:(id)a3
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

- (BOOL)containsOperation:(id)a3
{
  [(ISOperation *)self lock];
  LOBYTE(a3) = [(NSMutableArray *)self->_operations indexOfObjectIdenticalTo:a3]!= 0x7FFFFFFFFFFFFFFFLL;
  [(ISOperation *)self unlock];
  return a3;
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
  v3 = [(ISURLOperationPoolOperation *)self mainOperation];
  v9 = 0;
  v4 = [(ISOperation *)self runSubOperation:v3 returningError:&v9];
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
      -[ISURLOperationPoolOperation _forwardResponseFromOperation:toOperation:](self, "_forwardResponseFromOperation:toOperation:", v3, [v5 objectAtIndex:i]);
    }
  }
}

- (void)_forwardResponseFromOperation:(id)a3 toOperation:(id)a4
{
  v6 = [a3 error];
  v7 = [a3 success];
  [a4 setError:v6];
  [a4 setResponse:{objc_msgSend(a3, "response")}];
  [a4 setSuccess:v7];
  v8 = [a4 delegate];
  if (v7)
  {
    v9 = [objc_msgSend(a3 "dataProvider")];
    if (objc_opt_respondsToSelector())
    {
      [v8 operation:a4 finishedWithOutput:v9];
    }

    if (objc_opt_respondsToSelector())
    {

      [v8 operationFinished:a4];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __73__ISURLOperationPoolOperation__forwardResponseFromOperation_toOperation___block_invoke;
    v10[3] = &unk_27A671388;
    v10[4] = v8;
    v10[5] = a4;
    v10[6] = v6;
    [a4 delegateDispatch:v10];
  }
}

@end