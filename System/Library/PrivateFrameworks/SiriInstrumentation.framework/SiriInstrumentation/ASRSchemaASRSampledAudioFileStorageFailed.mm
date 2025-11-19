@interface ASRSchemaASRSampledAudioFileStorageFailed
- (ASRSchemaASRSampledAudioFileStorageFailed)initWithDictionary:(id)a3;
- (ASRSchemaASRSampledAudioFileStorageFailed)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSampledAudioStorageFailureReason:(BOOL)a3;
- (void)setHasUnderlyingErrorCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRSampledAudioFileStorageFailed

- (ASRSchemaASRSampledAudioFileStorageFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASRSchemaASRSampledAudioFileStorageFailed;
  v5 = [(ASRSchemaASRSampledAudioFileStorageFailed *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRSampledAudioFileStorageFailed setErrorCode:](v5, "setErrorCode:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(ASRSchemaASRSampledAudioFileStorageFailed *)v5 setErrorDomain:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"underlyingErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRSampledAudioFileStorageFailed setUnderlyingErrorCode:](v5, "setUnderlyingErrorCode:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"underlyingErrorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(ASRSchemaASRSampledAudioFileStorageFailed *)v5 setUnderlyingErrorDomain:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"sampledAudioStorageFailureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRSampledAudioFileStorageFailed setSampledAudioStorageFailureReason:](v5, "setSampledAudioStorageFailureReason:", [v12 intValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (ASRSchemaASRSampledAudioFileStorageFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRSampledAudioFileStorageFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRSampledAudioFileStorageFailed errorCode](self, "errorCode")}];
    [v3 setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorDomain)
  {
    v5 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self errorDomain];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"errorDomain"];
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

    [v3 setObject:v9 forKeyedSubscript:@"sampledAudioStorageFailureReason"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRSampledAudioFileStorageFailed underlyingErrorCode](self, "underlyingErrorCode")}];
    [v3 setObject:v10 forKeyedSubscript:@"underlyingErrorCode"];
  }

  if (self->_underlyingErrorDomain)
  {
    v11 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self underlyingErrorDomain];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"underlyingErrorDomain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 1) != (v4[44] & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [v4 errorCode])
    {
      goto LABEL_18;
    }
  }

  v6 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self errorDomain];
  v7 = [v4 errorDomain];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self errorDomain];
  if (v8)
  {
    v9 = v8;
    v10 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self errorDomain];
    v11 = [v4 errorDomain];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((v4[44] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    underlyingErrorCode = self->_underlyingErrorCode;
    if (underlyingErrorCode != [v4 underlyingErrorCode])
    {
      goto LABEL_18;
    }
  }

  v6 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self underlyingErrorDomain];
  v7 = [v4 underlyingErrorDomain];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v15 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self underlyingErrorDomain];
  if (v15)
  {
    v16 = v15;
    v17 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self underlyingErrorDomain];
    v18 = [v4 underlyingErrorDomain];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v22 = (*&self->_has >> 2) & 1;
  if (v22 == ((v4[44] >> 2) & 1))
  {
    if (!v22 || (sampledAudioStorageFailureReason = self->_sampledAudioStorageFailureReason, sampledAudioStorageFailureReason == [v4 sampledAudioStorageFailureReason]))
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

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self errorDomain];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(ASRSchemaASRSampledAudioFileStorageFailed *)self underlyingErrorDomain];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasSampledAudioStorageFailureReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUnderlyingErrorCode:(BOOL)a3
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