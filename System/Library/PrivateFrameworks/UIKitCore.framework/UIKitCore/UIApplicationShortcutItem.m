@interface UIApplicationShortcutItem
- (BOOL)isEqual:(id)a3;
- (NSDictionary)userInfo;
- (SBSApplicationShortcutItem)sbsShortcutItem;
- (UIApplicationShortcutItem)init;
- (UIApplicationShortcutItem)initWithSBSApplicationShortcutItem:(id)a3;
- (UIApplicationShortcutItem)initWithType:(NSString *)type localizedTitle:(NSString *)localizedTitle localizedSubtitle:(NSString *)localizedSubtitle icon:(UIApplicationShortcutIcon *)icon userInfo:(NSDictionary *)userInfo;
- (UIApplicationShortcutItem)initWithXPCDictionary:(id)a3;
- (id)_initWithType:(id)a3 localizedTitle:(id)a4 localizedSubtitle:(id)a5 icon:(id)a6 userInfoData:(id)a7 activationMode:(unint64_t)a8 targetContentIdentifier:(id)a9;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation UIApplicationShortcutItem

- (SBSApplicationShortcutItem)sbsShortcutItem
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v3 = getSBSApplicationShortcutItemClass_softClass;
  v18 = getSBSApplicationShortcutItemClass_softClass;
  if (!getSBSApplicationShortcutItemClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getSBSApplicationShortcutItemClass_block_invoke;
    v14[3] = &unk_1E70F2F20;
    v14[4] = &v15;
    __getSBSApplicationShortcutItemClass_block_invoke(v14);
    v3 = v16[3];
  }

  v4 = v3;
  _Block_object_dispose(&v15, 8);
  v5 = objc_alloc_init(v3);
  v6 = [(UIApplicationShortcutItem *)self type];
  [v5 setType:v6];

  v7 = [(UIApplicationShortcutItem *)self localizedTitle];
  [v5 setLocalizedTitle:v7];

  v8 = [(UIApplicationShortcutItem *)self localizedSubtitle];
  [v5 setLocalizedSubtitle:v8];

  v9 = [(UIApplicationShortcutItem *)self icon];
  v10 = [v9 sbsShortcutIcon];
  [v5 setIcon:v10];

  v11 = [(UIApplicationShortcutItem *)self userInfo];
  [v5 setUserInfo:v11];

  [v5 setActivationMode:{objc_msgSend(objc_opt_class(), "_sbsActivationModeFromUIActivationMode:", -[UIApplicationShortcutItem activationMode](self, "activationMode"))}];
  v12 = [(UIApplicationShortcutItem *)self targetContentIdentifier];
  [v5 setTargetContentIdentifier:v12];

  return v5;
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

- (UIApplicationShortcutItem)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[UIApplicationShortcutItem init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (UIApplicationShortcutItem)initWithType:(NSString *)type localizedTitle:(NSString *)localizedTitle localizedSubtitle:(NSString *)localizedSubtitle icon:(UIApplicationShortcutIcon *)icon userInfo:(NSDictionary *)userInfo
{
  v12 = type;
  v13 = localizedTitle;
  v14 = localizedSubtitle;
  v15 = icon;
  v16 = userInfo;
  v25.receiver = self;
  v25.super_class = UIApplicationShortcutItem;
  v17 = [(UIApplicationShortcutItem *)&v25 init];
  if (v17)
  {
    v18 = [(NSString *)v12 copy];
    v19 = v17->_type;
    v17->_type = v18;

    v20 = [(NSString *)v13 copy];
    v21 = v17->_localizedTitle;
    v17->_localizedTitle = v20;

    v22 = [(NSString *)v14 copy];
    v23 = v17->_localizedSubtitle;
    v17->_localizedSubtitle = v22;

    objc_storeStrong(&v17->_icon, icon);
    [(UIApplicationShortcutItem *)v17 setUserInfo:v16];
  }

  return v17;
}

- (id)_initWithType:(id)a3 localizedTitle:(id)a4 localizedSubtitle:(id)a5 icon:(id)a6 userInfoData:(id)a7 activationMode:(unint64_t)a8 targetContentIdentifier:(id)a9
{
  v16 = a7;
  v17 = a9;
  v18 = [(UIApplicationShortcutItem *)self initWithType:a3 localizedTitle:a4 localizedSubtitle:a5 icon:a6 userInfo:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_userInfoData, a7);
    v19->_activationMode = a8;
    objc_storeStrong(&v19->_targetContentIdentifier, a9);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UIApplicationShortcutItem *)v5 type];
      if (v6 == self->_type)
      {
        v8 = 1;
      }

      else
      {
        v7 = [(UIApplicationShortcutItem *)v5 type];
        v8 = [v7 isEqualToString:self->_type];
      }

      v10 = [(UIApplicationShortcutItem *)v5 localizedTitle];
      if (v10 != self->_localizedTitle)
      {
        v11 = [(UIApplicationShortcutItem *)v5 localizedTitle];
        if (![v11 isEqualToString:self->_localizedTitle])
        {
          v8 = 0;
        }
      }

      v12 = [(UIApplicationShortcutItem *)v5 localizedSubtitle];
      if (v12 != self->_localizedSubtitle)
      {
        v13 = [(UIApplicationShortcutItem *)v5 localizedSubtitle];
        if (![v13 isEqualToString:self->_localizedSubtitle])
        {
          v8 = 0;
        }
      }

      v14 = [(UIApplicationShortcutItem *)v5 icon];
      if (v14 != self->_icon)
      {
        v15 = [(UIApplicationShortcutItem *)v5 icon];
        if (![v15 isEqual:self->_icon])
        {
          v8 = 0;
        }
      }

      v16 = [(UIApplicationShortcutItem *)v5 userInfoData];
      if (v16 != self->_userInfoData)
      {
        v17 = [(UIApplicationShortcutItem *)v5 userInfoData];
        if (![v17 isEqual:self->_userInfoData])
        {
          v8 = 0;
        }
      }

      v9 = [(UIApplicationShortcutItem *)v5 activationMode]== self->_activationMode && v8 != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
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

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  BSSerializeStringToXPCDictionaryWithKey();
  BSSerializeStringToXPCDictionaryWithKey();
  BSSerializeStringToXPCDictionaryWithKey();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  BSSerializeDataToXPCDictionaryWithKey();
  xpc_dictionary_set_uint64(xdict, "activationMode", self->_activationMode);
  BSSerializeStringToXPCDictionaryWithKey();
}

- (UIApplicationShortcutItem)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  v6 = BSDeserializeStringFromXPCDictionaryWithKey();
  v7 = BSDeserializeStringFromXPCDictionaryWithKey();
  v8 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  v9 = objc_opt_class();
  v10 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = BSDeserializeDataFromXPCDictionaryWithKey();
  uint64 = xpc_dictionary_get_uint64(v4, "activationMode");
  v15 = BSDeserializeStringFromXPCDictionaryWithKey();
  v16 = [(UIApplicationShortcutItem *)self _initWithType:v5 localizedTitle:v6 localizedSubtitle:v7 icon:v12 userInfoData:v13 activationMode:uint64 targetContentIdentifier:v15];

  v17 = v16;
  return v17;
}

- (UIApplicationShortcutItem)initWithSBSApplicationShortcutItem:(id)a3
{
  v4 = a3;
  v5 = [UIApplicationShortcutIcon alloc];
  v6 = [v4 icon];
  v7 = [(UIApplicationShortcutIcon *)v5 initWithSBSApplicationShortcutIcon:v6];

  v8 = [objc_opt_class() _uiActivationModeFromSBSActivationMode:{objc_msgSend(v4, "activationMode")}];
  v9 = [v4 type];
  v10 = [v4 localizedTitle];
  v11 = [v4 localizedSubtitle];
  v12 = [v4 userInfoData];
  v13 = [v4 targetContentIdentifier];

  v14 = [(UIApplicationShortcutItem *)self _initWithType:v9 localizedTitle:v10 localizedSubtitle:v11 icon:v7 userInfoData:v12 activationMode:v8 targetContentIdentifier:v13];
  return v14;
}

@end