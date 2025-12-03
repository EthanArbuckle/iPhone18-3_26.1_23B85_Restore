@interface SBSceneDataStore
- (id)_initWithIdentifier:(id)identifier data:(id)data changeHandler:(id)handler;
- (id)objectForKey:(id)key;
- (id)safeObjectForKey:(id)key ofType:(Class)type;
- (id)unarchivedObjectOfClass:(Class)class forKey:(id)key;
- (void)_invalidate;
- (void)_invokeChangeHandler;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setArchivedObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation SBSceneDataStore

- (void)_invokeChangeHandler
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (id)_initWithIdentifier:(id)identifier data:(id)data changeHandler:(id)handler
{
  identifierCopy = identifier;
  dataCopy = data;
  handlerCopy = handler;
  if (identifierCopy)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SBSceneDataStore _initWithIdentifier:data:changeHandler:];
    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [SBSceneDataStore _initWithIdentifier:data:changeHandler:];
  if (!dataCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (handlerCopy)
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
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_data, data);
    v14 = MEMORY[0x223D6F7F0](handlerCopy);
    handler = v13->_handler;
    v13->_handler = v14;

    v13->_invalidated = 0;
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    archivedObjectCache = v13->_archivedObjectCache;
    v13->_archivedObjectCache = v16;
  }

  return v13;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v5 = [(NSMutableDictionary *)self->_data objectForKey:keyCopy];

  return v5;
}

- (id)safeObjectForKey:(id)key ofType:(Class)type
{
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v7 = [(NSMutableDictionary *)self->_data bs_safeObjectForKey:keyCopy ofType:type];

  return v7;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v7 = [(NSMutableDictionary *)self->_data objectForKey:keyCopy];
  v8 = v7;
  if (!v7 || ([v7 isEqual:objectCopy] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_data setObject:objectCopy forKey:keyCopy];
    [(SBSceneDataStore *)self _invokeChangeHandler];
  }
}

- (void)setArchivedObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v8 = [(NSMutableDictionary *)self->_archivedObjectCache objectForKey:keyCopy];
  v9 = v8;
  if (!v8 || ([v8 isEqual:objectCopy] & 1) == 0)
  {
    if (objectCopy)
    {
      v12 = 0;
      v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:objectCopy requiringSecureCoding:1 error:&v12];
      v11 = v12;
      if (!v10)
      {
        [SBSceneDataStore setArchivedObject:forKey:];
      }

      [(NSMutableDictionary *)self->_archivedObjectCache setObject:objectCopy forKey:keyCopy];
    }

    else
    {
      v10 = 0;
    }

    [(SBSceneDataStore *)self setObject:v10 forKey:keyCopy];
  }
}

- (id)unarchivedObjectOfClass:(Class)class forKey:(id)key
{
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v7 = [(NSMutableDictionary *)self->_archivedObjectCache objectForKey:keyCopy];
  if (!v7)
  {
    v8 = [(NSMutableDictionary *)self->_data objectForKey:keyCopy];
    if (v8)
    {
      v11 = 0;
      v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:class fromData:v8 error:&v11];
      v9 = v11;
      if (!v7)
      {
        [SBSceneDataStore unarchivedObjectOfClass:forKey:];
      }

      [(NSMutableDictionary *)self->_archivedObjectCache setObject:v7 forKey:keyCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  BSDispatchQueueAssertMain();
  v4 = [(NSMutableDictionary *)self->_data objectForKey:keyCopy];

  if (v4)
  {
    [(NSMutableDictionary *)self->_data removeObjectForKey:keyCopy];
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