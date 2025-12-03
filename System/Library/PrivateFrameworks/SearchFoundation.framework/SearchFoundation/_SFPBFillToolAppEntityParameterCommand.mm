@interface _SFPBFillToolAppEntityParameterCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFillToolAppEntityParameterCommand)initWithDictionary:(id)dictionary;
- (_SFPBFillToolAppEntityParameterCommand)initWithFacade:(id)facade;
- (_SFPBFillToolAppEntityParameterCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setEncodedTypedValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation _SFPBFillToolAppEntityParameterCommand

- (_SFPBFillToolAppEntityParameterCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBFillToolAppEntityParameterCommand *)self init];
  if (v5)
  {
    encodedTypedValue = [facadeCopy encodedTypedValue];

    if (encodedTypedValue)
    {
      encodedTypedValue2 = [facadeCopy encodedTypedValue];
      [(_SFPBFillToolAppEntityParameterCommand *)v5 setEncodedTypedValue:encodedTypedValue2];
    }

    entity = [facadeCopy entity];

    if (entity)
    {
      v9 = [_SFPBAppEntityAnnotation alloc];
      entity2 = [facadeCopy entity];
      v11 = [(_SFPBAppEntityAnnotation *)v9 initWithFacade:entity2];
      [(_SFPBFillToolAppEntityParameterCommand *)v5 setEntity:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBFillToolAppEntityParameterCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBFillToolAppEntityParameterCommand;
  v5 = [(_SFPBFillToolAppEntityParameterCommand *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"encodedTypedValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(_SFPBFillToolAppEntityParameterCommand *)v5 setEncodedTypedValue:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"entity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBAppEntityAnnotation alloc] initWithDictionary:v8];
      [(_SFPBFillToolAppEntityParameterCommand *)v5 setEntity:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBFillToolAppEntityParameterCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBFillToolAppEntityParameterCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBFillToolAppEntityParameterCommand *)self dictionaryRepresentation];
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
  if (self->_encodedTypedValue)
  {
    encodedTypedValue = [(_SFPBFillToolAppEntityParameterCommand *)self encodedTypedValue];
    v5 = [encodedTypedValue base64EncodedStringWithOptions:0];
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"encodedTypedValue"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"encodedTypedValue"];
    }
  }

  if (self->_entity)
  {
    entity = [(_SFPBFillToolAppEntityParameterCommand *)self entity];
    dictionaryRepresentation = [entity dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entity"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"entity"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  encodedTypedValue = [(_SFPBFillToolAppEntityParameterCommand *)self encodedTypedValue];
  encodedTypedValue2 = [equalCopy encodedTypedValue];
  if ((encodedTypedValue != 0) == (encodedTypedValue2 == 0))
  {
    goto LABEL_11;
  }

  encodedTypedValue3 = [(_SFPBFillToolAppEntityParameterCommand *)self encodedTypedValue];
  if (encodedTypedValue3)
  {
    v8 = encodedTypedValue3;
    encodedTypedValue4 = [(_SFPBFillToolAppEntityParameterCommand *)self encodedTypedValue];
    encodedTypedValue5 = [equalCopy encodedTypedValue];
    v11 = [encodedTypedValue4 isEqual:encodedTypedValue5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  encodedTypedValue = [(_SFPBFillToolAppEntityParameterCommand *)self entity];
  encodedTypedValue2 = [equalCopy entity];
  if ((encodedTypedValue != 0) != (encodedTypedValue2 == 0))
  {
    entity = [(_SFPBFillToolAppEntityParameterCommand *)self entity];
    if (!entity)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = entity;
    entity2 = [(_SFPBFillToolAppEntityParameterCommand *)self entity];
    entity3 = [equalCopy entity];
    v16 = [entity2 isEqual:entity3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  encodedTypedValue = [(_SFPBFillToolAppEntityParameterCommand *)self encodedTypedValue];
  if (encodedTypedValue)
  {
    PBDataWriterWriteDataField();
  }

  entity = [(_SFPBFillToolAppEntityParameterCommand *)self entity];
  if (entity)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setEncodedTypedValue:(id)value
{
  v4 = [value copy];
  encodedTypedValue = self->_encodedTypedValue;
  self->_encodedTypedValue = v4;

  MEMORY[0x1EEE66BB8]();
}

@end