@interface SSDownloadPolicyRule
- (BOOL)isCellularAllowed;
- (BOOL)isEqual:(id)a3;
- (BOOL)isWiFiAllowed;
- (SSDownloadPolicyRule)init;
- (SSDownloadPolicyRule)initWithCoder:(id)a3;
- (SSDownloadPolicyRule)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (void)addApplicationState:(id)a3;
- (void)addNetworkType:(int64_t)a3;
- (void)addUserDefaultState:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)unionPolicyRule:(id)a3;
@end

@implementation SSDownloadPolicyRule

- (SSDownloadPolicyRule)init
{
  v3.receiver = self;
  v3.super_class = SSDownloadPolicyRule;
  result = [(SSDownloadPolicyRule *)&v3 init];
  if (result)
  {
    result->_cellularDataStates = 3;
    *&result->_powerStates = vdupq_n_s64(3uLL);
    result->_timeLimitStates = 3;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadPolicyRule;
  [(SSDownloadPolicyRule *)&v3 dealloc];
}

- (void)addApplicationState:(id)a3
{
  v6 = [a3 copy];
  applicationStates = self->_applicationStates;
  if (applicationStates)
  {
    v5 = [(NSSet *)applicationStates mutableCopy];
    [v5 addObject:v6];

    self->_applicationStates = [v5 copy];
  }

  else
  {
    self->_applicationStates = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v6, 0}];
  }
}

- (void)addNetworkType:(int64_t)a3
{
  networkTypes = self->_networkTypes;
  if (networkTypes)
  {
    v7 = [(NSSet *)networkTypes mutableCopy];
    [v7 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3)}];

    self->_networkTypes = [v7 copy];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    self->_networkTypes = [v6 initWithObjects:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a3), 0}];
  }
}

- (void)addUserDefaultState:(id)a3
{
  v6 = [a3 copy];
  userDefaultStates = self->_userDefaultStates;
  if (userDefaultStates)
  {
    v5 = [(NSSet *)userDefaultStates mutableCopy];
    [v5 addObject:v6];

    self->_userDefaultStates = [v5 copy];
  }

  else
  {
    self->_userDefaultStates = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v6, 0}];
  }
}

- (BOOL)isCellularAllowed
{
  v13 = *MEMORY[0x1E69E9840];
  networkTypes = self->_networkTypes;
  if (!networkTypes)
  {
LABEL_11:
    LOBYTE(v3) = 1;
    return v3;
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(NSSet *)networkTypes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(networkTypes);
      }

      if (SSNetworkTypeIsCellularType([*(*(&v8 + 1) + 8 * v6) integerValue]))
      {
        goto LABEL_11;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSSet *)networkTypes countByEnumeratingWithState:&v8 objects:v12 count:16];
        LOBYTE(v3) = 0;
        if (v4)
        {
          goto LABEL_4;
        }

        return v3;
      }
    }
  }

  return v3;
}

- (BOOL)isWiFiAllowed
{
  if (!self->_networkTypes)
  {
    return 1;
  }

  v2 = self;
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:1000];
  LOBYTE(v2) = [(NSSet *)v2->_networkTypes containsObject:v3];

  return v2;
}

- (void)unionPolicyRule:(id)a3
{
  cellularDataStates = self->_cellularDataStates;
  self->_cellularDataStates = [a3 cellularDataStates] | cellularDataStates;
  powerStates = self->_powerStates;
  self->_powerStates = [a3 powerStates] | powerStates;
  registrationStates = self->_registrationStates;
  self->_registrationStates = [a3 registrationStates] | registrationStates;
  batteryLevel = self->_batteryLevel;
  [a3 batteryLevel];
  if (batteryLevel <= v9)
  {
    [a3 batteryLevel];
  }

  else
  {
    v10 = self->_batteryLevel;
  }

  self->_batteryLevel = v10;
  timeLimitStates = self->_timeLimitStates;
  self->_timeLimitStates = [a3 timeLimitStates] | timeLimitStates;
  v12 = [a3 applicationStates];
  if ([v12 count])
  {
    applicationStates = self->_applicationStates;
    if (applicationStates)
    {
      v14 = [(NSSet *)applicationStates mutableCopy];
      [v14 unionSet:v12];

      self->_applicationStates = [v14 copy];
    }

    else
    {
      self->_applicationStates = v12;
    }
  }

  v15 = [a3 networkTypes];
  if ([v15 count])
  {
    networkTypes = self->_networkTypes;
    if (networkTypes)
    {
      v17 = [(NSSet *)networkTypes mutableCopy];
      [v17 unionSet:v15];

      self->_networkTypes = [v17 copy];
    }

    else
    {
      self->_networkTypes = v15;
    }
  }

  v18 = [a3 userDefaultStates];
  if ([v18 count])
  {
    userDefaultStates = self->_userDefaultStates;
    if (userDefaultStates)
    {
      v20 = [(NSSet *)userDefaultStates mutableCopy];
      [v20 unionSet:v18];

      self->_userDefaultStates = [v20 copy];
    }

    else
    {
      self->_userDefaultStates = v18;
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_16;
  }

  v6 = [(SSDownloadPolicyRule *)self downloadSizeLimit];
  if (v6 != [a3 downloadSizeLimit])
  {
    goto LABEL_16;
  }

  v7 = [(SSDownloadPolicyRule *)self applicationStates];
  if (v7 != [a3 applicationStates])
  {
    v8 = -[NSSet isEqualToSet:](-[SSDownloadPolicyRule applicationStates](self, "applicationStates"), "isEqualToSet:", [a3 applicationStates]);
    if (!v8)
    {
      return v8;
    }
  }

  [(SSDownloadPolicyRule *)self batteryLevel];
  v10 = v9;
  [a3 batteryLevel];
  if (v10 != v11)
  {
    goto LABEL_16;
  }

  v12 = [(SSDownloadPolicyRule *)self networkTypes];
  if (v12 != [a3 networkTypes])
  {
    v8 = -[NSSet isEqualToSet:](-[SSDownloadPolicyRule networkTypes](self, "networkTypes"), "isEqualToSet:", [a3 networkTypes]);
    if (!v8)
    {
      return v8;
    }
  }

  v13 = [(SSDownloadPolicyRule *)self cellularDataStates];
  if (v13 != [a3 cellularDataStates] || (v14 = -[SSDownloadPolicyRule powerStates](self, "powerStates"), v14 != objc_msgSend(a3, "powerStates")) || (v15 = -[SSDownloadPolicyRule registrationStates](self, "registrationStates"), v15 != objc_msgSend(a3, "registrationStates")) || (v16 = -[SSDownloadPolicyRule timeLimitStates](self, "timeLimitStates"), v16 != objc_msgSend(a3, "timeLimitStates")))
  {
LABEL_16:
    LOBYTE(v8) = 0;
    return v8;
  }

  v17 = [(SSDownloadPolicyRule *)self userDefaultStates];
  if (v17 == [a3 userDefaultStates])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v18 = [(SSDownloadPolicyRule *)self userDefaultStates];
    v19 = [a3 userDefaultStates];

    LOBYTE(v8) = [(NSSet *)v18 isEqualToSet:v19];
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[NSSet allObjects](self->_applicationStates forKey:{"allObjects"), @"appsts"}];
  *&v5 = self->_batteryLevel;
  [a3 encodeFloat:@"bttlvl" forKey:v5];
  [a3 encodeInt64:self->_cellularDataStates forKey:@"cellds"];
  [a3 encodeInt64:self->_downloadSizeLimit forKey:@"szlmt"];
  [a3 encodeObject:-[NSSet allObjects](self->_networkTypes forKey:{"allObjects"), @"nwktps"}];
  [a3 encodeInt64:self->_powerStates forKey:@"powsts"];
  [a3 encodeInt64:self->_registrationStates forKey:@"regsts"];
  [a3 encodeInt64:self->_timeLimitStates forKey:@"tmlsts"];
  v6 = [(NSSet *)self->_userDefaultStates allObjects];

  [a3 encodeObject:v6 forKey:@"usdfts"];
}

- (SSDownloadPolicyRule)initWithCoder:(id)a3
{
  v18.receiver = self;
  v18.super_class = SSDownloadPolicyRule;
  v4 = [(SSDownloadPolicyRule *)&v18 init];
  if (v4)
  {
    [a3 decodeFloatForKey:@"bttlvl"];
    v4->_batteryLevel = v5;
    v4->_downloadSizeLimit = [a3 decodeInt64ForKey:@"szlmt"];
    v4->_powerStates = [a3 decodeInt64ForKey:@"powsts"];
    v4->_registrationStates = [a3 decodeInt64ForKey:@"regsts"];
    if ([a3 containsValueForKey:@"cellds"])
    {
      v6 = [a3 decodeInt64ForKey:@"cellds"];
    }

    else
    {
      v6 = 3;
    }

    v4->_cellularDataStates = v6;
    if ([a3 containsValueForKey:@"tmlsts"])
    {
      v7 = [a3 decodeInt64ForKey:@"tmlsts"];
    }

    else
    {
      v7 = 3;
    }

    v4->_timeLimitStates = v7;
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [a3 decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, objc_opt_class(), 0), @"appsts"}];
    if (v10)
    {
      v4->_applicationStates = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v10];
    }

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [a3 decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, objc_opt_class(), 0), @"nwktps"}];
    if (v13)
    {
      v4->_networkTypes = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v13];
    }

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [a3 decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithObjects:", v15, objc_opt_class(), 0), @"usdfts"}];
    if (v16)
    {
      v4->_userDefaultStates = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v16];
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = [(NSSet *)self->_applicationStates copyWithZone:a3];
  *(v5 + 16) = self->_batteryLevel;
  *(v5 + 24) = *&self->_cellularDataStates;
  *(v5 + 40) = [(NSSet *)self->_networkTypes copyWithZone:a3];
  *(v5 + 48) = self->_powerStates;
  *(v5 + 56) = self->_registrationStates;
  *(v5 + 64) = self->_timeLimitStates;
  *(v5 + 72) = self->_userDefaultStates;
  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", [(NSSet *)self->_applicationStates allObjects]);
  xpc_dictionary_set_double(v3, "1", self->_batteryLevel);
  xpc_dictionary_set_int64(v3, "2", self->_cellularDataStates);
  xpc_dictionary_set_int64(v3, "3", self->_downloadSizeLimit);
  SSXPCDictionarySetCFObject(v3, "4", [(NSSet *)self->_networkTypes allObjects]);
  xpc_dictionary_set_int64(v3, "5", self->_powerStates);
  xpc_dictionary_set_int64(v3, "6", self->_registrationStates);
  xpc_dictionary_set_int64(v3, "7", self->_timeLimitStates);
  SSXPCDictionarySetCFObject(v3, "8", [(NSSet *)self->_userDefaultStates allObjects]);
  return v3;
}

- (SSDownloadPolicyRule)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v18.receiver = self;
    v18.super_class = SSDownloadPolicyRule;
    v5 = [(SSDownloadPolicyRule *)&v18 init];
    if (v5)
    {
      value = xpc_dictionary_get_value(a3, "0");
      v8 = objc_opt_class();
      v9 = SSXPCCreateNSArrayFromXPCEncodedArray(value, v8);
      if (v9)
      {
        v10 = v9;
        v5->_applicationStates = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v9];
      }

      v11 = xpc_dictionary_get_double(a3, "1");
      v5->_batteryLevel = v11;
      v5->_cellularDataStates = xpc_dictionary_get_int64(a3, "2");
      v5->_downloadSizeLimit = xpc_dictionary_get_int64(a3, "3");
      objc_opt_class();
      v12 = SSXPCDictionaryCopyCFObjectWithClass(a3, "4");
      if (v12)
      {
        v13 = v12;
        v5->_networkTypes = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v12];
      }

      v5->_powerStates = xpc_dictionary_get_int64(a3, "5");
      v5->_registrationStates = xpc_dictionary_get_int64(a3, "6");
      v5->_timeLimitStates = xpc_dictionary_get_int64(a3, "7");
      v14 = xpc_dictionary_get_value(a3, "8");
      v15 = objc_opt_class();
      v16 = SSXPCCreateNSArrayFromXPCEncodedArray(v14, v15);
      if (v16)
      {
        v17 = v16;
        v5->_userDefaultStates = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v16];
      }
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end