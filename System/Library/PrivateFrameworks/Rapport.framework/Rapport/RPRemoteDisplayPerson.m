@interface RPRemoteDisplayPerson
- (RPRemoteDisplayPerson)initWithCoder:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)initPersonWithDevice:(id)a3;
- (void)addDevice:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeDevice:(id)a3;
@end

@implementation RPRemoteDisplayPerson

- (RPRemoteDisplayPerson)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RPRemoteDisplayPerson;
  v5 = [(RPRemoteDisplayPerson *)&v11 init];
  if (v5)
  {
    v6 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  accountAltDSID = self->_accountAltDSID;
  v10 = v4;
  if (accountAltDSID)
  {
    [v4 encodeObject:accountAltDSID forKey:@"_altDSID"];
    v4 = v10;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    [v10 encodeObject:accountID forKey:@"_aID"];
    v4 = v10;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    [v10 encodeObject:contactID forKey:@"_cnID"];
    v4 = v10;
  }

  discoveredDevices = self->_discoveredDevices;
  if (discoveredDevices)
  {
    [v10 encodeObject:discoveredDevices forKey:@"_dv"];
    v4 = v10;
  }

  flags = self->_flags;
  if (flags)
  {
    [v10 encodeInt64:flags forKey:@"_fl"];
    v4 = v10;
  }
}

- (id)descriptionWithLevel:(int)a3
{
  if (a3 <= 49)
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

- (id)initPersonWithDevice:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = RPRemoteDisplayPerson;
  v5 = [(RPRemoteDisplayPerson *)&v17 init];
  if (v5)
  {
    v6 = [v4 accountAltDSID];
    accountAltDSID = v5->_accountAltDSID;
    v5->_accountAltDSID = v6;

    v8 = [v4 accountID];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [v4 contactID];
    contactID = v5->_contactID;
    v5->_contactID = v10;

    v12 = objc_opt_new();
    discoveredDevices = v5->_discoveredDevices;
    v5->_discoveredDevices = v12;

    [(NSMutableArray *)v5->_discoveredDevices addObject:v4];
    if (([v4 statusFlags] & 0x80000) != 0)
    {
      v14 = 1;
    }

    else
    {
      if (([v4 statusFlags] & 0x1000000000) == 0)
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

- (void)addDevice:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5->_discoveredDevices;
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

        if ([*(*(&v14 + 1) + 8 * v9) isEqualToDevice:{v4, v14}])
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

  discoveredDevices = v5->_discoveredDevices;
  if (!discoveredDevices)
  {
    v11 = objc_opt_new();
    v12 = v5->_discoveredDevices;
    v5->_discoveredDevices = v11;

    discoveredDevices = v5->_discoveredDevices;
  }

  [(NSMutableArray *)discoveredDevices addObject:v4, v14];
LABEL_13:
  objc_sync_exit(v5);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeDevice:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5->_discoveredDevices;
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
        if ([v10 isEqualToDevice:{v4, v13}])
        {
          v11 = v10;

          if (v11)
          {
            [(NSMutableArray *)v5->_discoveredDevices removeObject:v11];
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
  objc_sync_exit(v5);

  v12 = *MEMORY[0x1E69E9840];
}

@end