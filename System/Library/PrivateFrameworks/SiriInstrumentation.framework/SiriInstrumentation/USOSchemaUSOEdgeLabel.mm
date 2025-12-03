@interface USOSchemaUSOEdgeLabel
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOEdgeLabel)initWithDictionary:(id)dictionary;
- (USOSchemaUSOEdgeLabel)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEnumeration:(BOOL)enumeration;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOEdgeLabel

- (USOSchemaUSOEdgeLabel)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = USOSchemaUSOEdgeLabel;
  v5 = [(USOSchemaUSOEdgeLabel *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usoElementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEdgeLabel setUsoElementId:](v5, "setUsoElementId:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"enumeration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEdgeLabel setEnumeration:](v5, "setEnumeration:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"baseEdgeLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USOSchemaUSOLabel alloc] initWithDictionary:v8];
      [(USOSchemaUSOEdgeLabel *)v5 setBaseEdgeLabel:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (USOSchemaUSOEdgeLabel)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOEdgeLabel *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOEdgeLabel *)self dictionaryRepresentation];
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
  if (self->_baseEdgeLabel)
  {
    baseEdgeLabel = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];
    dictionaryRepresentation = [baseEdgeLabel dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"baseEdgeLabel"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"baseEdgeLabel"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEdgeLabel enumeration](self, "enumeration")}];
    [dictionary setObject:v8 forKeyedSubscript:@"enumeration"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEdgeLabel usoElementId](self, "usoElementId")}];
    [dictionary setObject:v9 forKeyedSubscript:@"usoElementId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_usoElementId;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(USOSchemaUSOLabel *)self->_baseEdgeLabel hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_enumeration;
  return v7 ^ v6 ^ [(USOSchemaUSOLabel *)self->_baseEdgeLabel hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    usoElementId = self->_usoElementId;
    if (usoElementId != [equalCopy usoElementId])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (enumeration = self->_enumeration, enumeration == [equalCopy enumeration]))
    {
      baseEdgeLabel = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];
      baseEdgeLabel2 = [equalCopy baseEdgeLabel];
      v12 = baseEdgeLabel2;
      if ((baseEdgeLabel != 0) != (baseEdgeLabel2 == 0))
      {
        baseEdgeLabel3 = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];
        if (!baseEdgeLabel3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = baseEdgeLabel3;
        baseEdgeLabel4 = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];
        baseEdgeLabel5 = [equalCopy baseEdgeLabel];
        v17 = [baseEdgeLabel4 isEqual:baseEdgeLabel5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
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

  baseEdgeLabel = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];

  v6 = toCopy;
  if (baseEdgeLabel)
  {
    baseEdgeLabel2 = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasEnumeration:(BOOL)enumeration
{
  if (enumeration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = USOSchemaUSOEdgeLabel;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(USOSchemaUSOEdgeLabel *)self baseEdgeLabel:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(USOSchemaUSOEdgeLabel *)self deleteBaseEdgeLabel];
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