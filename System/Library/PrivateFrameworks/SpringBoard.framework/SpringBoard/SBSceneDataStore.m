@interface SBSceneDataStore
- (id)_initWithIdentifier:(id)a3 data:(id)a4 changeHandler:(id)a5;
- (id)objectForKey:(id)a3;
- (id)safeObjectForKey:(id)a3 ofType:(Class)a4;
- (id)unarchivedObjectOfClass:(Class)a3 forKey:(id)a4;
- (void)_invalidate;
- (void)_invokeChangeHandler;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setArchivedObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation SBSceneDataStore

- (void)_invokeChangeHandler
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (id)_initWithIdentifier:(id)a3 data:(id)a4 changeHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBSceneDataStore _initWithIdentifier:data:changeHandler:];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBSceneDataStore _initWithIdentifier:data:changeHandler:];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  [SBSceneDataStore _initWithIdentifier:data:changeHandler:];
LABEL_4:
  v19.receiver = self;
  v19.super_class = SBSceneDataStore;
  v12 = [(SBSceneDataStore *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_data, a4);
    v14 = MEMORY[0x223D6F7F0](v11);
    handler = v13->_handler;
    v13->_handler = v14;

    v13->_invalidated = 0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    archivedObjectCache = v13->_archivedObjectCache;
    v13->_archivedObjectCache = v16;
  }

  return v13;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [(NSMutableDictionary *)self->_data objectForKey:v4];

  return v5;
}

- (id)safeObjectForKey:(id)a3 ofType:(Class)a4
{
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [(NSMutableDictionary *)self->_data bs_safeObjectForKey:v6 ofType:a4];

  return v7;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  BSDispatchQueueAssertMain();
  v7 = [(NSMutableDictionary *)self->_data objectForKey:v6];
  v8 = v7;
  if (!v7 || ([v7 isEqual:v9] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_data setObject:v9 forKey:v6];
    [(SBSceneDataStore *)self _invokeChangeHandler];
  }
}

- (void)setArchivedObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [(NSMutableDictionary *)self->_archivedObjectCache objectForKey:v7];
  v9 = v8;
  if (!v8 || ([v8 isEqual:v6] & 1) == 0)
  {
    if (v6)
    {
      v12 = 0;
      v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v12];
      v11 = v12;
      if (!v10)
      {
        [SBSceneDataStore setArchivedObject:forKey:];
      }

      [(NSMutableDictionary *)self->_archivedObjectCache setObject:v6 forKey:v7];
    }

    else
    {
      v10 = 0;
    }

    [(SBSceneDataStore *)self setObject:v10 forKey:v7];
  }
}

- (id)unarchivedObjectOfClass:(Class)a3 forKey:(id)a4
{
  v6 = a4;
  BSDispatchQueueAssertMain();
  v7 = [(NSMutableDictionary *)self->_archivedObjectCache objectForKey:v6];
  if (!v7)
  {
    v8 = [(NSMutableDictionary *)self->_data objectForKey:v6];
    if (v8)
    {
      v11 = 0;
      v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a3 fromData:v8 error:&v11];
      v9 = v11;
      if (!v7)
      {
        [SBSceneDataStore unarchivedObjectOfClass:forKey:];
      }

      [(NSMutableDictionary *)self->_archivedObjectCache setObject:v7 forKey:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)removeObjectForKey:(id)a3
{
  v5 = a3;
  BSDispatchQueueAssertMain();
  v4 = [(NSMutableDictionary *)self->_data objectForKey:v5];

  if (v4)
  {
    [(NSMutableDictionary *)self->_data removeObjectForKey:v5];
    [(SBSceneDataStore *)self _invokeChangeHandler];
  }
}

- (void)removeAllObjects
{
  BSDispatchQueueAssertMain();
  if ([(NSMutableDictionary *)self->_data count])
  {
    [(NSMutableDictionary *)self->_data removeAllObjects];

    [(SBSceneDataStore *)self _invokeChangeHandler];
  }
}

- (void)_invalidate
{
  self->_invalidated = 1;
  handler = self->_handler;
  self->_handler = 0;
}

- (void)_initWithIdentifier:data:changeHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)_initWithIdentifier:data:changeHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

- (void)_initWithIdentifier:data:changeHandler:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"changeHandler" object:? file:? lineNumber:? description:?];
}

- (void)setArchivedObject:forKey:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBSceneDataStore.m" lineNumber:104 description:{@"%@ (key: %@)", v1, v0}];
}

- (void)unarchivedObjectOfClass:forKey:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"SBSceneDataStore.m" lineNumber:125 description:{@"%@ (key: %@)", v1, v0}];
}

@end