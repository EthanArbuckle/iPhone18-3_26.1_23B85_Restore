@interface PXGLoadingStatusComponent
- ($A5A652246548B43F8BC05201A1C72A70)mutableStates;
- (PXGLoadingStatusComponent)initWithDataStore:(id)a3;
- (const)states;
- (id)errorForEntity:(id)a3;
- (void)performChanges:(id)a3;
- (void)setError:(id)a3 forEntity:(id)a4;
- (void)setState:(id)a3 forEntities:(id *)a4 count:(unint64_t)a5;
- (void)willDestroyEntities:(id *)a3 count:(int64_t)a4;
@end

@implementation PXGLoadingStatusComponent

- ($A5A652246548B43F8BC05201A1C72A70)mutableStates
{
  v2 = [(PXGComponent *)self mutableDataStore];
  v3 = [v2 mutableContents];

  return v3;
}

- (void)setState:(id)a3 forEntities:(id *)a4 count:(unint64_t)a5
{
  for (i = [(PXGLoadingStatusComponent *)self mutableStates]; a5; --a5)
  {
    var0 = a4->var0;
    ++a4;
    i[var0] = a3;
  }
}

- (const)states
{
  v2 = [(PXGComponent *)self dataStore];
  v3 = [v2 contents];

  return v3;
}

- (void)setError:(id)a3 forEntity:(id)a4
{
  v4 = *&a4.var0;
  errorByEntity = self->_errorByEntity;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedInt:v4];
  [(NSMutableDictionary *)errorByEntity setObject:v7 forKeyedSubscript:v8];
}

- (id)errorForEntity:(id)a3
{
  errorByEntity = self->_errorByEntity;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&a3.var0];
  v5 = [(NSMutableDictionary *)errorByEntity objectForKeyedSubscript:v4];

  return v5;
}

- (void)willDestroyEntities:(id *)a3 count:(int64_t)a4
{
  if ([(NSMutableDictionary *)self->_errorByEntity count])
  {
    v7 = a4 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = a4;
    do
    {
      errorByEntity = self->_errorByEntity;
      var0 = a3->var0;
      ++a3;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:var0];
      [(NSMutableDictionary *)errorByEntity removeObjectForKey:v11];

      --v8;
    }

    while (v8);
  }

  v12.receiver = self;
  v12.super_class = PXGLoadingStatusComponent;
  [(PXGComponent *)&v12 willDestroyEntities:a3 count:a4];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXGLoadingStatusComponent;
  [(PXGComponent *)&v3 performChanges:a3];
}

- (PXGLoadingStatusComponent)initWithDataStore:(id)a3
{
  v7.receiver = self;
  v7.super_class = PXGLoadingStatusComponent;
  v3 = [(PXGComponent *)&v7 initWithDataStore:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    errorByEntity = v3->_errorByEntity;
    v3->_errorByEntity = v4;
  }

  return v3;
}

@end