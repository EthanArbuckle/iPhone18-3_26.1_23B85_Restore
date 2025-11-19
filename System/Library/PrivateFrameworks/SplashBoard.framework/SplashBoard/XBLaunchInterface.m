@interface XBLaunchInterface
- (NSString)description;
- (XBLaunchInterface)initWithCoder:(id)a3;
- (XBLaunchInterface)initWithConfiguration:(id)a3 identifier:(id)a4 urlSchemes:(id)a5 isDefault:(BOOL)a6;
- (XBLaunchInterface)initWithType:(unint64_t)a3 name:(id)a4 identifier:(id)a5 urlSchemes:(id)a6 isDefault:(BOOL)a7;
- (XBLaunchInterface)initWithXPCDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation XBLaunchInterface

- (XBLaunchInterface)initWithType:(unint64_t)a3 name:(id)a4 identifier:(id)a5 urlSchemes:(id)a6 isDefault:(BOOL)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = XBLaunchInterface;
  v15 = [(XBLaunchInterface *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = a3;
    v17 = [v12 copy];
    name = v16->_name;
    v16->_name = v17;

    v19 = [v13 copy];
    identifier = v16->_identifier;
    v16->_identifier = v19;

    v21 = [v14 copy];
    urlSchemes = v16->_urlSchemes;
    v16->_urlSchemes = v21;

    v16->_default = a7;
  }

  return v16;
}

- (XBLaunchInterface)initWithConfiguration:(id)a3 identifier:(id)a4 urlSchemes:(id)a5 isDefault:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = XBLaunchInterface;
  v14 = [(XBLaunchInterface *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = 2;
    v16 = [v12 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [v13 copy];
    urlSchemes = v15->_urlSchemes;
    v15->_urlSchemes = v18;

    v15->_default = a6;
    objc_storeStrong(&v15->_configuration, a3);
  }

  return v15;
}

- (XBLaunchInterface)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = XBLaunchInterface;
  v5 = [(XBLaunchInterface *)&v15 init];
  if (v5)
  {
    v5->_type = xpc_dictionary_get_int64(v4, "type");
    v6 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    name = v5->_name;
    v5->_name = v6;

    v8 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    configuration = v5->_configuration;
    v5->_configuration = v10;

    v5->_default = xpc_dictionary_get_BOOL(v4, "default");
    v12 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    urlSchemes = v5->_urlSchemes;
    v5->_urlSchemes = v12;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  type = self->_type;
  xdict = a3;
  xpc_dictionary_set_int64(xdict, "type", type);
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "default", self->_default);
  BSSerializeCFValueToXPCDictionaryWithKey();
}

- (XBLaunchInterface)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = XBLaunchInterface;
  v5 = [(XBLaunchInterface *)&v27 init];
  if (v5)
  {
    if (([v4 allowsKeyedCoding] & 1) == 0)
    {
      [XBLaunchInterface initWithCoder:];
    }

    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"type"];
    v5->_type = [v4 decodeInt64ForKey:v26];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v6];
    v8 = [v7 copy];
    name = v5->_name;
    v5->_name = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"identifier"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v10];
    v12 = [v11 copy];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"configuration"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v14];
    configuration = v5->_configuration;
    v5->_configuration = v15;

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"default"];
    v5->_default = [v4 decodeBoolForKey:v17];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"urlSchemes"];
    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:v18];
    v23 = [v22 copy];
    urlSchemes = v5->_urlSchemes;
    v5->_urlSchemes = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [XBLaunchInterface encodeWithCoder:];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"type"];
  [v4 encodeInt64:self->_type forKey:v10];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
  [v4 encodeObject:self->_name forKey:v5];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"identifier"];
  [v4 encodeObject:self->_identifier forKey:v6];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"configuration"];
  [v4 encodeObject:self->_configuration forKey:v7];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"default"];
  [v4 encodeBool:self->_default forKey:v8];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"urlSchemes"];
  [v4 encodeObject:self->_urlSchemes forKey:v9];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_name withName:@"name"];
  v5 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v6 = [v3 appendObject:self->_configuration withName:@"configuration"];
  type = self->_type;
  v8 = @"(null)";
  if (type == 1)
  {
    v8 = @"Storyboard";
  }

  if (type)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"XIB";
  }

  v10 = [v3 appendObject:v9 withName:@"type"];
  v11 = [v3 appendObject:self->_urlSchemes withName:@"urlSchemes"];
  v12 = [v3 appendBool:self->_default withName:@"default"];
  v13 = [v3 build];

  return v13;
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"[coder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[coder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

@end