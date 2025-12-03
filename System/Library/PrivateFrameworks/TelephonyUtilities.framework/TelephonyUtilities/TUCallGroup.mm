@interface TUCallGroup
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCallGroup:(id)group;
- (NSString)displayName;
- (TUCallGroup)initWithCall:(id)call;
- (TUCallGroup)initWithCalls:(id)calls;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (int)status;
- (unint64_t)hash;
- (void)forwardInvocation:(id)invocation;
@end

@implementation TUCallGroup

- (int)status
{
  v20 = *MEMORY[0x1E69E9840];
  calls = [(TUCallGroup *)self calls];
  firstObject = [calls firstObject];
  status = [firstObject status];

  calls2 = [(TUCallGroup *)self calls];
  v7 = [calls2 count];

  if (v7 >= 2)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    calls3 = [(TUCallGroup *)self calls];
    v9 = [calls3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(calls3);
          }

          if ([*(*(&v15 + 1) + 8 * i) status] == 1)
          {
            status = 1;
            goto LABEL_12;
          }
        }

        v10 = [calls3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  return status;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  calls = [(TUCallGroup *)self calls];
  v6 = [v3 stringWithFormat:@"<%@ %p calls=%@>", v4, self, calls];

  return v6;
}

- (NSString)displayName
{
  v30 = *MEMORY[0x1E69E9840];
  calls = [(TUCallGroup *)self calls];
  v5 = [calls count];

  calls2 = [(TUCallGroup *)self calls];
  v7 = calls2;
  if (v5 == 1)
  {
    firstObject = [calls2 firstObject];
    displayName = [firstObject displayName];
  }

  else
  {
    v10 = [calls2 count];

    if (v10 < 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TUCallGroup.m" lineNumber:68 description:{@"Could not determine display name for TUCallGroup with an empty list of calls: %@", self}];

      displayName = 0;
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      calls3 = [(TUCallGroup *)self calls];
      v12 = [calls3 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        displayName = 0;
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(calls3);
            }

            displayFirstName = [*(*(&v25 + 1) + 8 * i) displayFirstName];
            v17 = displayFirstName;
            if (displayName)
            {
              v18 = MEMORY[0x1E696AEC0];
              v19 = TUBundle();
              v20 = [v19 localizedStringForKey:@"%@_AND_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
              v21 = [v18 stringWithFormat:v20, displayName, v17];

              displayName = v21;
            }

            else
            {
              displayName = displayFirstName;
            }
          }

          v13 = [calls3 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v13);
      }

      else
      {
        displayName = 0;
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];

  return displayName;
}

- (TUCallGroup)initWithCalls:(id)calls
{
  callsCopy = calls;
  if (![callsCopy count])
  {
    [(TUCallGroup *)a2 initWithCalls:?];
  }

  v10.receiver = self;
  v10.super_class = TUCallGroup;
  v6 = [(TUCallGroup *)&v10 init];
  if (v6)
  {
    v7 = [callsCopy copy];
    calls = v6->_calls;
    v6->_calls = v7;
  }

  return v6;
}

- (TUCallGroup)initWithCall:(id)call
{
  v10[1] = *MEMORY[0x1E69E9840];
  callCopy = call;
  if (!callCopy)
  {
    [(TUCallGroup *)a2 initWithCall:?];
  }

  v10[0] = callCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [(TUCallGroup *)self initWithCalls:v6];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCallGroup *)self isEqualToCallGroup:equalCopy];

  return v5;
}

- (BOOL)isEqualToCallGroup:(id)group
{
  groupCopy = group;
  calls = [(TUCallGroup *)self calls];
  calls2 = [groupCopy calls];

  LOBYTE(groupCopy) = [calls isEqualToArray:calls2];
  return groupCopy;
}

- (unint64_t)hash
{
  calls = [(TUCallGroup *)self calls];
  v3 = [calls hash];

  return v3;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = TUCallGroup;
  v5 = [(TUCallGroup *)&v9 methodSignatureForSelector:?];
  if (!v5)
  {
    calls = [(TUCallGroup *)self calls];
    firstObject = [calls firstObject];
    v5 = [firstObject methodSignatureForSelector:selector];
  }

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  [invocationCopy selector];
  calls = [(TUCallGroup *)self calls];
  firstObject = [calls firstObject];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    calls2 = [(TUCallGroup *)self calls];
    firstObject2 = [calls2 firstObject];
    [invocationCopy invokeWithTarget:firstObject2];
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