@interface PETSchemaPETRawMessage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PETSchemaPETRawMessage)initWithDictionary:(id)dictionary;
- (PETSchemaPETRawMessage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PETSchemaPETRawMessage

- (PETSchemaPETRawMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PETSchemaPETRawMessage;
  v5 = [(PETSchemaPETRawMessage *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"typeId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETRawMessage setType_id:](v5, "setType_id:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"rawBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
      [(PETSchemaPETRawMessage *)v5 setRaw_bytes:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PETSchemaPETRawMessage *)v5 setName:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (PETSchemaPETRawMessage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PETSchemaPETRawMessage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PETSchemaPETRawMessage *)self dictionaryRepresentation];
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
  if (self->_name)
  {
    name = [(PETSchemaPETRawMessage *)self name];
    v5 = [name copy];
    [dictionary setObject:v5 forKeyedSubscript:@"name"];
  }

  if (self->_raw_bytes)
  {
    raw_bytes = [(PETSchemaPETRawMessage *)self raw_bytes];
    v7 = [raw_bytes base64EncodedStringWithOptions:0];
    if (v7)
    {
      [dictionary setObject:v7 forKeyedSubscript:@"rawBytes"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"rawBytes"];
    }
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PETSchemaPETRawMessage type_id](self, "type_id")}];
    [dictionary setObject:v9 forKeyedSubscript:@"typeId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type_id;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_raw_bytes hash]^ v3;
  return v4 ^ [(NSString *)self->_name hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    type_id = self->_type_id;
    if (type_id != [equalCopy type_id])
    {
      goto LABEL_15;
    }
  }

  raw_bytes = [(PETSchemaPETRawMessage *)self raw_bytes];
  raw_bytes2 = [equalCopy raw_bytes];
  if ((raw_bytes != 0) == (raw_bytes2 == 0))
  {
    goto LABEL_14;
  }

  raw_bytes3 = [(PETSchemaPETRawMessage *)self raw_bytes];
  if (raw_bytes3)
  {
    v9 = raw_bytes3;
    raw_bytes4 = [(PETSchemaPETRawMessage *)self raw_bytes];
    raw_bytes5 = [equalCopy raw_bytes];
    v12 = [raw_bytes4 isEqual:raw_bytes5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  raw_bytes = [(PETSchemaPETRawMessage *)self name];
  raw_bytes2 = [equalCopy name];
  if ((raw_bytes != 0) != (raw_bytes2 == 0))
  {
    name = [(PETSchemaPETRawMessage *)self name];
    if (!name)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = name;
    name2 = [(PETSchemaPETRawMessage *)self name];
    name3 = [equalCopy name];
    v17 = [name2 isEqual:name3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  raw_bytes = [(PETSchemaPETRawMessage *)self raw_bytes];

  if (raw_bytes)
  {
    PBDataWriterWriteDataField();
  }

  name = [(PETSchemaPETRawMessage *)self name];

  v6 = toCopy;
  if (name)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end