@interface EXPSiriSchemaEXPServerCounterfactualTriggeredTier1
- (BOOL)isEqual:(id)a3;
- (EXPSiriSchemaEXPServerCounterfactualTriggeredTier1)initWithDictionary:(id)a3;
- (EXPSiriSchemaEXPServerCounterfactualTriggeredTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAllocation:(id)a3;
- (void)addCounterfactualAllocation:(id)a3;
- (void)setHasCompareRankingAtK:(BOOL)a3;
- (void)setHasDiffOutcome:(BOOL)a3;
- (void)setHasKValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation EXPSiriSchemaEXPServerCounterfactualTriggeredTier1

- (EXPSiriSchemaEXPServerCounterfactualTriggeredTier1)initWithDictionary:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = EXPSiriSchemaEXPServerCounterfactualTriggeredTier1;
  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)&v50 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"allocation"];
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

    v14 = [v4 objectForKeyedSubscript:@"codepathId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 setCodepathId:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"pegasusId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 setPegasusId:v17];
    }

    v39 = v16;
    v40 = v14;
    v18 = [v4 objectForKeyedSubscript:@"counterfactualAllocation"];
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

    v26 = [v4 objectForKeyedSubscript:@"isCounterfactualDifferent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 setIsCounterfactualDifferent:](v5, "setIsCounterfactualDifferent:", [v26 BOOLValue]);
    }

    v27 = [v4 objectForKeyedSubscript:@"compareRankingAtK"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v27 floatValue];
      [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 setCompareRankingAtK:?];
    }

    v28 = [v4 objectForKeyedSubscript:{@"kValue", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 setKValue:](v5, "setKValue:", [v28 longLongValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"diffOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 setDiffOutcome:](v5, "setDiffOutcome:", [v29 intValue]);
    }

    v30 = [v4 objectForKeyedSubscript:@"treatmentSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[EXPSiriSchemaEXPSiriPegasusResponseSummary alloc] initWithDictionary:v30];
      [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 setTreatmentSummary:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"counterfactualSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[EXPSiriSchemaEXPSiriPegasusResponseSummary alloc] initWithDictionary:v32];
      [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)v5 setCounterfactualSummary:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
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

- (EXPSiriSchemaEXPServerCounterfactualTriggeredTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self dictionaryRepresentation];
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
  v52 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_allocations count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v46 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"allocation"];
  }

  if (self->_codepathId)
  {
    v12 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"codepathId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"codepathId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = MEMORY[0x1E696AD98];
    [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self compareRankingAtK];
    v16 = [v15 numberWithFloat:?];
    [v3 setObject:v16 forKeyedSubscript:@"compareRankingAtK"];
  }

  if ([(NSArray *)self->_counterfactualAllocations count])
  {
    v17 = [MEMORY[0x1E695DF70] array];
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

          v23 = [*(*(&v42 + 1) + 8 * j) dictionaryRepresentation];
          if (v23)
          {
            [v17 addObject:v23];
          }

          else
          {
            v24 = [MEMORY[0x1E695DFB0] null];
            [v17 addObject:v24];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKeyedSubscript:@"counterfactualAllocation"];
  }

  if (self->_counterfactualSummary)
  {
    v25 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"counterfactualSummary"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"counterfactualSummary"];
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

    [v3 setObject:v33 forKeyedSubscript:@"diffOutcome"];
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
  [v3 setObject:v34 forKeyedSubscript:@"isCounterfactualDifferent"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_40:
    v29 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 kValue](self, "kValue")}];
    [v3 setObject:v29 forKeyedSubscript:@"kValue"];
  }

LABEL_41:
  if (self->_pegasusId)
  {
    v30 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"pegasusId"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"pegasusId"];
    }
  }

  if (self->_resultCandidateId)
  {
    v36 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self resultCandidateId];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_treatmentSummary)
  {
    v38 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
    v39 = [v38 dictionaryRepresentation];
    if (v39)
    {
      [v3 setObject:v39 forKeyedSubscript:@"treatmentSummary"];
    }

    else
    {
      v40 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v40 forKeyedSubscript:@"treatmentSummary"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self allocations];
  v6 = [v4 allocations];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v7 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self allocations];
  if (v7)
  {
    v8 = v7;
    v9 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self allocations];
    v10 = [v4 allocations];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
  v6 = [v4 codepathId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v12 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
  if (v12)
  {
    v13 = v12;
    v14 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
    v15 = [v4 codepathId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
  v6 = [v4 pegasusId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v17 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
  if (v17)
  {
    v18 = v17;
    v19 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
    v20 = [v4 pegasusId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualAllocations];
  v6 = [v4 counterfactualAllocations];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v22 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualAllocations];
  if (v22)
  {
    v23 = v22;
    v24 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualAllocations];
    v25 = [v4 counterfactualAllocations];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  has = self->_has;
  v28 = v4[88];
  if ((*&has & 1) != (v28 & 1))
  {
    goto LABEL_52;
  }

  if (*&has)
  {
    isCounterfactualDifferent = self->_isCounterfactualDifferent;
    if (isCounterfactualDifferent != [v4 isCounterfactualDifferent])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v28 = v4[88];
  }

  v30 = (*&has >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_52;
  }

  if (v30)
  {
    compareRankingAtK = self->_compareRankingAtK;
    [v4 compareRankingAtK];
    if (compareRankingAtK != v32)
    {
      goto LABEL_52;
    }

    has = self->_has;
    v28 = v4[88];
  }

  v33 = (*&has >> 2) & 1;
  if (v33 != ((v28 >> 2) & 1))
  {
    goto LABEL_52;
  }

  if (v33)
  {
    kValue = self->_kValue;
    if (kValue != [v4 kValue])
    {
      goto LABEL_52;
    }

    has = self->_has;
    v28 = v4[88];
  }

  v35 = (*&has >> 3) & 1;
  if (v35 != ((v28 >> 3) & 1))
  {
    goto LABEL_52;
  }

  if (v35)
  {
    diffOutcome = self->_diffOutcome;
    if (diffOutcome != [v4 diffOutcome])
    {
      goto LABEL_52;
    }
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
  v6 = [v4 treatmentSummary];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v37 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
  if (v37)
  {
    v38 = v37;
    v39 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
    v40 = [v4 treatmentSummary];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
  v6 = [v4 counterfactualSummary];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v42 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
  if (v42)
  {
    v43 = v42;
    v44 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
    v45 = [v4 counterfactualSummary];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  v47 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self resultCandidateId];
  if (!v47)
  {

LABEL_55:
    v52 = 1;
    goto LABEL_53;
  }

  v48 = v47;
  v49 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self resultCandidateId];
  v50 = [v4 resultCandidateId];
  v51 = [v49 isEqual:v50];

  if (v51)
  {
    goto LABEL_55;
  }

LABEL_52:
  v52 = 0;
LABEL_53:

  return v52;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v10 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];

  if (v10)
  {
    v11 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];

  if (v12)
  {
    v13 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
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
  v20 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];

  if (v20)
  {
    v21 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];

  if (v22)
  {
    v23 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self resultCandidateId];

  if (v24)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setHasDiffOutcome:(BOOL)a3
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

- (void)setHasKValue:(BOOL)a3
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

- (void)setHasCompareRankingAtK:(BOOL)a3
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

- (void)addCounterfactualAllocation:(id)a3
{
  v4 = a3;
  counterfactualAllocations = self->_counterfactualAllocations;
  v8 = v4;
  if (!counterfactualAllocations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_counterfactualAllocations;
    self->_counterfactualAllocations = v6;

    v4 = v8;
    counterfactualAllocations = self->_counterfactualAllocations;
  }

  [(NSArray *)counterfactualAllocations addObject:v4];
}

- (void)addAllocation:(id)a3
{
  v4 = a3;
  allocations = self->_allocations;
  v8 = v4;
  if (!allocations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_allocations;
    self->_allocations = v6;

    v4 = v8;
    allocations = self->_allocations;
  }

  [(NSArray *)allocations addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = EXPSiriSchemaEXPServerCounterfactualTriggeredTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v23 applySensitiveConditionsPolicy:v4];
  v6 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self allocations];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self setAllocations:v7];

  v8 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self codepathId];
  v9 = [v8 applySensitiveConditionsPolicy:v4];
  v10 = [v9 suppressMessage];

  if (v10)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self deleteCodepathId];
  }

  v11 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self pegasusId];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self deletePegasusId];
  }

  v14 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualAllocations];
  v15 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v14 underConditions:v4];
  [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self setCounterfactualAllocations:v15];

  v16 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self treatmentSummary];
  v17 = [v16 applySensitiveConditionsPolicy:v4];
  v18 = [v17 suppressMessage];

  if (v18)
  {
    [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self deleteTreatmentSummary];
  }

  v19 = [(EXPSiriSchemaEXPServerCounterfactualTriggeredTier1 *)self counterfactualSummary];
  v20 = [v19 applySensitiveConditionsPolicy:v4];
  v21 = [v20 suppressMessage];

  if (v21)
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