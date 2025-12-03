@interface USOSchemaUSONode
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSONode)initWithDictionary:(id)dictionary;
- (USOSchemaUSONode)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUsoVerbElementId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSONode

- (USOSchemaUSONode)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = USOSchemaUSONode;
  v5 = [(USOSchemaUSONode *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usoElementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSONode setUsoElementId:](v5, "setUsoElementId:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"usoVerbElementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSONode setUsoVerbElementId:](v5, "setUsoVerbElementId:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"entityLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(USOSchemaUSONode *)v5 setEntityLabel:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"verbLabel"];
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

- (USOSchemaUSONode)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSONode *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSONode *)self dictionaryRepresentation];
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
  if (self->_entityLabel)
  {
    entityLabel = [(USOSchemaUSONode *)self entityLabel];
    v5 = [entityLabel copy];
    [dictionary setObject:v5 forKeyedSubscript:@"entityLabel"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSONode usoElementId](self, "usoElementId")}];
    [dictionary setObject:v7 forKeyedSubscript:@"usoElementId"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSONode usoVerbElementId](self, "usoVerbElementId")}];
    [dictionary setObject:v8 forKeyedSubscript:@"usoVerbElementId"];
  }

  if (self->_verbLabel)
  {
    verbLabel = [(USOSchemaUSONode *)self verbLabel];
    v10 = [verbLabel copy];
    [dictionary setObject:v10 forKeyedSubscript:@"verbLabel"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    usoElementId = self->_usoElementId;
    if (usoElementId != [equalCopy usoElementId])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v8)
  {
    usoVerbElementId = self->_usoVerbElementId;
    if (usoVerbElementId != [equalCopy usoVerbElementId])
    {
      goto LABEL_19;
    }
  }

  entityLabel = [(USOSchemaUSONode *)self entityLabel];
  entityLabel2 = [equalCopy entityLabel];
  if ((entityLabel != 0) == (entityLabel2 == 0))
  {
    goto LABEL_18;
  }

  entityLabel3 = [(USOSchemaUSONode *)self entityLabel];
  if (entityLabel3)
  {
    v13 = entityLabel3;
    entityLabel4 = [(USOSchemaUSONode *)self entityLabel];
    entityLabel5 = [equalCopy entityLabel];
    v16 = [entityLabel4 isEqual:entityLabel5];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  entityLabel = [(USOSchemaUSONode *)self verbLabel];
  entityLabel2 = [equalCopy verbLabel];
  if ((entityLabel != 0) != (entityLabel2 == 0))
  {
    verbLabel = [(USOSchemaUSONode *)self verbLabel];
    if (!verbLabel)
    {

LABEL_22:
      v22 = 1;
      goto LABEL_20;
    }

    v18 = verbLabel;
    verbLabel2 = [(USOSchemaUSONode *)self verbLabel];
    verbLabel3 = [equalCopy verbLabel];
    v21 = [verbLabel2 isEqual:verbLabel3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

  entityLabel = [(USOSchemaUSONode *)self entityLabel];

  if (entityLabel)
  {
    PBDataWriterWriteStringField();
  }

  verbLabel = [(USOSchemaUSONode *)self verbLabel];

  v7 = toCopy;
  if (verbLabel)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (void)setHasUsoVerbElementId:(BOOL)id
{
  if (id)
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