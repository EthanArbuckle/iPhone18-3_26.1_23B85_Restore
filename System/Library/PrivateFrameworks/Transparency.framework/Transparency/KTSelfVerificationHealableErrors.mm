@interface KTSelfVerificationHealableErrors
- (BOOL)isEqual:(id)equal;
- (KTSelfVerificationHealableErrors)init;
- (KTSelfVerificationHealableErrors)initWithCoder:(id)coder;
- (NSArray)accountHealableErrors;
- (NSDictionary)deviceIdToHealableErrors;
- (id)description;
- (void)addAccountHealableError:(unint64_t)error;
- (void)addDeviceHealableError:(unint64_t)error deviceId:(id)id;
- (void)addHealableState:(unint64_t)state;
- (void)encodeWithCoder:(id)coder;
- (void)removeHealableState:(unint64_t)state;
@end

@implementation KTSelfVerificationHealableErrors

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountHealableErrors = [(KTSelfVerificationHealableErrors *)self accountHealableErrors];
  [coderCopy encodeObject:accountHealableErrors forKey:@"accountHealableErrors"];

  deviceIdToHealableErrors = [(KTSelfVerificationHealableErrors *)self deviceIdToHealableErrors];
  [coderCopy encodeObject:deviceIdToHealableErrors forKey:@"deviceIdToHealableErrors"];

  [coderCopy encodeInt64:-[KTSelfVerificationHealableErrors healableState](self forKey:{"healableState"), @"healableState"}];
}

- (KTSelfVerificationHealableErrors)initWithCoder:(id)coder
{
  v42 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"accountHealableErrors"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"deviceIdToHealableErrors"];
  v15 = [coderCopy decodeInt64ForKey:@"healableState"];
  v40.receiver = self;
  v40.super_class = KTSelfVerificationHealableErrors;
  v16 = [(KTSelfVerificationHealableErrors *)&v40 init];
  if (v16)
  {
    if ([v8 count])
    {
      [MEMORY[0x1E695DF70] arrayWithArray:v8];
    }

    else
    {
      [MEMORY[0x1E695DF70] array];
    }
    v17 = ;
    [(KTSelfVerificationHealableErrors *)v16 set_accountHealableErrors:v17];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(KTSelfVerificationHealableErrors *)v16 set_deviceIdToHealableErrors:dictionary];

    if ([v14 count])
    {
      v31 = v15;
      v32 = v14;
      v33 = v13;
      v34 = v8;
      v35 = v7;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v19 = v14;
      v20 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v37;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v37 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v36 + 1) + 8 * i);
            v25 = MEMORY[0x1E695DF70];
            v26 = [v19 objectForKey:v24];
            v27 = [v25 arrayWithArray:v26];

            _deviceIdToHealableErrors = [(KTSelfVerificationHealableErrors *)v16 _deviceIdToHealableErrors];
            [_deviceIdToHealableErrors setObject:v27 forKey:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v21);
      }

      v8 = v34;
      v7 = v35;
      v14 = v32;
      v13 = v33;
      v15 = v31;
    }

    [(KTSelfVerificationHealableErrors *)v16 setHealableState:v15];
  }

  v29 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      healableState = [(KTSelfVerificationHealableErrors *)self healableState];
      if (healableState == [(KTSelfVerificationHealableErrors *)v5 healableState])
      {
        accountHealableErrors = [(KTSelfVerificationHealableErrors *)self accountHealableErrors];
        accountHealableErrors2 = [(KTSelfVerificationHealableErrors *)v5 accountHealableErrors];
        v9 = accountHealableErrors2;
        if (accountHealableErrors == accountHealableErrors2)
        {
        }

        else
        {
          accountHealableErrors3 = [(KTSelfVerificationHealableErrors *)self accountHealableErrors];
          accountHealableErrors4 = [(KTSelfVerificationHealableErrors *)v5 accountHealableErrors];
          v12 = [accountHealableErrors3 isEqual:accountHealableErrors4];

          if (!v12)
          {
            goto LABEL_12;
          }
        }

        deviceIdToHealableErrors = [(KTSelfVerificationHealableErrors *)self deviceIdToHealableErrors];
        deviceIdToHealableErrors2 = [(KTSelfVerificationHealableErrors *)v5 deviceIdToHealableErrors];
        v16 = deviceIdToHealableErrors2;
        if (deviceIdToHealableErrors == deviceIdToHealableErrors2)
        {
        }

        else
        {
          deviceIdToHealableErrors3 = [(KTSelfVerificationHealableErrors *)self deviceIdToHealableErrors];
          deviceIdToHealableErrors4 = [(KTSelfVerificationHealableErrors *)v5 deviceIdToHealableErrors];
          v19 = [deviceIdToHealableErrors3 isEqual:deviceIdToHealableErrors4];

          if ((v19 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v13 = 1;
        goto LABEL_15;
      }

LABEL_12:
      v13 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v13 = 0;
  }

LABEL_16:

  return v13;
}

- (id)description
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"KTHealableErrors: <%p>\n", self];
  accountHealableErrors = [(KTSelfVerificationHealableErrors *)self accountHealableErrors];
  if (accountHealableErrors)
  {
    [v3 appendString:@"account="];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = accountHealableErrors;
    v6 = [v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v3 appendFormat:@"%@, ", *(*(&v34 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v7);
    }

    [v3 appendString:@"\n"];
  }

  deviceIdToHealableErrors = [(KTSelfVerificationHealableErrors *)self deviceIdToHealableErrors];
  if (deviceIdToHealableErrors)
  {
    [v3 appendString:@"devices = {\n"];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = deviceIdToHealableErrors;
    v11 = deviceIdToHealableErrors;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * j);
          kt_hexString = [v16 kt_hexString];
          [v3 appendFormat:@"%@ : ", kt_hexString];

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v18 = [v11 objectForKey:v16];
          v19 = [v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v27;
            do
            {
              for (k = 0; k != v20; ++k)
              {
                if (*v27 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                [v3 appendFormat:@"%@, ", *(*(&v26 + 1) + 8 * k)];
              }

              v20 = [v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
            }

            while (v20);
          }

          [v3 appendString:@"\n"];
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v13);
    }

    [v3 appendString:@"}\n"];
    deviceIdToHealableErrors = v25;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v3;
}

- (KTSelfVerificationHealableErrors)init
{
  v6.receiver = self;
  v6.super_class = KTSelfVerificationHealableErrors;
  v2 = [(KTSelfVerificationHealableErrors *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(KTSelfVerificationHealableErrors *)v2 set_accountHealableErrors:array];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(KTSelfVerificationHealableErrors *)v2 set_deviceIdToHealableErrors:dictionary];
  }

  return v2;
}

- (NSArray)accountHealableErrors
{
  _accountHealableErrors = [(KTSelfVerificationHealableErrors *)self _accountHealableErrors];
  objc_sync_enter(_accountHealableErrors);
  _accountHealableErrors2 = [(KTSelfVerificationHealableErrors *)self _accountHealableErrors];
  v5 = [_accountHealableErrors2 count];

  if (v5)
  {
    v6 = MEMORY[0x1E695DEC8];
    _accountHealableErrors3 = [(KTSelfVerificationHealableErrors *)self _accountHealableErrors];
    v8 = [v6 arrayWithArray:_accountHealableErrors3];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(_accountHealableErrors);

  return v8;
}

- (NSDictionary)deviceIdToHealableErrors
{
  v24 = *MEMORY[0x1E69E9840];
  obj = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
  objc_sync_enter(obj);
  _deviceIdToHealableErrors = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
  v4 = [_deviceIdToHealableErrors count];

  if (v4)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    _deviceIdToHealableErrors2 = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
    v7 = [_deviceIdToHealableErrors2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(_deviceIdToHealableErrors2);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = MEMORY[0x1E695DEC8];
          _deviceIdToHealableErrors3 = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
          v13 = [_deviceIdToHealableErrors3 objectForKey:v10];
          v14 = [v11 arrayWithArray:v13];

          [dictionary setObject:v14 forKey:v10];
        }

        v7 = [_deviceIdToHealableErrors2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v15 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
  }

  else
  {
    v15 = 0;
  }

  objc_sync_exit(obj);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)addAccountHealableError:(unint64_t)error
{
  obj = [(KTSelfVerificationHealableErrors *)self _accountHealableErrors];
  objc_sync_enter(obj);
  _accountHealableErrors = [(KTSelfVerificationHealableErrors *)self _accountHealableErrors];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:error];
  [_accountHealableErrors addObject:v6];

  objc_sync_exit(obj);
}

- (void)addDeviceHealableError:(unint64_t)error deviceId:(id)id
{
  idCopy = id;
  _deviceIdToHealableErrors = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
  objc_sync_enter(_deviceIdToHealableErrors);
  _deviceIdToHealableErrors2 = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
  array = [_deviceIdToHealableErrors2 objectForKey:idCopy];

  if (!array)
  {
    array = [MEMORY[0x1E695DF70] array];
    _deviceIdToHealableErrors3 = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
    [_deviceIdToHealableErrors3 setObject:array forKey:idCopy];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:error];
  [array addObject:v10];

  objc_sync_exit(_deviceIdToHealableErrors);
}

- (void)addHealableState:(unint64_t)state
{
  v4 = [(KTSelfVerificationHealableErrors *)self healableState]| state;

  [(KTSelfVerificationHealableErrors *)self setHealableState:v4];
}

- (void)removeHealableState:(unint64_t)state
{
  v4 = [(KTSelfVerificationHealableErrors *)self healableState]& ~state;

  [(KTSelfVerificationHealableErrors *)self setHealableState:v4];
}

@end