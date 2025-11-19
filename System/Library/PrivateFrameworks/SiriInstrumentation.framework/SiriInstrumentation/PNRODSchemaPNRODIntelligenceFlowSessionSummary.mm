@interface PNRODSchemaPNRODIntelligenceFlowSessionSummary
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowSessionSummary)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODIntelligenceFlowSessionSummary)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowSessionSummary

- (PNRODSchemaPNRODIntelligenceFlowSessionSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PNRODSchemaPNRODIntelligenceFlowSessionSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"clientSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setClientSessionId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"rawSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setRawSessionId:v9];
    }

    v27 = v6;
    v10 = [v4 objectForKeyedSubscript:@"standardPlannerSetupTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setStandardPlannerSetupTime:v11];
    }

    v12 = [v4 objectForKeyedSubscript:{@"queryDecorationServiceSetupTime", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setQueryDecorationServiceSetupTime:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"fullPlannerServiceSetupTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setFullPlannerServiceSetupTime:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"planOverridesServiceSetupTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setPlanOverridesServiceSetupTime:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"planResolverServiceSetupTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setPlanResolverServiceSetupTime:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"responseGenerationServiceSetupTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setResponseGenerationServiceSetupTime:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setFailureInfo:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODIntelligenceFlowSessionSummary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self dictionaryRepresentation];
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
  if (self->_clientSessionId)
  {
    v4 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"clientSessionId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"clientSessionId"];
    }
  }

  if (self->_failureInfo)
  {
    v7 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"failureInfo"];
    }
  }

  if (self->_fullPlannerServiceSetupTime)
  {
    v10 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"fullPlannerServiceSetupTime"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"fullPlannerServiceSetupTime"];
    }
  }

  if (self->_planOverridesServiceSetupTime)
  {
    v13 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"planOverridesServiceSetupTime"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"planOverridesServiceSetupTime"];
    }
  }

  if (self->_planResolverServiceSetupTime)
  {
    v16 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"planResolverServiceSetupTime"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"planResolverServiceSetupTime"];
    }
  }

  if (self->_queryDecorationServiceSetupTime)
  {
    v19 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"queryDecorationServiceSetupTime"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"queryDecorationServiceSetupTime"];
    }
  }

  if (self->_rawSessionId)
  {
    v22 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"rawSessionId"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"rawSessionId"];
    }
  }

  if (self->_responseGenerationServiceSetupTime)
  {
    v25 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"responseGenerationServiceSetupTime"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"responseGenerationServiceSetupTime"];
    }
  }

  if (self->_standardPlannerSetupTime)
  {
    v28 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"standardPlannerSetupTime"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"standardPlannerSetupTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_clientSessionId hash];
  v4 = [(SISchemaUUID *)self->_rawSessionId hash]^ v3;
  v5 = [(PNRODSchemaPNRODMetricDuration *)self->_standardPlannerSetupTime hash];
  v6 = v4 ^ v5 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationServiceSetupTime hash];
  v7 = [(PNRODSchemaPNRODMetricDuration *)self->_fullPlannerServiceSetupTime hash];
  v8 = v7 ^ [(PNRODSchemaPNRODMetricDuration *)self->_planOverridesServiceSetupTime hash];
  v9 = v6 ^ v8 ^ [(PNRODSchemaPNRODMetricDuration *)self->_planResolverServiceSetupTime hash];
  v10 = [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationServiceSetupTime hash];
  return v9 ^ v10 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
  v6 = [v4 clientSessionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v7 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
    v10 = [v4 clientSessionId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
  v6 = [v4 rawSessionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
    v15 = [v4 rawSessionId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
  v6 = [v4 standardPlannerSetupTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v17 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
  if (v17)
  {
    v18 = v17;
    v19 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
    v20 = [v4 standardPlannerSetupTime];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
  v6 = [v4 queryDecorationServiceSetupTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v22 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
  if (v22)
  {
    v23 = v22;
    v24 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
    v25 = [v4 queryDecorationServiceSetupTime];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
  v6 = [v4 fullPlannerServiceSetupTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
  if (v27)
  {
    v28 = v27;
    v29 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
    v30 = [v4 fullPlannerServiceSetupTime];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
  v6 = [v4 planOverridesServiceSetupTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v32 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
  if (v32)
  {
    v33 = v32;
    v34 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
    v35 = [v4 planOverridesServiceSetupTime];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
  v6 = [v4 planResolverServiceSetupTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v37 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
  if (v37)
  {
    v38 = v37;
    v39 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
    v40 = [v4 planResolverServiceSetupTime];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
  v6 = [v4 responseGenerationServiceSetupTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v42 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
  if (v42)
  {
    v43 = v42;
    v44 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
    v45 = [v4 responseGenerationServiceSetupTime];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) != (v6 == 0))
  {
    v47 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
    if (!v47)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = v47;
    v49 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
    v50 = [v4 failureInfo];
    v51 = [v49 isEqual:v50];

    if (v51)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_46:
  }

LABEL_47:
  v52 = 0;
LABEL_48:

  return v52;
}

- (void)writeTo:(id)a3
{
  v23 = a3;
  v4 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];

  if (v10)
  {
    v11 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];

  if (v12)
  {
    v13 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];

  if (v14)
  {
    v15 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];

  if (v16)
  {
    v17 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];

  if (v18)
  {
    v19 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];

  v21 = v23;
  if (v20)
  {
    v22 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v21 = v23;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PNRODSchemaPNRODIntelligenceFlowSessionSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteClientSessionId];
  }

  v9 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteRawSessionId];
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteStandardPlannerSetupTime];
  }

  v15 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteQueryDecorationServiceSetupTime];
  }

  v18 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteFullPlannerServiceSetupTime];
  }

  v21 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deletePlanOverridesServiceSetupTime];
  }

  v24 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deletePlanResolverServiceSetupTime];
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteResponseGenerationServiceSetupTime];
  }

  v30 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteFailureInfo];
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