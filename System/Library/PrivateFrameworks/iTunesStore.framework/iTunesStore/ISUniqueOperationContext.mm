@interface ISUniqueOperationContext
- (ISUniqueOperationContext)init;
- (void)dealloc;
- (void)setUniqueOperation:(id)operation forKey:(id)key;
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

- (void)setUniqueOperation:(id)operation forKey:(id)key
{
  uniqueOperations = self->_uniqueOperations;
  if (operation)
  {
    [(NSMutableDictionary *)uniqueOperations setObject:operation forKey:key];
  }

  else
  {
    [(NSMutableDictionary *)uniqueOperations removeObjectForKey:key];
  }
}

@end