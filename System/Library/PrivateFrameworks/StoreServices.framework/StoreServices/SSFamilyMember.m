@interface SSFamilyMember
- (SSFamilyMember)initWithCacheRepresentation:(id)a3;
- (SSFamilyMember)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (id)newCacheRepresentation;
@end

@implementation SSFamilyMember

- (SSFamilyMember)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25.receiver = self;
    v25.super_class = SSFamilyMember;
    v5 = [(SSFamilyMember *)&v25 init];
    if (v5)
    {
      v6 = [v4 objectForKey:@"askToBuy"];
      if (objc_opt_respondsToSelector())
      {
        v5->_askToBuy = [v6 BOOLValue];
      }

      v7 = [v4 objectForKey:@"firstName"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 copy];
        firstName = v5->_firstName;
        v5->_firstName = v8;
      }

      v10 = [v4 objectForKey:@"iCloudName"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 copy];
        iCloudAccountName = v5->_iCloudAccountName;
        v5->_iCloudAccountName = v11;
      }

      v13 = [v4 objectForKey:@"lastName"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 copy];
        lastName = v5->_lastName;
        v5->_lastName = v14;
      }

      v16 = [v4 objectForKey:@"iCloudID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v16 copy];
        iCloudIdentifier = v5->_iCloudIdentifier;
        v5->_iCloudIdentifier = v17;
      }

      v19 = [v4 objectForKey:@"iTunesID"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v19 copy];
        iTunesIdentifier = v5->_iTunesIdentifier;
        v5->_iTunesIdentifier = v20;
      }

      v22 = [v4 objectForKey:@"isMe"];

      if (objc_opt_respondsToSelector())
      {
        v5->_me = [v22 BOOLValue];
      }

      v23 = [v4 objectForKey:@"sharing"];

      if (objc_opt_respondsToSelector())
      {
        v5->_sharingPurchases = [v23 BOOLValue];
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (id)newCacheRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_askToBuy];
  [v3 setObject:v4 forKey:@"askToBuy"];

  firstName = self->_firstName;
  if (firstName)
  {
    [v3 setObject:firstName forKey:@"firstName"];
  }

  iCloudAccountName = self->_iCloudAccountName;
  if (iCloudAccountName)
  {
    [v3 setObject:iCloudAccountName forKey:@"iCloudName"];
  }

  iCloudIdentifier = self->_iCloudIdentifier;
  if (iCloudIdentifier)
  {
    [v3 setObject:iCloudIdentifier forKey:@"iCloudID"];
  }

  iTunesIdentifier = self->_iTunesIdentifier;
  if (iTunesIdentifier)
  {
    [v3 setObject:iTunesIdentifier forKey:@"iTunesID"];
  }

  lastName = self->_lastName;
  if (lastName)
  {
    [v3 setObject:lastName forKey:@"lastName"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_me];
  [v3 setObject:v10 forKey:@"isMe"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_sharingPurchases];
  [v3 setObject:v11 forKey:@"sharing"];

  return v3;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_askToBuy];
  SSXPCDictionarySetObject(v3, "0", v4);

  SSXPCDictionarySetObject(v3, "1", self->_firstName);
  SSXPCDictionarySetObject(v3, "2", self->_iCloudAccountName);
  SSXPCDictionarySetObject(v3, "3", self->_iCloudIdentifier);
  SSXPCDictionarySetObject(v3, "4", self->_iTunesIdentifier);
  SSXPCDictionarySetObject(v3, "5", self->_lastName);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_me];
  SSXPCDictionarySetObject(v3, "6", v5);

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_sharingPurchases];
  SSXPCDictionarySetObject(v3, "7", v6);

  return v3;
}

- (SSFamilyMember)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v30.receiver = self;
    v30.super_class = SSFamilyMember;
    v6 = [(SSFamilyMember *)&v30 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      v10 = v9;
      if (v9)
      {
        v6->_askToBuy = [v9 BOOLValue];
      }

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v11);
      firstName = v6->_firstName;
      v6->_firstName = v12;

      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v14);
      iCloudAccountName = v6->_iCloudAccountName;
      v6->_iCloudAccountName = v15;

      v17 = objc_opt_class();
      v18 = SSXPCDictionaryCopyObjectWithClass(v5, "3", v17);
      iCloudIdentifier = v6->_iCloudIdentifier;
      v6->_iCloudIdentifier = v18;

      v20 = objc_opt_class();
      v21 = SSXPCDictionaryCopyObjectWithClass(v5, "4", v20);
      iTunesIdentifier = v6->_iTunesIdentifier;
      v6->_iTunesIdentifier = v21;

      v23 = objc_opt_class();
      v24 = SSXPCDictionaryCopyObjectWithClass(v5, "5", v23);
      lastName = v6->_lastName;
      v6->_lastName = v24;

      v26 = objc_opt_class();
      v27 = SSXPCDictionaryCopyObjectWithClass(v5, "6", v26);

      v6->_me = [v27 BOOLValue];
      v28 = objc_opt_class();
      v29 = SSXPCDictionaryCopyObjectWithClass(v5, "7", v28);

      v6->_sharingPurchases = [v29 BOOLValue];
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end