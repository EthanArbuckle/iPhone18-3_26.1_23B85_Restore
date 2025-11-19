@interface SBSApplicationShortcutItem
+ (id)_staticApplicationShortcutItemsFromInfoPlistEntry:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)userInfo;
- (NSString)description;
- (SBSApplicationShortcutItem)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_localizeWithHandler:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation SBSApplicationShortcutItem

- (SBSApplicationShortcutItem)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v30.receiver = self;
    v30.super_class = SBSApplicationShortcutItem;
    v5 = [(SBSApplicationShortcutItem *)&v30 init];
    if (v5)
    {
      [@"type" UTF8String];
      v6 = BSDeserializeStringFromXPCDictionaryWithKey();
      v7 = [v6 copy];
      type = v5->_type;
      v5->_type = v7;

      [@"title" UTF8String];
      v9 = BSDeserializeStringFromXPCDictionaryWithKey();
      v10 = [v9 copy];
      localizedTitle = v5->_localizedTitle;
      v5->_localizedTitle = v10;

      [@"subtitle" UTF8String];
      v12 = BSDeserializeStringFromXPCDictionaryWithKey();
      v13 = [v12 copy];
      localizedSubtitle = v5->_localizedSubtitle;
      v5->_localizedSubtitle = v13;

      [@"icon" UTF8String];
      v15 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
      icon = v5->_icon;
      v5->_icon = v15;

      v5->_activationMode = xpc_dictionary_get_int64(v4, [@"activationMode" UTF8String]);
      [@"targetContentIdentifier" UTF8String];
      v17 = BSDeserializeStringFromXPCDictionaryWithKey();
      targetContentIdentifier = v5->_targetContentIdentifier;
      v5->_targetContentIdentifier = v17;

      v19 = xpc_dictionary_get_value(v4, [@"userInfoData" UTF8String]);
      v20 = v19;
      if (v19 && MEMORY[0x193AFFE60](v19) == MEMORY[0x1E69E9E70])
      {
        v21 = MEMORY[0x1E695DEF0];
        bytes_ptr = xpc_data_get_bytes_ptr(v20);
        v23 = [v21 dataWithBytes:bytes_ptr length:xpc_data_get_length(v20)];
        userInfoData = v5->_userInfoData;
        v5->_userInfoData = v23;
      }

      [@"bundleIdentifierToLaunch" UTF8String];
      v25 = BSDeserializeStringFromXPCDictionaryWithKey();
      v26 = [v25 copy];
      bundleIdentifierToLaunch = v5->_bundleIdentifierToLaunch;
      v5->_bundleIdentifierToLaunch = v26;
    }

    self = v5;
    v28 = self;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  if (xdict)
  {
    [@"type" UTF8String];
    BSSerializeStringToXPCDictionaryWithKey();
    [@"title" UTF8String];
    BSSerializeStringToXPCDictionaryWithKey();
    [@"subtitle" UTF8String];
    BSSerializeStringToXPCDictionaryWithKey();
    [@"icon" UTF8String];
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    [@"targetContentIdentifier" UTF8String];
    BSSerializeStringToXPCDictionaryWithKey();
    if ([(NSData *)self->_userInfoData length])
    {
      xpc_dictionary_set_data(xdict, [@"userInfoData" UTF8String], -[NSData bytes](self->_userInfoData, "bytes"), -[NSData length](self->_userInfoData, "length"));
    }

    xpc_dictionary_set_int64(xdict, [@"activationMode" UTF8String], self->_activationMode);
    [@"bundleIdentifierToLaunch" UTF8String];
    BSSerializeStringToXPCDictionaryWithKey();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SBSApplicationShortcutItem *)v5 type];
      if (v6 == self->_type)
      {
        v8 = 1;
      }

      else
      {
        v7 = [(SBSApplicationShortcutItem *)v5 type];
        v8 = [v7 isEqualToString:self->_type];
      }

      v10 = [(SBSApplicationShortcutItem *)v5 localizedTitle];
      if (v10 != self->_localizedTitle)
      {
        v11 = [(SBSApplicationShortcutItem *)v5 localizedTitle];
        if (![v11 isEqualToString:self->_localizedTitle])
        {
          v8 = 0;
        }
      }

      v12 = [(SBSApplicationShortcutItem *)v5 localizedSubtitle];
      if (v12 != self->_localizedSubtitle)
      {
        v13 = [(SBSApplicationShortcutItem *)v5 localizedSubtitle];
        if (![v13 isEqualToString:self->_localizedSubtitle])
        {
          v8 = 0;
        }
      }

      v14 = [(SBSApplicationShortcutItem *)v5 icon];
      if (v14 != self->_icon)
      {
        v15 = [(SBSApplicationShortcutItem *)v5 icon];
        if (![v15 isEqual:self->_icon])
        {
          v8 = 0;
        }
      }

      v16 = [(SBSApplicationShortcutItem *)v5 userInfoData];
      if (v16 != self->_userInfoData)
      {
        v17 = [(SBSApplicationShortcutItem *)v5 userInfoData];
        if (![v17 isEqual:self->_userInfoData])
        {
          v8 = 0;
        }
      }

      v9 = [(SBSApplicationShortcutItem *)v5 activationMode]== self->_activationMode && v8 != 0;
      v19 = [(SBSApplicationShortcutItem *)v5 bundleIdentifierToLaunch];
      if (v19 != self->_bundleIdentifierToLaunch)
      {
        v20 = [(SBSApplicationShortcutItem *)v5 bundleIdentifierToLaunch];
        v9 &= [v20 isEqualToString:self->_bundleIdentifierToLaunch];
      }

      v21 = [(SBSApplicationShortcutItem *)v5 targetContentIdentifier];
      if (v21 != self->_targetContentIdentifier)
      {
        v22 = [(SBSApplicationShortcutItem *)v5 targetContentIdentifier];
        v9 &= [v22 isEqualToString:self->_targetContentIdentifier];
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_type withName:@"type"];
  [v3 appendString:self->_localizedTitle withName:@"localizedTitle"];
  [v3 appendString:self->_localizedSubtitle withName:@"localizedSubtitle"];
  [v3 appendString:self->_targetContentIdentifier withName:@"targetContentIdentifier"];
  v4 = [v3 appendObject:self->_icon withName:@"icon"];
  [v3 appendString:self->_bundleIdentifierToLaunch withName:@"bundleIdentifierToLaunch"];
  v5 = [v3 appendInt:LODWORD(self->_activationMode) withName:@"activationMode"];
  v6 = [(SBSApplicationShortcutItem *)self userInfoData];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__SBSApplicationShortcutItem_description__block_invoke;
  v11[3] = &unk_1E735F650;
  v12 = v6;
  v7 = v6;
  v8 = __41__SBSApplicationShortcutItem_description__block_invoke(v11);
  [v3 appendDictionarySection:v8 withName:@"userInfoData" skipIfEmpty:1];

  v9 = [v3 build];

  return v9;
}

id __41__SBSApplicationShortcutItem_description__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE40] propertyListWithData:v2 options:0 format:0 error:0];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setType:self->_type];
  [v4 setLocalizedTitle:self->_localizedTitle];
  [v4 setLocalizedSubtitle:self->_localizedSubtitle];
  [v4 setIcon:self->_icon];
  [v4 setUserInfoData:self->_userInfoData];
  [v4 setActivationMode:self->_activationMode];
  [v4 setBundleIdentifierToLaunch:self->_bundleIdentifierToLaunch];
  [v4 setTargetContentIdentifier:self->_targetContentIdentifier];
  return v4;
}

- (NSDictionary)userInfo
{
  userInfoData = self->_userInfoData;
  if (userInfoData)
  {
    v3 = [MEMORY[0x1E696AE40] propertyListWithData:userInfoData options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (void)setUserInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"userInfo is not an NSDictionary" userInfo:0];
      objc_exception_throw(v10);
    }

    userInfoData = self->_userInfoData;
    self->_userInfoData = 0;

    v16 = 0;
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v16];
    v7 = v16;
    v8 = self->_userInfoData;
    self->_userInfoData = v6;

    if (!self->_userInfoData)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to serialize userInfo: %@", v7];
      v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
      v15 = v14;

      objc_exception_throw(v14);
    }
  }

  else
  {
    v9 = self->_userInfoData;
    self->_userInfoData = 0;
  }
}

+ (id)_staticApplicationShortcutItemsFromInfoPlistEntry:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_34;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v3;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_33;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v34;
  v27 = v4;
  v29 = *v34;
  do
  {
    v9 = 0;
    v30 = v6;
    do
    {
      if (*v34 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v33 + 1) + 8 * v9);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 bs_safeStringForKey:@"UIApplicationShortcutItemType"];
        v12 = [v10 bs_safeStringForKey:@"UIApplicationShortcutItemTitle"];
        v32 = [v10 bs_safeStringForKey:@"UIApplicationShortcutItemSubtitle"];
        v31 = [v10 bs_safeStringForKey:@"UIApplicationShortcutItemIconType"];
        v13 = [v10 bs_safeStringForKey:@"UIApplicationShortcutItemIconFile"];
        v14 = [v10 bs_safeDictionaryForKey:@"UIApplicationShortcutItemUserInfo"];
        v15 = [v10 bs_safeStringForKey:@"UIApplicationShortcutItemActivationMode"];
        v16 = [v10 bs_safeStringForKey:@"UIApplicationShortcutItemTargetContentIdentifier"];
        v17 = [v10 bs_safeStringForKey:@"UIApplicationShortcutItemIconSymbolName"];
        if (v11 && v12)
        {
          v18 = objc_alloc_init(SBSApplicationShortcutItem);
          [(SBSApplicationShortcutItem *)v18 setType:v11];
          [(SBSApplicationShortcutItem *)v18 setLocalizedTitle:v12];
          [(SBSApplicationShortcutItem *)v18 setLocalizedSubtitle:v32];
          v28 = v7;
          if (v17)
          {
            v19 = [[SBSApplicationShortcutSystemIcon alloc] initWithSystemImageName:v17];
            goto LABEL_14;
          }

          if (v13)
          {
            v19 = [[SBSApplicationShortcutTemplateIcon alloc] initWithTemplateImageName:v13];
            goto LABEL_14;
          }

          if (v31)
          {
            v22 = SBSApplicationShortcutSystemIconTypeForString(v31);
            if (v22 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v19 = [[SBSApplicationShortcutSystemIcon alloc] initWithType:v22];
LABEL_14:
              v20 = v19;
              [(SBSApplicationShortcutItem *)v18 setIcon:v19];
            }
          }

          [(SBSApplicationShortcutItem *)v18 setUserInfo:v14];
          v21 = SBSApplicationShortcutItemActivationModeForString(v15);
          if (v21 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(SBSApplicationShortcutItem *)v18 setActivationMode:v21];
          }

          v7 = v28;
          if (v16)
          {
            [(SBSApplicationShortcutItem *)v18 setTargetContentIdentifier:v16];
          }

          if (v28)
          {
            [v28 addObject:v18];
          }

          else
          {
            v7 = [MEMORY[0x1E695DF70] arrayWithObject:v18];
          }

          v4 = v27;
        }

        v8 = v29;
        v6 = v30;
      }

      ++v9;
    }

    while (v6 != v9);
    v23 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
    v6 = v23;
  }

  while (v23);
LABEL_33:

  v3 = v26;
LABEL_34:
  v24 = [v7 copy];

  return v24;
}

- (void)_localizeWithHandler:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v8 = [(SBSApplicationShortcutItem *)self localizedTitle];
    v5 = [(SBSApplicationShortcutItem *)self localizedSubtitle];
    v6 = v4[2](v4, v8);
    v7 = v4[2](v4, v5);

    if (v6 && ([v6 isEqualToString:v8] & 1) == 0)
    {
      [(SBSApplicationShortcutItem *)self setLocalizedTitle:v6];
    }

    if (v7 && ([v7 isEqualToString:v5] & 1) == 0)
    {
      [(SBSApplicationShortcutItem *)self setLocalizedSubtitle:v7];
    }
  }
}

@end