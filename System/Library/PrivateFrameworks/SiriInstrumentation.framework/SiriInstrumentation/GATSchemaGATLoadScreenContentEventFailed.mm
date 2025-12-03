@interface GATSchemaGATLoadScreenContentEventFailed
- (BOOL)isEqual:(id)equal;
- (GATSchemaGATLoadScreenContentEventFailed)initWithDictionary:(id)dictionary;
- (GATSchemaGATLoadScreenContentEventFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation GATSchemaGATLoadScreenContentEventFailed

- (GATSchemaGATLoadScreenContentEventFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = GATSchemaGATLoadScreenContentEventFailed;
  v5 = [(GATSchemaGATLoadScreenContentEventFailed *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATLoadScreenContentEventFailed setErrorDomain:](v5, "setErrorDomain:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATLoadScreenContentEventFailed setErrorCode:](v5, "setErrorCode:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[GATSchemaGATError alloc] initWithDictionary:v8];
      [(GATSchemaGATLoadScreenContentEventFailed *)v5 setError:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"underlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[GATSchemaGATError alloc] initWithDictionary:v10];
      [(GATSchemaGATLoadScreenContentEventFailed *)v5 setUnderlyingError:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (GATSchemaGATLoadScreenContentEventFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GATSchemaGATLoadScreenContentEventFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GATSchemaGATLoadScreenContentEventFailed *)self dictionaryRepresentation];
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
    error = [(GATSchemaGATLoadScreenContentEventFailed *)self error];
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
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[GATSchemaGATLoadScreenContentEventFailed errorCode](self, "errorCode")}];
    [dictionary setObject:v8 forKeyedSubscript:@"errorCode"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [(GATSchemaGATLoadScreenContentEventFailed *)self errorDomain]- 1;
    if (v9 > 8)
    {
      v10 = @"GATERRORDOMAIN_UNKNOWN";
    }

    else
    {
      v10 = off_1E78D71F0[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_underlyingError)
  {
    underlyingError = [(GATSchemaGATLoadScreenContentEventFailed *)self underlyingError];
    dictionaryRepresentation2 = [underlyingError dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"underlyingError"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"underlyingError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_errorDomain;
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
  v4 = 2654435761 * self->_errorCode;
LABEL_6:
  v5 = v4 ^ v3 ^ [(GATSchemaGATError *)self->_error hash];
  return v5 ^ [(GATSchemaGATError *)self->_underlyingError hash];
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
    errorDomain = self->_errorDomain;
    if (errorDomain != [equalCopy errorDomain])
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
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_19;
    }
  }

  error = [(GATSchemaGATLoadScreenContentEventFailed *)self error];
  error2 = [equalCopy error];
  if ((error != 0) == (error2 == 0))
  {
    goto LABEL_18;
  }

  error3 = [(GATSchemaGATLoadScreenContentEventFailed *)self error];
  if (error3)
  {
    v13 = error3;
    error4 = [(GATSchemaGATLoadScreenContentEventFailed *)self error];
    error5 = [equalCopy error];
    v16 = [error4 isEqual:error5];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  error = [(GATSchemaGATLoadScreenContentEventFailed *)self underlyingError];
  error2 = [equalCopy underlyingError];
  if ((error != 0) != (error2 == 0))
  {
    underlyingError = [(GATSchemaGATLoadScreenContentEventFailed *)self underlyingError];
    if (!underlyingError)
    {

LABEL_22:
      v22 = 1;
      goto LABEL_20;
    }

    v18 = underlyingError;
    underlyingError2 = [(GATSchemaGATLoadScreenContentEventFailed *)self underlyingError];
    underlyingError3 = [equalCopy underlyingError];
    v21 = [underlyingError2 isEqual:underlyingError3];

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
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  error = [(GATSchemaGATLoadScreenContentEventFailed *)self error];

  if (error)
  {
    error2 = [(GATSchemaGATLoadScreenContentEventFailed *)self error];
    PBDataWriterWriteSubmessage();
  }

  underlyingError = [(GATSchemaGATLoadScreenContentEventFailed *)self underlyingError];

  v8 = toCopy;
  if (underlyingError)
  {
    underlyingError2 = [(GATSchemaGATLoadScreenContentEventFailed *)self underlyingError];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
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
  v13.receiver = self;
  v13.super_class = GATSchemaGATLoadScreenContentEventFailed;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  error = [(GATSchemaGATLoadScreenContentEventFailed *)self error];
  v7 = [error applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(GATSchemaGATLoadScreenContentEventFailed *)self deleteError];
  }

  underlyingError = [(GATSchemaGATLoadScreenContentEventFailed *)self underlyingError];
  v10 = [underlyingError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(GATSchemaGATLoadScreenContentEventFailed *)self deleteUnderlyingError];
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