@interface KTSelfVerificationHealableErrors
- (BOOL)isEqual:(id)a3;
- (KTSelfVerificationHealableErrors)init;
- (KTSelfVerificationHealableErrors)initWithCoder:(id)a3;
- (NSArray)accountHealableErrors;
- (NSDictionary)deviceIdToHealableErrors;
- (id)description;
- (void)addAccountHealableError:(unint64_t)a3;
- (void)addDeviceHealableError:(unint64_t)a3 deviceId:(id)a4;
- (void)addHealableState:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeHealableState:(unint64_t)a3;
@end

@implementation KTSelfVerificationHealableErrors

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(KTSelfVerificationHealableErrors *)self accountHealableErrors];
  [v6 encodeObject:v4 forKey:@"accountHealableErrors"];

  v5 = [(KTSelfVerificationHealableErrors *)self deviceIdToHealableErrors];
  [v6 encodeObject:v5 forKey:@"deviceIdToHealableErrors"];

  [v6 encodeInt64:-[KTSelfVerificationHealableErrors healableState](self forKey:{"healableState"), @"healableState"}];
}

- (KTSelfVerificationHealableErrors)initWithCoder:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"accountHealableErrors"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"deviceIdToHealableErrors"];
  v15 = [v4 decodeInt64ForKey:@"healableState"];
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

    v18 = [MEMORY[0x1E695DF90] dictionary];
    [(KTSelfVerificationHealableErrors *)v16 set_deviceIdToHealableErrors:v18];

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

            v28 = [(KTSelfVerificationHealableErrors *)v16 _deviceIdToHealableErrors];
            [v28 setObject:v27 forKey:v24];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(KTSelfVerificationHealableErrors *)self healableState];
      if (v6 == [(KTSelfVerificationHealableErrors *)v5 healableState])
      {
        v7 = [(KTSelfVerificationHealableErrors *)self accountHealableErrors];
        v8 = [(KTSelfVerificationHealableErrors *)v5 accountHealableErrors];
        v9 = v8;
        if (v7 == v8)
        {
        }

        else
        {
          v10 = [(KTSelfVerificationHealableErrors *)self accountHealableErrors];
          v11 = [(KTSelfVerificationHealableErrors *)v5 accountHealableErrors];
          v12 = [v10 isEqual:v11];

          if (!v12)
          {
            goto LABEL_12;
          }
        }

        v14 = [(KTSelfVerificationHealableErrors *)self deviceIdToHealableErrors];
        v15 = [(KTSelfVerificationHealableErrors *)v5 deviceIdToHealableErrors];
        v16 = v15;
        if (v14 == v15)
        {
        }

        else
        {
          v17 = [(KTSelfVerificationHealableErrors *)self deviceIdToHealableErrors];
          v18 = [(KTSelfVerificationHealableErrors *)v5 deviceIdToHealableErrors];
          v19 = [v17 isEqual:v18];

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
  v4 = [(KTSelfVerificationHealableErrors *)self accountHealableErrors];
  if (v4)
  {
    [v3 appendString:@"account="];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = v4;
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

  v10 = [(KTSelfVerificationHealableErrors *)self deviceIdToHealableErrors];
  if (v10)
  {
    [v3 appendString:@"devices = {\n"];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v10;
    v11 = v10;
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
          v17 = [v16 kt_hexString];
          [v3 appendFormat:@"%@ : ", v17];

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
    v10 = v25;
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
    v3 = [MEMORY[0x1E695DF70] array];
    [(KTSelfVerificationHealableErrors *)v2 set_accountHealableErrors:v3];

    v4 = [MEMORY[0x1E695DF90] dictionary];
    [(KTSelfVerificationHealableErrors *)v2 set_deviceIdToHealableErrors:v4];
  }

  return v2;
}

- (NSArray)accountHealableErrors
{
  v3 = [(KTSelfVerificationHealableErrors *)self _accountHealableErrors];
  objc_sync_enter(v3);
  v4 = [(KTSelfVerificationHealableErrors *)self _accountHealableErrors];
  v5 = [v4 count];

  if (v5)
  {
    v6 = MEMORY[0x1E695DEC8];
    v7 = [(KTSelfVerificationHealableErrors *)self _accountHealableErrors];
    v8 = [v6 arrayWithArray:v7];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v3);

  return v8;
}

- (NSDictionary)deviceIdToHealableErrors
{
  v24 = *MEMORY[0x1E69E9840];
  obj = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
  objc_sync_enter(obj);
  v3 = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = MEMORY[0x1E695DEC8];
          v12 = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
          v13 = [v12 objectForKey:v10];
          v14 = [v11 arrayWithArray:v13];

          [v5 setObject:v14 forKey:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v15 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];
  }

  else
  {
    v15 = 0;
  }

  objc_sync_exit(obj);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)addAccountHealableError:(unint64_t)a3
{
  obj = [(KTSelfVerificationHealableErrors *)self _accountHealableErrors];
  objc_sync_enter(obj);
  v5 = [(KTSelfVerificationHealableErrors *)self _accountHealableErrors];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 addObject:v6];

  objc_sync_exit(obj);
}

- (void)addDeviceHealableError:(unint64_t)a3 deviceId:(id)a4
{
  v11 = a4;
  v6 = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
  objc_sync_enter(v6);
  v7 = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
  v8 = [v7 objectForKey:v11];

  if (!v8)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [(KTSelfVerificationHealableErrors *)self _deviceIdToHealableErrors];
    [v9 setObject:v8 forKey:v11];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v8 addObject:v10];

  objc_sync_exit(v6);
}

- (void)addHealableState:(unint64_t)a3
{
  v4 = [(KTSelfVerificationHealableErrors *)self healableState]| a3;

  [(KTSelfVerificationHealableErrors *)self setHealableState:v4];
}

- (void)removeHealableState:(unint64_t)a3
{
  v4 = [(KTSelfVerificationHealableErrors *)self healableState]& ~a3;

  [(KTSelfVerificationHealableErrors *)self setHealableState:v4];
}

@end