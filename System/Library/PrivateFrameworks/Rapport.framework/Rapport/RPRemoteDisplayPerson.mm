@interface RPRemoteDisplayPerson
- (RPRemoteDisplayPerson)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (id)initPersonWithDevice:(id)device;
- (void)addDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
- (void)removeDevice:(id)device;
@end

@implementation RPRemoteDisplayPerson

- (RPRemoteDisplayPerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RPRemoteDisplayPerson;
  v5 = [(RPRemoteDisplayPerson *)&v11 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_flags = v12;
    }

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountAltDSID = self->_accountAltDSID;
  v10 = coderCopy;
  if (accountAltDSID)
  {
    [coderCopy encodeObject:accountAltDSID forKey:@"_altDSID"];
    coderCopy = v10;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    [v10 encodeObject:accountID forKey:@"_aID"];
    coderCopy = v10;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    [v10 encodeObject:contactID forKey:@"_cnID"];
    coderCopy = v10;
  }

  discoveredDevices = self->_discoveredDevices;
  if (discoveredDevices)
  {
    [v10 encodeObject:discoveredDevices forKey:@"_dv"];
    coderCopy = v10;
  }

  flags = self->_flags;
  if (flags)
  {
    [v10 encodeInt64:flags forKey:@"_fl"];
    coderCopy = v10;
  }
}

- (id)descriptionWithLevel:(int)level
{
  if (level <= 49)
  {
    v4 = 100;
  }

  else
  {
    v4 = 8;
  }

  accountID = self->_accountID;
  NSAppendPrintF();
  v5 = 0;
  v6 = v5;
  accountAltDSID = self->_accountAltDSID;
  if (accountAltDSID)
  {
    v17 = v5;
    accountID = accountAltDSID;
    NSAppendPrintF();
    v8 = v17;

    v6 = v8;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    accountID = v4;
    v16 = contactID;
    NSAppendPrintF();
    v10 = v6;

    v6 = v10;
  }

  if ([(NSMutableArray *)self->_discoveredDevices count:accountID])
  {
    NSAppendPrintF();
    v11 = v6;

    v6 = v11;
  }

  if (self->_flags)
  {
    flags = self->_flags;
    NSAppendPrintF();
    v12 = v6;

    v6 = v12;
  }

  return v6;
}

- (id)initPersonWithDevice:(id)device
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = RPRemoteDisplayPerson;
  v5 = [(RPRemoteDisplayPerson *)&v17 init];
  if (v5)
  {
    accountAltDSID = [deviceCopy accountAltDSID];
    accountAltDSID = v5->_accountAltDSID;
    v5->_accountAltDSID = accountAltDSID;

    accountID = [deviceCopy accountID];
    accountID = v5->_accountID;
    v5->_accountID = accountID;

    contactID = [deviceCopy contactID];
    contactID = v5->_contactID;
    v5->_contactID = contactID;

    v12 = objc_opt_new();
    discoveredDevices = v5->_discoveredDevices;
    v5->_discoveredDevices = v12;

    [(NSMutableArray *)v5->_discoveredDevices addObject:deviceCopy];
    if (([deviceCopy statusFlags] & 0x80000) != 0)
    {
      v14 = 1;
    }

    else
    {
      if (([deviceCopy statusFlags] & 0x1000000000) == 0)
      {
LABEL_7:
        v15 = v5;
        goto LABEL_8;
      }

      v14 = 2;
    }

    v5->_flags |= v14;
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (void)addDevice:(id)device
{
  v19 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = selfCopy->_discoveredDevices;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v14 + 1) + 8 * v9) isEqualToDevice:{deviceCopy, v14}])
        {

          goto LABEL_13;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  discoveredDevices = selfCopy->_discoveredDevices;
  if (!discoveredDevices)
  {
    v11 = objc_opt_new();
    v12 = selfCopy->_discoveredDevices;
    selfCopy->_discoveredDevices = v11;

    discoveredDevices = selfCopy->_discoveredDevices;
  }

  [(NSMutableArray *)discoveredDevices addObject:deviceCopy, v14];
LABEL_13:
  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeDevice:(id)device
{
  v18 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = selfCopy->_discoveredDevices;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isEqualToDevice:{deviceCopy, v13}])
        {
          v11 = v10;

          if (v11)
          {
            [(NSMutableArray *)selfCopy->_discoveredDevices removeObject:v11];
          }

          goto LABEL_12;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:
  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x1E69E9840];
}

@end