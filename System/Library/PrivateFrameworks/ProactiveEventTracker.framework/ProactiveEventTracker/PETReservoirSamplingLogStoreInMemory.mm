@interface PETReservoirSamplingLogStoreInMemory
- ($BC5B52E09B2B7D90AC3928E0EFF6AC05)remap:(unint64_t *)remap;
- (BOOL)appendData:(id)data andReturnMapPointer:(id *)pointer;
- (BOOL)attemptToRecreate;
- (PETReservoirSamplingLogStoreInMemory)init;
@end

@implementation PETReservoirSamplingLogStoreInMemory

- (BOOL)attemptToRecreate
{
  v3 = objc_opt_new();
  data = self->_data;
  self->_data = v3;

  return 1;
}

- (BOOL)appendData:(id)data andReturnMapPointer:(id *)pointer
{
  [(NSMutableData *)self->_data appendData:data];
  if (pointer)
  {
    *pointer = [(NSMutableData *)self->_data mutableBytes];
  }

  return 1;
}

- ($BC5B52E09B2B7D90AC3928E0EFF6AC05)remap:(unint64_t *)remap
{
  if (remap)
  {
    *remap = [(NSMutableData *)self->_data length];
  }

  data = self->_data;

  return [(NSMutableData *)data mutableBytes];
}

- (PETReservoirSamplingLogStoreInMemory)init
{
  v6.receiver = self;
  v6.super_class = PETReservoirSamplingLogStoreInMemory;
  v2 = [(PETReservoirSamplingLogStoreInMemory *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    data = v2->_data;
    v2->_data = v3;
  }

  return v2;
}

@end