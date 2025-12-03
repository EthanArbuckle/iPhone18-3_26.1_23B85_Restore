@interface PXGLoadingStatusComponent
- ($A5A652246548B43F8BC05201A1C72A70)mutableStates;
- (PXGLoadingStatusComponent)initWithDataStore:(id)store;
- (const)states;
- (id)errorForEntity:(id)entity;
- (void)performChanges:(id)changes;
- (void)setError:(id)error forEntity:(id)entity;
- (void)setState:(id)state forEntities:(id *)entities count:(unint64_t)count;
- (void)willDestroyEntities:(id *)entities count:(int64_t)count;
@end

@implementation PXGLoadingStatusComponent

- ($A5A652246548B43F8BC05201A1C72A70)mutableStates
{
  mutableDataStore = [(PXGComponent *)self mutableDataStore];
  mutableContents = [mutableDataStore mutableContents];

  return mutableContents;
}

- (void)setState:(id)state forEntities:(id *)entities count:(unint64_t)count
{
  for (i = [(PXGLoadingStatusComponent *)self mutableStates]; count; --count)
  {
    var0 = entities->var0;
    ++entities;
    i[var0] = state;
  }
}

- (const)states
{
  dataStore = [(PXGComponent *)self dataStore];
  contents = [dataStore contents];

  return contents;
}

- (void)setError:(id)error forEntity:(id)entity
{
  v4 = *&entity.var0;
  errorByEntity = self->_errorByEntity;
  v6 = MEMORY[0x277CCABB0];
  errorCopy = error;
  v8 = [v6 numberWithUnsignedInt:v4];
  [(NSMutableDictionary *)errorByEntity setObject:errorCopy forKeyedSubscript:v8];
}

- (id)errorForEntity:(id)entity
{
  errorByEntity = self->_errorByEntity;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&entity.var0];
  v5 = [(NSMutableDictionary *)errorByEntity objectForKeyedSubscript:v4];

  return v5;
}

- (void)willDestroyEntities:(id *)entities count:(int64_t)count
{
  if ([(NSMutableDictionary *)self->_errorByEntity count])
  {
    v7 = count < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    countCopy = count;
    do
    {
      errorByEntity = self->_errorByEntity;
      var0 = entities->var0;
      ++entities;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:var0];
      [(NSMutableDictionary *)errorByEntity removeObjectForKey:v11];

      --countCopy;
    }

    while (countCopy);
  }

  v12.receiver = self;
  v12.super_class = PXGLoadingStatusComponent;
  [(PXGComponent *)&v12 willDestroyEntities:entities count:count];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXGLoadingStatusComponent;
  [(PXGComponent *)&v3 performChanges:changes];
}

- (PXGLoadingStatusComponent)initWithDataStore:(id)store
{
  v7.receiver = self;
  v7.super_class = PXGLoadingStatusComponent;
  v3 = [(PXGComponent *)&v7 initWithDataStore:store];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    errorByEntity = v3->_errorByEntity;
    v3->_errorByEntity = v4;
  }

  return v3;
}

@end