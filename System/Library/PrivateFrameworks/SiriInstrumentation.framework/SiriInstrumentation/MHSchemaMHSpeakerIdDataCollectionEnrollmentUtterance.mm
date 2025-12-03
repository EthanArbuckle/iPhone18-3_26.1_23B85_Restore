@interface MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance)initWithDictionary:(id)dictionary;
- (MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasTriggerPhrase:(BOOL)phrase;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance

- (MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance;
  v5 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"approximateGenerationTimeStamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance setApproximateGenerationTimeStamp:](v5, "setApproximateGenerationTimeStamp:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"triggerPhrase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance setTriggerPhrase:](v5, "setTriggerPhrase:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"enrollmentDonationId"];
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

- (MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance approximateGenerationTimeStamp](self, "approximateGenerationTimeStamp")}];
    [dictionary setObject:v4 forKeyedSubscript:@"approximateGenerationTimeStamp"];
  }

  if (self->_enrollmentDonationId)
  {
    enrollmentDonationId = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];
    dictionaryRepresentation = [enrollmentDonationId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"enrollmentDonationId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"enrollmentDonationId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    triggerPhrase = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self triggerPhrase];
    v9 = @"TRIGGERPHRASE_UNKNOWN";
    if (triggerPhrase == 1)
    {
      v9 = @"TRIGGERPHRASE_HEY_SIRI";
    }

    if (triggerPhrase == 2)
    {
      v10 = @"TRIGGERPHRASE_SIRI";
    }

    else
    {
      v10 = v9;
    }

    [dictionary setObject:v10 forKeyedSubscript:@"triggerPhrase"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    approximateGenerationTimeStamp = self->_approximateGenerationTimeStamp;
    if (approximateGenerationTimeStamp != [equalCopy approximateGenerationTimeStamp])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (triggerPhrase = self->_triggerPhrase, triggerPhrase == [equalCopy triggerPhrase]))
    {
      enrollmentDonationId = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];
      enrollmentDonationId2 = [equalCopy enrollmentDonationId];
      v12 = enrollmentDonationId2;
      if ((enrollmentDonationId != 0) != (enrollmentDonationId2 == 0))
      {
        enrollmentDonationId3 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];
        if (!enrollmentDonationId3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = enrollmentDonationId3;
        enrollmentDonationId4 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];
        enrollmentDonationId5 = [equalCopy enrollmentDonationId];
        v17 = [enrollmentDonationId4 isEqual:enrollmentDonationId5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

  enrollmentDonationId = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];

  v6 = toCopy;
  if (enrollmentDonationId)
  {
    enrollmentDonationId2 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasTriggerPhrase:(BOOL)phrase
{
  if (phrase)
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
  v9.super_class = MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHSpeakerIdDataCollectionEnrollmentUtterance *)self enrollmentDonationId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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