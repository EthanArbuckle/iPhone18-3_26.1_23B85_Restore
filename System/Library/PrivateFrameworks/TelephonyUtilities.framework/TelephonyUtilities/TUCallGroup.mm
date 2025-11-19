@interface TUCallGroup
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCallGroup:(id)a3;
- (NSString)displayName;
- (TUCallGroup)initWithCall:(id)a3;
- (TUCallGroup)initWithCalls:(id)a3;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (int)status;
- (unint64_t)hash;
- (void)forwardInvocation:(id)a3;
@end

@implementation TUCallGroup

- (int)status
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(TUCallGroup *)self calls];
  v4 = [v3 firstObject];
  v5 = [v4 status];

  v6 = [(TUCallGroup *)self calls];
  v7 = [v6 count];

  if (v7 >= 2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(TUCallGroup *)self calls];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v15 + 1) + 8 * i) status] == 1)
          {
            v5 = 1;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUCallGroup *)self calls];
  v6 = [v3 stringWithFormat:@"<%@ %p calls=%@>", v4, self, v5];

  return v6;
}

- (NSString)displayName
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [(TUCallGroup *)self calls];
  v5 = [v4 count];

  v6 = [(TUCallGroup *)self calls];
  v7 = v6;
  if (v5 == 1)
  {
    v8 = [v6 firstObject];
    v9 = [v8 displayName];
  }

  else
  {
    v10 = [v6 count];

    if (v10 < 2)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"TUCallGroup.m" lineNumber:68 description:{@"Could not determine display name for TUCallGroup with an empty list of calls: %@", self}];

      v9 = 0;
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [(TUCallGroup *)self calls];
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v9 = 0;
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v25 + 1) + 8 * i) displayFirstName];
            v17 = v16;
            if (v9)
            {
              v18 = MEMORY[0x1E696AEC0];
              v19 = TUBundle();
              v20 = [v19 localizedStringForKey:@"%@_AND_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
              v21 = [v18 stringWithFormat:v20, v9, v17];

              v9 = v21;
            }

            else
            {
              v9 = v16;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v13);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return v9;
}

- (TUCallGroup)initWithCalls:(id)a3
{
  v5 = a3;
  if (![v5 count])
  {
    [(TUCallGroup *)a2 initWithCalls:?];
  }

  v10.receiver = self;
  v10.super_class = TUCallGroup;
  v6 = [(TUCallGroup *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    calls = v6->_calls;
    v6->_calls = v7;
  }

  return v6;
}

- (TUCallGroup)initWithCall:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(TUCallGroup *)a2 initWithCall:?];
  }

  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [(TUCallGroup *)self initWithCalls:v6];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallGroup *)self isEqualToCallGroup:v4];

  return v5;
}

- (BOOL)isEqualToCallGroup:(id)a3
{
  v4 = a3;
  v5 = [(TUCallGroup *)self calls];
  v6 = [v4 calls];

  LOBYTE(v4) = [v5 isEqualToArray:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(TUCallGroup *)self calls];
  v3 = [v2 hash];

  return v3;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v9.receiver = self;
  v9.super_class = TUCallGroup;
  v5 = [(TUCallGroup *)&v9 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = [(TUCallGroup *)self calls];
    v7 = [v6 firstObject];
    v5 = [v7 methodSignatureForSelector:a3];
  }

  return v5;
}

- (void)forwardInvocation:(id)a3
{
  v9 = a3;
  [v9 selector];
  v4 = [(TUCallGroup *)self calls];
  v5 = [v4 firstObject];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TUCallGroup *)self calls];
    v8 = [v7 firstObject];
    [v9 invokeWithTarget:v8];
  }
}

- (void)initWithCalls:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TUCallGroup.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"calls.count > 0"}];
}

- (void)initWithCall:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TUCallGroup.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"call != nil"}];
}

@end