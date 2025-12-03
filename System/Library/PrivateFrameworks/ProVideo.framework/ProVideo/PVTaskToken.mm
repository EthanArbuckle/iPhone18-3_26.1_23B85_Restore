@interface PVTaskToken
- (PVTaskToken)initWithPool:(id)pool tokenId:(unint64_t)id;
- (PVTaskTokenPool)pool;
- (void)dealloc;
- (void)returnToPool;
@end

@implementation PVTaskToken

- (void)returnToPool
{
  pool = [(PVTaskToken *)self pool];

  if (pool)
  {
    pool2 = [(PVTaskToken *)self pool];
    [pool2 returnToken:self];
  }
}

- (PVTaskToken)initWithPool:(id)pool tokenId:(unint64_t)id
{
  poolCopy = pool;
  v10.receiver = self;
  v10.super_class = PVTaskToken;
  v7 = [(PVTaskToken *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_pool, poolCopy);
    v8->_tokenId = id;
    [(PVTaskToken *)v8 setReturned:0];
  }

  return v8;
}

- (void)dealloc
{
  if (![(PVTaskToken *)self returned])
  {
    [(PVTaskToken *)self returnToPool];
  }

  v3.receiver = self;
  v3.super_class = PVTaskToken;
  [(PVTaskToken *)&v3 dealloc];
}

- (PVTaskTokenPool)pool
{
  WeakRetained = objc_loadWeakRetained(&self->_pool);

  return WeakRetained;
}

@end