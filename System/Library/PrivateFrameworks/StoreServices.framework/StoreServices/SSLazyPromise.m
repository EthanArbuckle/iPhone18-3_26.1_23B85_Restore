@interface SSLazyPromise
- (BOOL)_runBlock;
- (SSLazyPromise)initWithBlock:(id)a3;
- (id)resultBeforeDate:(id)a3 error:(id *)a4;
- (id)resultWithError:(id *)a3;
- (id)resultWithTimeout:(double)a3 error:(id *)a4;
- (void)addErrorBlock:(id)a3;
- (void)addSuccessBlock:(id)a3;
@end

@implementation SSLazyPromise

- (SSLazyPromise)initWithBlock:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SSLazyPromise;
  v5 = [(SSPromise *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    executeBlockLock = v5->_executeBlockLock;
    v5->_executeBlockLock = v8;
  }

  return v5;
}

- (void)addErrorBlock:(id)a3
{
  v4 = a3;
  [(SSLazyPromise *)self _runBlock];
  v5.receiver = self;
  v5.super_class = SSLazyPromise;
  [(SSPromise *)&v5 addErrorBlock:v4];
}

- (void)addSuccessBlock:(id)a3
{
  v4 = a3;
  [(SSLazyPromise *)self _runBlock];
  v5.receiver = self;
  v5.super_class = SSLazyPromise;
  [(SSPromise *)&v5 addSuccessBlock:v4];
}

- (id)resultBeforeDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(SSLazyPromise *)self _runBlock];
  v9.receiver = self;
  v9.super_class = SSLazyPromise;
  v7 = [(SSPromise *)&v9 resultBeforeDate:v6 error:a4];

  return v7;
}

- (id)resultWithError:(id *)a3
{
  [(SSLazyPromise *)self _runBlock];
  v7.receiver = self;
  v7.super_class = SSLazyPromise;
  v5 = [(SSPromise *)&v7 resultWithError:a3];

  return v5;
}

- (id)resultWithTimeout:(double)a3 error:(id *)a4
{
  [(SSLazyPromise *)self _runBlock];
  v9.receiver = self;
  v9.super_class = SSLazyPromise;
  v7 = [(SSPromise *)&v9 resultWithTimeout:a4 error:a3];

  return v7;
}

- (BOOL)_runBlock
{
  v3 = [(SSPromise *)self stateLock];
  [v3 lock];

  v4 = [(SSPromise *)self stateLock];
  v5 = [v4 condition];

  v6 = [(SSPromise *)self stateLock];
  [v6 unlock];

  if (v5 == 1)
  {
    return 0;
  }

  v7 = [(SSLazyPromise *)self executeBlockLock];
  [v7 lock];

  if ([(SSLazyPromise *)self executedBlock])
  {
    v8 = [(SSLazyPromise *)self executeBlockLock];
    [v8 unlock];

    return 0;
  }

  objc_initWeak(&location, self);
  v10 = [(SSLazyPromise *)self block];
  v11 = objc_loadWeakRetained(&location);
  (v10)[2](v10, v11);

  [(SSLazyPromise *)self setExecutedBlock:1];
  v12 = [(SSLazyPromise *)self executeBlockLock];
  [v12 unlock];

  objc_destroyWeak(&location);
  return 1;
}

@end