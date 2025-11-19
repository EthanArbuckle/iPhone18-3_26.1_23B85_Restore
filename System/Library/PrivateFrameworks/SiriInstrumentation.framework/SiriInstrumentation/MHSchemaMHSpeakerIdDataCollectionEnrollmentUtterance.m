@interface MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance
- (BOOL)isEqual:(id)a3;
- (MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance)initWithDictionary:(id)a3;
- (MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasTriggerPhrase:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance

- (MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance;
  v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"approximateGenerationTimeStamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance setApproximateGenerationTimeStamp:](v5, "setApproximateGenerationTimeStamp:", [v6 unsignedLongLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"triggerPhrase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance setTriggerPhrase:](v5, "setTriggerPhrase:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"enrollmentDonationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)v5 setEnrollmentDonationId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance approximateGenerationTimeStamp](self, "approximateGenerationTimeStamp")}];
    [v3 setObject:v4 forKeyedSubscript:@"approximateGenerationTimeStamp"];
  }

  if (self->_enrollmentDonationId)
  {
    v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"enrollmentDonationId"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"enrollmentDonationId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self triggerPhrase];
    v9 = @"TRIGGERPHRASE_UNKNOWN";
    if (v8 == 1)
    {
      v9 = @"TRIGGERPHRASE_HEY_SIRI";
    }

    if (v8 == 2)
    {
      v10 = @"TRIGGERPHRASE_SIRI";
    }

    else
    {
      v10 = v9;
    }

    [v3 setObject:v10 forKeyedSubscript:@"triggerPhrase"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_approximateGenerationTimeStamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(SISchemaUUID *)self->_enrollmentDonationId hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_triggerPhrase;
  return v7 ^ v6 ^ [(SISchemaUUID *)self->_enrollmentDonationId hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    approximateGenerationTimeStamp = self->_approximateGenerationTimeStamp;
    if (approximateGenerationTimeStamp != [v4 approximateGenerationTimeStamp])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (triggerPhrase = self->_triggerPhrase, triggerPhrase == [v4 triggerPhrase]))
    {
      v10 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];
      v11 = [v4 enrollmentDonationId];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];
        v16 = [v4 enrollmentDonationId];
        v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];

  v6 = v8;
  if (v5)
  {
    v7 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasTriggerPhrase:(BOOL)a3
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
  v9.super_class = MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self deleteEnrollmentDonationId];
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