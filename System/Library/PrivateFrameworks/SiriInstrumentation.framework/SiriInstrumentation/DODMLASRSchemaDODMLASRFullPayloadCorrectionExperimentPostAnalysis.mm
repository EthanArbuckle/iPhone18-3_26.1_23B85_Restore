@interface DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasTrueRegressions:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis

- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis;
  v5 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"asrOutputToUserEdit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DODMLASRSchemaDODMLASRAlignmentInfo alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)v5 setAsrOutputToUserEdit:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"asrFullPayloadCorrectedToUserEdit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DODMLASRSchemaDODMLASRAlignmentInfo alloc] initWithDictionary:v8];
      [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)v5 setAsrFullPayloadCorrectedToUserEdit:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"trueCorrections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis setTrueCorrections:](v5, "setTrueCorrections:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"trueRegressions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis setTrueRegressions:](v5, "setTrueRegressions:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self dictionaryRepresentation];
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
  if (self->_asrFullPayloadCorrectedToUserEdit)
  {
    v4 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"asrFullPayloadCorrectedToUserEdit"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"asrFullPayloadCorrectedToUserEdit"];
    }
  }

  if (self->_asrOutputToUserEdit)
  {
    v7 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"asrOutputToUserEdit"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"asrOutputToUserEdit"];
    }
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis trueCorrections](self, "trueCorrections")}];
    [v3 setObject:v11 forKeyedSubscript:@"trueCorrections"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis trueRegressions](self, "trueRegressions")}];
    [v3 setObject:v12 forKeyedSubscript:@"trueRegressions"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self->_asrOutputToUserEdit hash];
  v4 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self->_asrFullPayloadCorrectedToUserEdit hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_trueCorrections;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_trueRegressions;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
  v6 = [v4 asrOutputToUserEdit];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
  if (v7)
  {
    v8 = v7;
    v9 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
    v10 = [v4 asrOutputToUserEdit];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
  v6 = [v4 asrFullPayloadCorrectedToUserEdit];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
  if (v12)
  {
    v13 = v12;
    v14 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
    v15 = [v4 asrFullPayloadCorrectedToUserEdit];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      trueCorrections = self->_trueCorrections;
      if (trueCorrections != [v4 trueCorrections])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (trueRegressions = self->_trueRegressions, trueRegressions == [v4 trueRegressions]))
      {
        v17 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];

  if (v4)
  {
    v5 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];

  if (v6)
  {
    v7 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v9 = v10;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v9 = v10;
  }
}

- (void)setHasTrueRegressions:(BOOL)a3
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
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self deleteAsrOutputToUserEdit];
  }

  v9 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self deleteAsrFullPayloadCorrectedToUserEdit];
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