@interface PETSchemaPETRawMessage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PETSchemaPETRawMessage)initWithDictionary:(id)a3;
- (PETSchemaPETRawMessage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PETSchemaPETRawMessage

- (PETSchemaPETRawMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PETSchemaPETRawMessage;
  v5 = [(PETSchemaPETRawMessage *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"typeId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETRawMessage setType_id:](v5, "setType_id:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"rawBytes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
      [(PETSchemaPETRawMessage *)v5 setRaw_bytes:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"name"];
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

- (PETSchemaPETRawMessage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PETSchemaPETRawMessage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PETSchemaPETRawMessage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_name)
  {
    v4 = [(PETSchemaPETRawMessage *)self name];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"name"];
  }

  if (self->_raw_bytes)
  {
    v6 = [(PETSchemaPETRawMessage *)self raw_bytes];
    v7 = [v6 base64EncodedStringWithOptions:0];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"rawBytes"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"rawBytes"];
    }
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PETSchemaPETRawMessage type_id](self, "type_id")}];
    [v3 setObject:v9 forKeyedSubscript:@"typeId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    type_id = self->_type_id;
    if (type_id != [v4 type_id])
    {
      goto LABEL_15;
    }
  }

  v6 = [(PETSchemaPETRawMessage *)self raw_bytes];
  v7 = [v4 raw_bytes];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(PETSchemaPETRawMessage *)self raw_bytes];
  if (v8)
  {
    v9 = v8;
    v10 = [(PETSchemaPETRawMessage *)self raw_bytes];
    v11 = [v4 raw_bytes];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(PETSchemaPETRawMessage *)self name];
  v7 = [v4 name];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(PETSchemaPETRawMessage *)self name];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(PETSchemaPETRawMessage *)self name];
    v16 = [v4 name];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v4 = [(PETSchemaPETRawMessage *)self raw_bytes];

  if (v4)
  {
    PBDataWriterWriteDataField();
  }

  v5 = [(PETSchemaPETRawMessage *)self name];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end