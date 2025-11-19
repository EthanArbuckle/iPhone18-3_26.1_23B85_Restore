@interface PVTaskToken
- (PVTaskToken)initWithPool:(id)a3 tokenId:(unint64_t)a4;
- (PVTaskTokenPool)pool;
- (void)dealloc;
- (void)returnToPool;
@end

@implementation PVTaskToken

- (void)returnToPool
{
  v3 = [(PVTaskToken *)self pool];

  if (v3)
  {
    v4 = [(PVTaskToken *)self pool];
    [v4 returnToken:self];
  }
}

- (PVTaskToken)initWithPool:(id)a3 tokenId:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PVTaskToken;
  v7 = [(PVTaskToken *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_pool, v6);
    v8->_tokenId = a4;
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