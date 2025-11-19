@interface PSITable
- (PSITable)initWithDelegate:(id)a3 searchable:(BOOL)a4 writable:(BOOL)a5;
- (PSITableDelegate)delegate;
- (void)dealloc;
- (void)finalizze;
@end

@implementation PSITable

- (PSITableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)finalizze
{
  if (self->_finalizzeWasCalled)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PSITable.m" lineNumber:35 description:@"finalizze called multiple times"];
  }

  self->_finalizzeWasCalled = 1;
}

- (void)dealloc
{
  if (!self->_finalizzeWasCalled)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PSITable.m" lineNumber:31 description:@"finalizze not called before word embedding table deallocation"];
  }

  v5.receiver = self;
  v5.super_class = PSITable;
  [(PSITable *)&v5 dealloc];
}

- (PSITable)initWithDelegate:(id)a3 searchable:(BOOL)a4 writable:(BOOL)a5
{
  v6 = a3;
  if (v6)
  {
    v10.receiver = self;
    v10.super_class = PSITable;
    v7 = [(PSITable *)&v10 init];
    v8 = v7;
    if (v7)
    {
      objc_storeWeak(&v7->_delegate, v6);
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

@end