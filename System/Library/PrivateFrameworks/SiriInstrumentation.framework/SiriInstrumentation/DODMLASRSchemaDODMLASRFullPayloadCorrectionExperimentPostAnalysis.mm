@interface DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasTrueRegressions:(BOOL)regressions;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis

- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis;
  v5 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"asrOutputToUserEdit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DODMLASRSchemaDODMLASRAlignmentInfo alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)v5 setAsrOutputToUserEdit:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"asrFullPayloadCorrectedToUserEdit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DODMLASRSchemaDODMLASRAlignmentInfo alloc] initWithDictionary:v8];
      [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)v5 setAsrFullPayloadCorrectedToUserEdit:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"trueCorrections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis setTrueCorrections:](v5, "setTrueCorrections:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"trueRegressions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis setTrueRegressions:](v5, "setTrueRegressions:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self dictionaryRepresentation];
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
  if (self->_asrFullPayloadCorrectedToUserEdit)
  {
    asrFullPayloadCorrectedToUserEdit = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
    dictionaryRepresentation = [asrFullPayloadCorrectedToUserEdit dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asrFullPayloadCorrectedToUserEdit"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asrFullPayloadCorrectedToUserEdit"];
    }
  }

  if (self->_asrOutputToUserEdit)
  {
    asrOutputToUserEdit = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
    dictionaryRepresentation2 = [asrOutputToUserEdit dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"asrOutputToUserEdit"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"asrOutputToUserEdit"];
    }
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis trueCorrections](self, "trueCorrections")}];
    [dictionary setObject:v11 forKeyedSubscript:@"trueCorrections"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis trueRegressions](self, "trueRegressions")}];
    [dictionary setObject:v12 forKeyedSubscript:@"trueRegressions"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  asrOutputToUserEdit = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
  asrOutputToUserEdit2 = [equalCopy asrOutputToUserEdit];
  if ((asrOutputToUserEdit != 0) == (asrOutputToUserEdit2 == 0))
  {
    goto LABEL_11;
  }

  asrOutputToUserEdit3 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
  if (asrOutputToUserEdit3)
  {
    v8 = asrOutputToUserEdit3;
    asrOutputToUserEdit4 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
    asrOutputToUserEdit5 = [equalCopy asrOutputToUserEdit];
    v11 = [asrOutputToUserEdit4 isEqual:asrOutputToUserEdit5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  asrOutputToUserEdit = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
  asrOutputToUserEdit2 = [equalCopy asrFullPayloadCorrectedToUserEdit];
  if ((asrOutputToUserEdit != 0) == (asrOutputToUserEdit2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  asrFullPayloadCorrectedToUserEdit = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
  if (asrFullPayloadCorrectedToUserEdit)
  {
    v13 = asrFullPayloadCorrectedToUserEdit;
    asrFullPayloadCorrectedToUserEdit2 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
    asrFullPayloadCorrectedToUserEdit3 = [equalCopy asrFullPayloadCorrectedToUserEdit];
    v16 = [asrFullPayloadCorrectedToUserEdit2 isEqual:asrFullPayloadCorrectedToUserEdit3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      trueCorrections = self->_trueCorrections;
      if (trueCorrections != [equalCopy trueCorrections])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (trueRegressions = self->_trueRegressions, trueRegressions == [equalCopy trueRegressions]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  asrOutputToUserEdit = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];

  if (asrOutputToUserEdit)
  {
    asrOutputToUserEdit2 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
    PBDataWriterWriteSubmessage();
  }

  asrFullPayloadCorrectedToUserEdit = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];

  if (asrFullPayloadCorrectedToUserEdit)
  {
    asrFullPayloadCorrectedToUserEdit2 = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v9 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v9 = toCopy;
  }
}

- (void)setHasTrueRegressions:(BOOL)regressions
{
  if (regressions)
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
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  asrOutputToUserEdit = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrOutputToUserEdit];
  v7 = [asrOutputToUserEdit applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self deleteAsrOutputToUserEdit];
  }

  asrFullPayloadCorrectedToUserEdit = [(DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis *)self asrFullPayloadCorrectedToUserEdit];
  v10 = [asrFullPayloadCorrectedToUserEdit applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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