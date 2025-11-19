@interface STStorageSizeBlockOperation
+ (id)operationWithSizeBlock:(id)a3;
- (void)main;
@end

@implementation STStorageSizeBlockOperation

+ (id)operationWithSizeBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(STStorageSizeBlockOperation);
  [(STStorageSizeBlockOperation *)v4 setSizeBlock:v3];

  return v4;
}

- (void)main
{
  v3 = [(STStorageSizeBlockOperation *)self app];
  sizeBlock = self->_sizeBlock;
  v7 = 0;
  v5 = sizeBlock[2]();
  v6 = v7;
  [(STStorageOperation *)self setError:v6];
  [(STStorageSizeOperation *)self setSize:v5];
}

@end