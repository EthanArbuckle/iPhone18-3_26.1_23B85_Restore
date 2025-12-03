@interface ODDSiriSchemaODDMAErrorsDigest
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDMAErrorsDigest)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDMAErrorsDigest)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMaSuccessCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDMAErrorsDigest

- (ODDSiriSchemaODDMAErrorsDigest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODDSiriSchemaODDMAErrorsDigest;
  v5 = [(ODDSiriSchemaODDMAErrorsDigest *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"maErrorsDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDMAErrorsDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDMAErrorsDigest *)v5 setMaErrorsDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"maFailureCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMAErrorsDigest setMaFailureCount:](v5, "setMaFailureCount:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"maSuccessCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMAErrorsDigest setMaSuccessCount:](v5, "setMaSuccessCount:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDMAErrorsDigest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDMAErrorsDigest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDMAErrorsDigest *)self dictionaryRepresentation];
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
  if (self->_maErrorsDimensions)
  {
    maErrorsDimensions = [(ODDSiriSchemaODDMAErrorsDigest *)self maErrorsDimensions];
    dictionaryRepresentation = [maErrorsDimensions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"maErrorsDimensions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"maErrorsDimensions"];
    }
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDMAErrorsDigest maFailureCount](self, "maFailureCount")}];
    [dictionary setObject:v8 forKeyedSubscript:@"maFailureCount"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDMAErrorsDigest maSuccessCount](self, "maSuccessCount")}];
    [dictionary setObject:v9 forKeyedSubscript:@"maSuccessCount"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDMAErrorsDimensions *)self->_maErrorsDimensions hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_maFailureCount;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_maSuccessCount;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  maErrorsDimensions = [(ODDSiriSchemaODDMAErrorsDigest *)self maErrorsDimensions];
  maErrorsDimensions2 = [equalCopy maErrorsDimensions];
  v7 = maErrorsDimensions2;
  if ((maErrorsDimensions != 0) == (maErrorsDimensions2 == 0))
  {

    goto LABEL_16;
  }

  maErrorsDimensions3 = [(ODDSiriSchemaODDMAErrorsDigest *)self maErrorsDimensions];
  if (maErrorsDimensions3)
  {
    v9 = maErrorsDimensions3;
    maErrorsDimensions4 = [(ODDSiriSchemaODDMAErrorsDigest *)self maErrorsDimensions];
    maErrorsDimensions5 = [equalCopy maErrorsDimensions];
    v12 = [maErrorsDimensions4 isEqual:maErrorsDimensions5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    maFailureCount = self->_maFailureCount;
    if (maFailureCount == [equalCopy maFailureCount])
    {
      has = self->_has;
      v14 = equalCopy[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    maSuccessCount = self->_maSuccessCount;
    if (maSuccessCount != [equalCopy maSuccessCount])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  maErrorsDimensions = [(ODDSiriSchemaODDMAErrorsDigest *)self maErrorsDimensions];

  if (maErrorsDimensions)
  {
    maErrorsDimensions2 = [(ODDSiriSchemaODDMAErrorsDigest *)self maErrorsDimensions];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }
}

- (void)setHasMaSuccessCount:(BOOL)count
{
  if (count)
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
  v9.super_class = ODDSiriSchemaODDMAErrorsDigest;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDMAErrorsDigest *)self maErrorsDimensions:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDMAErrorsDigest *)self deleteMaErrorsDimensions];
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