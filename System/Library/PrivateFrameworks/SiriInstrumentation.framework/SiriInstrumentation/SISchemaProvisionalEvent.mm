@interface SISchemaProvisionalEvent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaProvisionalEvent)initWithDictionary:(id)a3;
- (SISchemaProvisionalEvent)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaProvisionalEvent

- (SISchemaProvisionalEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaProvisionalEvent;
  v5 = [(SISchemaProvisionalEvent *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"anyEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaAnyEvent alloc] initWithDictionary:v6];
      [(SISchemaProvisionalEvent *)v5 setAnyEvent:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"typeId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaProvisionalEvent *)v5 setTypeId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaProvisionalEvent setVersion:](v5, "setVersion:", [v10 longLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaProvisionalEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaProvisionalEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaProvisionalEvent *)self dictionaryRepresentation];
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
  if (self->_anyEvent)
  {
    v4 = [(SISchemaProvisionalEvent *)self anyEvent];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"anyEvent"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"anyEvent"];
    }
  }

  if (self->_typeId)
  {
    v7 = [(SISchemaProvisionalEvent *)self typeId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"typeId"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaProvisionalEvent version](self, "version")}];
    [v3 setObject:v9 forKeyedSubscript:@"version"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaAnyEvent *)self->_anyEvent hash];
  v4 = [(NSString *)self->_typeId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_version;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SISchemaProvisionalEvent *)self anyEvent];
  v6 = [v4 anyEvent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(SISchemaProvisionalEvent *)self anyEvent];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaProvisionalEvent *)self anyEvent];
    v10 = [v4 anyEvent];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(SISchemaProvisionalEvent *)self typeId];
  v6 = [v4 typeId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(SISchemaProvisionalEvent *)self typeId];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaProvisionalEvent *)self typeId];
    v15 = [v4 typeId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (version = self->_version, version == [v4 version]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaProvisionalEvent *)self anyEvent];

  if (v4)
  {
    v5 = [(SISchemaProvisionalEvent *)self anyEvent];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaProvisionalEvent *)self typeId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaProvisionalEvent;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaProvisionalEvent *)self anyEvent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaProvisionalEvent *)self deleteAnyEvent];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end