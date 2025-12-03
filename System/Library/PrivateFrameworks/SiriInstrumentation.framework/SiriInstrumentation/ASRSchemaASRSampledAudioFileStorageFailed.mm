@interface ASRSchemaASRSampledAudioFileStorageFailed
- (ASRSchemaASRSampledAudioFileStorageFailed)initWithDictionary:(id)dictionary;
- (ASRSchemaASRSampledAudioFileStorageFailed)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSampledAudioStorageFailureReason:(BOOL)reason;
- (void)setHasUnderlyingErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRSampledAudioFileStorageFailed

- (ASRSchemaASRSampledAudioFileStorageFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = ASRSchemaASRSampledAudioFileStorageFailed;
  v5 = [(ASRSchemaASRSampledAudioFileStorageFailed *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRSampledAudioFileStorageFailed setErrorCode:](v5, "setErrorCode:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(ASRSchemaASRSampledAudioFileStorageFailed *)v5 setErrorDomain:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"underlyingErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRSampledAudioFileStorageFailed setUnderlyingErrorCode:](v5, "setUnderlyingErrorCode:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"underlyingErrorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ASRSchemaASRSampledAudioFileStorageFailed *)v5 setUnderlyingErrorDomain:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"sampledAudioStorageFailureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRSampledAudioFileStorageFailed setSampledAudioStorageFailureReason:](v5, "setSampledAudioStorageFailureReason:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (ASRSchemaASRSampledAudioFileStorageFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRSampledAudioFileStorageFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRSampledAudioFileStorageFailed *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRSampledAudioFileStorageFailed errorCode](self, "errorCode")}];
    [dictionary setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorDomain)
  {
    errorDomain = [(ASRSchemaASRSampledAudioFileStorageFailed *)self errorDomain];
    v6 = [errorDomain copy];
    [dictionary setObject:v6 forKeyedSubscript:@"errorDomain"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self sampledAudioStorageFailureReason]- 1;
    if (v8 > 3)
    {
      v9 = @"ASRSAMPLEDAUDIOSTORAGEFAILUREREASON_UNKNOWN";
    }

    else
    {
      v9 = off_1E78D1F70[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"sampledAudioStorageFailureReason"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRSampledAudioFileStorageFailed underlyingErrorCode](self, "underlyingErrorCode")}];
    [dictionary setObject:v10 forKeyedSubscript:@"underlyingErrorCode"];
  }

  if (self->_underlyingErrorDomain)
  {
    underlyingErrorDomain = [(ASRSchemaASRSampledAudioFileStorageFailed *)self underlyingErrorDomain];
    v12 = [underlyingErrorDomain copy];
    [dictionary setObject:v12 forKeyedSubscript:@"underlyingErrorDomain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_errorCode;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_errorDomain hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_underlyingErrorCode;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_underlyingErrorDomain hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_sampledAudioStorageFailureReason;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 1) != (equalCopy[44] & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_18;
    }
  }

  errorDomain = [(ASRSchemaASRSampledAudioFileStorageFailed *)self errorDomain];
  errorDomain2 = [equalCopy errorDomain];
  if ((errorDomain != 0) == (errorDomain2 == 0))
  {
    goto LABEL_17;
  }

  errorDomain3 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self errorDomain];
  if (errorDomain3)
  {
    v9 = errorDomain3;
    errorDomain4 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self errorDomain];
    errorDomain5 = [equalCopy errorDomain];
    v12 = [errorDomain4 isEqual:errorDomain5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((equalCopy[44] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    underlyingErrorCode = self->_underlyingErrorCode;
    if (underlyingErrorCode != [equalCopy underlyingErrorCode])
    {
      goto LABEL_18;
    }
  }

  errorDomain = [(ASRSchemaASRSampledAudioFileStorageFailed *)self underlyingErrorDomain];
  errorDomain2 = [equalCopy underlyingErrorDomain];
  if ((errorDomain != 0) == (errorDomain2 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  underlyingErrorDomain = [(ASRSchemaASRSampledAudioFileStorageFailed *)self underlyingErrorDomain];
  if (underlyingErrorDomain)
  {
    v16 = underlyingErrorDomain;
    underlyingErrorDomain2 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self underlyingErrorDomain];
    underlyingErrorDomain3 = [equalCopy underlyingErrorDomain];
    v19 = [underlyingErrorDomain2 isEqual:underlyingErrorDomain3];

    if (!v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v22 = (*&self->_has >> 2) & 1;
  if (v22 == ((equalCopy[44] >> 2) & 1))
  {
    if (!v22 || (sampledAudioStorageFailureReason = self->_sampledAudioStorageFailureReason, sampledAudioStorageFailureReason == [equalCopy sampledAudioStorageFailureReason]))
    {
      v20 = 1;
      goto LABEL_19;
    }
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  errorDomain = [(ASRSchemaASRSampledAudioFileStorageFailed *)self errorDomain];

  if (errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  underlyingErrorDomain = [(ASRSchemaASRSampledAudioFileStorageFailed *)self underlyingErrorDomain];

  if (underlyingErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasSampledAudioStorageFailureReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end