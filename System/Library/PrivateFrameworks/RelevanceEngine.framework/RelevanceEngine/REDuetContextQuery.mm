@interface REDuetContextQuery
- (NSSet)keyPaths;
- (REDuetContextQuery)initWithPredicate:(id)predicate remotePredicate:(id)remotePredicate name:(id)name evaluationBlock:(id)block;
- (id)_keyPathsForDevice:(id)device;
- (id)_localKeyPaths;
- (id)_localRegistrationWithCallback:(id)callback;
- (id)_remoteRegistrationForDevice:(id)device callback:(id)callback;
- (id)createRegistrationsWithCallback:(id)callback;
- (id)valueFromUserContext:(id)context;
- (void)setDevices:(id)devices;
@end

@implementation REDuetContextQuery

- (REDuetContextQuery)initWithPredicate:(id)predicate remotePredicate:(id)remotePredicate name:(id)name evaluationBlock:(id)block
{
  predicateCopy = predicate;
  remotePredicateCopy = remotePredicate;
  nameCopy = name;
  blockCopy = block;
  v25.receiver = self;
  v25.super_class = REDuetContextQuery;
  v15 = [(REDuetContextQuery *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_predicate, predicate);
    objc_storeStrong(&v16->_remotePredicate, remotePredicate);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v16->_uuid;
    v16->_uuid = uUID;

    objc_storeStrong(&v16->_name, name);
    v19 = MEMORY[0x277CBEB98];
    v20 = +[REDuetContextDevice localDevice];
    v21 = [v19 setWithObject:v20];
    [(REDuetContextQuery *)v16 setDevices:v21];

    v22 = MEMORY[0x22AABC5E0](blockCopy);
    evalBlock = v16->_evalBlock;
    v16->_evalBlock = v22;
  }

  return v16;
}

- (NSSet)keyPaths
{
  keyPaths = [(_CDContextualPredicate *)self->_predicate keyPaths];
  v3 = keyPaths;
  if (keyPaths)
  {
    v4 = keyPaths;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

- (id)_localRegistrationWithCallback:(id)callback
{
  callbackCopy = callback;
  if (callbackCopy && self->_predicate)
  {
    v5 = get_CDContextualChangeRegistrationClass();
    registrationID = [(REDuetContextQuery *)self registrationID];
    predicate = self->_predicate;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__REDuetContextQuery__localRegistrationWithCallback___block_invoke;
    v10[3] = &unk_2785FAD30;
    v11 = callbackCopy;
    v8 = [v5 localNonWakingRegistrationWithIdentifier:registrationID contextualPredicate:predicate callback:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_remoteRegistrationForDevice:(id)device callback:(id)callback
{
  deviceCopy = device;
  callbackCopy = callback;
  if (callbackCopy && self->_remotePredicate)
  {
    v8 = get_CDContextualChangeRegistrationClass();
    registrationID = [(REDuetContextQuery *)self registrationID];
    identifier = [deviceCopy identifier];
    v11 = [registrationID stringByAppendingFormat:@".%@", identifier];
    remotePredicate = self->_remotePredicate;
    deviceType = [deviceCopy deviceType];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__REDuetContextQuery__remoteRegistrationForDevice_callback___block_invoke;
    v16[3] = &unk_2785FAD58;
    v17 = callbackCopy;
    v14 = [v8 registrationWithIdentifier:v11 contextualPredicate:remotePredicate deviceTypes:deviceType clientIdentifier:@"com.apple.RelevanceEngine" mustWake:0 callback:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)createRegistrationsWithCallback:(id)callback
{
  v22 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = CoreDuetContextLibraryCore();
  array = MEMORY[0x277CBEBF8];
  if (callbackCopy && v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    devices = [(REDuetContextQuery *)self devices];
    v8 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(devices);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          identifier = [v12 identifier];

          if (identifier)
          {
            [(REDuetContextQuery *)self _remoteRegistrationForDevice:v12 callback:callbackCopy];
          }

          else
          {
            [(REDuetContextQuery *)self _localRegistrationWithCallback:callbackCopy];
          }
          v14 = ;
          if (v14)
          {
            [array addObject:v14];
          }
        }

        v9 = [devices countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_keyPathsForDevice:(id)device
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  keyPaths = [(REDuetContextQuery *)self keyPaths];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(keyPaths, "count")}];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = keyPaths;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v25 = 0;
        v26 = &v25;
        v27 = 0x2050000000;
        v11 = get_CDContextualKeyPathClass_softClass;
        v28 = get_CDContextualKeyPathClass_softClass;
        if (!get_CDContextualKeyPathClass_softClass)
        {
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __get_CDContextualKeyPathClass_block_invoke;
          v24[3] = &unk_2785F9BC0;
          v24[4] = &v25;
          __get_CDContextualKeyPathClass_block_invoke(v24);
          v11 = v26[3];
        }

        v12 = v11;
        _Block_object_dispose(&v25, 8);
        identifier = [deviceCopy identifier];
        uUIDString = [identifier UUIDString];
        v15 = [v11 remoteKeyPathForKeyPath:v10 forDeviceID:uUIDString];
        [v6 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v7);
  }

  v16 = [(REDuetContextQuery *)self _sortedKeyPaths:v6];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_localKeyPaths
{
  keyPaths = [(REDuetContextQuery *)self keyPaths];
  allObjects = [keyPaths allObjects];
  v5 = [(REDuetContextQuery *)self _sortedKeyPaths:allObjects];

  return v5;
}

uint64_t __38__REDuetContextQuery__sortedKeyPaths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 key];
  v6 = [v4 key];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)setDevices:(id)devices
{
  v25 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  devices = self->_devices;
  if (devices != devicesCopy && ([(NSSet *)devices isEqual:devicesCopy]& 1) == 0)
  {
    v6 = [(NSSet *)devicesCopy copy];
    v7 = self->_devices;
    self->_devices = v6;

    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_devices;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          identifier = [v14 identifier];

          if (identifier)
          {
            _localKeyPaths = [(REDuetContextQuery *)self _keyPathsForDevice:v14];
            [array addObject:_localKeyPaths];
          }

          else
          {
            _localKeyPaths = [(REDuetContextQuery *)self _localKeyPaths];
            [array insertObject:_localKeyPaths atIndex:0];
          }
        }

        v11 = [(NSSet *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v17 = [array copy];
    searchKeyPaths = self->_searchKeyPaths;
    self->_searchKeyPaths = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)valueFromUserContext:(id)context
{
  v49 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (self->_evalBlock)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    keyPaths = [(REDuetContextQuery *)self keyPaths];
    v7 = [keyPaths countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v43;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v43 != v9)
          {
            objc_enumerationMutation(keyPaths);
          }

          v11 = *(*(&v42 + 1) + 8 * i);
          v12 = [v11 key];
          [dictionary setObject:v11 forKeyedSubscript:v12];
        }

        v8 = [keyPaths countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v8);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = self->_searchKeyPaths;
    v32 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v32)
    {
      selfCopy = self;
      v31 = *v39;
      while (1)
      {
        v13 = 0;
LABEL_12:
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v13;
        v14 = *(*(&v38 + 1) + 8 * v13);
        v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (!v17)
        {
          break;
        }

        v18 = v17;
        v19 = *v35;
LABEL_16:
        v20 = 0;
        while (1)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v34 + 1) + 8 * v20);
          v22 = [contextCopy objectForContextualKeyPath:v21];
          if (!v22)
          {
            break;
          }

          v23 = v22;
          v24 = [v21 key];
          v25 = [dictionary objectForKeyedSubscript:v24];

          if (v25)
          {
            [v15 setObject:v23 forKeyedSubscript:v25];
          }

          if (v18 == ++v20)
          {
            v18 = [v16 countByEnumeratingWithState:&v34 objects:v46 count:16];
            if (v18)
            {
              goto LABEL_16;
            }

            goto LABEL_28;
          }
        }

        v13 = v33 + 1;
        if (v33 + 1 != v32)
        {
          goto LABEL_12;
        }

        v26 = 0;
        v32 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (!v32)
        {
          goto LABEL_31;
        }
      }

LABEL_28:

      v26 = (*(selfCopy->_evalBlock + 2))();
    }

    else
    {
      v26 = 0;
    }

LABEL_31:
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

@end