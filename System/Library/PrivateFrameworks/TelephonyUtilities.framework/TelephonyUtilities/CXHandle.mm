@interface CXHandle
+ (CXHandle)handleWithTUHandle:(id)handle;
+ (id)handlesWithTUHandles:(id)handles;
+ (id)membersWithTUHandles:(id)handles;
+ (id)tuHandlesWithHandles:(id)handles;
+ (id)tuHandlesWithMembers:(id)members;
- (CXHandle)initWithDestinationID:(id)d;
- (TUHandle)tuHandle;
@end

@implementation CXHandle

+ (CXHandle)handleWithTUHandle:(id)handle
{
  handleCopy = handle;
  v4 = handleCopy;
  if (handleCopy)
  {
    type = [handleCopy type];
    v6 = 2;
    if (type == 3)
    {
      v6 = 3;
    }

    if (type == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = [CXHandle alloc];
    value = [v4 value];
    siriDisplayName = [v4 siriDisplayName];
    v11 = [v8 initWithType:v7 value:value siriDisplayName:siriDisplayName];
  }

  else
  {
    v11 = [[CXHandle alloc] initWithType:2];
  }

  return v11;
}

+ (id)tuHandlesWithHandles:(id)handles
{
  handlesCopy = handles;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [handlesCopy count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = handlesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        tuHandle = [*(*(&v13 + 1) + 8 * i) tuHandle];
        if (tuHandle)
        {
          [v4 addObject:tuHandle];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

+ (id)tuHandlesWithMembers:(id)members
{
  membersCopy = members;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [membersCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = membersCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        handle = [*(*(&v14 + 1) + 8 * i) handle];
        tuHandle = [handle tuHandle];

        if (tuHandle)
        {
          [v4 addObject:tuHandle];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

+ (id)handlesWithTUHandles:(id)handles
{
  handlesCopy = handles;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [handlesCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = handlesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self handleWithTUHandle:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)membersWithTUHandles:(id)handles
{
  handlesCopy = handles;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [handlesCopy count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = handlesCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [CXMember alloc];
        v13 = [self handleWithTUHandle:{v11, v17}];
        v14 = [v12 initWithHandle:v13];
        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];

  return v15;
}

- (CXHandle)initWithDestinationID:(id)d
{
  dCopy = d;
  if ([dCopy destinationIdIsEmailAddress])
  {
    v5 = 3;
  }

  else if ([dCopy destinationIdIsPhoneNumber])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (dCopy)
  {
    v6 = [(CXHandle *)self initWithType:v5 value:dCopy];
  }

  else
  {
    v6 = [(CXHandle *)self initWithType:v5];
  }

  v7 = v6;

  return v7;
}

- (TUHandle)tuHandle
{
  value = [(CXHandle *)self value];
  if (!value)
  {
    goto LABEL_6;
  }

  type = [(CXHandle *)self type];
  switch(type)
  {
    case CXHandleTypeEmailAddress:
      v5 = [TUHandle normalizedEmailAddressHandleForValue:value];
      break;
    case CXHandleTypePhoneNumber:
      v5 = [TUHandle normalizedPhoneNumberHandleForValue:value isoCountryCode:0];
      break;
    case CXHandleTypeGeneric:
      v5 = [TUHandle normalizedGenericHandleForValue:value];
      break;
    default:
LABEL_6:
      v6 = 0;
      goto LABEL_11;
  }

  v6 = v5;
  if (v5)
  {
    siriDisplayName = [(CXHandle *)self siriDisplayName];
    [v6 setSiriDisplayName:siriDisplayName];
  }

LABEL_11:

  return v6;
}

@end