@interface MHSchemaMHVoiceProfileICloudSyncFinished
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHVoiceProfileICloudSyncFinished)initWithDictionary:(id)dictionary;
- (MHSchemaMHVoiceProfileICloudSyncFinished)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasLocale:(BOOL)locale;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHVoiceProfileICloudSyncFinished

- (MHSchemaMHVoiceProfileICloudSyncFinished)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = MHSchemaMHVoiceProfileICloudSyncFinished;
  v5 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHVoiceProfileICloudSyncFinished *)v5 setEnrollmentId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isVoiceProfileSyncSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceProfileICloudSyncFinished setIsVoiceProfileSyncSuccess:](v5, "setIsVoiceProfileSyncSuccess:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"voiceProfileSyncFailureReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(MHSchemaMHVoiceProfileICloudSyncFinished *)v5 setVoiceProfileSyncFailureReason:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHVoiceProfileICloudSyncFinished setLocale:](v5, "setLocale:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (MHSchemaMHVoiceProfileICloudSyncFinished)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self dictionaryRepresentation];
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
  if (self->_enrollmentId)
  {
    enrollmentId = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self enrollmentId];
    v5 = [enrollmentId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"enrollmentId"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[MHSchemaMHVoiceProfileICloudSyncFinished isVoiceProfileSyncSuccess](self, "isVoiceProfileSyncSuccess")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isVoiceProfileSyncSuccess"];

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

    [dictionary setObject:v9 forKeyedSubscript:@"locale"];
  }

  if (self->_voiceProfileSyncFailureReason)
  {
    voiceProfileSyncFailureReason = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self voiceProfileSyncFailureReason];
    v11 = [voiceProfileSyncFailureReason copy];
    [dictionary setObject:v11 forKeyedSubscript:@"voiceProfileSyncFailureReason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  enrollmentId = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self enrollmentId];
  enrollmentId2 = [equalCopy enrollmentId];
  if ((enrollmentId != 0) == (enrollmentId2 == 0))
  {
    goto LABEL_14;
  }

  enrollmentId3 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self enrollmentId];
  if (enrollmentId3)
  {
    v8 = enrollmentId3;
    enrollmentId4 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self enrollmentId];
    enrollmentId5 = [equalCopy enrollmentId];
    v11 = [enrollmentId4 isEqual:enrollmentId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[36] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    isVoiceProfileSyncSuccess = self->_isVoiceProfileSyncSuccess;
    if (isVoiceProfileSyncSuccess != [equalCopy isVoiceProfileSyncSuccess])
    {
      goto LABEL_15;
    }
  }

  enrollmentId = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self voiceProfileSyncFailureReason];
  enrollmentId2 = [equalCopy voiceProfileSyncFailureReason];
  if ((enrollmentId != 0) == (enrollmentId2 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  voiceProfileSyncFailureReason = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self voiceProfileSyncFailureReason];
  if (voiceProfileSyncFailureReason)
  {
    v14 = voiceProfileSyncFailureReason;
    voiceProfileSyncFailureReason2 = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self voiceProfileSyncFailureReason];
    voiceProfileSyncFailureReason3 = [equalCopy voiceProfileSyncFailureReason];
    v17 = [voiceProfileSyncFailureReason2 isEqual:voiceProfileSyncFailureReason3];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v20 = (*&self->_has >> 1) & 1;
  if (v20 == ((equalCopy[36] >> 1) & 1))
  {
    if (!v20 || (locale = self->_locale, locale == [equalCopy locale]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  enrollmentId = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self enrollmentId];

  if (enrollmentId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  voiceProfileSyncFailureReason = [(MHSchemaMHVoiceProfileICloudSyncFinished *)self voiceProfileSyncFailureReason];

  if (voiceProfileSyncFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  v6 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
  }
}

- (void)setHasLocale:(BOOL)locale
{
  if (locale)
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