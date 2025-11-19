@interface _SRUIFDataStoreEntry
- (_SRUIFDataStoreEntry)initWithPropertyListRepresentation:(id)a3 error:(id *)p_isa;
- (_SRUIFDataStoreEntry)initWithType:(int64_t)a3 value:(id)a4;
- (id)_propertyListStringForType;
- (id)_valueForPropertyListRepresentation:(id)a3 type:(int64_t)a4;
- (id)_valuePropertyListRepresentation;
- (id)propertyListRepresentation;
@end

@implementation _SRUIFDataStoreEntry

- (_SRUIFDataStoreEntry)initWithType:(int64_t)a3 value:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _SRUIFDataStoreEntry;
  v8 = [(_SRUIFDataStoreEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_value, a4);
  }

  return v9;
}

- (id)_propertyListStringForType
{
  if ([(_SRUIFDataStoreEntry *)self type])
  {
    return @"Image";
  }

  else
  {
    return @"Unknown";
  }
}

- (id)_valuePropertyListRepresentation
{
  value = self->_value;
  if (self->_type == 1)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = value;
    v5 = [v3 dictionary];
    v6 = [v4 imageData];
    [v5 setObject:v6 forKey:@"PNGData"];

    v7 = MEMORY[0x277CCABB0];
    [v4 scale];
    v9 = v8;

    v10 = [v7 numberWithDouble:v9];
    [v5 setObject:v10 forKey:@"Scale"];
  }

  else
  {
    v5 = value;
  }

  return v5;
}

- (id)_valueForPropertyListRepresentation:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  if (a4 == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = objc_alloc_init(SRUIFImagePNGData);
    v8 = [v6 objectForKey:@"PNGData"];
    [(SRUIFImagePNGData *)v7 setImageData:v8];

    v9 = [v6 objectForKey:@"Scale"];

    [v9 doubleValue];
    [(SRUIFImagePNGData *)v7 setScale:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)propertyListRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:&unk_287A18BE8 forKey:@"Version"];
  v4 = [(_SRUIFDataStoreEntry *)self _propertyListStringForType];
  [v3 setObject:v4 forKey:@"Type"];

  v5 = [(_SRUIFDataStoreEntry *)self _valuePropertyListRepresentation];
  [v3 setObject:v5 forKey:@"Value"];

  return v3;
}

- (_SRUIFDataStoreEntry)initWithPropertyListRepresentation:(id)a3 error:(id *)p_isa
{
  v6 = a3;
  v7 = objc_alloc_init(SRUIFDictionarySchema);
  v8 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v7 setObjectCoercion:v8 forKey:@"Version"];

  v9 = [SRUIFCoercion typeAssertionWithClass:objc_opt_class()];
  [(SRUIFDictionarySchema *)v7 setObjectCoercion:v9 forKey:@"Type"];

  v10 = [(SRUIFDictionarySchema *)v7 coerceObject:v6 error:p_isa];
  v11 = [v10 objectForKey:@"Version"];
  v12 = [v11 integerValue];

  if (v12 == 1)
  {
    v13 = [v10 objectForKey:@"Type"];
    v14 = [(_SRUIFDataStoreEntry *)self _typeForPropertyListString:v13];

    v15 = [v10 objectForKey:@"Value"];
    v16 = [(_SRUIFDataStoreEntry *)self _valueForPropertyListRepresentation:v15 type:v14];

    if (v16)
    {
      self = [(_SRUIFDataStoreEntry *)self initWithType:v14 value:v16];
      p_isa = &self->super.isa;
    }

    else if (p_isa)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to decode value for data store entry %@", v6];
      *p_isa = [SRUIFConversationError errorWithCode:300 localizedFailureReason:v17];

      p_isa = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [_SRUIFDataStoreEntry initWithPropertyListRepresentation:error:];
    }

    p_isa = 0;
  }

  return p_isa;
}

- (void)initWithPropertyListRepresentation:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_26951F000, v0, OS_LOG_TYPE_ERROR, "%s unable to deserialize property list with version %{public}ld; returning nil", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end