@interface REDuetContextStore
- (id)_init;
- (id)isConnectedToAudioBluetoothDeviceQuery;
- (id)isConnectedToCarQuery;
- (void)registerForQuery:(id)query updateBlock:(id)block;
- (void)unregisterForQuery:(id)query;
@end

@implementation REDuetContextStore

- (id)_init
{
  v10.receiver = self;
  v10.super_class = REDuetContextStore;
  _init = [(RESingleton *)&v10 _init];
  if (_init && CoreDuetContextLibraryCore())
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v3 = get_CDClientContextClass_softClass;
    v15 = get_CDClientContextClass_softClass;
    if (!get_CDClientContextClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __get_CDClientContextClass_block_invoke;
      v11[3] = &unk_2785F9BC0;
      v11[4] = &v12;
      __get_CDClientContextClass_block_invoke(v11);
      v3 = v13[3];
    }

    v4 = v3;
    _Block_object_dispose(&v12, 8);
    userContext = [v3 userContext];
    v6 = _init[1];
    _init[1] = userContext;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v8 = _init[2];
    _init[2] = dictionary;
  }

  return _init;
}

- (id)isConnectedToCarQuery
{
  v18[2] = *MEMORY[0x277D85DE8];
  if (CoreDuetContextLibraryCore())
  {
    keyPathForCarConnectedStatus = [get_CDContextQueriesClass() keyPathForCarConnectedStatus];
    keyPathForCarplayConnectedStatus = [get_CDContextQueriesClass() keyPathForCarplayConnectedStatus];
    v4 = [get_CDContextualPredicateClass() predicateForChangeAtKeyPath:keyPathForCarConnectedStatus];
    v5 = [get_CDContextualPredicateClass() predicateForChangeAtKeyPath:keyPathForCarplayConnectedStatus];
    v18[0] = v4;
    v18[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v7 = [get_CDContextualPredicateClass() orPredicateWithSubpredicates:v6];

    predicateForIsConnectedToCar = [get_CDMDCSContextualPredicateClass() predicateForIsConnectedToCar];
    v9 = [REDuetContextQuery alloc];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__REDuetContextStore_isConnectedToCarQuery__block_invoke;
    v15[3] = &unk_2785FACE8;
    v16 = keyPathForCarConnectedStatus;
    v17 = keyPathForCarplayConnectedStatus;
    v10 = keyPathForCarplayConnectedStatus;
    v11 = keyPathForCarConnectedStatus;
    v12 = [(REDuetContextQuery *)v9 initWithPredicate:v7 remotePredicate:predicateForIsConnectedToCar name:@"connectedToCar" evaluationBlock:v15];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __43__REDuetContextStore_isConnectedToCarQuery__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v4 objectForKeyedSubscript:*(a1 + 40)];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(v6, "BOOLValue"))
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  return v7;
}

- (id)isConnectedToAudioBluetoothDeviceQuery
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (CoreDuetContextLibraryCore())
  {
    keyPathForBluetoothDataDictionary = [get_CDContextQueriesClass() keyPathForBluetoothDataDictionary];
    bluetoothDeviceTypeKey = [get_CDContextQueriesClass() bluetoothDeviceTypeKey];
    v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self.%@.value.%@ in %@", keyPathForBluetoothDataDictionary, bluetoothDeviceTypeKey, &unk_283BBD998];
    v5 = [get_CDContextualPredicateClass() predicateForKeyPath:keyPathForBluetoothDataDictionary withPredicate:v4];
    v6 = [get_CDContextQueriesClass() predicateForBluetoothConnectionStatus:1];
    v7 = [get_CDContextQueriesClass() predicateForBluetoothConnectionStatus:0];
    v17[0] = v6;
    v17[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v9 = [get_CDContextualPredicateClass() orPredicateWithSubpredicates:v8];

    v16[0] = v5;
    v16[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v11 = [get_CDContextualPredicateClass() andPredicateWithSubpredicates:v10];

    predicateForIsConnectedToAudioBluetoothDevice = [get_CDMDCSContextualPredicateClass() predicateForIsConnectedToAudioBluetoothDevice];
    v13 = [[REDuetContextQuery alloc] initWithPredicate:v11 remotePredicate:predicateForIsConnectedToAudioBluetoothDevice name:@"connectedToAudioBluetooth" evaluationBlock:&__block_literal_global_16];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)registerForQuery:(id)query updateBlock:(id)block
{
  if (query && block)
  {
    blockCopy = block;
    queryCopy = query;
    os_unfair_lock_lock(&REContextRegistrationLock);
    v9 = [[_REContextRegistration alloc] initWithQuery:queryCopy];

    [(_REContextRegistration *)v9 setCallback:blockCopy];
    [(_REContextRegistration *)v9 setContext:self->_context];
    uuid = [(_REContextRegistration *)v9 uuid];
    [(NSMutableDictionary *)self->_registrations setObject:v9 forKeyedSubscript:uuid];
    os_unfair_lock_unlock(&REContextRegistrationLock);
    [(_REContextRegistration *)v9 registerWithContext];
    [(_REContextRegistration *)v9 evaluateQuery];
  }
}

- (void)unregisterForQuery:(id)query
{
  if (query)
  {
    queryCopy = query;
    os_unfair_lock_lock(&REContextRegistrationLock);
    uuid = [queryCopy uuid];

    v5 = [(NSMutableDictionary *)self->_registrations objectForKeyedSubscript:uuid];
    if (v5)
    {
      [(NSMutableDictionary *)self->_registrations removeObjectForKey:uuid];
    }

    os_unfair_lock_unlock(&REContextRegistrationLock);
    [v5 deregisterWithContext];
  }
}

@end