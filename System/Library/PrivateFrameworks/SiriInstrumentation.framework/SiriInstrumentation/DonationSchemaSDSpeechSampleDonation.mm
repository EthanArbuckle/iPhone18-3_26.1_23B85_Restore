@interface DonationSchemaSDSpeechSampleDonation
- (BOOL)isEqual:(id)equal;
- (DonationSchemaSDSpeechSampleDonation)initWithDictionary:(id)dictionary;
- (DonationSchemaSDSpeechSampleDonation)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)attributesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addAttributes:(int)attributes;
- (void)setHasAsrTask:(BOOL)task;
- (void)setHasAudioCaptureDevice:(BOOL)device;
- (void)setHasEvaluation:(BOOL)evaluation;
- (void)setHasLocale:(BOOL)locale;
- (void)writeTo:(id)to;
@end

@implementation DonationSchemaSDSpeechSampleDonation

- (DonationSchemaSDSpeechSampleDonation)initWithDictionary:(id)dictionary
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = DonationSchemaSDSpeechSampleDonation;
  v5 = [(DonationSchemaSDSpeechSampleDonation *)&v35 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"donationID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DonationSchemaSDSpeechSampleDonation *)v5 setDonationID:v7];
    }

    v30 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"donorBundleID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(DonationSchemaSDSpeechSampleDonation *)v5 setDonorBundleID:v9];
    }

    v29 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"captureDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DonationSchemaSDSpeechSampleDonation setCaptureDate:](v5, "setCaptureDate:", [v10 unsignedLongLongValue]);
    }

    v28 = v10;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v32;
        do
        {
          v16 = 0;
          do
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v31 + 1) + 8 * v16);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[DonationSchemaSDSpeechSampleDonation addAttributes:](v5, "addAttributes:", [v17 intValue]);
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v14);
      }
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"audioCaptureDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DonationSchemaSDSpeechSampleDonation setAudioCaptureDevice:](v5, "setAudioCaptureDevice:", [v18 intValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DonationSchemaSDSpeechSampleDonation setLocale:](v5, "setLocale:", [v19 intValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"asrTask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DonationSchemaSDSpeechSampleDonation setAsrTask:](v5, "setAsrTask:", [v20 intValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"transcription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(DonationSchemaSDSpeechSampleDonation *)v5 setTranscription:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"expected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(DonationSchemaSDSpeechSampleDonation *)v5 setExpected:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"evaluation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DonationSchemaSDSpeechSampleDonation setEvaluation:](v5, "setEvaluation:", [v25 intValue]);
    }

    v26 = v5;
  }

  return v5;
}

- (DonationSchemaSDSpeechSampleDonation)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DonationSchemaSDSpeechSampleDonation *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DonationSchemaSDSpeechSampleDonation *)self dictionaryRepresentation];
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
  if ((*&self->_has & 8) != 0)
  {
    v4 = [(DonationSchemaSDSpeechSampleDonation *)self asrTask]- 1;
    if (v4 > 8)
    {
      v5 = @"SDASRTASK_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D4528[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"asrTask"];
  }

  if ([(NSArray *)self->_attributes count])
  {
    attributes = [(DonationSchemaSDSpeechSampleDonation *)self attributes];
    v7 = [attributes copy];
    [dictionary setObject:v7 forKeyedSubscript:@"attributes"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [(DonationSchemaSDSpeechSampleDonation *)self audioCaptureDevice]- 1;
    if (v9 > 0xB)
    {
      v10 = @"SDAUDIOCAPTUREDEVICE_UNKNOWN";
    }

    else
    {
      v10 = off_1E78D4570[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"audioCaptureDevice"];
    has = self->_has;
  }

  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DonationSchemaSDSpeechSampleDonation captureDate](self, "captureDate")}];
    [dictionary setObject:v11 forKeyedSubscript:@"captureDate"];
  }

  if (self->_donationID)
  {
    donationID = [(DonationSchemaSDSpeechSampleDonation *)self donationID];
    dictionaryRepresentation = [donationID dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"donationID"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"donationID"];
    }
  }

  if (self->_donorBundleID)
  {
    donorBundleID = [(DonationSchemaSDSpeechSampleDonation *)self donorBundleID];
    v16 = [donorBundleID copy];
    [dictionary setObject:v16 forKeyedSubscript:@"donorBundleID"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    evaluation = [(DonationSchemaSDSpeechSampleDonation *)self evaluation];
    v18 = @"SDTRANSCRIPTIONEVALUATION_UNKNOWN";
    if (evaluation == 1)
    {
      v18 = @"SDTRANSCRIPTIONEVALUATION_ACCURATE";
    }

    if (evaluation == 2)
    {
      v19 = @"SDTRANSCRIPTIONEVALUATION_INACCURATE";
    }

    else
    {
      v19 = v18;
    }

    [dictionary setObject:v19 forKeyedSubscript:@"evaluation"];
  }

  if (self->_expected)
  {
    expected = [(DonationSchemaSDSpeechSampleDonation *)self expected];
    v21 = [expected copy];
    [dictionary setObject:v21 forKeyedSubscript:@"expected"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v22 = [(DonationSchemaSDSpeechSampleDonation *)self locale]- 1;
    if (v22 > 0x3D)
    {
      v23 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v23 = off_1E78D45D0[v22];
    }

    [dictionary setObject:v23 forKeyedSubscript:@"locale"];
  }

  if (self->_transcription)
  {
    transcription = [(DonationSchemaSDSpeechSampleDonation *)self transcription];
    v25 = [transcription copy];
    [dictionary setObject:v25 forKeyedSubscript:@"transcription"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v13 = [(SISchemaUUID *)self->_donationID hash];
  v3 = [(NSString *)self->_donorBundleID hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_captureDate;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSArray *)self->_attributes hash];
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v6 = 2654435761 * self->_audioCaptureDevice;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = 2654435761 * self->_locale;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_asrTask;
    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
LABEL_11:
  v9 = [(NSString *)self->_transcription hash];
  v10 = [(NSString *)self->_expected hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v11 = 2654435761 * self->_evaluation;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  donationID = [(DonationSchemaSDSpeechSampleDonation *)self donationID];
  donationID2 = [equalCopy donationID];
  if ((donationID != 0) == (donationID2 == 0))
  {
    goto LABEL_40;
  }

  donationID3 = [(DonationSchemaSDSpeechSampleDonation *)self donationID];
  if (donationID3)
  {
    v8 = donationID3;
    donationID4 = [(DonationSchemaSDSpeechSampleDonation *)self donationID];
    donationID5 = [equalCopy donationID];
    v11 = [donationID4 isEqual:donationID5];

    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  donationID = [(DonationSchemaSDSpeechSampleDonation *)self donorBundleID];
  donationID2 = [equalCopy donorBundleID];
  if ((donationID != 0) == (donationID2 == 0))
  {
    goto LABEL_40;
  }

  donorBundleID = [(DonationSchemaSDSpeechSampleDonation *)self donorBundleID];
  if (donorBundleID)
  {
    v13 = donorBundleID;
    donorBundleID2 = [(DonationSchemaSDSpeechSampleDonation *)self donorBundleID];
    donorBundleID3 = [equalCopy donorBundleID];
    v16 = [donorBundleID2 isEqual:donorBundleID3];

    if (!v16)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[76] & 1))
  {
    goto LABEL_41;
  }

  if (*&self->_has)
  {
    captureDate = self->_captureDate;
    if (captureDate != [equalCopy captureDate])
    {
      goto LABEL_41;
    }
  }

  donationID = [(DonationSchemaSDSpeechSampleDonation *)self attributes];
  donationID2 = [equalCopy attributes];
  if ((donationID != 0) == (donationID2 == 0))
  {
    goto LABEL_40;
  }

  attributes = [(DonationSchemaSDSpeechSampleDonation *)self attributes];
  if (attributes)
  {
    v19 = attributes;
    attributes2 = [(DonationSchemaSDSpeechSampleDonation *)self attributes];
    attributes3 = [equalCopy attributes];
    v22 = [attributes2 isEqual:attributes3];

    if (!v22)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  has = self->_has;
  v24 = (*&has >> 1) & 1;
  v25 = equalCopy[76];
  if (v24 != ((v25 >> 1) & 1))
  {
    goto LABEL_41;
  }

  if (v24)
  {
    audioCaptureDevice = self->_audioCaptureDevice;
    if (audioCaptureDevice != [equalCopy audioCaptureDevice])
    {
      goto LABEL_41;
    }

    has = self->_has;
    v25 = equalCopy[76];
  }

  v27 = (*&has >> 2) & 1;
  if (v27 != ((v25 >> 2) & 1))
  {
    goto LABEL_41;
  }

  if (v27)
  {
    locale = self->_locale;
    if (locale != [equalCopy locale])
    {
      goto LABEL_41;
    }

    has = self->_has;
    v25 = equalCopy[76];
  }

  v29 = (*&has >> 3) & 1;
  if (v29 != ((v25 >> 3) & 1))
  {
    goto LABEL_41;
  }

  if (v29)
  {
    asrTask = self->_asrTask;
    if (asrTask != [equalCopy asrTask])
    {
      goto LABEL_41;
    }
  }

  donationID = [(DonationSchemaSDSpeechSampleDonation *)self transcription];
  donationID2 = [equalCopy transcription];
  if ((donationID != 0) == (donationID2 == 0))
  {
    goto LABEL_40;
  }

  transcription = [(DonationSchemaSDSpeechSampleDonation *)self transcription];
  if (transcription)
  {
    v32 = transcription;
    transcription2 = [(DonationSchemaSDSpeechSampleDonation *)self transcription];
    transcription3 = [equalCopy transcription];
    v35 = [transcription2 isEqual:transcription3];

    if (!v35)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  donationID = [(DonationSchemaSDSpeechSampleDonation *)self expected];
  donationID2 = [equalCopy expected];
  if ((donationID != 0) == (donationID2 == 0))
  {
LABEL_40:

    goto LABEL_41;
  }

  expected = [(DonationSchemaSDSpeechSampleDonation *)self expected];
  if (expected)
  {
    v37 = expected;
    expected2 = [(DonationSchemaSDSpeechSampleDonation *)self expected];
    expected3 = [equalCopy expected];
    v40 = [expected2 isEqual:expected3];

    if (!v40)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v43 = (*&self->_has >> 4) & 1;
  if (v43 == ((equalCopy[76] >> 4) & 1))
  {
    if (!v43 || (evaluation = self->_evaluation, evaluation == [equalCopy evaluation]))
    {
      v41 = 1;
      goto LABEL_42;
    }
  }

LABEL_41:
  v41 = 0;
LABEL_42:

  return v41;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  donationID = [(DonationSchemaSDSpeechSampleDonation *)self donationID];

  if (donationID)
  {
    donationID2 = [(DonationSchemaSDSpeechSampleDonation *)self donationID];
    PBDataWriterWriteSubmessage();
  }

  donorBundleID = [(DonationSchemaSDSpeechSampleDonation *)self donorBundleID];

  if (donorBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_attributes;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_16:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_16;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_17:
    PBDataWriterWriteInt32Field();
  }

LABEL_18:
  transcription = [(DonationSchemaSDSpeechSampleDonation *)self transcription];

  if (transcription)
  {
    PBDataWriterWriteStringField();
  }

  expected = [(DonationSchemaSDSpeechSampleDonation *)self expected];

  if (expected)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasEvaluation:(BOOL)evaluation
{
  if (evaluation)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAsrTask:(BOOL)task
{
  if (task)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAudioCaptureDevice:(BOOL)device
{
  if (device)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)attributesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_attributes objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addAttributes:(int)attributes
{
  v3 = *&attributes;
  attributes = self->_attributes;
  if (!attributes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_attributes;
    self->_attributes = array;

    attributes = self->_attributes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)attributes addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = DonationSchemaSDSpeechSampleDonation;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(DonationSchemaSDSpeechSampleDonation *)self donationID:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(DonationSchemaSDSpeechSampleDonation *)self deleteDonationID];
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