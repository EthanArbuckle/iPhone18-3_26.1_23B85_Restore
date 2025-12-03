@interface EXPSiriSchemaEXPServerCounterfactualTriggeredTier1
- (BOOL)isEqual:(id)equal;
- (EXPSiriSchemaEXPServerCounterfactualTriggeredTier1)initWithDictionary:(id)dictionary;
- (EXPSiriSchemaEXPServerCounterfactualTriggeredTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAllocation:(id)allocation;
- (void)addCounterfactualAllocation:(id)allocation;
- (void)setHasCompareRankingAtK:(BOOL)k;
- (void)setHasDiffOutcome:(BOOL)outcome;
- (void)setHasKValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation EXPSiriSchemaEXPServerCounterfactualTriggeredTier1

- (EXPSiriSchemaEXPServerCounterfactualTriggeredTier1)initWithDictionary:(id)dictionary
{
  v53 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = EXPSiriSchemaEXPServerCounterfactualTriggeredTier1;
  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)&v50 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"allocation"];
    objc_opt_class();
    v41 = v6;
    if (objc_opt_isKindOfClass())
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v47;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v47 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[EXPSchemaEXPTrialExperiment alloc] initWithDictionary:v12];
              [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 addAllocation:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v46 objects:v52 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"codepathId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 setCodepathId:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"pegasusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 setPegasusId:v17];
    }

    v39 = v16;
    v40 = v14;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"counterfactualAllocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v43;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v43 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v42 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[EXPSchemaEXPTrialExperiment alloc] initWithDictionary:v24];
              [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 addCounterfactualAllocation:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v42 objects:v51 count:16];
        }

        while (v21);
      }
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"isCounterfactualDifferent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 setIsCounterfactualDifferent:](v5, "setIsCounterfactualDifferent:", [v26 BOOLValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"compareRankingAtK"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v27 floatValue];
      [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 setCompareRankingAtK:?];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:{@"kValue", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 setKValue:](v5, "setKValue:", [v28 longLongValue]);
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"diffOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 setDiffOutcome:](v5, "setDiffOutcome:", [v29 intValue]);
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"treatmentSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[EXPSiriSchemaEXPSiriPegasusResponseSummary alloc] initWithDictionary:v30];
      [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 setTreatmentSummary:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"counterfactualSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[EXPSiriSchemaEXPSiriPegasusResponseSummary alloc] initWithDictionary:v32];
      [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 setCounterfactualSummary:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v34 copy];
      [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 setResultCandidateId:v35];
    }

    v36 = v5;
  }

  return v5;
}

- (EXPSiriSchemaEXPServerCounterfactualTriggeredTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self dictionaryRepresentation];
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
  v52 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_allocations count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v5 = self->_allocations;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v47;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v47 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v46 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"allocation"];
  }

  if (self->_codepathId)
  {
    codepathId = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
    dictionaryRepresentation2 = [codepathId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"codepathId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"codepathId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = MEMORY[0x1E696AD98];
    [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self compareRankingAtK];
    v16 = [v15 numberWithFloat:?];
    [dictionary setObject:v16 forKeyedSubscript:@"compareRankingAtK"];
  }

  if ([(NSArray *)self->_counterfactualAllocations count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v18 = self->_counterfactualAllocations;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation3 = [*(*(&v42 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v20);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"counterfactualAllocation"];
  }

  if (self->_counterfactualSummary)
  {
    counterfactualSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
    dictionaryRepresentation4 = [counterfactualSummary dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"counterfactualSummary"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"counterfactualSummary"];
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v32 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self diffOutcome]- 1;
    if (v32 > 0x15)
    {
      v33 = @"EXPSIRIDIFFOUTCOME_UNKNOWN";
    }

    else
    {
      v33 = off_1E78D49F0[v32];
    }

    [dictionary setObject:v33 forKeyedSubscript:@"diffOutcome"];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_39:
      if ((has & 4) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_39;
  }

  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 isCounterfactualDifferent](self, "isCounterfactualDifferent")}];
  [dictionary setObject:v34 forKeyedSubscript:@"isCounterfactualDifferent"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_40:
    v29 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 kValue](self, "kValue")}];
    [dictionary setObject:v29 forKeyedSubscript:@"kValue"];
  }

LABEL_41:
  if (self->_pegasusId)
  {
    pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
    dictionaryRepresentation5 = [pegasusId dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"pegasusId"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"pegasusId"];
    }
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self resultCandidateId];
    v37 = [resultCandidateId copy];
    [dictionary setObject:v37 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_treatmentSummary)
  {
    treatmentSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
    dictionaryRepresentation6 = [treatmentSummary dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"treatmentSummary"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"treatmentSummary"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_allocations hash];
  v4 = [(SISchemaUUID *)self->_codepathId hash];
  v5 = [(SISchemaUUID *)self->_pegasusId hash];
  v6 = [(NSArray *)self->_counterfactualAllocations hash];
  if (*&self->_has)
  {
    v9 = 2654435761 * self->_isCounterfactualDifferent;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v9 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  compareRankingAtK = self->_compareRankingAtK;
  if (compareRankingAtK >= 0.0)
  {
    v11 = compareRankingAtK;
  }

  else
  {
    v11 = -compareRankingAtK;
  }

  *v7.i64 = floor(v11 + 0.5);
  v12 = (v11 - *v7.i64) * 1.84467441e19;
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v8, v7).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_10:
  if ((*&self->_has & 4) != 0)
  {
    v15 = 2654435761 * self->_kValue;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  v15 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v16 = 2654435761 * self->_diffOutcome;
LABEL_15:
  v17 = v4 ^ v3 ^ v5 ^ v6;
  v18 = v9 ^ v14 ^ v15 ^ v16 ^ [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self->_treatmentSummary hash];
  v19 = v17 ^ v18 ^ [(EXPSiriSchemaEXPSiriPegasusResponseSummary *)self->_counterfactualSummary hash];
  return v19 ^ [(NSString *)self->_resultCandidateId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  allocations = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self allocations];
  allocations2 = [equalCopy allocations];
  if ((allocations != 0) == (allocations2 == 0))
  {
    goto LABEL_51;
  }

  allocations3 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self allocations];
  if (allocations3)
  {
    v8 = allocations3;
    allocations4 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self allocations];
    allocations5 = [equalCopy allocations];
    v11 = [allocations4 isEqual:allocations5];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  allocations = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
  allocations2 = [equalCopy codepathId];
  if ((allocations != 0) == (allocations2 == 0))
  {
    goto LABEL_51;
  }

  codepathId = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
  if (codepathId)
  {
    v13 = codepathId;
    codepathId2 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
    codepathId3 = [equalCopy codepathId];
    v16 = [codepathId2 isEqual:codepathId3];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  allocations = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
  allocations2 = [equalCopy pegasusId];
  if ((allocations != 0) == (allocations2 == 0))
  {
    goto LABEL_51;
  }

  pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
  if (pegasusId)
  {
    v18 = pegasusId;
    pegasusId2 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
    pegasusId3 = [equalCopy pegasusId];
    v21 = [pegasusId2 isEqual:pegasusId3];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  allocations = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualAllocations];
  allocations2 = [equalCopy counterfactualAllocations];
  if ((allocations != 0) == (allocations2 == 0))
  {
    goto LABEL_51;
  }

  counterfactualAllocations = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualAllocations];
  if (counterfactualAllocations)
  {
    v23 = counterfactualAllocations;
    counterfactualAllocations2 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualAllocations];
    counterfactualAllocations3 = [equalCopy counterfactualAllocations];
    v26 = [counterfactualAllocations2 isEqual:counterfactualAllocations3];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  has = self->_has;
  v28 = equalCopy[88];
  if ((*&has & 1) != (v28 & 1))
  {
    goto LABEL_52;
  }

  if (*&has)
  {
    isCounterfactualDifferent = self->_isCounterfactualDifferent;
    if (isCounterfactualDifferent != [equalCopy isCounterfactualDifferent])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v28 = equalCopy[88];
  }

  v30 = (*&has >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_52;
  }

  if (v30)
  {
    compareRankingAtK = self->_compareRankingAtK;
    [equalCopy compareRankingAtK];
    if (compareRankingAtK != v32)
    {
      goto LABEL_52;
    }

    has = self->_has;
    v28 = equalCopy[88];
  }

  v33 = (*&has >> 2) & 1;
  if (v33 != ((v28 >> 2) & 1))
  {
    goto LABEL_52;
  }

  if (v33)
  {
    kValue = self->_kValue;
    if (kValue != [equalCopy kValue])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v28 = equalCopy[88];
  }

  v35 = (*&has >> 3) & 1;
  if (v35 != ((v28 >> 3) & 1))
  {
    goto LABEL_52;
  }

  if (v35)
  {
    diffOutcome = self->_diffOutcome;
    if (diffOutcome != [equalCopy diffOutcome])
    {
      goto LABEL_52;
    }
  }

  allocations = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
  allocations2 = [equalCopy treatmentSummary];
  if ((allocations != 0) == (allocations2 == 0))
  {
    goto LABEL_51;
  }

  treatmentSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
  if (treatmentSummary)
  {
    v38 = treatmentSummary;
    treatmentSummary2 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
    treatmentSummary3 = [equalCopy treatmentSummary];
    v41 = [treatmentSummary2 isEqual:treatmentSummary3];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  allocations = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
  allocations2 = [equalCopy counterfactualSummary];
  if ((allocations != 0) == (allocations2 == 0))
  {
    goto LABEL_51;
  }

  counterfactualSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
  if (counterfactualSummary)
  {
    v43 = counterfactualSummary;
    counterfactualSummary2 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
    counterfactualSummary3 = [equalCopy counterfactualSummary];
    v46 = [counterfactualSummary2 isEqual:counterfactualSummary3];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  allocations = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self resultCandidateId];
  allocations2 = [equalCopy resultCandidateId];
  if ((allocations != 0) == (allocations2 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  resultCandidateId = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self resultCandidateId];
  if (!resultCandidateId)
  {

LABEL_55:
    v52 = 1;
    goto LABEL_53;
  }

  v48 = resultCandidateId;
  resultCandidateId2 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self resultCandidateId];
  resultCandidateId3 = [equalCopy resultCandidateId];
  v51 = [resultCandidateId2 isEqual:resultCandidateId3];

  if (v51)
  {
    goto LABEL_55;
  }

LABEL_52:
  v52 = 0;
LABEL_53:

  return v52;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_allocations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  codepathId = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];

  if (codepathId)
  {
    codepathId2 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
    PBDataWriterWriteSubmessage();
  }

  pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];

  if (pegasusId)
  {
    pegasusId2 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
    PBDataWriterWriteSubmessage();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_counterfactualAllocations;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        PBDataWriterWriteSubmessage();
      }

      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v16);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_21:
      if ((has & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_21;
  }

  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_22:
    if ((has & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_33:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_23:
    PBDataWriterWriteInt32Field();
  }

LABEL_24:
  treatmentSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];

  if (treatmentSummary)
  {
    treatmentSummary2 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
    PBDataWriterWriteSubmessage();
  }

  counterfactualSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];

  if (counterfactualSummary)
  {
    counterfactualSummary2 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self resultCandidateId];

  if (resultCandidateId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setHasDiffOutcome:(BOOL)outcome
{
  if (outcome)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasKValue:(BOOL)value
{
  if (value)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCompareRankingAtK:(BOOL)k
{
  if (k)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addCounterfactualAllocation:(id)allocation
{
  allocationCopy = allocation;
  counterfactualAllocations = self->_counterfactualAllocations;
  v8 = allocationCopy;
  if (!counterfactualAllocations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_counterfactualAllocations;
    self->_counterfactualAllocations = array;

    allocationCopy = v8;
    counterfactualAllocations = self->_counterfactualAllocations;
  }

  [(NSArray *)counterfactualAllocations addObject:allocationCopy];
}

- (void)addAllocation:(id)allocation
{
  allocationCopy = allocation;
  allocations = self->_allocations;
  v8 = allocationCopy;
  if (!allocations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_allocations;
    self->_allocations = array;

    allocationCopy = v8;
    allocations = self->_allocations;
  }

  [(NSArray *)allocations addObject:allocationCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v23.receiver = self;
  v23.super_class = EXPSiriSchemaEXPServerCounterfactualTriggeredTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v23 applySensitiveConditionsPolicy:policyCopy];
  allocations = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self allocations];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:allocations underConditions:policyCopy];
  [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self setAllocations:v7];

  codepathId = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
  v9 = [codepathId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v9 suppressMessage];

  if (suppressMessage)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self deleteCodepathId];
  }

  pegasusId = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
  v12 = [pegasusId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self deletePegasusId];
  }

  counterfactualAllocations = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualAllocations];
  v15 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:counterfactualAllocations underConditions:policyCopy];
  [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self setCounterfactualAllocations:v15];

  treatmentSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
  v17 = [treatmentSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v17 suppressMessage];

  if (suppressMessage3)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self deleteTreatmentSummary];
  }

  counterfactualSummary = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
  v20 = [counterfactualSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v20 suppressMessage];

  if (suppressMessage4)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self deleteCounterfactualSummary];
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