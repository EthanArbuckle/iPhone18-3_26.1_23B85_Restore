@interface REInterfaceCache
- (BOOL)_interface:(id)_interface implementsInterface:(id)interface;
- (BOOL)_supportsCache;
- (BOOL)exportedInterfaceClass:(Class)class;
- (BOOL)exportedInterfaceProtocol:(id)protocol;
- (id)_accessInterfaceForKey:(id)key;
- (id)_init;
- (id)_queue_valueForKey:(id)key level:(unint64_t)level;
- (id)_supportedProtocols;
- (void)_enumerateMethodsOfInterface:(id)interface forProtocol:(id)protocol usingBlock:(id)block;
- (void)_enumeratePropertiesOfInterface:(id)interface forProtocol:(id)protocol usingBlock:(id)block;
- (void)enumerateExportedMethodsOfClass:(Class)class usingBlock:(id)block;
- (void)enumerateExportedMethodsOfProtocol:(id)protocol usingBlock:(id)block;
- (void)enumerateExportedPropertiesOfClass:(Class)class usingBlock:(id)block;
- (void)enumerateExportedPropertiesOfProtocol:(id)protocol usingBlock:(id)block;
@end

@implementation REInterfaceCache

- (BOOL)_supportsCache
{
  if (_supportsCache_onceToken != -1)
  {
    [REInterfaceCache _supportsCache];
  }

  return _supportsCache_Supported;
}

void __34__REInterfaceCache__supportsCache__block_invoke()
{
  if (_fetchedInternalBuildOnceToken_5 != -1)
  {
    __34__REInterfaceCache__supportsCache__block_invoke_cold_1();
  }

  if (_isInternalDevice_5 == 1)
  {
    v0 = REProcessIsRelevanced() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  _supportsCache_Supported = v0;
}

uint64_t __34__REInterfaceCache__supportsCache__block_invoke_2()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_5 = result;
  return result;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = REInterfaceCache;
  _init = [(RESingleton *)&v8 _init];
  if (_init)
  {
    v3 = dispatch_queue_create("com.apple.RelevanceEngine.REInterfaceCache", 0);
    v4 = _init[1];
    _init[1] = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v6 = _init[2];
    _init[2] = dictionary;
  }

  return _init;
}

- (id)_supportedProtocols
{
  if (_supportedProtocols_onceToken != -1)
  {
    [REInterfaceCache _supportedProtocols];
  }

  v3 = _supportedProtocols_Protocols;

  return v3;
}

uint64_t __39__REInterfaceCache__supportedProtocols__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:&unk_283BBEB58];
  v1 = _supportedProtocols_Protocols;
  _supportedProtocols_Protocols = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_queue_valueForKey:(id)key level:(unint64_t)level
{
  v83 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v7 = [(NSMutableDictionary *)self->_supportedInterfaces objectForKeyedSubscript:keyCopy];
  if (!v7)
  {
    if (level == 5)
    {
      v8 = *MEMORY[0x277CCA5A0];
      if ([keyCopy isProtocol])
      {
        protocol = [keyCopy protocol];
        v10 = NSStringFromProtocol(protocol);
        RERaiseInternalException(v8, @"Attempting to unwrap %@, but we're already 5 levels deep. Is this an error?", v11, v12, v13, v14, v15, v16, v10);
      }

      else
      {
        protocol = NSStringFromClass([keyCopy cls]);
        RERaiseInternalException(v8, @"Attempting to unwrap %@, but we're already 5 levels deep. Is this an error?", v42, v43, v44, v45, v46, v47, protocol);
      }

      v7 = 0;
      goto LABEL_21;
    }

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v19 = [MEMORY[0x277CCAA50] hashTableWithOptions:256];
    v20 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:256 valueOptions:0];
    v21 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:256 valueOptions:0];
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __45__REInterfaceCache__queue_valueForKey_level___block_invoke;
    v79[3] = &unk_2785FC9E0;
    v55 = v20;
    v80 = v55;
    v54 = v21;
    v81 = v54;
    v22 = MEMORY[0x22AABC5E0](v79);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __45__REInterfaceCache__queue_valueForKey_level___block_invoke_2;
    v73[3] = &unk_2785FCA08;
    v73[4] = self;
    levelCopy = level;
    v53 = array;
    v74 = v53;
    v52 = array2;
    v75 = v52;
    v23 = v19;
    v76 = v23;
    v24 = v22;
    v77 = v24;
    v25 = MEMORY[0x22AABC5E0](v73);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __45__REInterfaceCache__queue_valueForKey_level___block_invoke_3;
    v72[3] = &unk_2785FCA30;
    v72[4] = self;
    v26 = MEMORY[0x22AABC5E0](v72);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __45__REInterfaceCache__queue_valueForKey_level___block_invoke_4;
    v66[3] = &unk_2785FCA80;
    v27 = v26;
    v69 = v27;
    v57 = v25;
    v70 = v57;
    v28 = v23;
    v67 = v28;
    v29 = keyCopy;
    v68 = v29;
    v30 = v24;
    v71 = v30;
    [v29 enumerateConformedProperties:v66];
    v56 = v28;
    if ([v29 isProtocol])
    {
      protocol2 = [v29 protocol];
      v32 = (*(v27 + 2))(v27, protocol2);

      if (!v32)
      {
LABEL_20:
        v7 = objc_opt_new();
        [v7 setType:v29];
        [v7 setConformedInterfaces:v52];
        [v7 setConformedProtocols:v28];
        [v7 setProperties:v55];
        [v7 setMethods:v54];
        [(NSMutableDictionary *)self->_supportedInterfaces setObject:v7 forKeyedSubscript:v29];

        goto LABEL_21;
      }

      v51 = v27;
      v33 = [MEMORY[0x277CBEB58] set];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __45__REInterfaceCache__queue_valueForKey_level___block_invoke_6;
      v64[3] = &unk_2785FCA58;
      superclassKey = v33;
      v65 = superclassKey;
      [v29 enumerateExposedProperties:v64];
      v35 = [MEMORY[0x277CCAA50] hashTableWithOptions:256];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __45__REInterfaceCache__queue_valueForKey_level___block_invoke_7;
      v62[3] = &unk_2785FCAA8;
      v36 = v35;
      v63 = v36;
      v50 = v29;
      [v29 enumerateExposedMethods:v62];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      _supportedProtocols = [(REInterfaceCache *)self _supportedProtocols];
      v38 = [_supportedProtocols countByEnumeratingWithState:&v58 objects:v82 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v59;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v59 != v40)
            {
              objc_enumerationMutation(_supportedProtocols);
            }

            (*(v30 + 2))(v30, *(*(&v58 + 1) + 8 * i), superclassKey, v36);
          }

          v39 = [_supportedProtocols countByEnumeratingWithState:&v58 objects:v82 count:16];
        }

        while (v39);
      }

      v27 = v51;
      v28 = v56;
      v29 = v50;
    }

    else
    {
      superclassKey = [v29 superclassKey];
      if (superclassKey)
      {
        (*(v57 + 2))(v57, superclassKey);
      }
    }

    goto LABEL_20;
  }

LABEL_21:

  v48 = *MEMORY[0x277D85DE8];

  return v7;
}

void __45__REInterfaceCache__queue_valueForKey_level___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) objectForKey:v13];
  if (v9)
  {
    if (v7)
    {
LABEL_3:
      [v9 unionSet:v7];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v9 forKey:v13];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = [MEMORY[0x277CBEB98] set];
  [v9 unionSet:v10];

LABEL_6:
  v11 = [*(a1 + 40) objectForKey:v13];
  if (v11)
  {
    if (v8)
    {
LABEL_8:
      [v11 unionHashTable:v8];
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:256];
    [*(a1 + 40) setObject:v11 forKey:v13];
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v12 = [MEMORY[0x277CCAA50] hashTableWithOptions:256];
  [v11 unionHashTable:v12];

LABEL_11:
}

void __45__REInterfaceCache__queue_valueForKey_level___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _queue_valueForKey:v3 level:*(a1 + 72) + 1];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
    v18 = v3;
    [*(a1 + 48) addObject:v3];
    v5 = *(a1 + 56);
    v6 = [v4 conformedProtocols];
    [v5 unionHashTable:v6];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [*(a1 + 32) _supportedProtocols];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = [v4 properties];
          v14 = [v13 objectForKey:v12];

          v15 = [v4 methods];
          v16 = [v15 objectForKey:v12];

          (*(*(a1 + 64) + 16))();
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v3 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __45__REInterfaceCache__queue_valueForKey_level___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) _supportedProtocols];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (protocol_conformsToProtocol(v3, *(*(&v10 + 1) + 8 * i)))
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

void __45__REInterfaceCache__queue_valueForKey_level___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 48) + 16))())
  {
    v4 = [[_REInterfaceKey alloc] initWithProtocol:v3];
    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) addObject:v3];
    if (protocol_isEqual(v3, &unk_283BC6F78) || protocol_conformsToProtocol(v3, &unk_283BC6F78))
    {
      v5 = [MEMORY[0x277CBEB58] set];
      v6 = *(a1 + 40);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __45__REInterfaceCache__queue_valueForKey_level___block_invoke_5;
      v10[3] = &unk_2785FCA58;
      v11 = v5;
      v7 = v5;
      [v6 enumerateAutomaticProperties:v10];
      v8 = *(a1 + 64);
      v9 = objc_opt_new();
      (*(v8 + 16))(v8, &unk_283BBEB58, v7, v9);
    }
  }
}

- (id)_accessInterfaceForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__19;
  queue = self->_queue;
  v16 = __Block_byref_object_dispose__19;
  v17 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__REInterfaceCache__accessInterfaceForKey___block_invoke;
  block[3] = &unk_2785FC2F0;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __43__REInterfaceCache__accessInterfaceForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_valueForKey:*(a1 + 40) level:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_enumeratePropertiesOfInterface:(id)interface forProtocol:(id)protocol usingBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  protocolCopy = protocol;
  blockCopy = block;
  if (blockCopy && [(REInterfaceCache *)self _supportsCache])
  {
    v11 = [(REInterfaceCache *)self _accessInterfaceForKey:interfaceCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    properties = [v11 properties];
    v13 = [properties objectForKey:protocolCopy];

    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          blockCopy[2](blockCopy, *(*(&v19 + 1) + 8 * v17++));
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateMethodsOfInterface:(id)interface forProtocol:(id)protocol usingBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  protocolCopy = protocol;
  blockCopy = block;
  if (blockCopy && [(REInterfaceCache *)self _supportsCache])
  {
    v11 = [(REInterfaceCache *)self _accessInterfaceForKey:interfaceCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    methods = [v11 methods];
    v13 = [methods objectForKey:protocolCopy];

    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          blockCopy[2](blockCopy, *(*(&v19 + 1) + 8 * v17++));
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_interface:(id)_interface implementsInterface:(id)interface
{
  _interfaceCopy = _interface;
  interfaceCopy = interface;
  if ([(REInterfaceCache *)self _supportsCache])
  {
    v8 = [(REInterfaceCache *)self _accessInterfaceForKey:_interfaceCopy];
    conformedProtocols = [v8 conformedProtocols];
    v10 = [conformedProtocols containsObject:interfaceCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)exportedInterfaceClass:(Class)class
{
  v4 = [[_REInterfaceKey alloc] initWithClass:class];
  LOBYTE(self) = [(REInterfaceCache *)self _interface:v4 implementsInterface:&unk_283BBEB58];

  return self;
}

- (BOOL)exportedInterfaceProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = [[_REInterfaceKey alloc] initWithProtocol:protocolCopy];

  LOBYTE(self) = [(REInterfaceCache *)self _interface:v5 implementsInterface:&unk_283BBEB58];
  return self;
}

- (void)enumerateExportedPropertiesOfClass:(Class)class usingBlock:(id)block
{
  blockCopy = block;
  v7 = [[_REInterfaceKey alloc] initWithClass:class];
  [(REInterfaceCache *)self _enumeratePropertiesOfInterface:v7 forProtocol:&unk_283BBEB58 usingBlock:blockCopy];
}

- (void)enumerateExportedPropertiesOfProtocol:(id)protocol usingBlock:(id)block
{
  blockCopy = block;
  protocolCopy = protocol;
  v8 = [[_REInterfaceKey alloc] initWithProtocol:protocolCopy];

  [(REInterfaceCache *)self _enumeratePropertiesOfInterface:v8 forProtocol:&unk_283BBEB58 usingBlock:blockCopy];
}

- (void)enumerateExportedMethodsOfClass:(Class)class usingBlock:(id)block
{
  blockCopy = block;
  v7 = [[_REInterfaceKey alloc] initWithClass:class];
  [(REInterfaceCache *)self _enumerateMethodsOfInterface:v7 forProtocol:&unk_283BBEB58 usingBlock:blockCopy];
}

- (void)enumerateExportedMethodsOfProtocol:(id)protocol usingBlock:(id)block
{
  blockCopy = block;
  protocolCopy = protocol;
  v8 = [[_REInterfaceKey alloc] initWithProtocol:protocolCopy];

  [(REInterfaceCache *)self _enumerateMethodsOfInterface:v8 forProtocol:&unk_283BBEB58 usingBlock:blockCopy];
}

@end