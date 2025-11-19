@interface SBSUserNotificationTextFieldDefinition
+ (id)_definitionsFromSerializedDefinitions:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SBSUserNotificationTextFieldDefinition)init;
- (id)_initWithDictionary:(id)a3;
- (id)build;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_copyPropertiesToDefinition:(id)a3;
@end

@implementation SBSUserNotificationTextFieldDefinition

- (SBSUserNotificationTextFieldDefinition)init
{
  v7.receiver = self;
  v7.super_class = SBSUserNotificationTextFieldDefinition;
  v2 = [(SBSUserNotificationTextFieldDefinition *)&v7 init];
  v3 = v2;
  if (v2)
  {
    title = v2->_title;
    v2->_title = 0;

    value = v3->_value;
    v3->_value = 0;

    *&v3->_isSecure = 0;
    v3->_maxLength = -1;
    v3->_keyboardType = 0;
    v3->_autocorrectionType = 0;
    v3->_autocapitalizationType = 2;
  }

  return v3;
}

- (id)_initWithDictionary:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSUserNotificationTextFieldDefinition *)a2 _initWithDictionary:?];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SBSUserNotificationTextFieldDefinition *)self init];
    if (v6)
    {
      v7 = [v5 bs_safeStringForKey:@"_SBSTFTitle"];
      title = v6->_title;
      v6->_title = v7;

      v9 = [v5 bs_safeStringForKey:@"_SBSTFValue"];
      value = v6->_value;
      v6->_value = v9;

      v6->_isSecure = [v5 bs_BOOLForKey:@"_SBSTFIsSecure"];
      v11 = [v5 objectForKey:@"_SBSTFMaxLength"];

      if (v11)
      {
        v6->_hasSetMaxLength = 1;
        v12 = [v5 bs_safeNumberForKey:@"_SBSTFMaxLength"];
        v6->_maxLength = [v12 unsignedIntValue];
      }

      v13 = [v5 objectForKey:@"_SBSTFKeyboardType"];

      if (v13)
      {
        v14 = [v5 bs_safeNumberForKey:@"_SBSTFKeyboardType"];
        v6->_keyboardType = [v14 intValue];
      }

      v15 = [v5 objectForKey:@"_SBSTFAutocorrectionType"];

      if (v15)
      {
        v16 = [v5 bs_safeNumberForKey:@"_SBSTFAutocorrectionType"];
        v6->_autocorrectionType = [v16 intValue];
      }

      v17 = [v5 objectForKey:@"_SBSTFAutocapitalizationType"];

      if (v17)
      {
        v18 = [v5 bs_safeNumberForKey:@"_SBSTFAutocapitalizationType"];
        v6->_autocapitalizationType = [v18 intValue];
      }
    }

    self = v6;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)_definitionsFromSerializedDefinitions:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
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
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [SBSUserNotificationTextFieldDefinition alloc];
        v12 = [(SBSUserNotificationTextFieldDefinition *)v11 _initWithDictionary:v10, v14];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)build
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_title forKeyedSubscript:@"_SBSTFTitle"];
  value = self->_value;
  if (value)
  {
    [v3 setObject:value forKeyedSubscript:@"_SBSTFValue"];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSecure];
  [v3 setObject:v5 forKeyedSubscript:@"_SBSTFIsSecure"];

  if (self->_hasSetMaxLength)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxLength];
    [v3 setObject:v6 forKeyedSubscript:@"_SBSTFMaxLength"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_keyboardType];
  [v3 setObject:v7 forKeyedSubscript:@"_SBSTFKeyboardType"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_autocapitalizationType];
  [v3 setObject:v8 forKeyedSubscript:@"_SBSTFAutocapitalizationType"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_autocorrectionType];
  [v3 setObject:v9 forKeyedSubscript:@"_SBSTFAutocorrectionType"];

  v10 = [v3 copy];

  return v10;
}

- (unint64_t)hash
{
  isSecure = self->_isSecure;
  v4 = [(NSString *)self->_title hash]+ 13 * isSecure;
  return v4 + [(NSString *)self->_value hash]+ self->_maxLength + self->_keyboardType + 17 * self->_autocapitalizationType + 19 * self->_autocorrectionType;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (BSEqualBools() && self->_maxLength == v5->_maxLength && self->_keyboardType == v5->_keyboardType && self->_autocapitalizationType == v5->_autocapitalizationType && self->_autocorrectionType == v5->_autocorrectionType)
      {
        v6 = [(SBSUserNotificationTextFieldDefinition *)v5 title];
        if (BSEqualObjects())
        {
          v7 = [(SBSUserNotificationTextFieldDefinition *)v5 value];
          v8 = BSEqualObjects();
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)_copyPropertiesToDefinition:(id)a3
{
  objc_storeStrong(a3 + 1, self->_title);
  v5 = a3;
  objc_storeStrong(v5 + 2, self->_value);
  *(v5 + 24) = self->_isSecure;
  *(v5 + 25) = self->_hasSetMaxLength;
  v5[4] = self->_maxLength;
  v5[5] = self->_keyboardType;
  v5[6] = self->_autocorrectionType;
  v5[7] = self->_autocapitalizationType;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SBSMutableUserNotificationTextFieldDefinition);
  [(SBSUserNotificationTextFieldDefinition *)self _copyPropertiesToDefinition:v4];
  return v4;
}

- (void)_initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCFUserNotificationTextFieldDefinition.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
}

@end