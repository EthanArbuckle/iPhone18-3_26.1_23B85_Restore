@interface SSLazyPromise
- (BOOL)_runBlock;
- (SSLazyPromise)initWithBlock:(id)block;
- (id)resultBeforeDate:(id)date error:(id *)error;
- (id)resultWithError:(id *)error;
- (id)resultWithTimeout:(double)timeout error:(id *)error;
- (void)addErrorBlock:(id)block;
- (void)addSuccessBlock:(id)block;
@end

@implementation SSLazyPromise

- (SSLazyPromise)initWithBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = SSLazyPromise;
  v5 = [(SSPromise *)&v11 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    executeBlockLock = v5->_executeBlockLock;
    v5->_executeBlockLock = v8;
  }

  return v5;
}

- (void)addErrorBlock:(id)block
{
  blockCopy = block;
  [(SSLazyPromise *)self _runBlock];
  v5.receiver = self;
  v5.super_class = SSLazyPromise;
  [(SSPromise *)&v5 addErrorBlock:blockCopy];
}

- (void)addSuccessBlock:(id)block
{
  blockCopy = block;
  [(SSLazyPromise *)self _runBlock];
  v5.receiver = self;
  v5.super_class = SSLazyPromise;
  [(SSPromise *)&v5 addSuccessBlock:blockCopy];
}

- (id)resultBeforeDate:(id)date error:(id *)error
{
  dateCopy = date;
  [(SSLazyPromise *)self _runBlock];
  v9.receiver = self;
  v9.super_class = SSLazyPromise;
  v7 = [(SSPromise *)&v9 resultBeforeDate:dateCopy error:error];

  return v7;
}

- (id)resultWithError:(id *)error
{
  [(SSLazyPromise *)self _runBlock];
  v7.receiver = self;
  v7.super_class = SSLazyPromise;
  v5 = [(SSPromise *)&v7 resultWithError:error];

  return v5;
}

- (id)resultWithTimeout:(double)timeout error:(id *)error
{
  [(SSLazyPromise *)self _runBlock];
  v9.receiver = self;
  v9.super_class = SSLazyPromise;
  v7 = [(SSPromise *)&v9 resultWithTimeout:error error:timeout];

  return v7;
}

- (BOOL)_runBlock
{
  stateLock = [(SSPromise *)self stateLock];
  [stateLock lock];

  stateLock2 = [(SSPromise *)self stateLock];
  condition = [stateLock2 condition];

  stateLock3 = [(SSPromise *)self stateLock];
  [stateLock3 unlock];

  if (condition == 1)
  {
    return 0;
  }

  executeBlockLock = [(SSLazyPromise *)self executeBlockLock];
  [executeBlockLock lock];

  if ([(SSLazyPromise *)self executedBlock])
  {
    executeBlockLock2 = [(SSLazyPromise *)self executeBlockLock];
    [executeBlockLock2 unlock];

    return 0;
  }

  objc_initWeak(&location, self);
  block = [(SSLazyPromise *)self block];
  v11 = objc_loadWeakRetained(&location);
  (block)[2](block, v11);

  [(SSLazyPromise *)self setExecutedBlock:1];
  executeBlockLock3 = [(SSLazyPromise *)self executeBlockLock];
  [executeBlockLock3 unlock];

  objc_destroyWeak(&location);
  return 1;
}

@end