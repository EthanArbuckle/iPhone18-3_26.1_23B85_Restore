@interface CKUserIdentity(WBSCKUserIdentityExtras)
- (id)safari_contactIdentifier;
- (id)safari_handle;
@end

@implementation CKUserIdentity(WBSCKUserIdentityExtras)

- (id)safari_handle
{
  lookupInfo = [self lookupInfo];
  emailAddress = [lookupInfo emailAddress];
  v3 = emailAddress;
  if (emailAddress)
  {
    phoneNumber = emailAddress;
  }

  else
  {
    phoneNumber = [lookupInfo phoneNumber];
  }

  v5 = phoneNumber;

  return v5;
}

- (id)safari_contactIdentifier
{
  identifier = 0;
  if ([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] == 3)
  {
    contactIdentifiers = [self contactIdentifiers];
    firstObject = [contactIdentifiers firstObject];

    if ([firstObject length])
    {
      identifier = firstObject;
    }

    else
    {
      v5 = +[WBSContactStoreManager sharedContactStoreManager];
      lookupInfo = [self lookupInfo];
      emailAddress = [lookupInfo emailAddress];

      lookupInfo2 = [self lookupInfo];
      phoneNumber = [lookupInfo2 phoneNumber];

      if (emailAddress | phoneNumber)
      {
        v10 = [v5 contactForHandle:emailAddress error:0];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [v5 contactForHandle:phoneNumber error:0];
        }

        v13 = v12;

        identifier = [v13 identifier];
      }

      else
      {
        identifier = 0;
      }
    }
  }

  return identifier;
}

@end