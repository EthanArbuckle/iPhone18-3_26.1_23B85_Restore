@interface MHSchemaMHVoiceProfileICloudSyncFinished
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHVoiceProfileICloudSyncFinished)initWithDictionary:(id)a3;
- (MHSchemaMHVoiceProfileICloudSyncFinished)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasLocale:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHVoiceProfileICloudSyncFinished

- (MHSchemaMHVoiceProfileICloudSyncFinished)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MHSchemaMHVoiceProfileICloudSyncFinished;
  v5 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"enrollmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHVoiceProfileICloudSyncFinished *)v5 setEnrollmentId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isVoiceProfileSyncSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceProfileICloudSyncFinished setIsVoiceProfileSyncSuccess:](v5, "setIsVoiceProfileSyncSuccess:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"voiceProfileSyncFailureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(MHSchemaMHVoiceProfileICloudSyncFinished *)v5 setVoiceProfileSyncFailureReason:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceProfileICloudSyncFinished setLocale:](v5, "setLocale:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceProfileICloudSyncFinished)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self dictionaryRepresentation];
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
  if (self->_enrollmentId)
  {
    v4 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self enrollmentId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"enrollmentId"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceProfileICloudSyncFinished isVoiceProfileSyncSuccess](self, "isVoiceProfileSyncSuccess")}];
    [v3 setObject:v7 forKeyedSubscript:@"isVoiceProfileSyncSuccess"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self locale]- 1;
    if (v8 > 0x3D)
    {
      v9 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v9 = off_1E78D9808[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"locale"];
  }

  if (self->_voiceProfileSyncFailureReason)
  {
    v10 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self voiceProfileSyncFailureReason];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"voiceProfileSyncFailureReason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_enrollmentId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isVoiceProfileSyncSuccess;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_voiceProfileSyncFailureReason hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_locale;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self enrollmentId];
  v6 = [v4 enrollmentId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self enrollmentId];
  if (v7)
  {
    v8 = v7;
    v9 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self enrollmentId];
    v10 = [v4 enrollmentId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[36] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    isVoiceProfileSyncSuccess = self->_isVoiceProfileSyncSuccess;
    if (isVoiceProfileSyncSuccess != [v4 isVoiceProfileSyncSuccess])
    {
      goto LABEL_15;
    }
  }

  v5 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self voiceProfileSyncFailureReason];
  v6 = [v4 voiceProfileSyncFailureReason];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v13 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self voiceProfileSyncFailureReason];
  if (v13)
  {
    v14 = v13;
    v15 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self voiceProfileSyncFailureReason];
    v16 = [v4 voiceProfileSyncFailureReason];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v20 = (*&self->_has >> 1) & 1;
  if (v20 == ((v4[36] >> 1) & 1))
  {
    if (!v20 || (locale = self->_locale, locale == [v4 locale]))
    {
      v18 = 1;
      goto LABEL_16;
    }
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self enrollmentId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self voiceProfileSyncFailureReason];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v7;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = v7;
  }
}

- (void)setHasLocale:(BOOL)a3
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