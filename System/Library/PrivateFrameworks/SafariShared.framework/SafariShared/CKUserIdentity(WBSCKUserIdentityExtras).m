@interface CKUserIdentity(WBSCKUserIdentityExtras)
- (id)safari_contactIdentifier;
- (id)safari_handle;
@end

@implementation CKUserIdentity(WBSCKUserIdentityExtras)

- (id)safari_handle
{
  v1 = [a1 lookupInfo];
  v2 = [v1 emailAddress];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v1 phoneNumber];
  }

  v5 = v4;

  return v5;
}

- (id)safari_contactIdentifier
{
  v2 = 0;
  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
  {
    v3 = [a1 contactIdentifiers];
    v4 = [v3 firstObject];

    if ([v4 length])
    {
      v2 = v4;
    }

    else
    {
      v5 = +[WBSContactStoreManager sharedContactStoreManager];
      v6 = [a1 lookupInfo];
      v7 = [v6 emailAddress];

      v8 = [a1 lookupInfo];
      v9 = [v8 phoneNumber];

      if (v7 | v9)
      {
        v10 = [v5 contactForHandle:v7 error:0];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [v5 contactForHandle:v9 error:0];
        }

        v13 = v12;

        v2 = [v13 identifier];
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2;
}

@end