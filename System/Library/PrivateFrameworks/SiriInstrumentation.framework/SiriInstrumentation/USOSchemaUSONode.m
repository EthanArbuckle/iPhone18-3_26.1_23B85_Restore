@interface USOSchemaUSONode
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USOSchemaUSONode)initWithDictionary:(id)a3;
- (USOSchemaUSONode)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUsoVerbElementId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation USOSchemaUSONode

- (USOSchemaUSONode)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = USOSchemaUSONode;
  v5 = [(USOSchemaUSONode *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"usoElementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSONode setUsoElementId:](v5, "setUsoElementId:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"usoVerbElementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSONode setUsoVerbElementId:](v5, "setUsoVerbElementId:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"entityLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(USOSchemaUSONode *)v5 setEntityLabel:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"verbLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(USOSchemaUSONode *)v5 setVerbLabel:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (USOSchemaUSONode)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USOSchemaUSONode *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USOSchemaUSONode *)self dictionaryRepresentation];
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
  if (self->_entityLabel)
  {
    v4 = [(USOSchemaUSONode *)self entityLabel];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"entityLabel"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSONode usoElementId](self, "usoElementId")}];
    [v3 setObject:v7 forKeyedSubscript:@"usoElementId"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSONode usoVerbElementId](self, "usoVerbElementId")}];
    [v3 setObject:v8 forKeyedSubscript:@"usoVerbElementId"];
  }

  if (self->_verbLabel)
  {
    v9 = [(USOSchemaUSONode *)self verbLabel];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"verbLabel"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_usoElementId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_usoVerbElementId;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_entityLabel hash];
  return v5 ^ [(NSString *)self->_verbLabel hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    usoElementId = self->_usoElementId;
    if (usoElementId != [v4 usoElementId])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    usoVerbElementId = self->_usoVerbElementId;
    if (usoVerbElementId != [v4 usoVerbElementId])
    {
      goto LABEL_19;
    }
  }

  v10 = [(USOSchemaUSONode *)self entityLabel];
  v11 = [v4 entityLabel];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_18;
  }

  v12 = [(USOSchemaUSONode *)self entityLabel];
  if (v12)
  {
    v13 = v12;
    v14 = [(USOSchemaUSONode *)self entityLabel];
    v15 = [v4 entityLabel];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v10 = [(USOSchemaUSONode *)self verbLabel];
  v11 = [v4 verbLabel];
  if ((v10 != 0) != (v11 == 0))
  {
    v17 = [(USOSchemaUSONode *)self verbLabel];
    if (!v17)
    {

LABEL_22:
      v22 = 1;
      goto LABEL_20;
    }

    v18 = v17;
    v19 = [(USOSchemaUSONode *)self verbLabel];
    v20 = [v4 verbLabel];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_18:
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(USOSchemaUSONode *)self entityLabel];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(USOSchemaUSONode *)self verbLabel];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (void)setHasUsoVerbElementId:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end