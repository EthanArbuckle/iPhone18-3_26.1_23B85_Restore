@interface XBLaunchInterface
- (NSString)description;
- (XBLaunchInterface)initWithCoder:(id)coder;
- (XBLaunchInterface)initWithConfiguration:(id)configuration identifier:(id)identifier urlSchemes:(id)schemes isDefault:(BOOL)default;
- (XBLaunchInterface)initWithType:(unint64_t)type name:(id)name identifier:(id)identifier urlSchemes:(id)schemes isDefault:(BOOL)default;
- (XBLaunchInterface)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation XBLaunchInterface

- (XBLaunchInterface)initWithType:(unint64_t)type name:(id)name identifier:(id)identifier urlSchemes:(id)schemes isDefault:(BOOL)default
{
  nameCopy = name;
  identifierCopy = identifier;
  schemesCopy = schemes;
  v24.receiver = self;
  v24.super_class = XBLaunchInterface;
  v15 = [(XBLaunchInterface *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    v17 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v17;

    v19 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v19;

    v21 = [schemesCopy copy];
    urlSchemes = v16->_urlSchemes;
    v16->_urlSchemes = v21;

    v16->_default = default;
  }

  return v16;
}

- (XBLaunchInterface)initWithConfiguration:(id)configuration identifier:(id)identifier urlSchemes:(id)schemes isDefault:(BOOL)default
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  schemesCopy = schemes;
  v21.receiver = self;
  v21.super_class = XBLaunchInterface;
  v14 = [(XBLaunchInterface *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = 2;
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [schemesCopy copy];
    urlSchemes = v15->_urlSchemes;
    v15->_urlSchemes = v18;

    v15->_default = default;
    objc_storeStrong(&v15->_configuration, configuration);
  }

  return v15;
}

- (XBLaunchInterface)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = XBLaunchInterface;
  v5 = [(XBLaunchInterface *)&v15 init];
  if (v5)
  {
    v5->_type = xpc_dictionary_get_int64(dictionaryCopy, "type");
    v6 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    name = v5->_name;
    v5->_name = v6;

    v8 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    configuration = v5->_configuration;
    v5->_configuration = v10;

    v5->_default = xpc_dictionary_get_BOOL(dictionaryCopy, "default");
    v12 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    urlSchemes = v5->_urlSchemes;
    v5->_urlSchemes = v12;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  type = self->_type;
  xdict = dictionary;
  xpc_dictionary_set_int64(xdict, "type", type);
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "default", self->_default);
  BSSerializeCFValueToXPCDictionaryWithKey();
}

- (XBLaunchInterface)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = XBLaunchInterface;
  v5 = [(XBLaunchInterface *)&v27 init];
  if (v5)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      [XBLaunchInterface initWithCoder:];
    }

    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"type"];
    v5->_type = [coderCopy decodeInt64ForKey:v26];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v6];
    v8 = [v7 copy];
    name = v5->_name;
    v5->_name = v8;

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"identifier"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v10];
    v12 = [v11 copy];
    identifier = v5->_identifier;
    v5->_identifier = v12;

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"configuration"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v14];
    configuration = v5->_configuration;
    v5->_configuration = v15;

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"default"];
    v5->_default = [coderCopy decodeBoolForKey:v17];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"urlSchemes"];
    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:v18];
    v23 = [v22 copy];
    urlSchemes = v5->_urlSchemes;
    v5->_urlSchemes = v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [XBLaunchInterface encodeWithCoder:];
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"type"];
  [coderCopy encodeInt64:self->_type forKey:v10];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"name"];
  [coderCopy encodeObject:self->_name forKey:v5];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"identifier"];
  [coderCopy encodeObject:self->_identifier forKey:v6];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"configuration"];
  [coderCopy encodeObject:self->_configuration forKey:v7];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"default"];
  [coderCopy encodeBool:self->_default forKey:v8];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"urlSchemes"];
  [coderCopy encodeObject:self->_urlSchemes forKey:v9];
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
  build = [v3 build];

  return build;
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