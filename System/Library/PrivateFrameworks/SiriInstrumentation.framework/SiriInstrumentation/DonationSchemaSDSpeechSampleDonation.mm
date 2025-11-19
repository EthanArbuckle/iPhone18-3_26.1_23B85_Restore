@interface DonationSchemaSDSpeechSampleDonation
- (BOOL)isEqual:(id)a3;
- (DonationSchemaSDSpeechSampleDonation)initWithDictionary:(id)a3;
- (DonationSchemaSDSpeechSampleDonation)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)attributesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addAttributes:(int)a3;
- (void)setHasAsrTask:(BOOL)a3;
- (void)setHasAudioCaptureDevice:(BOOL)a3;
- (void)setHasEvaluation:(BOOL)a3;
- (void)setHasLocale:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DonationSchemaSDSpeechSampleDonation

- (DonationSchemaSDSpeechSampleDonation)initWithDictionary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = DonationSchemaSDSpeechSampleDonation;
  v5 = [(DonationSchemaSDSpeechSampleDonation *)&v35 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"donationID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DonationSchemaSDSpeechSampleDonation *)v5 setDonationID:v7];
    }

    v30 = v6;
    v8 = [v4 objectForKeyedSubscript:@"donorBundleID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(DonationSchemaSDSpeechSampleDonation *)v5 setDonorBundleID:v9];
    }

    v29 = v8;
    v10 = [v4 objectForKeyedSubscript:@"captureDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DonationSchemaSDSpeechSampleDonation setCaptureDate:](v5, "setCaptureDate:", [v10 unsignedLongLongValue]);
    }

    v28 = v10;
    v11 = [v4 objectForKeyedSubscript:@"attributes"];
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

    v18 = [v4 objectForKeyedSubscript:@"audioCaptureDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DonationSchemaSDSpeechSampleDonation setAudioCaptureDevice:](v5, "setAudioCaptureDevice:", [v18 intValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DonationSchemaSDSpeechSampleDonation setLocale:](v5, "setLocale:", [v19 intValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"asrTask"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DonationSchemaSDSpeechSampleDonation setAsrTask:](v5, "setAsrTask:", [v20 intValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"transcription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(DonationSchemaSDSpeechSampleDonation *)v5 setTranscription:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"expected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(DonationSchemaSDSpeechSampleDonation *)v5 setExpected:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"evaluation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DonationSchemaSDSpeechSampleDonation setEvaluation:](v5, "setEvaluation:", [v25 intValue]);
    }

    v26 = v5;
  }

  return v5;
}

- (DonationSchemaSDSpeechSampleDonation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DonationSchemaSDSpeechSampleDonation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DonationSchemaSDSpeechSampleDonation *)self dictionaryRepresentation];
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

    [v3 setObject:v5 forKeyedSubscript:@"asrTask"];
  }

  if ([(NSArray *)self->_attributes count])
  {
    v6 = [(DonationSchemaSDSpeechSampleDonation *)self attributes];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"attributes"];
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

    [v3 setObject:v10 forKeyedSubscript:@"audioCaptureDevice"];
    has = self->_has;
  }

  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DonationSchemaSDSpeechSampleDonation captureDate](self, "captureDate")}];
    [v3 setObject:v11 forKeyedSubscript:@"captureDate"];
  }

  if (self->_donationID)
  {
    v12 = [(DonationSchemaSDSpeechSampleDonation *)self donationID];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"donationID"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"donationID"];
    }
  }

  if (self->_donorBundleID)
  {
    v15 = [(DonationSchemaSDSpeechSampleDonation *)self donorBundleID];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"donorBundleID"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v17 = [(DonationSchemaSDSpeechSampleDonation *)self evaluation];
    v18 = @"SDTRANSCRIPTIONEVALUATION_UNKNOWN";
    if (v17 == 1)
    {
      v18 = @"SDTRANSCRIPTIONEVALUATION_ACCURATE";
    }

    if (v17 == 2)
    {
      v19 = @"SDTRANSCRIPTIONEVALUATION_INACCURATE";
    }

    else
    {
      v19 = v18;
    }

    [v3 setObject:v19 forKeyedSubscript:@"evaluation"];
  }

  if (self->_expected)
  {
    v20 = [(DonationSchemaSDSpeechSampleDonation *)self expected];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"expected"];
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

    [v3 setObject:v23 forKeyedSubscript:@"locale"];
  }

  if (self->_transcription)
  {
    v24 = [(DonationSchemaSDSpeechSampleDonation *)self transcription];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"transcription"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  v5 = [(DonationSchemaSDSpeechSampleDonation *)self donationID];
  v6 = [v4 donationID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v7 = [(DonationSchemaSDSpeechSampleDonation *)self donationID];
  if (v7)
  {
    v8 = v7;
    v9 = [(DonationSchemaSDSpeechSampleDonation *)self donationID];
    v10 = [v4 donationID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(DonationSchemaSDSpeechSampleDonation *)self donorBundleID];
  v6 = [v4 donorBundleID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v12 = [(DonationSchemaSDSpeechSampleDonation *)self donorBundleID];
  if (v12)
  {
    v13 = v12;
    v14 = [(DonationSchemaSDSpeechSampleDonation *)self donorBundleID];
    v15 = [v4 donorBundleID];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[76] & 1))
  {
    goto LABEL_41;
  }

  if (*&self->_has)
  {
    captureDate = self->_captureDate;
    if (captureDate != [v4 captureDate])
    {
      goto LABEL_41;
    }
  }

  v5 = [(DonationSchemaSDSpeechSampleDonation *)self attributes];
  v6 = [v4 attributes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v18 = [(DonationSchemaSDSpeechSampleDonation *)self attributes];
  if (v18)
  {
    v19 = v18;
    v20 = [(DonationSchemaSDSpeechSampleDonation *)self attributes];
    v21 = [v4 attributes];
    v22 = [v20 isEqual:v21];

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
  v25 = v4[76];
  if (v24 != ((v25 >> 1) & 1))
  {
    goto LABEL_41;
  }

  if (v24)
  {
    audioCaptureDevice = self->_audioCaptureDevice;
    if (audioCaptureDevice != [v4 audioCaptureDevice])
    {
      goto LABEL_41;
    }

    has = self->_has;
    v25 = v4[76];
  }

  v27 = (*&has >> 2) & 1;
  if (v27 != ((v25 >> 2) & 1))
  {
    goto LABEL_41;
  }

  if (v27)
  {
    locale = self->_locale;
    if (locale != [v4 locale])
    {
      goto LABEL_41;
    }

    has = self->_has;
    v25 = v4[76];
  }

  v29 = (*&has >> 3) & 1;
  if (v29 != ((v25 >> 3) & 1))
  {
    goto LABEL_41;
  }

  if (v29)
  {
    asrTask = self->_asrTask;
    if (asrTask != [v4 asrTask])
    {
      goto LABEL_41;
    }
  }

  v5 = [(DonationSchemaSDSpeechSampleDonation *)self transcription];
  v6 = [v4 transcription];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v31 = [(DonationSchemaSDSpeechSampleDonation *)self transcription];
  if (v31)
  {
    v32 = v31;
    v33 = [(DonationSchemaSDSpeechSampleDonation *)self transcription];
    v34 = [v4 transcription];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(DonationSchemaSDSpeechSampleDonation *)self expected];
  v6 = [v4 expected];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_40:

    goto LABEL_41;
  }

  v36 = [(DonationSchemaSDSpeechSampleDonation *)self expected];
  if (v36)
  {
    v37 = v36;
    v38 = [(DonationSchemaSDSpeechSampleDonation *)self expected];
    v39 = [v4 expected];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v43 = (*&self->_has >> 4) & 1;
  if (v43 == ((v4[76] >> 4) & 1))
  {
    if (!v43 || (evaluation = self->_evaluation, evaluation == [v4 evaluation]))
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

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(DonationSchemaSDSpeechSampleDonation *)self donationID];

  if (v5)
  {
    v6 = [(DonationSchemaSDSpeechSampleDonation *)self donationID];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(DonationSchemaSDSpeechSampleDonation *)self donorBundleID];

  if (v7)
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
  v14 = [(DonationSchemaSDSpeechSampleDonation *)self transcription];

  if (v14)
  {
    PBDataWriterWriteStringField();
  }

  v15 = [(DonationSchemaSDSpeechSampleDonation *)self expected];

  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasEvaluation:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAsrTask:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLocale:(BOOL)a3
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

- (void)setHasAudioCaptureDevice:(BOOL)a3
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

- (int)attributesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_attributes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addAttributes:(int)a3
{
  v3 = *&a3;
  attributes = self->_attributes;
  if (!attributes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_attributes;
    self->_attributes = v6;

    attributes = self->_attributes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)attributes addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = DonationSchemaSDSpeechSampleDonation;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(DonationSchemaSDSpeechSampleDonation *)self donationID:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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