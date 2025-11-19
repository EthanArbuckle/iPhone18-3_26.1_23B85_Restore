@interface ASRSchemaASRSampledAudioFileDeletionFailed
- (ASRSchemaASRSampledAudioFileDeletionFailed)initWithDictionary:(id)a3;
- (ASRSchemaASRSampledAudioFileDeletionFailed)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasUnderlyingErrorCode:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRSampledAudioFileDeletionFailed

- (ASRSchemaASRSampledAudioFileDeletionFailed)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ASRSchemaASRSampledAudioFileDeletionFailed;
  v5 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalAsrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRSampledAudioFileDeletionFailed *)v5 setOriginalAsrId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRSampledAudioFileDeletionFailed setErrorCode:](v5, "setErrorCode:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(ASRSchemaASRSampledAudioFileDeletionFailed *)v5 setErrorDomain:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"underlyingErrorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRSampledAudioFileDeletionFailed setUnderlyingErrorCode:](v5, "setUnderlyingErrorCode:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"underlyingErrorDomain"];
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

- (ASRSchemaASRSampledAudioFileDeletionFailed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRSampledAudioFileDeletionFailed errorCode](self, "errorCode")}];
    [v3 setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorDomain)
  {
    v5 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self errorDomain];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_originalAsrId)
  {
    v7 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"originalAsrId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"originalAsrId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRSampledAudioFileDeletionFailed underlyingErrorCode](self, "underlyingErrorCode")}];
    [v3 setObject:v10 forKeyedSubscript:@"underlyingErrorCode"];
  }

  if (self->_underlyingErrorDomain)
  {
    v11 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self underlyingErrorDomain];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"underlyingErrorDomain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];
  v6 = [v4 originalAsrId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v7 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];
    v10 = [v4 originalAsrId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [v4 errorCode])
    {
      goto LABEL_23;
    }
  }

  v5 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self errorDomain];
  v6 = [v4 errorDomain];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_22;
  }

  v13 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self errorDomain];
  if (v13)
  {
    v14 = v13;
    v15 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self errorDomain];
    v16 = [v4 errorDomain];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v18 = (*&self->_has >> 1) & 1;
  if (v18 != ((v4[48] >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v18)
  {
    underlyingErrorCode = self->_underlyingErrorCode;
    if (underlyingErrorCode != [v4 underlyingErrorCode])
    {
      goto LABEL_23;
    }
  }

  v5 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self underlyingErrorDomain];
  v6 = [v4 underlyingErrorDomain];
  if ((v5 != 0) != (v6 == 0))
  {
    v20 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self underlyingErrorDomain];
    if (!v20)
    {

LABEL_26:
      v25 = 1;
      goto LABEL_24;
    }

    v21 = v20;
    v22 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self underlyingErrorDomain];
    v23 = [v4 underlyingErrorDomain];
    v24 = [v22 isEqual:v23];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];

  if (v4)
  {
    v5 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self errorDomain];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v7 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self underlyingErrorDomain];

  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASRSampledAudioFileDeletionFailed;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ASRSchemaASRSampledAudioFileDeletionFailed *)self originalAsrId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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