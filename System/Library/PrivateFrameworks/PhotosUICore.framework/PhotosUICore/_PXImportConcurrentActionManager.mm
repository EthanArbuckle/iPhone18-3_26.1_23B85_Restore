@interface _PXImportConcurrentActionManager
+ (id)sharedInstance;
- (_PXImportConcurrentActionManager)init;
- (void)addOperation:(id)a3;
@end

@implementation _PXImportConcurrentActionManager

- (void)addOperation:(id)a3
{
  v5 = a3;
  [(NSMutableArray *)self->_operations addObject:v5];
  v4 = [v5 performAction];
}

- (_PXImportConcurrentActionManager)init
{
  v6.receiver = self;
  v6.super_class = _PXImportConcurrentActionManager;
  v2 = [(_PXImportConcurrentActionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    operations = v2->_operations;
    v2->_operations = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_26745 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_26745, &__block_literal_global_26746);
  }

  v3 = sharedInstance_sharedInstance_26747;

  return v3;
}

@end