@interface ICDelegationNetServiceTXTRecord
- (BOOL)isEqual:(id)equal;
- (ICDelegationNetServiceTXTRecord)initWithTXTRecordData:(id)data;
- (NSData)TXTRecordData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ICDelegationNetServiceTXTRecord

- (NSData)TXTRecordData
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [@"1" dataUsingEncoding:4];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_delegationAccountUUIDs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [@"AUUID-" stringByAppendingString:*(*(&v21 + 1) + 8 * i)];
        [v3 setObject:v4 forKey:v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", self->_serviceVersion];
  v12 = [v11 dataUsingEncoding:4];
  [v3 setObject:v12 forKey:@"ServiceVersion"];

  securityMode = self->_securityMode;
  if (securityMode)
  {
    if (securityMode >= 5)
    {
      securityMode = 0;
    }

    securityMode = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", securityMode];
    v15 = [securityMode dataUsingEncoding:4];
    if (v15)
    {
      [v3 setObject:v15 forKey:@"SecurityMode"];
    }
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    v17 = [(NSString *)deviceName dataUsingEncoding:4];
    [v3 setObject:v17 forKey:@"DeviceName"];
  }

  v18 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v27 = 2114;
    v28 = v3;
    _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - TXTRecord dictionary for data encoding: %{public}@", buf, 0x16u);
  }

  v19 = [MEMORY[0x1E695AC20] dataFromTXTRecordDictionary:v3];

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_delegationAccountUUIDs);
    objc_storeStrong((v5 + 16), self->_deviceName);
    *(v5 + 32) = self->_serviceVersion;
    *(v5 + 24) = self->_securityMode;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_delegationAccountUUIDs)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Delegation UUIDs: %@", self->_delegationAccountUUIDs];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Delegation UUIDs: Missing", v11];
  }
  v4 = ;
  [v3 addObject:v4];

  if (self->_deviceName)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Device name: %@", self->_deviceName];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Device name: Uknonwn", v12];
  }
  v5 = ;
  [v3 addObject:v5];

  v6 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = ICDelegationNetServiceTXTRecord;
  v7 = [(ICDelegationNetServiceTXTRecord *)&v13 description];
  v8 = [v3 componentsJoinedByString:@" "];;
  v9 = [v6 stringWithFormat:@"%@ [%@]", v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_serviceVersion != equalCopy->_serviceVersion)
  {
    goto LABEL_13;
  }

  delegationAccountUUIDs = self->_delegationAccountUUIDs;
  v6 = equalCopy->_delegationAccountUUIDs;
  if (delegationAccountUUIDs != v6)
  {
    v7 = 0;
    if (!delegationAccountUUIDs || !v6)
    {
      goto LABEL_15;
    }

    if (![(NSArray *)delegationAccountUUIDs isEqualToArray:?])
    {
      goto LABEL_13;
    }
  }

  if (self->_securityMode != equalCopy->_securityMode)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_15;
  }

  deviceName = self->_deviceName;
  v9 = equalCopy->_deviceName;
  if (deviceName == v9)
  {
LABEL_14:
    v7 = 1;
    goto LABEL_15;
  }

  v7 = 0;
  if (deviceName && v9)
  {
    v7 = [(NSString *)deviceName isEqualToString:?];
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_delegationAccountUUIDs hash];
  securityMode = self->_securityMode;
  serviceVersion = self->_serviceVersion;
  return v3 ^ serviceVersion ^ securityMode ^ ~[(NSString *)self->_deviceName hash];
}

- (ICDelegationNetServiceTXTRecord)initWithTXTRecordData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [(ICDelegationNetServiceTXTRecord *)self init];
  if (v5)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__32046;
    v23 = __Block_byref_object_dispose__32047;
    v24 = 0;
    v6 = [MEMORY[0x1E695AC20] dictionaryFromTXTRecordData:dataCopy];
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Delegation");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v5;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - TXTRecord dictionary from data decoding: %{public}@", buf, 0x16u);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__ICDelegationNetServiceTXTRecord_initWithTXTRecordData___block_invoke;
    v18[3] = &unk_1E7BF7E48;
    v18[4] = &v19;
    [v6 enumerateKeysAndObjectsUsingBlock:v18];
    objc_storeStrong(&v5->_delegationAccountUUIDs, v20[5]);
    v8 = [v6 objectForKey:@"ServiceVersion"];
    if ([v8 length])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
    }

    else
    {
      v9 = 0;
    }

    v5->_serviceVersion = [v9 integerValue];
    v10 = [v6 objectForKey:@"SecurityMode"];
    if ([v10 length])
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v10 encoding:4];
    }

    else
    {
      v11 = 0;
    }

    integerValue = [v11 integerValue];
    if ((integerValue - 1) >= 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = integerValue;
    }

    v5->_securityMode = v13;
    v14 = [v6 objectForKey:@"DeviceName"];
    v15 = [v14 length];
    if (v15)
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v14 encoding:4];
    }

    deviceName = v5->_deviceName;
    v5->_deviceName = v15;

    _Block_object_dispose(&v19, 8);
  }

  return v5;
}

void __57__ICDelegationNetServiceTXTRecord_initWithTXTRecordData___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if (![v10 rangeOfString:@"AUUID-"])
  {
    v4 = v3;
    if (v3 == [@"AUUID-" length])
    {
      v5 = [v10 substringFromIndex:v4];
      if ([v5 length])
      {
        v6 = *(*(*(a1 + 32) + 8) + 40);
        if (!v6)
        {
          v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v8 = *(*(a1 + 32) + 8);
          v9 = *(v8 + 40);
          *(v8 + 40) = v7;

          v6 = *(*(*(a1 + 32) + 8) + 40);
        }

        [v6 addObject:v5];
      }
    }
  }
}

@end