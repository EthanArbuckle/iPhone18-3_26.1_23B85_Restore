@interface ASRSchemaASRManualEditMetricClassified
- (ASRSchemaASRManualEditMetricClassified)initWithDictionary:(id)dictionary;
- (ASRSchemaASRManualEditMetricClassified)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumInsertions:(BOOL)insertions;
- (void)setHasNumSubstitutions:(BOOL)substitutions;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRManualEditMetricClassified

- (ASRSchemaASRManualEditMetricClassified)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ASRSchemaASRManualEditMetricClassified;
  v5 = [(ASRSchemaASRManualEditMetricClassified *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalAsrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRManualEditMetricClassified *)v5 setOriginalAsrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"numDeletions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRManualEditMetricClassified setNumDeletions:](v5, "setNumDeletions:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numInsertions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRManualEditMetricClassified setNumInsertions:](v5, "setNumInsertions:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"numSubstitutions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRManualEditMetricClassified setNumSubstitutions:](v5, "setNumSubstitutions:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (ASRSchemaASRManualEditMetricClassified)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRManualEditMetricClassified *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRManualEditMetricClassified *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRManualEditMetricClassified numDeletions](self, "numDeletions")}];
    [dictionary setObject:v8 forKeyedSubscript:@"numDeletions"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRManualEditMetricClassified numInsertions](self, "numInsertions")}];
  [dictionary setObject:v9 forKeyedSubscript:@"numInsertions"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRManualEditMetricClassified numSubstitutions](self, "numSubstitutions")}];
    [dictionary setObject:v5 forKeyedSubscript:@"numSubstitutions"];
  }

LABEL_5:
  if (self->_originalAsrId)
  {
    originalAsrId = [(ASRSchemaASRManualEditMetricClassified *)self originalAsrId];
    dictionaryRepresentation = [originalAsrId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalAsrId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalAsrId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalAsrId hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_numDeletions;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_numInsertions;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_numSubstitutions;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  originalAsrId = [(ASRSchemaASRManualEditMetricClassified *)self originalAsrId];
  originalAsrId2 = [equalCopy originalAsrId];
  v7 = originalAsrId2;
  if ((originalAsrId != 0) == (originalAsrId2 == 0))
  {

    goto LABEL_20;
  }

  originalAsrId3 = [(ASRSchemaASRManualEditMetricClassified *)self originalAsrId];
  if (originalAsrId3)
  {
    v9 = originalAsrId3;
    originalAsrId4 = [(ASRSchemaASRManualEditMetricClassified *)self originalAsrId];
    originalAsrId5 = [equalCopy originalAsrId];
    v12 = [originalAsrId4 isEqual:originalAsrId5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (*&has)
  {
    numDeletions = self->_numDeletions;
    if (numDeletions != [equalCopy numDeletions])
    {
      goto LABEL_20;
    }

    has = self->_has;
    v14 = equalCopy[28];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    numInsertions = self->_numInsertions;
    if (numInsertions == [equalCopy numInsertions])
    {
      has = self->_has;
      v14 = equalCopy[28];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    numSubstitutions = self->_numSubstitutions;
    if (numSubstitutions != [equalCopy numSubstitutions])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  originalAsrId = [(ASRSchemaASRManualEditMetricClassified *)self originalAsrId];

  if (originalAsrId)
  {
    originalAsrId2 = [(ASRSchemaASRManualEditMetricClassified *)self originalAsrId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (void)setHasNumSubstitutions:(BOOL)substitutions
{
  if (substitutions)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumInsertions:(BOOL)insertions
{
  if (insertions)
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
  v9.super_class = ASRSchemaASRManualEditMetricClassified;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASRManualEditMetricClassified *)self originalAsrId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASRSchemaASRManualEditMetricClassified *)self deleteOriginalAsrId];
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