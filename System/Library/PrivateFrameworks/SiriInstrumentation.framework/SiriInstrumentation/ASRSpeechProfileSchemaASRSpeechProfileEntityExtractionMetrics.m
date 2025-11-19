@interface ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics
- (ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics)initWithDictionary:(id)a3;
- (ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsExtractionSetupSuccessful:(BOOL)a3;
- (void)setHasNumEntitiesContainingExtractions:(BOOL)a3;
- (void)setHasNumEntitiesExtracted:(BOOL)a3;
- (void)setHasNumEntitiesExtractionAttempted:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics

- (ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics;
  v5 = [(ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isExtractionIngestionEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics setIsExtractionIngestionEnabled:](v5, "setIsExtractionIngestionEnabled:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isExtractionSetupSuccessful"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics setIsExtractionSetupSuccessful:](v5, "setIsExtractionSetupSuccessful:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"numEntitiesExtractionAttempted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics setNumEntitiesExtractionAttempted:](v5, "setNumEntitiesExtractionAttempted:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"numEntitiesContainingExtractions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics setNumEntitiesContainingExtractions:](v5, "setNumEntitiesContainingExtractions:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"numEntitiesExtracted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics setNumEntitiesExtracted:](v5, "setNumEntitiesExtracted:", [v10 unsignedIntValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics isExtractionIngestionEnabled](self, "isExtractionIngestionEnabled")}];
    [v3 setObject:v7 forKeyedSubscript:@"isExtractionIngestionEnabled"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics isExtractionSetupSuccessful](self, "isExtractionSetupSuccessful")}];
  [v3 setObject:v8 forKeyedSubscript:@"isExtractionSetupSuccessful"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics numEntitiesContainingExtractions](self, "numEntitiesContainingExtractions")}];
  [v3 setObject:v9 forKeyedSubscript:@"numEntitiesContainingExtractions"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics numEntitiesExtracted](self, "numEntitiesExtracted")}];
  [v3 setObject:v10 forKeyedSubscript:@"numEntitiesExtracted"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSpeechProfileSchemaASRSpeechProfileEntityExtractionMetrics numEntitiesExtractionAttempted](self, "numEntitiesExtractionAttempted")}];
    [v3 setObject:v5 forKeyedSubscript:@"numEntitiesExtractionAttempted"];
  }

LABEL_7:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isExtractionIngestionEnabled;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_isExtractionSetupSuccessful;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_numEntitiesExtractionAttempted;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_numEntitiesContainingExtractions;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_numEntitiesExtracted;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    isExtractionIngestionEnabled = self->_isExtractionIngestionEnabled;
    if (isExtractionIngestionEnabled != [v4 isExtractionIngestionEnabled])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    isExtractionSetupSuccessful = self->_isExtractionSetupSuccessful;
    if (isExtractionSetupSuccessful != [v4 isExtractionSetupSuccessful])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    numEntitiesExtractionAttempted = self->_numEntitiesExtractionAttempted;
    if (numEntitiesExtractionAttempted != [v4 numEntitiesExtractionAttempted])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    numEntitiesContainingExtractions = self->_numEntitiesContainingExtractions;
    if (numEntitiesContainingExtractions == [v4 numEntitiesContainingExtractions])
    {
      has = self->_has;
      v6 = v4[24];
      goto LABEL_18;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    numEntitiesExtracted = self->_numEntitiesExtracted;
    if (numEntitiesExtracted != [v4 numEntitiesExtracted])
    {
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
}

- (void)setHasNumEntitiesExtracted:(BOOL)a3
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

- (void)setHasNumEntitiesContainingExtractions:(BOOL)a3
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

- (void)setHasNumEntitiesExtractionAttempted:(BOOL)a3
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

- (void)setHasIsExtractionSetupSuccessful:(BOOL)a3
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