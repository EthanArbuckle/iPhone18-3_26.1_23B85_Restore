@interface EXPSiriSchemaEXPServerCounterfactualTriggered
- (BOOL)isEqual:(id)a3;
- (EXPSiriSchemaEXPServerCounterfactualTriggered)initWithDictionary:(id)a3;
- (EXPSiriSchemaEXPServerCounterfactualTriggered)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDiffOutcome:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation EXPSiriSchemaEXPServerCounterfactualTriggered

- (EXPSiriSchemaEXPServerCounterfactualTriggered)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = EXPSiriSchemaEXPServerCounterfactualTriggered;
  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"pegasusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(EXPSiriSchemaEXPServerCounterfactualTriggered *)v5 setPegasusId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(EXPSiriSchemaEXPServerCounterfactualTriggered *)v5 setResultCandidateId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"codepathId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(EXPSiriSchemaEXPServerCounterfactualTriggered *)v5 setCodepathId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"isCounterfactualDifferent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPServerCounterfactualTriggered setIsCounterfactualDifferent:](v5, "setIsCounterfactualDifferent:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"diffOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPServerCounterfactualTriggered setDiffOutcome:](v5, "setDiffOutcome:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"treatmentSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[EXPSiriSchemaEXPSiriPegasusResponseSummary alloc] initWithDictionary:v14];
      [(EXPSiriSchemaEXPServerCounterfactualTriggered *)v5 setTreatmentSummary:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"counterfactualSummary"];
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

- (EXPSiriSchemaEXPServerCounterfactualTriggered)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self dictionaryRepresentation];
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
  if (self->_codepathId)
  {
    v4 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"codepathId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"codepathId"];
    }
  }

  if (self->_counterfactualSummary)
  {
    v7 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"counterfactualSummary"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"counterfactualSummary"];
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

    [v3 setObject:v12 forKeyedSubscript:@"diffOutcome"];
    has = self->_has;
  }

  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[EXPSiriSchemaEXPServerCounterfactualTriggered isCounterfactualDifferent](self, "isCounterfactualDifferent")}];
    [v3 setObject:v13 forKeyedSubscript:@"isCounterfactualDifferent"];
  }

  if (self->_pegasusId)
  {
    v14 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"pegasusId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"pegasusId"];
    }
  }

  if (self->_resultCandidateId)
  {
    v17 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self resultCandidateId];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_treatmentSummary)
  {
    v19 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"treatmentSummary"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"treatmentSummary"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
  v6 = [v4 pegasusId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v7 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
  if (v7)
  {
    v8 = v7;
    v9 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
    v10 = [v4 pegasusId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v12 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self resultCandidateId];
  if (v12)
  {
    v13 = v12;
    v14 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self resultCandidateId];
    v15 = [v4 resultCandidateId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
  v6 = [v4 codepathId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v17 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
  if (v17)
  {
    v18 = v17;
    v19 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
    v20 = [v4 codepathId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = v4[56];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    isCounterfactualDifferent = self->_isCounterfactualDifferent;
    if (isCounterfactualDifferent != [v4 isCounterfactualDifferent])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v23 = v4[56];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v25)
  {
    diffOutcome = self->_diffOutcome;
    if (diffOutcome != [v4 diffOutcome])
    {
      goto LABEL_34;
    }
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
  v6 = [v4 treatmentSummary];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v27 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
  if (v27)
  {
    v28 = v27;
    v29 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
    v30 = [v4 treatmentSummary];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
  v6 = [v4 counterfactualSummary];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  v32 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
  if (!v32)
  {

LABEL_37:
    v37 = 1;
    goto LABEL_35;
  }

  v33 = v32;
  v34 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
  v35 = [v4 counterfactualSummary];
  v36 = [v34 isEqual:v35];

  if (v36)
  {
    goto LABEL_37;
  }

LABEL_34:
  v37 = 0;
LABEL_35:

  return v37;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];

  if (v4)
  {
    v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self resultCandidateId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];

  if (v7)
  {
    v8 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
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

  v10 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];

  if (v10)
  {
    v11 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];

  v13 = v15;
  if (v12)
  {
    v14 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (void)setHasDiffOutcome:(BOOL)a3
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
  v19.receiver = self;
  v19.super_class = EXPSiriSchemaEXPServerCounterfactualTriggered;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self pegasusId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self deletePegasusId];
  }

  v9 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self codepathId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self deleteCodepathId];
  }

  v12 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self treatmentSummary];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self deleteTreatmentSummary];
  }

  v15 = [(EXPSiriSchemaEXPServerCounterfactualTriggered *)self counterfactualSummary];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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