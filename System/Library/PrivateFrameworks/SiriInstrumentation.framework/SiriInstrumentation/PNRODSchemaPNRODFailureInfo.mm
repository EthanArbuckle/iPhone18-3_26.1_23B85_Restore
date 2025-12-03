@interface PNRODSchemaPNRODFailureInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODFailureInfo)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODFailureInfo)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFailureSubType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODFailureInfo

- (PNRODSchemaPNRODFailureInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PNRODSchemaPNRODFailureInfo;
  v5 = [(PNRODSchemaPNRODFailureInfo *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"failureType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODFailureInfo setFailureType:](v5, "setFailureType:", [v6 longLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"failureSubType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODFailureInfo setFailureSubType:](v5, "setFailureSubType:", [v7 longLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PNRODSchemaPNRError alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODFailureInfo *)v5 setError:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"underlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PNRODSchemaPNRError alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODFailureInfo *)v5 setUnderlyingError:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"underUnderlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRError alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODFailureInfo *)v5 setUnderUnderlyingError:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODFailureInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODFailureInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODFailureInfo *)self dictionaryRepresentation];
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
  if (self->_error)
  {
    error = [(PNRODSchemaPNRODFailureInfo *)self error];
    dictionaryRepresentation = [error dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"error"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"error"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODFailureInfo failureSubType](self, "failureSubType")}];
    [dictionary setObject:v8 forKeyedSubscript:@"failureSubType"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODFailureInfo failureType](self, "failureType")}];
    [dictionary setObject:v9 forKeyedSubscript:@"failureType"];
  }

  if (self->_underUnderlyingError)
  {
    underUnderlyingError = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
    dictionaryRepresentation2 = [underUnderlyingError dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"underUnderlyingError"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"underUnderlyingError"];
    }
  }

  if (self->_underlyingError)
  {
    underlyingError = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
    dictionaryRepresentation3 = [underlyingError dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"underlyingError"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"underlyingError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_failureType;
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
  v4 = 2654435761 * self->_failureSubType;
LABEL_6:
  v5 = v4 ^ v3 ^ [(PNRODSchemaPNRError *)self->_error hash];
  v6 = [(PNRODSchemaPNRError *)self->_underlyingError hash];
  return v5 ^ v6 ^ [(PNRODSchemaPNRError *)self->_underUnderlyingError hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  v6 = equalCopy[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    failureType = self->_failureType;
    if (failureType != [equalCopy failureType])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v6 = equalCopy[48];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v8)
  {
    failureSubType = self->_failureSubType;
    if (failureSubType != [equalCopy failureSubType])
    {
      goto LABEL_24;
    }
  }

  error = [(PNRODSchemaPNRODFailureInfo *)self error];
  error2 = [equalCopy error];
  if ((error != 0) == (error2 == 0))
  {
    goto LABEL_23;
  }

  error3 = [(PNRODSchemaPNRODFailureInfo *)self error];
  if (error3)
  {
    v13 = error3;
    error4 = [(PNRODSchemaPNRODFailureInfo *)self error];
    error5 = [equalCopy error];
    v16 = [error4 isEqual:error5];

    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  error = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
  error2 = [equalCopy underlyingError];
  if ((error != 0) == (error2 == 0))
  {
    goto LABEL_23;
  }

  underlyingError = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
  if (underlyingError)
  {
    v18 = underlyingError;
    underlyingError2 = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
    underlyingError3 = [equalCopy underlyingError];
    v21 = [underlyingError2 isEqual:underlyingError3];

    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  error = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
  error2 = [equalCopy underUnderlyingError];
  if ((error != 0) != (error2 == 0))
  {
    underUnderlyingError = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
    if (!underUnderlyingError)
    {

LABEL_27:
      v27 = 1;
      goto LABEL_25;
    }

    v23 = underUnderlyingError;
    underUnderlyingError2 = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
    underUnderlyingError3 = [equalCopy underUnderlyingError];
    v26 = [underUnderlyingError2 isEqual:underUnderlyingError3];

    if (v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_23:
  }

LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  error = [(PNRODSchemaPNRODFailureInfo *)self error];

  if (error)
  {
    error2 = [(PNRODSchemaPNRODFailureInfo *)self error];
    PBDataWriterWriteSubmessage();
  }

  underlyingError = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];

  if (underlyingError)
  {
    underlyingError2 = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
    PBDataWriterWriteSubmessage();
  }

  underUnderlyingError = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];

  v10 = toCopy;
  if (underUnderlyingError)
  {
    underUnderlyingError2 = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

- (void)setHasFailureSubType:(BOOL)type
{
  if (type)
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
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = PNRODSchemaPNRODFailureInfo;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  error = [(PNRODSchemaPNRODFailureInfo *)self error];
  v7 = [error applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODFailureInfo *)self deleteError];
  }

  underlyingError = [(PNRODSchemaPNRODFailureInfo *)self underlyingError];
  v10 = [underlyingError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODFailureInfo *)self deleteUnderlyingError];
  }

  underUnderlyingError = [(PNRODSchemaPNRODFailureInfo *)self underUnderlyingError];
  v13 = [underUnderlyingError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODFailureInfo *)self deleteUnderUnderlyingError];
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