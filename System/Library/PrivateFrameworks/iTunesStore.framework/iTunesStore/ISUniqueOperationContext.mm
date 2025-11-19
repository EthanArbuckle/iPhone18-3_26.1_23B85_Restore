@interface ISUniqueOperationContext
- (ISUniqueOperationContext)init;
- (void)dealloc;
- (void)setUniqueOperation:(id)a3 forKey:(id)a4;
@end

@implementation ISUniqueOperationContext

- (void)dealloc
{
  self->_operations = 0;

  self->_uniqueOperations = 0;
  v3.receiver = self;
  v3.super_class = ISUniqueOperationContext;
  [(ISUniqueOperationContext *)&v3 dealloc];
}

- (ISUniqueOperationContext)init
{
  v4.receiver = self;
  v4.super_class = ISUniqueOperationContext;
  v2 = [(ISUniqueOperationContext *)&v4 init];
  if (v2)
  {
    v2->_operations = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2->_uniqueOperations = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v2;
}

- (void)setUniqueOperation:(id)a3 forKey:(id)a4
{
  uniqueOperations = self->_uniqueOperations;
  if (a3)
  {
    [(NSMutableDictionary *)uniqueOperations setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)uniqueOperations removeObjectForKey:a4];
  }
}

@end