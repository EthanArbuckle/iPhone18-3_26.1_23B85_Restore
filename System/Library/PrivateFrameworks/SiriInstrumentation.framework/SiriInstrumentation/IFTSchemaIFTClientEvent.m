@interface IFTSchemaIFTClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (IFTSchemaASTFlatExprSearchVariantTier1)astFlatExprSearchVariantTier1;
- (IFTSchemaIFTAction)actionCreated;
- (IFTSchemaIFTActionCancellation)actionCancelled;
- (IFTSchemaIFTActionResolverRequest)actionResolverRequestCreated;
- (IFTSchemaIFTClientAction)clientActionCreated;
- (IFTSchemaIFTClientEvent)initWithDictionary:(id)a3;
- (IFTSchemaIFTClientEvent)initWithJSON:(id)a3;
- (IFTSchemaIFTContextPrewarmCompleted)contextPrewarmCompleted;
- (IFTSchemaIFTContextPrewarmRequest)contextPrewarmRequest;
- (IFTSchemaIFTContextRetrieved)contextRetrieved;
- (IFTSchemaIFTContinuePlanning)continuePlanning;
- (IFTSchemaIFTEntitySpanMatchResult)entitySpanMatched;
- (IFTSchemaIFTExecutionPreconditionEvaluatorRequest)executionPreconditionEvaluatorRequest;
- (IFTSchemaIFTPlan)planCreated;
- (IFTSchemaIFTQueryDecorationPrePlannerResult)queryDecorationPrePlannerResult;
- (IFTSchemaIFTQueryDecorationResult)queryDecorationResult;
- (IFTSchemaIFTQueryStep)queriesCreated;
- (IFTSchemaIFTQueryStepResults)queriesExecuted;
- (IFTSchemaIFTRecoverableError)recoverableError;
- (IFTSchemaIFTRequest)request;
- (IFTSchemaIFTRequestContentTextContentTier1)requestContextTextContentTier1;
- (IFTSchemaIFTResponseGenerationRequest)responseGenerationRequest;
- (IFTSchemaIFTSessionError)criticalError;
- (IFTSchemaIFTSessionStart)sessionStart;
- (IFTSchemaIFTSkipStatement)skipStatement;
- (IFTSchemaIFTStatementResult)statementEvaluated;
- (IFTSchemaIFTSystemResponse)systemResponseGenerated;
- (IFTSchemaIFTTerminate)terminate;
- (IFTSchemaIFTToolResolution)toolResolution;
- (IFTSchemaIFTToolRetrievalResponse)toolsRetrieved;
- (IFTSchemaIFTVariableStep)variablesSet;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteActionCancelled;
- (void)deleteActionCreated;
- (void)deleteActionResolverRequestCreated;
- (void)deleteAstFlatExprSearchVariantTier1;
- (void)deleteClientActionCreated;
- (void)deleteContextPrewarmCompleted;
- (void)deleteContextPrewarmRequest;
- (void)deleteContextRetrieved;
- (void)deleteContinuePlanning;
- (void)deleteCriticalError;
- (void)deleteEntitySpanMatched;
- (void)deleteExecutionPreconditionEvaluatorRequest;
- (void)deletePlanCreated;
- (void)deleteQueriesCreated;
- (void)deleteQueriesExecuted;
- (void)deleteQueryDecorationPrePlannerResult;
- (void)deleteQueryDecorationResult;
- (void)deleteRecoverableError;
- (void)deleteRequest;
- (void)deleteRequestContextTextContentTier1;
- (void)deleteResponseGenerationRequest;
- (void)deleteSessionStart;
- (void)deleteSkipStatement;
- (void)deleteStatementEvaluated;
- (void)deleteSystemResponseGenerated;
- (void)deleteTerminate;
- (void)deleteToolResolution;
- (void)deleteToolsRetrieved;
- (void)deleteVariablesSet;
- (void)setActionCancelled:(id)a3;
- (void)setActionCreated:(id)a3;
- (void)setActionResolverRequestCreated:(id)a3;
- (void)setAstFlatExprSearchVariantTier1:(id)a3;
- (void)setClientActionCreated:(id)a3;
- (void)setContextPrewarmCompleted:(id)a3;
- (void)setContextPrewarmRequest:(id)a3;
- (void)setContextRetrieved:(id)a3;
- (void)setContinuePlanning:(id)a3;
- (void)setCriticalError:(id)a3;
- (void)setEntitySpanMatched:(id)a3;
- (void)setExecutionPreconditionEvaluatorRequest:(id)a3;
- (void)setPlanCreated:(id)a3;
- (void)setQueriesCreated:(id)a3;
- (void)setQueriesExecuted:(id)a3;
- (void)setQueryDecorationPrePlannerResult:(id)a3;
- (void)setQueryDecorationResult:(id)a3;
- (void)setRecoverableError:(id)a3;
- (void)setRequest:(id)a3;
- (void)setRequestContextTextContentTier1:(id)a3;
- (void)setResponseGenerationRequest:(id)a3;
- (void)setSessionStart:(id)a3;
- (void)setSkipStatement:(id)a3;
- (void)setStatementEvaluated:(id)a3;
- (void)setSystemResponseGenerated:(id)a3;
- (void)setTerminate:(id)a3;
- (void)setToolResolution:(id)a3;
- (void)setToolsRetrieved:(id)a3;
- (void)setVariablesSet:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTClientEvent

- (IFTSchemaIFTClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v91.receiver = self;
  v91.super_class = IFTSchemaIFTClientEvent;
  v5 = [(IFTSchemaIFTClientEvent *)&v91 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTClientEventMetadata alloc] initWithDictionary:v6];
      [(IFTSchemaIFTClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"contextPrewarmRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTContextPrewarmRequest alloc] initWithDictionary:v8];
      [(IFTSchemaIFTClientEvent *)v5 setContextPrewarmRequest:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"contextPrewarmCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTContextPrewarmCompleted alloc] initWithDictionary:v10];
      [(IFTSchemaIFTClientEvent *)v5 setContextPrewarmCompleted:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"terminate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTTerminate alloc] initWithDictionary:v12];
      [(IFTSchemaIFTClientEvent *)v5 setTerminate:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"sessionStart"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IFTSchemaIFTSessionStart alloc] initWithDictionary:v14];
      [(IFTSchemaIFTClientEvent *)v5 setSessionStart:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"request"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaIFTRequest alloc] initWithDictionary:v16];
      [(IFTSchemaIFTClientEvent *)v5 setRequest:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"requestContextTextContentTier1"];
    objc_opt_class();
    v90 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[IFTSchemaIFTRequestContentTextContentTier1 alloc] initWithDictionary:v18];
      [(IFTSchemaIFTClientEvent *)v5 setRequestContextTextContentTier1:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"entitySpanMatched"];
    objc_opt_class();
    v89 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[IFTSchemaIFTEntitySpanMatchResult alloc] initWithDictionary:v20];
      [(IFTSchemaIFTClientEvent *)v5 setEntitySpanMatched:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"contextRetrieved"];
    objc_opt_class();
    v88 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[IFTSchemaIFTContextRetrieved alloc] initWithDictionary:v22];
      [(IFTSchemaIFTClientEvent *)v5 setContextRetrieved:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"toolsRetrieved"];
    objc_opt_class();
    v87 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[IFTSchemaIFTToolRetrievalResponse alloc] initWithDictionary:v24];
      [(IFTSchemaIFTClientEvent *)v5 setToolsRetrieved:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"queryDecorationResult"];
    objc_opt_class();
    v86 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[IFTSchemaIFTQueryDecorationResult alloc] initWithDictionary:v26];
      [(IFTSchemaIFTClientEvent *)v5 setQueryDecorationResult:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"queryDecorationPrePlannerResult"];
    objc_opt_class();
    v85 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[IFTSchemaIFTQueryDecorationPrePlannerResult alloc] initWithDictionary:v28];
      [(IFTSchemaIFTClientEvent *)v5 setQueryDecorationPrePlannerResult:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"planCreated"];
    objc_opt_class();
    v84 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[IFTSchemaIFTPlan alloc] initWithDictionary:v30];
      [(IFTSchemaIFTClientEvent *)v5 setPlanCreated:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"astFlatExprSearchVariantTier1"];
    objc_opt_class();
    v83 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[IFTSchemaASTFlatExprSearchVariantTier1 alloc] initWithDictionary:v32];
      [(IFTSchemaIFTClientEvent *)v5 setAstFlatExprSearchVariantTier1:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"variablesSet"];
    objc_opt_class();
    v82 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[IFTSchemaIFTVariableStep alloc] initWithDictionary:v34];
      [(IFTSchemaIFTClientEvent *)v5 setVariablesSet:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"toolResolution"];
    objc_opt_class();
    v81 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[IFTSchemaIFTToolResolution alloc] initWithDictionary:v36];
      [(IFTSchemaIFTClientEvent *)v5 setToolResolution:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"queriesCreated"];
    objc_opt_class();
    v80 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[IFTSchemaIFTQueryStep alloc] initWithDictionary:v38];
      [(IFTSchemaIFTClientEvent *)v5 setQueriesCreated:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"actionResolverRequestCreated"];
    objc_opt_class();
    v79 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[IFTSchemaIFTActionResolverRequest alloc] initWithDictionary:v40];
      [(IFTSchemaIFTClientEvent *)v5 setActionResolverRequestCreated:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"responseGenerationRequest"];
    objc_opt_class();
    v78 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[IFTSchemaIFTResponseGenerationRequest alloc] initWithDictionary:v42];
      [(IFTSchemaIFTClientEvent *)v5 setResponseGenerationRequest:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"actionCancelled"];
    objc_opt_class();
    v77 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[IFTSchemaIFTActionCancellation alloc] initWithDictionary:v44];
      [(IFTSchemaIFTClientEvent *)v5 setActionCancelled:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"continuePlanning"];
    objc_opt_class();
    v76 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[IFTSchemaIFTContinuePlanning alloc] initWithDictionary:v46];
      [(IFTSchemaIFTClientEvent *)v5 setContinuePlanning:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"skipStatement"];
    objc_opt_class();
    v75 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[IFTSchemaIFTSkipStatement alloc] initWithDictionary:v48];
      [(IFTSchemaIFTClientEvent *)v5 setSkipStatement:v49];
    }

    v69 = v16;
    v50 = [v4 objectForKeyedSubscript:@"executionPreconditionEvaluatorRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[IFTSchemaIFTExecutionPreconditionEvaluatorRequest alloc] initWithDictionary:v50];
      [(IFTSchemaIFTClientEvent *)v5 setExecutionPreconditionEvaluatorRequest:v51];
    }

    v74 = v6;
    v52 = [v4 objectForKeyedSubscript:{@"actionCreated", v50}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [[IFTSchemaIFTAction alloc] initWithDictionary:v52];
      [(IFTSchemaIFTClientEvent *)v5 setActionCreated:v53];
    }

    v73 = v8;
    v54 = [v4 objectForKeyedSubscript:@"clientActionCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [[IFTSchemaIFTClientAction alloc] initWithDictionary:v54];
      [(IFTSchemaIFTClientEvent *)v5 setClientActionCreated:v55];
    }

    v72 = v10;
    v56 = [v4 objectForKeyedSubscript:@"queriesExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = [[IFTSchemaIFTQueryStepResults alloc] initWithDictionary:v56];
      [(IFTSchemaIFTClientEvent *)v5 setQueriesExecuted:v57];
    }

    v71 = v12;
    v58 = [v4 objectForKeyedSubscript:@"statementEvaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = [[IFTSchemaIFTStatementResult alloc] initWithDictionary:v58];
      [(IFTSchemaIFTClientEvent *)v5 setStatementEvaluated:v59];
    }

    v70 = v14;
    v60 = [v4 objectForKeyedSubscript:@"systemResponseGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [[IFTSchemaIFTSystemResponse alloc] initWithDictionary:v60];
      [(IFTSchemaIFTClientEvent *)v5 setSystemResponseGenerated:v61];
    }

    v62 = [v4 objectForKeyedSubscript:@"criticalError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = [[IFTSchemaIFTSessionError alloc] initWithDictionary:v62];
      [(IFTSchemaIFTClientEvent *)v5 setCriticalError:v63];
    }

    v64 = [v4 objectForKeyedSubscript:@"recoverableError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = [[IFTSchemaIFTRecoverableError alloc] initWithDictionary:v64];
      [(IFTSchemaIFTClientEvent *)v5 setRecoverableError:v65];
    }

    v66 = v5;
  }

  return v5;
}

- (IFTSchemaIFTClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTClientEvent *)self dictionaryRepresentation];
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
  if (self->_actionCancelled)
  {
    v4 = [(IFTSchemaIFTClientEvent *)self actionCancelled];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"actionCancelled"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"actionCancelled"];
    }
  }

  if (self->_actionCreated)
  {
    v7 = [(IFTSchemaIFTClientEvent *)self actionCreated];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"actionCreated"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"actionCreated"];
    }
  }

  if (self->_actionResolverRequestCreated)
  {
    v10 = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"actionResolverRequestCreated"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"actionResolverRequestCreated"];
    }
  }

  if (self->_astFlatExprSearchVariantTier1)
  {
    v13 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"astFlatExprSearchVariantTier1"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"astFlatExprSearchVariantTier1"];
    }
  }

  if (self->_clientActionCreated)
  {
    v16 = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"clientActionCreated"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"clientActionCreated"];
    }
  }

  if (self->_contextPrewarmCompleted)
  {
    v19 = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"contextPrewarmCompleted"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"contextPrewarmCompleted"];
    }
  }

  if (self->_contextPrewarmRequest)
  {
    v22 = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"contextPrewarmRequest"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"contextPrewarmRequest"];
    }
  }

  if (self->_contextRetrieved)
  {
    v25 = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"contextRetrieved"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"contextRetrieved"];
    }
  }

  if (self->_continuePlanning)
  {
    v28 = [(IFTSchemaIFTClientEvent *)self continuePlanning];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"continuePlanning"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"continuePlanning"];
    }
  }

  if (self->_criticalError)
  {
    v31 = [(IFTSchemaIFTClientEvent *)self criticalError];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"criticalError"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"criticalError"];
    }
  }

  if (self->_entitySpanMatched)
  {
    v34 = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"entitySpanMatched"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"entitySpanMatched"];
    }
  }

  if (self->_eventMetadata)
  {
    v37 = [(IFTSchemaIFTClientEvent *)self eventMetadata];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_executionPreconditionEvaluatorRequest)
  {
    v40 = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"executionPreconditionEvaluatorRequest"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"executionPreconditionEvaluatorRequest"];
    }
  }

  if (self->_planCreated)
  {
    v43 = [(IFTSchemaIFTClientEvent *)self planCreated];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"planCreated"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"planCreated"];
    }
  }

  if (self->_queriesCreated)
  {
    v46 = [(IFTSchemaIFTClientEvent *)self queriesCreated];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"queriesCreated"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"queriesCreated"];
    }
  }

  if (self->_queriesExecuted)
  {
    v49 = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"queriesExecuted"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"queriesExecuted"];
    }
  }

  if (self->_queryDecorationPrePlannerResult)
  {
    v52 = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"queryDecorationPrePlannerResult"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"queryDecorationPrePlannerResult"];
    }
  }

  if (self->_queryDecorationResult)
  {
    v55 = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"queryDecorationResult"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"queryDecorationResult"];
    }
  }

  if (self->_recoverableError)
  {
    v58 = [(IFTSchemaIFTClientEvent *)self recoverableError];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"recoverableError"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"recoverableError"];
    }
  }

  if (self->_request)
  {
    v61 = [(IFTSchemaIFTClientEvent *)self request];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"request"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"request"];
    }
  }

  if (self->_requestContextTextContentTier1)
  {
    v64 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"requestContextTextContentTier1"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"requestContextTextContentTier1"];
    }
  }

  if (self->_responseGenerationRequest)
  {
    v67 = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"responseGenerationRequest"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"responseGenerationRequest"];
    }
  }

  if (self->_sessionStart)
  {
    v70 = [(IFTSchemaIFTClientEvent *)self sessionStart];
    v71 = [v70 dictionaryRepresentation];
    if (v71)
    {
      [v3 setObject:v71 forKeyedSubscript:@"sessionStart"];
    }

    else
    {
      v72 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v72 forKeyedSubscript:@"sessionStart"];
    }
  }

  if (self->_skipStatement)
  {
    v73 = [(IFTSchemaIFTClientEvent *)self skipStatement];
    v74 = [v73 dictionaryRepresentation];
    if (v74)
    {
      [v3 setObject:v74 forKeyedSubscript:@"skipStatement"];
    }

    else
    {
      v75 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v75 forKeyedSubscript:@"skipStatement"];
    }
  }

  if (self->_statementEvaluated)
  {
    v76 = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
    v77 = [v76 dictionaryRepresentation];
    if (v77)
    {
      [v3 setObject:v77 forKeyedSubscript:@"statementEvaluated"];
    }

    else
    {
      v78 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v78 forKeyedSubscript:@"statementEvaluated"];
    }
  }

  if (self->_systemResponseGenerated)
  {
    v79 = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
    v80 = [v79 dictionaryRepresentation];
    if (v80)
    {
      [v3 setObject:v80 forKeyedSubscript:@"systemResponseGenerated"];
    }

    else
    {
      v81 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v81 forKeyedSubscript:@"systemResponseGenerated"];
    }
  }

  if (self->_terminate)
  {
    v82 = [(IFTSchemaIFTClientEvent *)self terminate];
    v83 = [v82 dictionaryRepresentation];
    if (v83)
    {
      [v3 setObject:v83 forKeyedSubscript:@"terminate"];
    }

    else
    {
      v84 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v84 forKeyedSubscript:@"terminate"];
    }
  }

  if (self->_toolResolution)
  {
    v85 = [(IFTSchemaIFTClientEvent *)self toolResolution];
    v86 = [v85 dictionaryRepresentation];
    if (v86)
    {
      [v3 setObject:v86 forKeyedSubscript:@"toolResolution"];
    }

    else
    {
      v87 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v87 forKeyedSubscript:@"toolResolution"];
    }
  }

  if (self->_toolsRetrieved)
  {
    v88 = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
    v89 = [v88 dictionaryRepresentation];
    if (v89)
    {
      [v3 setObject:v89 forKeyedSubscript:@"toolsRetrieved"];
    }

    else
    {
      v90 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v90 forKeyedSubscript:@"toolsRetrieved"];
    }
  }

  if (self->_variablesSet)
  {
    v91 = [(IFTSchemaIFTClientEvent *)self variablesSet];
    v92 = [v91 dictionaryRepresentation];
    if (v92)
    {
      [v3 setObject:v92 forKeyedSubscript:@"variablesSet"];
    }

    else
    {
      v93 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v93 forKeyedSubscript:@"variablesSet"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v94 = v3;

  return v3;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(IFTSchemaIFTContextPrewarmRequest *)self->_contextPrewarmRequest hash]^ v3;
  v5 = [(IFTSchemaIFTContextPrewarmCompleted *)self->_contextPrewarmCompleted hash];
  v6 = v4 ^ v5 ^ [(IFTSchemaIFTTerminate *)self->_terminate hash];
  v7 = [(IFTSchemaIFTSessionStart *)self->_sessionStart hash];
  v8 = v7 ^ [(IFTSchemaIFTRequest *)self->_request hash];
  v9 = v6 ^ v8 ^ [(IFTSchemaIFTRequestContentTextContentTier1 *)self->_requestContextTextContentTier1 hash];
  v10 = [(IFTSchemaIFTEntitySpanMatchResult *)self->_entitySpanMatched hash];
  v11 = v10 ^ [(IFTSchemaIFTContextRetrieved *)self->_contextRetrieved hash];
  v12 = v11 ^ [(IFTSchemaIFTToolRetrievalResponse *)self->_toolsRetrieved hash];
  v13 = v9 ^ v12 ^ [(IFTSchemaIFTQueryDecorationResult *)self->_queryDecorationResult hash];
  v14 = [(IFTSchemaIFTQueryDecorationPrePlannerResult *)self->_queryDecorationPrePlannerResult hash];
  v15 = v14 ^ [(IFTSchemaIFTPlan *)self->_planCreated hash];
  v16 = v15 ^ [(IFTSchemaASTFlatExprSearchVariantTier1 *)self->_astFlatExprSearchVariantTier1 hash];
  v17 = v16 ^ [(IFTSchemaIFTVariableStep *)self->_variablesSet hash];
  v18 = v13 ^ v17 ^ [(IFTSchemaIFTToolResolution *)self->_toolResolution hash];
  v19 = [(IFTSchemaIFTQueryStep *)self->_queriesCreated hash];
  v20 = v19 ^ [(IFTSchemaIFTActionResolverRequest *)self->_actionResolverRequestCreated hash];
  v21 = v20 ^ [(IFTSchemaIFTResponseGenerationRequest *)self->_responseGenerationRequest hash];
  v22 = v21 ^ [(IFTSchemaIFTActionCancellation *)self->_actionCancelled hash];
  v23 = v22 ^ [(IFTSchemaIFTContinuePlanning *)self->_continuePlanning hash];
  v24 = v18 ^ v23 ^ [(IFTSchemaIFTSkipStatement *)self->_skipStatement hash];
  v25 = [(IFTSchemaIFTExecutionPreconditionEvaluatorRequest *)self->_executionPreconditionEvaluatorRequest hash];
  v26 = v25 ^ [(IFTSchemaIFTAction *)self->_actionCreated hash];
  v27 = v26 ^ [(IFTSchemaIFTClientAction *)self->_clientActionCreated hash];
  v28 = v27 ^ [(IFTSchemaIFTQueryStepResults *)self->_queriesExecuted hash];
  v29 = v28 ^ [(IFTSchemaIFTStatementResult *)self->_statementEvaluated hash];
  v30 = v29 ^ [(IFTSchemaIFTSystemResponse *)self->_systemResponseGenerated hash];
  v31 = v24 ^ v30 ^ [(IFTSchemaIFTSessionError *)self->_criticalError hash];
  return v31 ^ [(IFTSchemaIFTRecoverableError *)self->_recoverableError hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_153;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_153;
  }

  v6 = [(IFTSchemaIFTClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v8 = [(IFTSchemaIFTClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
  v7 = [v4 contextPrewarmRequest];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v13 = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
    v16 = [v4 contextPrewarmRequest];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
  v7 = [v4 contextPrewarmCompleted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v18 = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
    v21 = [v4 contextPrewarmCompleted];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self terminate];
  v7 = [v4 terminate];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v23 = [(IFTSchemaIFTClientEvent *)self terminate];
  if (v23)
  {
    v24 = v23;
    v25 = [(IFTSchemaIFTClientEvent *)self terminate];
    v26 = [v4 terminate];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self sessionStart];
  v7 = [v4 sessionStart];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v28 = [(IFTSchemaIFTClientEvent *)self sessionStart];
  if (v28)
  {
    v29 = v28;
    v30 = [(IFTSchemaIFTClientEvent *)self sessionStart];
    v31 = [v4 sessionStart];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self request];
  v7 = [v4 request];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v33 = [(IFTSchemaIFTClientEvent *)self request];
  if (v33)
  {
    v34 = v33;
    v35 = [(IFTSchemaIFTClientEvent *)self request];
    v36 = [v4 request];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
  v7 = [v4 requestContextTextContentTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v38 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
  if (v38)
  {
    v39 = v38;
    v40 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
    v41 = [v4 requestContextTextContentTier1];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
  v7 = [v4 entitySpanMatched];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v43 = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
  if (v43)
  {
    v44 = v43;
    v45 = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
    v46 = [v4 entitySpanMatched];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
  v7 = [v4 contextRetrieved];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v48 = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
  if (v48)
  {
    v49 = v48;
    v50 = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
    v51 = [v4 contextRetrieved];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
  v7 = [v4 toolsRetrieved];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v53 = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
  if (v53)
  {
    v54 = v53;
    v55 = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
    v56 = [v4 toolsRetrieved];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
  v7 = [v4 queryDecorationResult];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v58 = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
  if (v58)
  {
    v59 = v58;
    v60 = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
    v61 = [v4 queryDecorationResult];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
  v7 = [v4 queryDecorationPrePlannerResult];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v63 = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
  if (v63)
  {
    v64 = v63;
    v65 = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
    v66 = [v4 queryDecorationPrePlannerResult];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self planCreated];
  v7 = [v4 planCreated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v68 = [(IFTSchemaIFTClientEvent *)self planCreated];
  if (v68)
  {
    v69 = v68;
    v70 = [(IFTSchemaIFTClientEvent *)self planCreated];
    v71 = [v4 planCreated];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
  v7 = [v4 astFlatExprSearchVariantTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v73 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
  if (v73)
  {
    v74 = v73;
    v75 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
    v76 = [v4 astFlatExprSearchVariantTier1];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self variablesSet];
  v7 = [v4 variablesSet];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v78 = [(IFTSchemaIFTClientEvent *)self variablesSet];
  if (v78)
  {
    v79 = v78;
    v80 = [(IFTSchemaIFTClientEvent *)self variablesSet];
    v81 = [v4 variablesSet];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self toolResolution];
  v7 = [v4 toolResolution];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v83 = [(IFTSchemaIFTClientEvent *)self toolResolution];
  if (v83)
  {
    v84 = v83;
    v85 = [(IFTSchemaIFTClientEvent *)self toolResolution];
    v86 = [v4 toolResolution];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self queriesCreated];
  v7 = [v4 queriesCreated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v88 = [(IFTSchemaIFTClientEvent *)self queriesCreated];
  if (v88)
  {
    v89 = v88;
    v90 = [(IFTSchemaIFTClientEvent *)self queriesCreated];
    v91 = [v4 queriesCreated];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
  v7 = [v4 actionResolverRequestCreated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v93 = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
  if (v93)
  {
    v94 = v93;
    v95 = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
    v96 = [v4 actionResolverRequestCreated];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
  v7 = [v4 responseGenerationRequest];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v98 = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
  if (v98)
  {
    v99 = v98;
    v100 = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
    v101 = [v4 responseGenerationRequest];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self actionCancelled];
  v7 = [v4 actionCancelled];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v103 = [(IFTSchemaIFTClientEvent *)self actionCancelled];
  if (v103)
  {
    v104 = v103;
    v105 = [(IFTSchemaIFTClientEvent *)self actionCancelled];
    v106 = [v4 actionCancelled];
    v107 = [v105 isEqual:v106];

    if (!v107)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self continuePlanning];
  v7 = [v4 continuePlanning];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v108 = [(IFTSchemaIFTClientEvent *)self continuePlanning];
  if (v108)
  {
    v109 = v108;
    v110 = [(IFTSchemaIFTClientEvent *)self continuePlanning];
    v111 = [v4 continuePlanning];
    v112 = [v110 isEqual:v111];

    if (!v112)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self skipStatement];
  v7 = [v4 skipStatement];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v113 = [(IFTSchemaIFTClientEvent *)self skipStatement];
  if (v113)
  {
    v114 = v113;
    v115 = [(IFTSchemaIFTClientEvent *)self skipStatement];
    v116 = [v4 skipStatement];
    v117 = [v115 isEqual:v116];

    if (!v117)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
  v7 = [v4 executionPreconditionEvaluatorRequest];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v118 = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
  if (v118)
  {
    v119 = v118;
    v120 = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
    v121 = [v4 executionPreconditionEvaluatorRequest];
    v122 = [v120 isEqual:v121];

    if (!v122)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self actionCreated];
  v7 = [v4 actionCreated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v123 = [(IFTSchemaIFTClientEvent *)self actionCreated];
  if (v123)
  {
    v124 = v123;
    v125 = [(IFTSchemaIFTClientEvent *)self actionCreated];
    v126 = [v4 actionCreated];
    v127 = [v125 isEqual:v126];

    if (!v127)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
  v7 = [v4 clientActionCreated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v128 = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
  if (v128)
  {
    v129 = v128;
    v130 = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
    v131 = [v4 clientActionCreated];
    v132 = [v130 isEqual:v131];

    if (!v132)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
  v7 = [v4 queriesExecuted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v133 = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
  if (v133)
  {
    v134 = v133;
    v135 = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
    v136 = [v4 queriesExecuted];
    v137 = [v135 isEqual:v136];

    if (!v137)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
  v7 = [v4 statementEvaluated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v138 = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
  if (v138)
  {
    v139 = v138;
    v140 = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
    v141 = [v4 statementEvaluated];
    v142 = [v140 isEqual:v141];

    if (!v142)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
  v7 = [v4 systemResponseGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v143 = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
  if (v143)
  {
    v144 = v143;
    v145 = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
    v146 = [v4 systemResponseGenerated];
    v147 = [v145 isEqual:v146];

    if (!v147)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self criticalError];
  v7 = [v4 criticalError];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_152;
  }

  v148 = [(IFTSchemaIFTClientEvent *)self criticalError];
  if (v148)
  {
    v149 = v148;
    v150 = [(IFTSchemaIFTClientEvent *)self criticalError];
    v151 = [v4 criticalError];
    v152 = [v150 isEqual:v151];

    if (!v152)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTClientEvent *)self recoverableError];
  v7 = [v4 recoverableError];
  if ((v6 != 0) != (v7 == 0))
  {
    v153 = [(IFTSchemaIFTClientEvent *)self recoverableError];
    if (!v153)
    {

LABEL_156:
      v158 = 1;
      goto LABEL_154;
    }

    v154 = v153;
    v155 = [(IFTSchemaIFTClientEvent *)self recoverableError];
    v156 = [v4 recoverableError];
    v157 = [v155 isEqual:v156];

    if (v157)
    {
      goto LABEL_156;
    }
  }

  else
  {
LABEL_152:
  }

LABEL_153:
  v158 = 0;
LABEL_154:

  return v158;
}

- (void)writeTo:(id)a3
{
  v65 = a3;
  v4 = [(IFTSchemaIFTClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(IFTSchemaIFTClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];

  if (v6)
  {
    v7 = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];

  if (v8)
  {
    v9 = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IFTSchemaIFTClientEvent *)self terminate];

  if (v10)
  {
    v11 = [(IFTSchemaIFTClientEvent *)self terminate];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(IFTSchemaIFTClientEvent *)self sessionStart];

  if (v12)
  {
    v13 = [(IFTSchemaIFTClientEvent *)self sessionStart];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(IFTSchemaIFTClientEvent *)self request];

  if (v14)
  {
    v15 = [(IFTSchemaIFTClientEvent *)self request];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];

  if (v16)
  {
    v17 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];

  if (v18)
  {
    v19 = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(IFTSchemaIFTClientEvent *)self contextRetrieved];

  if (v20)
  {
    v21 = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];

  if (v22)
  {
    v23 = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];

  if (v24)
  {
    v25 = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];

  if (v26)
  {
    v27 = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(IFTSchemaIFTClientEvent *)self planCreated];

  if (v28)
  {
    v29 = [(IFTSchemaIFTClientEvent *)self planCreated];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];

  if (v30)
  {
    v31 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(IFTSchemaIFTClientEvent *)self variablesSet];

  if (v32)
  {
    v33 = [(IFTSchemaIFTClientEvent *)self variablesSet];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(IFTSchemaIFTClientEvent *)self toolResolution];

  if (v34)
  {
    v35 = [(IFTSchemaIFTClientEvent *)self toolResolution];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(IFTSchemaIFTClientEvent *)self queriesCreated];

  if (v36)
  {
    v37 = [(IFTSchemaIFTClientEvent *)self queriesCreated];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];

  if (v38)
  {
    v39 = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];

  if (v40)
  {
    v41 = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
    PBDataWriterWriteSubmessage();
  }

  v42 = [(IFTSchemaIFTClientEvent *)self actionCancelled];

  if (v42)
  {
    v43 = [(IFTSchemaIFTClientEvent *)self actionCancelled];
    PBDataWriterWriteSubmessage();
  }

  v44 = [(IFTSchemaIFTClientEvent *)self continuePlanning];

  if (v44)
  {
    v45 = [(IFTSchemaIFTClientEvent *)self continuePlanning];
    PBDataWriterWriteSubmessage();
  }

  v46 = [(IFTSchemaIFTClientEvent *)self skipStatement];

  if (v46)
  {
    v47 = [(IFTSchemaIFTClientEvent *)self skipStatement];
    PBDataWriterWriteSubmessage();
  }

  v48 = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];

  if (v48)
  {
    v49 = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
    PBDataWriterWriteSubmessage();
  }

  v50 = [(IFTSchemaIFTClientEvent *)self actionCreated];

  if (v50)
  {
    v51 = [(IFTSchemaIFTClientEvent *)self actionCreated];
    PBDataWriterWriteSubmessage();
  }

  v52 = [(IFTSchemaIFTClientEvent *)self clientActionCreated];

  if (v52)
  {
    v53 = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
    PBDataWriterWriteSubmessage();
  }

  v54 = [(IFTSchemaIFTClientEvent *)self queriesExecuted];

  if (v54)
  {
    v55 = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
    PBDataWriterWriteSubmessage();
  }

  v56 = [(IFTSchemaIFTClientEvent *)self statementEvaluated];

  if (v56)
  {
    v57 = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
    PBDataWriterWriteSubmessage();
  }

  v58 = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];

  if (v58)
  {
    v59 = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
    PBDataWriterWriteSubmessage();
  }

  v60 = [(IFTSchemaIFTClientEvent *)self criticalError];

  if (v60)
  {
    v61 = [(IFTSchemaIFTClientEvent *)self criticalError];
    PBDataWriterWriteSubmessage();
  }

  v62 = [(IFTSchemaIFTClientEvent *)self recoverableError];

  v63 = v65;
  if (v62)
  {
    v64 = [(IFTSchemaIFTClientEvent *)self recoverableError];
    PBDataWriterWriteSubmessage();

    v63 = v65;
  }
}

- (void)deleteRecoverableError
{
  if (self->_whichEvent_Type == 125)
  {
    self->_whichEvent_Type = 0;
    self->_recoverableError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRecoverableError)recoverableError
{
  if (self->_whichEvent_Type == 125)
  {
    v3 = self->_recoverableError;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRecoverableError:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  v33 = 125;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  recoverableError = self->_recoverableError;
  self->_recoverableError = v4;
}

- (void)deleteCriticalError
{
  if (self->_whichEvent_Type == 120)
  {
    self->_whichEvent_Type = 0;
    self->_criticalError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSessionError)criticalError
{
  if (self->_whichEvent_Type == 120)
  {
    v3 = self->_criticalError;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCriticalError:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 120;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  criticalError = self->_criticalError;
  self->_criticalError = v4;
}

- (void)deleteSystemResponseGenerated
{
  if (self->_whichEvent_Type == 119)
  {
    self->_whichEvent_Type = 0;
    self->_systemResponseGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSystemResponse)systemResponseGenerated
{
  if (self->_whichEvent_Type == 119)
  {
    v3 = self->_systemResponseGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSystemResponseGenerated:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 119;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = v4;
}

- (void)deleteStatementEvaluated
{
  if (self->_whichEvent_Type == 118)
  {
    self->_whichEvent_Type = 0;
    self->_statementEvaluated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTStatementResult)statementEvaluated
{
  if (self->_whichEvent_Type == 118)
  {
    v3 = self->_statementEvaluated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStatementEvaluated:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 118;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = v4;
}

- (void)deleteQueriesExecuted
{
  if (self->_whichEvent_Type == 117)
  {
    self->_whichEvent_Type = 0;
    self->_queriesExecuted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTQueryStepResults)queriesExecuted
{
  if (self->_whichEvent_Type == 117)
  {
    v3 = self->_queriesExecuted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setQueriesExecuted:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 117;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = v4;
}

- (void)deleteClientActionCreated
{
  if (self->_whichEvent_Type == 116)
  {
    self->_whichEvent_Type = 0;
    self->_clientActionCreated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTClientAction)clientActionCreated
{
  if (self->_whichEvent_Type == 116)
  {
    v3 = self->_clientActionCreated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setClientActionCreated:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 116;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = v4;
}

- (void)deleteActionCreated
{
  if (self->_whichEvent_Type == 115)
  {
    self->_whichEvent_Type = 0;
    self->_actionCreated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTAction)actionCreated
{
  if (self->_whichEvent_Type == 115)
  {
    v3 = self->_actionCreated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionCreated:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 115;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  actionCreated = self->_actionCreated;
  self->_actionCreated = v4;
}

- (void)deleteExecutionPreconditionEvaluatorRequest
{
  if (self->_whichEvent_Type == 129)
  {
    self->_whichEvent_Type = 0;
    self->_executionPreconditionEvaluatorRequest = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTExecutionPreconditionEvaluatorRequest)executionPreconditionEvaluatorRequest
{
  if (self->_whichEvent_Type == 129)
  {
    v3 = self->_executionPreconditionEvaluatorRequest;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExecutionPreconditionEvaluatorRequest:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 129;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = v4;
}

- (void)deleteSkipStatement
{
  if (self->_whichEvent_Type == 128)
  {
    self->_whichEvent_Type = 0;
    self->_skipStatement = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSkipStatement)skipStatement
{
  if (self->_whichEvent_Type == 128)
  {
    v3 = self->_skipStatement;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSkipStatement:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  self->_whichEvent_Type = (v4 != 0) << 7;
  skipStatement = self->_skipStatement;
  self->_skipStatement = v4;
}

- (void)deleteContinuePlanning
{
  if (self->_whichEvent_Type == 124)
  {
    self->_whichEvent_Type = 0;
    self->_continuePlanning = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTContinuePlanning)continuePlanning
{
  if (self->_whichEvent_Type == 124)
  {
    v3 = self->_continuePlanning;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContinuePlanning:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 124;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = v4;
}

- (void)deleteActionCancelled
{
  if (self->_whichEvent_Type == 114)
  {
    self->_whichEvent_Type = 0;
    self->_actionCancelled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTActionCancellation)actionCancelled
{
  if (self->_whichEvent_Type == 114)
  {
    v3 = self->_actionCancelled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionCancelled:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 114;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = v4;
}

- (void)deleteResponseGenerationRequest
{
  if (self->_whichEvent_Type == 113)
  {
    self->_whichEvent_Type = 0;
    self->_responseGenerationRequest = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTResponseGenerationRequest)responseGenerationRequest
{
  if (self->_whichEvent_Type == 113)
  {
    v3 = self->_responseGenerationRequest;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setResponseGenerationRequest:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 113;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = v4;
}

- (void)deleteActionResolverRequestCreated
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_actionResolverRequestCreated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTActionResolverRequest)actionResolverRequestCreated
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_actionResolverRequestCreated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionResolverRequestCreated:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 112;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = v4;
}

- (void)deleteQueriesCreated
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_queriesCreated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTQueryStep)queriesCreated
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_queriesCreated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setQueriesCreated:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 111;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = v4;
}

- (void)deleteToolResolution
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_toolResolution = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTToolResolution)toolResolution
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_toolResolution;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setToolResolution:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 110;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  toolResolution = self->_toolResolution;
  self->_toolResolution = v4;
}

- (void)deleteVariablesSet
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_variablesSet = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTVariableStep)variablesSet
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_variablesSet;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVariablesSet:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 109;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  variablesSet = self->_variablesSet;
  self->_variablesSet = v4;
}

- (void)deleteAstFlatExprSearchVariantTier1
{
  if (self->_whichEvent_Type == 123)
  {
    self->_whichEvent_Type = 0;
    self->_astFlatExprSearchVariantTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprSearchVariantTier1)astFlatExprSearchVariantTier1
{
  if (self->_whichEvent_Type == 123)
  {
    v3 = self->_astFlatExprSearchVariantTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setAstFlatExprSearchVariantTier1:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 123;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = v4;
}

- (void)deletePlanCreated
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_planCreated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPlan)planCreated
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_planCreated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlanCreated:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 108;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  planCreated = self->_planCreated;
  self->_planCreated = v4;
}

- (void)deleteQueryDecorationPrePlannerResult
{
  if (self->_whichEvent_Type == 127)
  {
    self->_whichEvent_Type = 0;
    self->_queryDecorationPrePlannerResult = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTQueryDecorationPrePlannerResult)queryDecorationPrePlannerResult
{
  if (self->_whichEvent_Type == 127)
  {
    v3 = self->_queryDecorationPrePlannerResult;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setQueryDecorationPrePlannerResult:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 127;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = v4;
}

- (void)deleteQueryDecorationResult
{
  if (self->_whichEvent_Type == 121)
  {
    self->_whichEvent_Type = 0;
    self->_queryDecorationResult = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTQueryDecorationResult)queryDecorationResult
{
  if (self->_whichEvent_Type == 121)
  {
    v3 = self->_queryDecorationResult;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setQueryDecorationResult:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 121;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = v4;
}

- (void)deleteToolsRetrieved
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_toolsRetrieved = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTToolRetrievalResponse)toolsRetrieved
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_toolsRetrieved;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setToolsRetrieved:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 107;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = v4;
}

- (void)deleteContextRetrieved
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_contextRetrieved = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTContextRetrieved)contextRetrieved
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_contextRetrieved;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContextRetrieved:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 106;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = v4;
}

- (void)deleteEntitySpanMatched
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_entitySpanMatched = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTEntitySpanMatchResult)entitySpanMatched
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_entitySpanMatched;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEntitySpanMatched:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 105;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = v4;
}

- (void)deleteRequestContextTextContentTier1
{
  if (self->_whichEvent_Type == 122)
  {
    self->_whichEvent_Type = 0;
    self->_requestContextTextContentTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequestContentTextContentTier1)requestContextTextContentTier1
{
  if (self->_whichEvent_Type == 122)
  {
    v3 = self->_requestContextTextContentTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequestContextTextContentTier1:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 122;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = v4;
}

- (void)deleteRequest
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_request = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRequest)request
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_request;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequest:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 104;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  request = self->_request;
  self->_request = v4;
}

- (void)deleteSessionStart
{
  if (self->_whichEvent_Type == 126)
  {
    self->_whichEvent_Type = 0;
    self->_sessionStart = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSessionStart)sessionStart
{
  if (self->_whichEvent_Type == 126)
  {
    v3 = self->_sessionStart;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSessionStart:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 126;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  sessionStart = self->_sessionStart;
  self->_sessionStart = v4;
}

- (void)deleteTerminate
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_terminate = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTTerminate)terminate
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_terminate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTerminate:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 103;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  terminate = self->_terminate;
  self->_terminate = v4;
}

- (void)deleteContextPrewarmCompleted
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_contextPrewarmCompleted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTContextPrewarmCompleted)contextPrewarmCompleted
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_contextPrewarmCompleted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContextPrewarmCompleted:(id)a3
{
  v4 = a3;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 102;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = v4;
}

- (void)deleteContextPrewarmRequest
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_contextPrewarmRequest = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTContextPrewarmRequest)contextPrewarmRequest
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_contextPrewarmRequest;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContextPrewarmRequest:(id)a3
{
  v4 = a3;
  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = 0;

  terminate = self->_terminate;
  self->_terminate = 0;

  sessionStart = self->_sessionStart;
  self->_sessionStart = 0;

  request = self->_request;
  self->_request = 0;

  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = 0;

  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = 0;

  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = 0;

  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = 0;

  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = 0;

  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = 0;

  planCreated = self->_planCreated;
  self->_planCreated = 0;

  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = 0;

  variablesSet = self->_variablesSet;
  self->_variablesSet = 0;

  toolResolution = self->_toolResolution;
  self->_toolResolution = 0;

  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = 0;

  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = 0;

  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = 0;

  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  skipStatement = self->_skipStatement;
  self->_skipStatement = 0;

  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = 0;

  actionCreated = self->_actionCreated;
  self->_actionCreated = 0;

  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = 0;

  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = 0;

  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = 0;

  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = 0;

  criticalError = self->_criticalError;
  self->_criticalError = 0;

  recoverableError = self->_recoverableError;
  self->_recoverableError = 0;

  v33 = 101;
  if (!v4)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(IFTSchemaIFTClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 0x1C)
  {
    return @"com.apple.aiml.siri.ift.IFTClientEvent";
  }

  else
  {
    return off_1E78D8320[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v98.receiver = self;
  v98.super_class = IFTSchemaIFTClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v98 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  v6 = [(IFTSchemaIFTClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTClientEvent *)self deleteEventMetadata];
  }

  v9 = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTClientEvent *)self deleteContextPrewarmRequest];
  }

  v12 = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTClientEvent *)self deleteContextPrewarmCompleted];
  }

  v15 = [(IFTSchemaIFTClientEvent *)self terminate];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(IFTSchemaIFTClientEvent *)self deleteTerminate];
  }

  v18 = [(IFTSchemaIFTClientEvent *)self sessionStart];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(IFTSchemaIFTClientEvent *)self deleteSessionStart];
  }

  v21 = [(IFTSchemaIFTClientEvent *)self request];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequest];
  }

  v24 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
  }

  v27 = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(IFTSchemaIFTClientEvent *)self deleteEntitySpanMatched];
  }

  v30 = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(IFTSchemaIFTClientEvent *)self deleteContextRetrieved];
  }

  v33 = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(IFTSchemaIFTClientEvent *)self deleteToolsRetrieved];
  }

  v36 = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(IFTSchemaIFTClientEvent *)self deleteQueryDecorationResult];
  }

  v39 = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(IFTSchemaIFTClientEvent *)self deleteQueryDecorationPrePlannerResult];
  }

  v42 = [(IFTSchemaIFTClientEvent *)self planCreated];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(IFTSchemaIFTClientEvent *)self deletePlanCreated];
  }

  v45 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  v48 = [(IFTSchemaIFTClientEvent *)self variablesSet];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(IFTSchemaIFTClientEvent *)self deleteVariablesSet];
  }

  v51 = [(IFTSchemaIFTClientEvent *)self toolResolution];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(IFTSchemaIFTClientEvent *)self deleteToolResolution];
  }

  v54 = [(IFTSchemaIFTClientEvent *)self queriesCreated];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(IFTSchemaIFTClientEvent *)self deleteQueriesCreated];
  }

  v57 = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(IFTSchemaIFTClientEvent *)self deleteActionResolverRequestCreated];
  }

  v60 = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(IFTSchemaIFTClientEvent *)self deleteResponseGenerationRequest];
  }

  v63 = [(IFTSchemaIFTClientEvent *)self actionCancelled];
  v64 = [v63 applySensitiveConditionsPolicy:v4];
  v65 = [v64 suppressMessage];

  if (v65)
  {
    [(IFTSchemaIFTClientEvent *)self deleteActionCancelled];
  }

  v66 = [(IFTSchemaIFTClientEvent *)self continuePlanning];
  v67 = [v66 applySensitiveConditionsPolicy:v4];
  v68 = [v67 suppressMessage];

  if (v68)
  {
    [(IFTSchemaIFTClientEvent *)self deleteContinuePlanning];
  }

  v69 = [(IFTSchemaIFTClientEvent *)self skipStatement];
  v70 = [v69 applySensitiveConditionsPolicy:v4];
  v71 = [v70 suppressMessage];

  if (v71)
  {
    [(IFTSchemaIFTClientEvent *)self deleteSkipStatement];
  }

  v72 = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
  v73 = [v72 applySensitiveConditionsPolicy:v4];
  v74 = [v73 suppressMessage];

  if (v74)
  {
    [(IFTSchemaIFTClientEvent *)self deleteExecutionPreconditionEvaluatorRequest];
  }

  v75 = [(IFTSchemaIFTClientEvent *)self actionCreated];
  v76 = [v75 applySensitiveConditionsPolicy:v4];
  v77 = [v76 suppressMessage];

  if (v77)
  {
    [(IFTSchemaIFTClientEvent *)self deleteActionCreated];
  }

  v78 = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
  v79 = [v78 applySensitiveConditionsPolicy:v4];
  v80 = [v79 suppressMessage];

  if (v80)
  {
    [(IFTSchemaIFTClientEvent *)self deleteClientActionCreated];
  }

  v81 = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
  v82 = [v81 applySensitiveConditionsPolicy:v4];
  v83 = [v82 suppressMessage];

  if (v83)
  {
    [(IFTSchemaIFTClientEvent *)self deleteQueriesExecuted];
  }

  v84 = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
  v85 = [v84 applySensitiveConditionsPolicy:v4];
  v86 = [v85 suppressMessage];

  if (v86)
  {
    [(IFTSchemaIFTClientEvent *)self deleteStatementEvaluated];
  }

  v87 = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
  v88 = [v87 applySensitiveConditionsPolicy:v4];
  v89 = [v88 suppressMessage];

  if (v89)
  {
    [(IFTSchemaIFTClientEvent *)self deleteSystemResponseGenerated];
  }

  v90 = [(IFTSchemaIFTClientEvent *)self criticalError];
  v91 = [v90 applySensitiveConditionsPolicy:v4];
  v92 = [v91 suppressMessage];

  if (v92)
  {
    [(IFTSchemaIFTClientEvent *)self deleteCriticalError];
  }

  v93 = [(IFTSchemaIFTClientEvent *)self recoverableError];
  v94 = [v93 applySensitiveConditionsPolicy:v4];
  v95 = [v94 suppressMessage];

  if (v95)
  {
    [(IFTSchemaIFTClientEvent *)self deleteRecoverableError];
  }

  v96 = v5;

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  v2 = [(IFTSchemaIFTClientEvent *)self eventMetadata];
  v3 = [v2 ifRequestId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 45;
      }

      else
      {
        LODWORD(v4) = 0;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (id)getComponentId
{
  v2 = [(IFTSchemaIFTClientEvent *)self eventMetadata];
  v3 = [v2 ifRequestId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(IFTSchemaIFTClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 0x1C)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9A38[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 0x1C)
  {
    return 0;
  }

  else
  {
    return off_1E78E9B20[a3 - 101];
  }
}

@end