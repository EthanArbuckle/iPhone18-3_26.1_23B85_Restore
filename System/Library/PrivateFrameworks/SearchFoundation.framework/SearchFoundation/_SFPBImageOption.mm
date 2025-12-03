@interface _SFPBImageOption
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBImageOption)initWithDictionary:(id)dictionary;
- (_SFPBImageOption)initWithFacade:(id)facade;
- (_SFPBImageOption)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDefaultValue:(id)value;
- (void)setName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _SFPBImageOption

- (_SFPBImageOption)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBImageOption *)self init];
  if (v5)
  {
    name = [facadeCopy name];

    if (name)
    {
      name2 = [facadeCopy name];
      [(_SFPBImageOption *)v5 setName:name2];
    }

    defaultValue = [facadeCopy defaultValue];

    if (defaultValue)
    {
      defaultValue2 = [facadeCopy defaultValue];
      [(_SFPBImageOption *)v5 setDefaultValue:defaultValue2];
    }

    options = [facadeCopy options];

    if (options)
    {
      v11 = [_SFPBStringDictionary alloc];
      options2 = [facadeCopy options];
      v13 = [(_SFPBStringDictionary *)v11 initWithNSDictionary:options2];
      [(_SFPBImageOption *)v5 setOptions:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBImageOption)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBImageOption;
  v5 = [(_SFPBImageOption *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBImageOption *)v5 setName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"defaultValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBImageOption *)v5 setDefaultValue:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"options"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBStringDictionary alloc] initWithDictionary:v10];
      [(_SFPBImageOption *)v5 setOptions:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBImageOption)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBImageOption *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBImageOption *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_defaultValue)
  {
    defaultValue = [(_SFPBImageOption *)self defaultValue];
    v5 = [defaultValue copy];
    [dictionary setObject:v5 forKeyedSubscript:@"defaultValue"];
  }

  if (self->_name)
  {
    name = [(_SFPBImageOption *)self name];
    v7 = [name copy];
    [dictionary setObject:v7 forKeyedSubscript:@"name"];
  }

  if (self->_options)
  {
    options = [(_SFPBImageOption *)self options];
    dictionaryRepresentation = [options dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"options"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"options"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_defaultValue hash]^ v3;
  return v4 ^ [(_SFPBStringDictionary *)self->_options hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  name = [(_SFPBImageOption *)self name];
  name2 = [equalCopy name];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_16;
  }

  name3 = [(_SFPBImageOption *)self name];
  if (name3)
  {
    v8 = name3;
    name4 = [(_SFPBImageOption *)self name];
    name5 = [equalCopy name];
    v11 = [name4 isEqual:name5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  name = [(_SFPBImageOption *)self defaultValue];
  name2 = [equalCopy defaultValue];
  if ((name != 0) == (name2 == 0))
  {
    goto LABEL_16;
  }

  defaultValue = [(_SFPBImageOption *)self defaultValue];
  if (defaultValue)
  {
    v13 = defaultValue;
    defaultValue2 = [(_SFPBImageOption *)self defaultValue];
    defaultValue3 = [equalCopy defaultValue];
    v16 = [defaultValue2 isEqual:defaultValue3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  name = [(_SFPBImageOption *)self options];
  name2 = [equalCopy options];
  if ((name != 0) != (name2 == 0))
  {
    options = [(_SFPBImageOption *)self options];
    if (!options)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = options;
    options2 = [(_SFPBImageOption *)self options];
    options3 = [equalCopy options];
    v21 = [options2 isEqual:options3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  name = [(_SFPBImageOption *)self name];
  if (name)
  {
    PBDataWriterWriteStringField();
  }

  defaultValue = [(_SFPBImageOption *)self defaultValue];
  if (defaultValue)
  {
    PBDataWriterWriteStringField();
  }

  options = [(_SFPBImageOption *)self options];
  if (options)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setDefaultValue:(id)value
{
  v4 = [value copy];
  defaultValue = self->_defaultValue;
  self->_defaultValue = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

  MEMORY[0x1EEE66BB8]();
}

@end