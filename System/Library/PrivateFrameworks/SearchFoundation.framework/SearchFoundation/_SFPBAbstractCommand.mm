@interface _SFPBAbstractCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAbstractCommand)initWithDictionary:(id)dictionary;
- (_SFPBAbstractCommand)initWithFacade:(id)facade;
- (_SFPBAbstractCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAbstractCommand

- (_SFPBAbstractCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBAbstractCommand *)self init];
  if (v5)
  {
    if ([facadeCopy hasType])
    {
      -[_SFPBAbstractCommand setType:](v5, "setType:", [facadeCopy type]);
    }

    value = [facadeCopy value];

    if (value)
    {
      v7 = [_SFPBCommandValue alloc];
      value2 = [facadeCopy value];
      v9 = [(_SFPBCommandValue *)v7 initWithFacade:value2];
      [(_SFPBAbstractCommand *)v5 setValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBAbstractCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBAbstractCommand;
  v5 = [(_SFPBAbstractCommand *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAbstractCommand setType:](v5, "setType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBCommandValue alloc] initWithDictionary:v7];
      [(_SFPBAbstractCommand *)v5 setValue:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBAbstractCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAbstractCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAbstractCommand *)self dictionaryRepresentation];
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
  if (self->_type)
  {
    type = [(_SFPBAbstractCommand *)self type];
    if (type)
    {
      if (type == 1)
      {
        v5 = @"1";
      }

      else
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
      }
    }

    else
    {
      v5 = @"0";
    }

    [dictionary setObject:v5 forKeyedSubscript:@"type"];
  }

  if (self->_value)
  {
    value = [(_SFPBAbstractCommand *)self value];
    dictionaryRepresentation = [value dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"value"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"value"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    type = self->_type;
    if (type == [equalCopy type])
    {
      value = [(_SFPBAbstractCommand *)self value];
      value2 = [equalCopy value];
      v8 = value2;
      if ((value != 0) != (value2 == 0))
      {
        value3 = [(_SFPBAbstractCommand *)self value];
        if (!value3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = value3;
        value4 = [(_SFPBAbstractCommand *)self value];
        value5 = [equalCopy value];
        v13 = [value4 isEqual:value5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBAbstractCommand *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  value = [(_SFPBAbstractCommand *)self value];
  if (value)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end