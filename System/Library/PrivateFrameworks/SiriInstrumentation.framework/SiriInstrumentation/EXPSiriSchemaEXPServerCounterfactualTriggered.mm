@interface EXPSiriSchemaEXPServerCounterfactualTriggered
- (BOOL)isEqual:(id)equal;
- (EXPSiriSchemaEXPServerCounterfactualTriggered)initWithDictionary:(id)dictionary;
- (EXPSiriSchemaEXPServerCounterfactualTriggered)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDiffOutcome:(BOOL)outcome;
- (void)writeTo:(id)to;
@end

@implementation EXPSiriSchemaEXPServerCounterfactualTriggered

- (EXPSiriSchemaEXPServerCounterfactualTriggered)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = EXPSiriSchemaEXPServerCounterfactualTriggered;
  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pegasusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(EXPSiriSchemaEXPServerCounterfactualTriggered *)v5 setPegasusId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(EXPSiriSchemaEXPServerCounterfactualTriggered *)v5 setResultCandidateId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"codepathId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(EXPSiriSchemaEXPServerCounterfactualTriggered *)v5 setCodepathId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isCounterfactualDifferent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPServerCounterfactualTriggered setIsCounterfactualDifferent:](v5, "setIsCounterfactualDifferent:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"diffOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPServerCounterfactualTriggered setDiffOutcome:](v5, "setDiffOutcome:", [v13 intValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"treatmentSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[EXPSiriSchemaEXPSiriPegasusResponseSummary alloc] initWithDictionary:v14];
      [(EXPSiriSchemaEXPServerCounterfactualTriggered *)v5 setTreatmentSummary:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"counterfactualSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[EXPSiriSchemaEXPSiriPegasusResponseSummary alloc] initWithDictionary:v16];
      [(EXPSiriSchemaEXPServerCounterfactualTriggered *)v5 setCounterfactualSummary:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (EXPSiriSchemaEXPServerCounterfactualTriggered)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self dictionaryRepresentation];
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
  if (self->_codepathId)
  {
    codepathId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
    dictionaryRepresentation = [codepathId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"codepathId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"codepathId"];
    }
  }

  if (self->_counterfactualSummary)
  {
    counterfactualSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
    dictionaryRepresentation2 = [counterfactualSummary dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"counterfactualSummary"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"counterfactualSummary"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self diffOutcome]- 1;
    if (v11 > 0x15)
    {
      v12 = @"EXPSIRIDIFFOUTCOME_UNKNOWN";
    }

    else
    {
      v12 = off_1E78D4940[v11];
    }

    [dictionary setObject:v12 forKeyedSubscript:@"diffOutcome"];
    has = self->_has;
  }

  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[EXPSiriSchemaEXPServerCounterfactualTriggered isCounterfactualDifferent](self, "isCounterfactualDifferent")}];
    [dictionary setObject:v13 forKeyedSubscript:@"isCounterfactualDifferent"];
  }

  if (self->_pegasusId)
  {
    pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
    dictionaryRepresentation3 = [pegasusId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"pegasusId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"pegasusId"];
    }
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self resultCandidateId];
    v18 = [resultCandidateId copy];
    [dictionary setObject:v18 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_treatmentSummary)
  {
    treatmentSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
    dictionaryRepresentation4 = [treatmentSummary dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"treatmentSummary"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"treatmentSummary"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_pegasusId hash];
  v4 = [(NSString *)self->_resultCandidateId hash];
  v5 = [(SISchemaUUID *)self->_codepathId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_isCounterfactualDifferent;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_diffOutcome;
LABEL_6:
  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self->_treatmentSummary hash];
  return v8 ^ v9 ^ [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self->_counterfactualSummary hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
  pegasusId2 = [equalCopy pegasusId];
  if ((pegasusId != 0) == (pegasusId2 == 0))
  {
    goto LABEL_33;
  }

  pegasusId3 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
  if (pegasusId3)
  {
    v8 = pegasusId3;
    pegasusId4 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
    pegasusId5 = [equalCopy pegasusId];
    v11 = [pegasusId4 isEqual:pegasusId5];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self resultCandidateId];
  pegasusId2 = [equalCopy resultCandidateId];
  if ((pegasusId != 0) == (pegasusId2 == 0))
  {
    goto LABEL_33;
  }

  resultCandidateId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self resultCandidateId];
  if (resultCandidateId)
  {
    v13 = resultCandidateId;
    resultCandidateId2 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
  pegasusId2 = [equalCopy codepathId];
  if ((pegasusId != 0) == (pegasusId2 == 0))
  {
    goto LABEL_33;
  }

  codepathId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
  if (codepathId)
  {
    v18 = codepathId;
    codepathId2 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
    codepathId3 = [equalCopy codepathId];
    v21 = [codepathId2 isEqual:codepathId3];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = equalCopy[56];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    isCounterfactualDifferent = self->_isCounterfactualDifferent;
    if (isCounterfactualDifferent != [equalCopy isCounterfactualDifferent])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v23 = equalCopy[56];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v25)
  {
    diffOutcome = self->_diffOutcome;
    if (diffOutcome != [equalCopy diffOutcome])
    {
      goto LABEL_34;
    }
  }

  pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
  pegasusId2 = [equalCopy treatmentSummary];
  if ((pegasusId != 0) == (pegasusId2 == 0))
  {
    goto LABEL_33;
  }

  treatmentSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
  if (treatmentSummary)
  {
    v28 = treatmentSummary;
    treatmentSummary2 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
    treatmentSummary3 = [equalCopy treatmentSummary];
    v31 = [treatmentSummary2 isEqual:treatmentSummary3];

    if (!v31)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
  pegasusId2 = [equalCopy counterfactualSummary];
  if ((pegasusId != 0) == (pegasusId2 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  counterfactualSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
  if (!counterfactualSummary)
  {

LABEL_37:
    v37 = 1;
    goto LABEL_35;
  }

  v33 = counterfactualSummary;
  counterfactualSummary2 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
  counterfactualSummary3 = [equalCopy counterfactualSummary];
  v36 = [counterfactualSummary2 isEqual:counterfactualSummary3];

  if (v36)
  {
    goto LABEL_37;
  }

LABEL_34:
  v37 = 0;
LABEL_35:

  return v37;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];

  if (pegasusId)
  {
    pegasusId2 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }

  codepathId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];

  if (codepathId)
  {
    codepathId2 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  treatmentSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];

  if (treatmentSummary)
  {
    treatmentSummary2 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
    PBDataWriterWriteSubmessage();
  }

  counterfactualSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];

  v13 = toCopy;
  if (counterfactualSummary)
  {
    counterfactualSummary2 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (void)setHasDiffOutcome:(BOOL)outcome
{
  if (outcome)
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
  v19.receiver = self;
  v19.super_class = EXPSiriSchemaEXPServerCounterfactualTriggered;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
  v7 = [pegasusId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self deletePegasusId];
  }

  codepathId = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
  v10 = [codepathId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self deleteCodepathId];
  }

  treatmentSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
  v13 = [treatmentSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self deleteTreatmentSummary];
  }

  counterfactualSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
  v16 = [counterfactualSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self deleteCounterfactualSummary];
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