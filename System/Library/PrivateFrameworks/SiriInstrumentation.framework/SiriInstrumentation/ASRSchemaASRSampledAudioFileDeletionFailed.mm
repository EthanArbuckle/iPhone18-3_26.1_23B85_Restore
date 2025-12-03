@interface ASRSchemaASRSampledAudioFileDeletionFailed
- (ASRSchemaASRSampledAudioFileDeletionFailed)initWithDictionary:(id)dictionary;
- (ASRSchemaASRSampledAudioFileDeletionFailed)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUnderlyingErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRSampledAudioFileDeletionFailed

- (ASRSchemaASRSampledAudioFileDeletionFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ASRSchemaASRSampledAudioFileDeletionFailed;
  v5 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalAsrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRSampledAudioFileDeletionFailed *)v5 setOriginalAsrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRSampledAudioFileDeletionFailed setErrorCode:](v5, "setErrorCode:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(ASRSchemaASRSampledAudioFileDeletionFailed *)v5 setErrorDomain:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"underlyingErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRSampledAudioFileDeletionFailed setUnderlyingErrorCode:](v5, "setUnderlyingErrorCode:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"underlyingErrorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(ASRSchemaASRSampledAudioFileDeletionFailed *)v5 setUnderlyingErrorDomain:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ASRSchemaASRSampledAudioFileDeletionFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRSampledAudioFileDeletionFailed errorCode](self, "errorCode")}];
    [dictionary setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorDomain)
  {
    errorDomain = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self errorDomain];
    v6 = [errorDomain copy];
    [dictionary setObject:v6 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_originalAsrId)
  {
    originalAsrId = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];
    dictionaryRepresentation = [originalAsrId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalAsrId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalAsrId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRSampledAudioFileDeletionFailed underlyingErrorCode](self, "underlyingErrorCode")}];
    [dictionary setObject:v10 forKeyedSubscript:@"underlyingErrorCode"];
  }

  if (self->_underlyingErrorDomain)
  {
    underlyingErrorDomain = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self underlyingErrorDomain];
    v12 = [underlyingErrorDomain copy];
    [dictionary setObject:v12 forKeyedSubscript:@"underlyingErrorDomain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalAsrId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorCode;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_errorDomain hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_underlyingErrorCode;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_underlyingErrorDomain hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  originalAsrId = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];
  originalAsrId2 = [equalCopy originalAsrId];
  if ((originalAsrId != 0) == (originalAsrId2 == 0))
  {
    goto LABEL_22;
  }

  originalAsrId3 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];
  if (originalAsrId3)
  {
    v8 = originalAsrId3;
    originalAsrId4 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];
    originalAsrId5 = [equalCopy originalAsrId];
    v11 = [originalAsrId4 isEqual:originalAsrId5];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_23;
    }
  }

  originalAsrId = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self errorDomain];
  originalAsrId2 = [equalCopy errorDomain];
  if ((originalAsrId != 0) == (originalAsrId2 == 0))
  {
    goto LABEL_22;
  }

  errorDomain = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self errorDomain];
  if (errorDomain)
  {
    v14 = errorDomain;
    errorDomain2 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self errorDomain];
    errorDomain3 = [equalCopy errorDomain];
    v17 = [errorDomain2 isEqual:errorDomain3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v18 = (*&self->_has >> 1) & 1;
  if (v18 != ((equalCopy[48] >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v18)
  {
    underlyingErrorCode = self->_underlyingErrorCode;
    if (underlyingErrorCode != [equalCopy underlyingErrorCode])
    {
      goto LABEL_23;
    }
  }

  originalAsrId = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self underlyingErrorDomain];
  originalAsrId2 = [equalCopy underlyingErrorDomain];
  if ((originalAsrId != 0) != (originalAsrId2 == 0))
  {
    underlyingErrorDomain = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self underlyingErrorDomain];
    if (!underlyingErrorDomain)
    {

LABEL_26:
      v25 = 1;
      goto LABEL_24;
    }

    v21 = underlyingErrorDomain;
    underlyingErrorDomain2 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self underlyingErrorDomain];
    underlyingErrorDomain3 = [equalCopy underlyingErrorDomain];
    v24 = [underlyingErrorDomain2 isEqual:underlyingErrorDomain3];

    if (v24)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v25 = 0;
LABEL_24:

  return v25;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  originalAsrId = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];

  if (originalAsrId)
  {
    originalAsrId2 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  errorDomain = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self errorDomain];

  if (errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  underlyingErrorDomain = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self underlyingErrorDomain];

  v8 = toCopy;
  if (underlyingErrorDomain)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (void)setHasUnderlyingErrorCode:(BOOL)code
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
  v9.receiver = self;
  v9.super_class = ASRSchemaASRSampledAudioFileDeletionFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASRSchemaASRSampledAudioFileDeletionFailed *)self deleteOriginalAsrId];
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