@interface SUUIMobileDescriptorAgreementStatusRegistry
- (SUUIMobileDescriptorAgreementStatusRegistry)init;
- (SUUIMobileDescriptorAgreementStatusRegistry)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)agreementStatusForType:(unint64_t)type descriptor:(id)descriptor;
- (void)encodeWithCoder:(id)coder;
- (void)setAgreementStatus:(int)status type:(unint64_t)type forDescriptor:(id)descriptor;
@end

@implementation SUUIMobileDescriptorAgreementStatusRegistry

- (SUUIMobileDescriptorAgreementStatusRegistry)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = SUUIMobileDescriptorAgreementStatusRegistry;
  v6 = [(SUUIMobileDescriptorAgreementStatusRegistry *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    statusMap = v9->_statusMap;
    v9->_statusMap = v2;
    MEMORY[0x277D82BD8](statusMap);
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (int)agreementStatusForType:(unint64_t)type descriptor:(id)descriptor
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v21 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, descriptor);
  if (location && typeCopy)
  {
    v17[0] = 2;
    p_lock = &selfCopy->_lock;
    v24 = 0;
    os_unfair_lock_lock_with_options();
    v17[1] = p_lock;
    v16 = [(NSMutableDictionary *)selfCopy->_statusMap objectForKeyedSubscript:location];
    v15 = 0;
    if (v16)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:typeCopy];
      v9 = [v16 objectForKeyedSubscript:?];
      v29 = 0;
      objc_storeStrong(&v29, v9);
      if (v29)
      {
        integerValue = [v29 integerValue];
        if (integerValue > 2)
        {
          v30 = 0;
        }

        else
        {
          v30 = integerValue;
        }

        v28 = 1;
      }

      else
      {
        v30 = 0;
        v28 = 1;
      }

      objc_storeStrong(&v29, 0);
      v15 = v30;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
    }

    statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [statefulUILogger oslog];
    MEMORY[0x277D82BD8](statefulUILogger);
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      humanReadableUpdateName = [location humanReadableUpdateName];
      v12 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v6 = SUStringFromAgreementStatus();
      v11 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_3_8_34_8_66_8_66(v31, "[SUUIMobileDescriptorAgreementStatusRegistry agreementStatusForType:descriptor:]", v12, v11);
      _os_log_impl(&dword_26B0B9000, oslog, v13, "%{public}s: Retrieving agreement status to descriptor %{public}@: %{public}@", v31, 0x20u);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&oslog, 0);
    v23 = v15;
    v18 = 1;
    objc_storeStrong(&v16, 0);
    v26 = v17;
    switch(v17[0])
    {
      case 1:
        [v26[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v26[1]);
        break;
      case 3:
        v4 = v26[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v18 == 2)
    {
      v18 = 0;
    }
  }

  else
  {
    v23 = 0;
    v18 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  return v23;
}

- (void)setAgreementStatus:(int)status type:(unint64_t)type forDescriptor:(id)descriptor
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v22 = a2;
  statusCopy = status;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, descriptor);
  if (location && typeCopy)
  {
    v17[0] = 2;
    p_lock = &selfCopy->_lock;
    v24 = 0;
    os_unfair_lock_lock_with_options();
    v17[1] = p_lock;
    v16 = [(NSMutableDictionary *)selfCopy->_statusMap objectForKeyedSubscript:location];
    if (!v16)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      MEMORY[0x277D82BD8](0);
      [(NSMutableDictionary *)selfCopy->_statusMap setObject:v16 forKeyedSubscript:location];
    }

    statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [statefulUILogger oslog];
    MEMORY[0x277D82BD8](statefulUILogger);
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      humanReadableUpdateName = [location humanReadableUpdateName];
      v13 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v9 = SUStringFromAgreementStatus();
      v12 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_3_8_34_8_66_8_66(v27, "[SUUIMobileDescriptorAgreementStatusRegistry setAgreementStatus:type:forDescriptor:]", v13, v12);
      _os_log_impl(&dword_26B0B9000, oslog, v14, "%{public}s: Assigning agreement status to descriptor %{public}@: %{public}@", v27, 0x20u);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&oslog, 0);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:statusCopy];
    v8 = v16;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:typeCopy];
    [v8 setObject:v7 forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v16, 0);
    v18 = 2;
    v26 = v17;
    switch(v17[0])
    {
      case 1:
        [v26[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v26[1]);
        break;
      case 3:
        v5 = v26[1];
        os_unfair_recursive_lock_unlock();
        break;
    }

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)description
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v33[2] = a2;
  v33[0] = 2;
  p_lock = &self->_lock;
  v36 = 0;
  os_unfair_lock_lock_with_options();
  v33[1] = p_lock;
  v31 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](selfCopy->_statusMap, "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_statusMap);
  v24 = [obj countByEnumeratingWithState:__b objects:v40 count:16];
  if (v24)
  {
    v20 = *__b[2];
    v21 = 0;
    v22 = v24;
    while (1)
    {
      v19 = v21;
      if (*__b[2] != v20)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(__b[1] + 8 * v21);
      v28 = [(NSMutableDictionary *)selfCopy->_statusMap objectForKeyedSubscript:v30];
      location = objc_opt_new();
      memset(v25, 0, sizeof(v25));
      v17 = MEMORY[0x277D82BE0](v28);
      v18 = [v17 countByEnumeratingWithState:v25 objects:v39 count:16];
      if (v18)
      {
        v14 = *v25[2];
        v15 = 0;
        v16 = v18;
        while (1)
        {
          v13 = v15;
          if (*v25[2] != v14)
          {
            objc_enumerationMutation(v17);
          }

          v26 = *(v25[1] + 8 * v15);
          v11 = location;
          v12 = MEMORY[0x277CCACA8];
          v10 = SUUIMobileDescriptorAgreementTypeToString([v26 intValue]);
          [v26 intValue];
          v9 = SUStringFromAgreementStatus();
          v8 = [v12 stringWithFormat:@"%@: %@", v10, v9];
          [v11 addObject:?];
          MEMORY[0x277D82BD8](v8);
          MEMORY[0x277D82BD8](v9);
          MEMORY[0x277D82BD8](v10);
          ++v15;
          if (v13 + 1 >= v16)
          {
            v15 = 0;
            v16 = [v17 countByEnumeratingWithState:v25 objects:v39 count:16];
            if (!v16)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v17);
      v7 = v31;
      v6 = [location componentsJoinedByString:{@", "}];
      humanReadableUpdateName = [v30 humanReadableUpdateName];
      [v7 setObject:v6 forKey:?];
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v28, 0);
      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [obj countByEnumeratingWithState:__b objects:v40 count:16];
        if (!v22)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v35 = [MEMORY[0x277D64B68] descriptionForObject:selfCopy properties:v31];
  v32 = 1;
  objc_storeStrong(&v31, 0);
  v38 = v33;
  switch(v33[0])
  {
    case 1:
      [v38[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v38[1]);
      break;
    case 3:
      v2 = v38[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  *MEMORY[0x277D85DE8];
  v3 = v35;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v16[2] = a2;
  v16[1] = zone;
  v16[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v15[0] = 2;
  p_lock = &selfCopy->_lock;
  v18 = 0;
  os_unfair_lock_lock_with_options();
  v15[1] = &selfCopy->_lock;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  statusMap = selfCopy->_statusMap;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __60__SUUIMobileDescriptorAgreementStatusRegistry_copyWithZone___block_invoke;
  v11 = &unk_279CCBA28;
  v12 = MEMORY[0x277D82BE0](v13);
  [(NSMutableDictionary *)statusMap enumerateKeysAndObjectsUsingBlock:&v7];
  objc_storeStrong(v16[0] + 2, v13);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  v14 = 2;
  v20 = v15;
  switch(v15[0])
  {
    case 1:
      [v20[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v20[1]);
      break;
    case 3:
      v3 = v20[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  v5 = MEMORY[0x277D82BE0](v16[0]);
  v14 = 1;
  objc_storeStrong(v16, 0);
  return v5;
}

void __60__SUUIMobileDescriptorAgreementStatusRegistry_copyWithZone___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5 = [v6 mutableCopy];
  [a1[4] setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = 2;
  p_lock = &selfCopy->_lock;
  v7 = 0;
  os_unfair_lock_lock_with_options();
  v4 = p_lock;
  [location[0] encodeObject:selfCopy->_statusMap forKey:@"statusMap"];
  v9 = &v3;
  os_unfair_lock_unlock(v4);
  objc_storeStrong(location, 0);
}

- (SUUIMobileDescriptorAgreementStatusRegistry)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v17 = [(SUUIMobileDescriptorAgreementStatusRegistry *)v3 init];
  selfCopy = v17;
  objc_storeStrong(&selfCopy, v17);
  if (v17)
  {
    v18[0] = 2;
    p_lock = &selfCopy->_lock;
    v21 = 0;
    os_unfair_lock_lock_with_options();
    v18[1] = p_lock;
    v14 = location[0];
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v13 = objc_opt_class();
    v12 = [v15 setWithObjects:{v16, v13, objc_opt_class(), 0}];
    v10 = [v14 decodeObjectOfClasses:? forKey:?];
    v11 = [v10 mutableCopy];
    statusMap = selfCopy->_statusMap;
    selfCopy->_statusMap = v11;
    MEMORY[0x277D82BD8](statusMap);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v12);
    if (!selfCopy->_statusMap)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v5 = selfCopy->_statusMap;
      selfCopy->_statusMap = v9;
      MEMORY[0x277D82BD8](v5);
    }

    v23 = v18;
    switch(v18[0])
    {
      case 1:
        [v23[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v23[1]);
        break;
      case 3:
        v6 = v23[1];
        os_unfair_recursive_lock_unlock();
        break;
    }
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

@end