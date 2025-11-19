@interface SFRemoteTextSessionInfo
- (SFRemoteTextSessionInfo)initWithCoder:(id)a3;
- (SFRemoteTextSessionInfo)initWithDictionary:(id)a3;
- (SFRemoteTextSessionInfo)initWithRTIPayload:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFRemoteTextSessionInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v12 = v4;
  if (identifier)
  {
    [v4 encodeObject:identifier forKey:@"identifier"];
    v4 = v12;
  }

  keyboardType = self->_keyboardType;
  if (keyboardType)
  {
    [v12 encodeInteger:keyboardType forKey:@"keyboardType"];
    v4 = v12;
  }

  prompt = self->_prompt;
  if (prompt)
  {
    [v12 encodeObject:prompt forKey:@"prompt"];
    v4 = v12;
  }

  returnKeyType = self->_returnKeyType;
  if (returnKeyType)
  {
    [v12 encodeInteger:returnKeyType forKey:@"returnKeyType"];
    v4 = v12;
  }

  rtiPayload = self->_rtiPayload;
  if (rtiPayload)
  {
    [v12 encodeObject:rtiPayload forKey:@"rtiPayload"];
    v4 = v12;
  }

  if (self->_secureTextEntry)
  {
    [v12 encodeBool:1 forKey:@"secureTextEntry"];
    v4 = v12;
  }

  text = self->_text;
  if (text)
  {
    [v12 encodeObject:text forKey:@"text"];
    v4 = v12;
  }

  title = self->_title;
  if (title)
  {
    [v12 encodeObject:title forKey:@"title"];
    v4 = v12;
  }
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKeyedSubscript:&unk_1F1D7D150];
  }

  if (self->_keyboardType)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v4 setObject:v6 forKeyedSubscript:&unk_1F1D7D168];
  }

  prompt = self->_prompt;
  if (prompt)
  {
    [v4 setObject:prompt forKeyedSubscript:&unk_1F1D7D180];
  }

  if (self->_returnKeyType)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v4 setObject:v8 forKeyedSubscript:&unk_1F1D7D198];
  }

  rtiPayload = self->_rtiPayload;
  if (rtiPayload)
  {
    [v4 setObject:rtiPayload forKeyedSubscript:&unk_1F1D7D1B0];
  }

  if (self->_secureTextEntry)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v4 setObject:v10 forKeyedSubscript:&unk_1F1D7D1C8];
  }

  text = self->_text;
  if (text)
  {
    [v4 setObject:text forKeyedSubscript:&unk_1F1D7D1E0];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKeyedSubscript:&unk_1F1D7D1F8];
  }

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"SFRemoteTextSessionInfo (%@)", self->_identifier];
  [v3 appendFormat:@", kb=%ld", self->_keyboardType];
  [v3 appendFormat:@", ret=%ld", self->_returnKeyType];
  if (self->_secureTextEntry)
  {
    [v3 appendFormat:@", secure"];
  }

  if (self->_prompt)
  {
    [v3 appendFormat:@", prompt='%@'", self->_prompt];
  }

  if (self->_rtiPayload)
  {
    [v3 appendFormat:@", rtiPayload"];
  }

  if (self->_text)
  {
    [v3 appendFormat:@", text='%@'", self->_text];
  }

  if (self->_title)
  {
    [v3 appendFormat:@", title='%@'", self->_title];
  }

  return v3;
}

- (SFRemoteTextSessionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFRemoteTextSessionInfo;
  v5 = [(SFRemoteTextSessionInfo *)&v16 init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    if ([v7 containsValueForKey:@"keyboardType"])
    {
      v5->_keyboardType = [v7 decodeIntegerForKey:@"keyboardType"];
    }

    v8 = v7;
    OUTLINED_FUNCTION_5_6();
    NSDecodeObjectIfPresent();

    v9 = v7;
    if ([v9 containsValueForKey:@"returnKeyType"])
    {
      v5->_returnKeyType = [v9 decodeIntegerForKey:@"returnKeyType"];
    }

    v10 = v9;
    OUTLINED_FUNCTION_5_6();
    NSDecodeStandardContainerIfPresent();

    v11 = v9;
    if ([v11 containsValueForKey:@"secureTextEntry"])
    {
      v5->_secureTextEntry = [v11 decodeBoolForKey:@"secureTextEntry"];
    }

    v12 = v11;
    OUTLINED_FUNCTION_5_6();
    NSDecodeObjectIfPresent();

    v13 = v11;
    OUTLINED_FUNCTION_5_6();
    NSDecodeObjectIfPresent();

    v14 = v5;
  }

  return v5;
}

- (SFRemoteTextSessionInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v17 = 0;
  v16.receiver = self;
  v16.super_class = SFRemoteTextSessionInfo;
  v5 = [(SFRemoteTextSessionInfo *)&v16 init];
  if (v5)
  {
    CFStringGetTypeID();
    OUTLINED_FUNCTION_2_16();
    v6 = CFDictionaryGetTypedValue();
    if (!v17)
    {
      objc_storeStrong(&v5->_identifier, v6);
    }

    v7 = OUTLINED_FUNCTION_3_12();
    if (!v17)
    {
      v5->_keyboardType = v7;
    }

    CFStringGetTypeID();
    OUTLINED_FUNCTION_2_16();
    v8 = CFDictionaryGetTypedValue();

    if (!v17)
    {
      objc_storeStrong(&v5->_prompt, v8);
    }

    v9 = OUTLINED_FUNCTION_3_12();
    if (!v17)
    {
      v5->_returnKeyType = v9;
    }

    CFDictionaryGetTypeID();
    OUTLINED_FUNCTION_2_16();
    v10 = CFDictionaryGetTypedValue();

    if (!v17)
    {
      objc_storeStrong(&v5->_rtiPayload, v10);
    }

    Int64 = CFDictionaryGetInt64();
    if (!v17)
    {
      v5->_secureTextEntry = Int64 != 0;
    }

    CFStringGetTypeID();
    OUTLINED_FUNCTION_2_16();
    v12 = CFDictionaryGetTypedValue();

    if (!v17)
    {
      objc_storeStrong(&v5->_text, v12);
    }

    CFStringGetTypeID();
    OUTLINED_FUNCTION_2_16();
    v13 = CFDictionaryGetTypedValue();

    if (!v17)
    {
      objc_storeStrong(&v5->_title, v13);
    }

    v14 = v5;
  }

  return v5;
}

- (SFRemoteTextSessionInfo)initWithRTIPayload:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SFRemoteTextSessionInfo;
  v5 = [(SFRemoteTextSessionInfo *)&v23 init];
  if (v5 && (RTIInputSystemDataPayloadClass_0 = getRTIInputSystemDataPayloadClass_0(), [v4 data], v7 = objc_claimAutoreleasedReturnValue(), -[objc_class payloadWithData:version:](RTIInputSystemDataPayloadClass_0, "payloadWithData:version:", v7, objc_msgSend(v4, "version")), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = [v8 documentTraits];
    v10 = [v9 textInputTraits];

    if (v10)
    {
      v11 = [v8 documentTraits];
      v12 = [v11 textInputTraits];
      v13 = [v12 keyboardType];
      if ((v13 - 1) > 0xA)
      {
        v14 = 0;
      }

      else
      {
        v14 = qword_1A998FED8[v13 - 1];
      }

      v5->_keyboardType = v14;

      v15 = [v8 documentTraits];
      v16 = [v15 textInputTraits];
      v17 = [v16 returnKeyType];
      if ((v17 - 1) >= 0xB)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      v5->_returnKeyType = v18;

      v19 = [v8 documentTraits];
      v20 = [v19 textInputTraits];
      v5->_secureTextEntry = [v20 secureTextEntry];
    }

    v21 = v5;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end