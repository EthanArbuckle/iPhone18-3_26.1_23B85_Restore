@interface SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted)initWithDictionary:(id)dictionary;
- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEndSampleCount:(BOOL)count;
- (void)setHasHasSpeechDetected:(BOOL)detected;
- (void)setHasStartSampleCount:(BOOL)count;
- (void)setHasTopScoreForUtterance:(BOOL)utterance;
- (void)writeTo:(id)to;
@end

@implementation SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted;
  v5 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pageNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted setPageNumber:](v5, "setPageNumber:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"phraseId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)v5 setPhraseId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"topScoreForUtterance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)v5 setTopScoreForUtterance:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"startSampleCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted setStartSampleCount:](v5, "setStartSampleCount:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"endSampleCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted setEndSampleCount:](v5, "setEndSampleCount:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"hasSpeechDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted setHasSpeechDetected:](v5, "setHasSpeechDetected:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)self dictionaryRepresentation];
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
  v4 = *(&self->_hasSpeechDetected + 1);
  if ((v4 & 8) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted endSampleCount](self, "endSampleCount")}];
    [dictionary setObject:v13 forKeyedSubscript:@"endSampleCount"];

    v4 = *(&self->_hasSpeechDetected + 1);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_hasSpeechDetected + 1) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted hasSpeechDetected](self, "hasSpeechDetected")}];
  [dictionary setObject:v14 forKeyedSubscript:@"hasSpeechDetected"];

  if (*(&self->_hasSpeechDetected + 1))
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted pageNumber](self, "pageNumber")}];
    [dictionary setObject:v5 forKeyedSubscript:@"pageNumber"];
  }

LABEL_5:
  if (self->_phraseId)
  {
    phraseId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)self phraseId];
    v7 = [phraseId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"phraseId"];
  }

  v8 = *(&self->_hasSpeechDetected + 1);
  if ((v8 & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted startSampleCount](self, "startSampleCount")}];
    [dictionary setObject:v9 forKeyedSubscript:@"startSampleCount"];

    v8 = *(&self->_hasSpeechDetected + 1);
  }

  if ((v8 & 2) != 0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)self topScoreForUtterance];
    v11 = [v10 numberWithFloat:?];
    [dictionary setObject:v11 forKeyedSubscript:@"topScoreForUtterance"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_hasSpeechDetected + 1))
  {
    v3 = 2654435761 * self->_pageNumber;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_phraseId hash];
  if ((*(&self->_hasSpeechDetected + 1) & 2) != 0)
  {
    topScoreForUtterance = self->_topScoreForUtterance;
    if (topScoreForUtterance >= 0.0)
    {
      v9 = topScoreForUtterance;
    }

    else
    {
      v9 = -topScoreForUtterance;
    }

    *v5.i64 = floor(v9 + 0.5);
    v10 = (v9 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v7 += v10;
      }
    }

    else
    {
      v7 -= fabs(v10);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*(&self->_hasSpeechDetected + 1) & 4) == 0)
  {
    v12 = 0;
    if ((*(&self->_hasSpeechDetected + 1) & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v13 = 0;
    if ((*(&self->_hasSpeechDetected + 1) & 0x10) != 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v14 = 0;
    return v4 ^ v3 ^ v7 ^ v12 ^ v13 ^ v14;
  }

  v12 = 2654435761 * self->_startSampleCount;
  if ((*(&self->_hasSpeechDetected + 1) & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v13 = 2654435761 * self->_endSampleCount;
  if ((*(&self->_hasSpeechDetected + 1) & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v14 = 2654435761 * self->_hasSpeechDetected;
  return v4 ^ v3 ^ v7 ^ v12 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  if (*(&self->_hasSpeechDetected + 1) != (equalCopy[37] & 1))
  {
    goto LABEL_27;
  }

  if (*(&self->_hasSpeechDetected + 1))
  {
    pageNumber = self->_pageNumber;
    if (pageNumber != [equalCopy pageNumber])
    {
      goto LABEL_27;
    }
  }

  phraseId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)self phraseId];
  phraseId2 = [equalCopy phraseId];
  v8 = phraseId2;
  if ((phraseId != 0) == (phraseId2 == 0))
  {

    goto LABEL_27;
  }

  phraseId3 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)self phraseId];
  if (phraseId3)
  {
    v10 = phraseId3;
    phraseId4 = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)self phraseId];
    phraseId5 = [equalCopy phraseId];
    v13 = [phraseId4 isEqual:phraseId5];

    if (!v13)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v14 = *(&self->_hasSpeechDetected + 1);
  v15 = (v14 >> 1) & 1;
  v16 = equalCopy[37];
  if (v15 != ((v16 >> 1) & 1))
  {
LABEL_27:
    v25 = 0;
    goto LABEL_28;
  }

  if (v15)
  {
    topScoreForUtterance = self->_topScoreForUtterance;
    [equalCopy topScoreForUtterance];
    if (topScoreForUtterance != v18)
    {
      goto LABEL_27;
    }

    v14 = *(&self->_hasSpeechDetected + 1);
    v16 = equalCopy[37];
  }

  v19 = (v14 >> 2) & 1;
  if (v19 != ((v16 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v19)
  {
    startSampleCount = self->_startSampleCount;
    if (startSampleCount != [equalCopy startSampleCount])
    {
      goto LABEL_27;
    }

    v14 = *(&self->_hasSpeechDetected + 1);
    v16 = equalCopy[37];
  }

  v21 = (v14 >> 3) & 1;
  if (v21 != ((v16 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v21)
  {
    endSampleCount = self->_endSampleCount;
    if (endSampleCount == [equalCopy endSampleCount])
    {
      v14 = *(&self->_hasSpeechDetected + 1);
      v16 = equalCopy[37];
      goto LABEL_23;
    }

    goto LABEL_27;
  }

LABEL_23:
  v23 = (v14 >> 4) & 1;
  if (v23 != ((v16 >> 4) & 1))
  {
    goto LABEL_27;
  }

  if (v23)
  {
    hasSpeechDetected = self->_hasSpeechDetected;
    if (hasSpeechDetected != [equalCopy hasSpeechDetected])
    {
      goto LABEL_27;
    }
  }

  v25 = 1;
LABEL_28:

  return v25;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*(&self->_hasSpeechDetected + 1))
  {
    PBDataWriterWriteUint32Field();
  }

  phraseId = [(SIRISETUPSchemaSIRISETUPPHSEnrollmentUtteranceCompleted *)self phraseId];

  if (phraseId)
  {
    PBDataWriterWriteStringField();
  }

  v5 = *(&self->_hasSpeechDetected + 1);
  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    v5 = *(&self->_hasSpeechDetected + 1);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(&self->_hasSpeechDetected + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  v5 = *(&self->_hasSpeechDetected + 1);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  if ((*(&self->_hasSpeechDetected + 1) & 0x10) != 0)
  {
LABEL_9:
    PBDataWriterWriteBOOLField();
  }

LABEL_10:
}

- (void)setHasHasSpeechDetected:(BOOL)detected
{
  if (detected)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasSpeechDetected + 1) = *(&self->_hasSpeechDetected + 1) & 0xEF | v3;
}

- (void)setHasEndSampleCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasSpeechDetected + 1) = *(&self->_hasSpeechDetected + 1) & 0xF7 | v3;
}

- (void)setHasStartSampleCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasSpeechDetected + 1) = *(&self->_hasSpeechDetected + 1) & 0xFB | v3;
}

- (void)setHasTopScoreForUtterance:(BOOL)utterance
{
  if (utterance)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasSpeechDetected + 1) = *(&self->_hasSpeechDetected + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end