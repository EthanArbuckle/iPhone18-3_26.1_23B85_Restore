@interface SISchemaUUID
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUUID)initWithBytesAsData:(id)data;
- (SISchemaUUID)initWithDictionary:(id)dictionary;
- (SISchemaUUID)initWithJSON:(id)n;
- (SISchemaUUID)initWithNSUUID:(id)d;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (id)toNSUUID;
- (id)toSafeNSUUID;
- (void)willProduceDictionaryRepresentation:(id)representation;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUUID

- (id)toSafeNSUUID
{
  value = [(SISchemaUUID *)self value];
  si_asNSUUID = [value si_asNSUUID];

  return si_asNSUUID;
}

- (id)toNSUUID
{
  value = [(SISchemaUUID *)self value];
  si_asNSUUID = [value si_asNSUUID];

  return si_asNSUUID;
}

- (SISchemaUUID)initWithBytesAsData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = SISchemaUUID;
  v5 = [(SISchemaUUID *)&v8 init];
  v6 = v5;
  if (dataCopy && v5 && [dataCopy length] == 16)
  {
    [(SISchemaUUID *)v6 setValue:dataCopy];
  }

  return v6;
}

- (SISchemaUUID)initWithNSUUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = SISchemaUUID;
  v5 = [(SISchemaUUID *)&v8 init];
  if (v5)
  {
    si_uuidBytes = [dCopy si_uuidBytes];
    [(SISchemaUUID *)v5 setValue:si_uuidBytes];
  }

  return v5;
}

- (void)willProduceDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  toSafeNSUUID = [(SISchemaUUID *)self toSafeNSUUID];
  v5 = toSafeNSUUID;
  if (toSafeNSUUID)
  {
    uUIDString = [toSafeNSUUID UUIDString];
    [representationCopy setObject:uUIDString forKeyedSubscript:@"value"];
  }
}

- (SISchemaUUID)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaUUID;
  v5 = [(SISchemaUUID *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(SISchemaUUID *)v5 setValue:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaUUID)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUUID *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUUID *)self dictionaryRepresentation];
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
  if (self->_value)
  {
    value = [(SISchemaUUID *)self value];
    v5 = [value base64EncodedStringWithOptions:0];
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"value"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"value"];
    }
  }

  [(SISchemaUUID *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    value = [(SISchemaUUID *)self value];
    value2 = [equalCopy value];
    v7 = value2;
    if ((value != 0) != (value2 == 0))
    {
      value3 = [(SISchemaUUID *)self value];
      if (!value3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = value3;
      value4 = [(SISchemaUUID *)self value];
      value5 = [equalCopy value];
      v12 = [value4 isEqual:value5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  value = [(SISchemaUUID *)self value];

  if (value)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end