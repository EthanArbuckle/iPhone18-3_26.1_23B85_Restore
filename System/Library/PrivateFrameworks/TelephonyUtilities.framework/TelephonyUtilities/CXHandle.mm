@interface CXHandle
+ (CXHandle)handleWithTUHandle:(id)a3;
+ (id)handlesWithTUHandles:(id)a3;
+ (id)membersWithTUHandles:(id)a3;
+ (id)tuHandlesWithHandles:(id)a3;
+ (id)tuHandlesWithMembers:(id)a3;
- (CXHandle)initWithDestinationID:(id)a3;
- (TUHandle)tuHandle;
@end

@implementation CXHandle

+ (CXHandle)handleWithTUHandle:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 type];
    v6 = 2;
    if (v5 == 3)
    {
      v6 = 3;
    }

    if (v5 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = [CXHandle alloc];
    v9 = [v4 value];
    v10 = [v4 siriDisplayName];
    v11 = [v8 initWithType:v7 value:v9 siriDisplayName:v10];
  }

  else
  {
    v11 = [[CXHandle alloc] initWithType:2];
  }

  return v11;
}

+ (id)tuHandlesWithHandles:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) tuHandle];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

+ (id)tuHandlesWithMembers:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v14 + 1) + 8 * i) handle];
        v11 = [v10 tuHandle];

        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

+ (id)handlesWithTUHandles:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

        v11 = [a1 handleWithTUHandle:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)membersWithTUHandles:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
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
        v13 = [a1 handleWithTUHandle:{v11, v17}];
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

- (CXHandle)initWithDestinationID:(id)a3
{
  v4 = a3;
  if ([v4 destinationIdIsEmailAddress])
  {
    v5 = 3;
  }

  else if ([v4 destinationIdIsPhoneNumber])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (v4)
  {
    v6 = [(CXHandle *)self initWithType:v5 value:v4];
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
  v3 = [(CXHandle *)self value];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [(CXHandle *)self type];
  switch(v4)
  {
    case CXHandleTypeEmailAddress:
      v5 = [TUHandle normalizedEmailAddressHandleForValue:v3];
      break;
    case CXHandleTypePhoneNumber:
      v5 = [TUHandle normalizedPhoneNumberHandleForValue:v3 isoCountryCode:0];
      break;
    case CXHandleTypeGeneric:
      v5 = [TUHandle normalizedGenericHandleForValue:v3];
      break;
    default:
LABEL_6:
      v6 = 0;
      goto LABEL_11;
  }

  v6 = v5;
  if (v5)
  {
    v7 = [(CXHandle *)self siriDisplayName];
    [v6 setSiriDisplayName:v7];
  }

LABEL_11:

  return v6;
}

@end