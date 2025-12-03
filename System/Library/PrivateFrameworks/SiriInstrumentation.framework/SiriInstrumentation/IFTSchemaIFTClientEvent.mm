@interface IFTSchemaIFTClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (IFTSchemaASTFlatExprSearchVariantTier1)astFlatExprSearchVariantTier1;
- (IFTSchemaIFTAction)actionCreated;
- (IFTSchemaIFTActionCancellation)actionCancelled;
- (IFTSchemaIFTActionResolverRequest)actionResolverRequestCreated;
- (IFTSchemaIFTClientAction)clientActionCreated;
- (IFTSchemaIFTClientEvent)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTClientEvent)initWithJSON:(id)n;
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
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setActionCancelled:(id)cancelled;
- (void)setActionCreated:(id)created;
- (void)setActionResolverRequestCreated:(id)created;
- (void)setAstFlatExprSearchVariantTier1:(id)tier1;
- (void)setClientActionCreated:(id)created;
- (void)setContextPrewarmCompleted:(id)completed;
- (void)setContextPrewarmRequest:(id)request;
- (void)setContextRetrieved:(id)retrieved;
- (void)setContinuePlanning:(id)planning;
- (void)setCriticalError:(id)error;
- (void)setEntitySpanMatched:(id)matched;
- (void)setExecutionPreconditionEvaluatorRequest:(id)request;
- (void)setPlanCreated:(id)created;
- (void)setQueriesCreated:(id)created;
- (void)setQueriesExecuted:(id)executed;
- (void)setQueryDecorationPrePlannerResult:(id)result;
- (void)setQueryDecorationResult:(id)result;
- (void)setRecoverableError:(id)error;
- (void)setRequest:(id)request;
- (void)setRequestContextTextContentTier1:(id)tier1;
- (void)setResponseGenerationRequest:(id)request;
- (void)setSessionStart:(id)start;
- (void)setSkipStatement:(id)statement;
- (void)setStatementEvaluated:(id)evaluated;
- (void)setSystemResponseGenerated:(id)generated;
- (void)setTerminate:(id)terminate;
- (void)setToolResolution:(id)resolution;
- (void)setToolsRetrieved:(id)retrieved;
- (void)setVariablesSet:(id)set;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTClientEvent

- (IFTSchemaIFTClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v91.receiver = self;
  v91.super_class = IFTSchemaIFTClientEvent;
  v5 = [(IFTSchemaIFTClientEvent *)&v91 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTClientEventMetadata alloc] initWithDictionary:v6];
      [(IFTSchemaIFTClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"contextPrewarmRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTContextPrewarmRequest alloc] initWithDictionary:v8];
      [(IFTSchemaIFTClientEvent *)v5 setContextPrewarmRequest:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"contextPrewarmCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTContextPrewarmCompleted alloc] initWithDictionary:v10];
      [(IFTSchemaIFTClientEvent *)v5 setContextPrewarmCompleted:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"terminate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTTerminate alloc] initWithDictionary:v12];
      [(IFTSchemaIFTClientEvent *)v5 setTerminate:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"sessionStart"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IFTSchemaIFTSessionStart alloc] initWithDictionary:v14];
      [(IFTSchemaIFTClientEvent *)v5 setSessionStart:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"request"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaIFTRequest alloc] initWithDictionary:v16];
      [(IFTSchemaIFTClientEvent *)v5 setRequest:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"requestContextTextContentTier1"];
    objc_opt_class();
    v90 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[IFTSchemaIFTRequestContentTextContentTier1 alloc] initWithDictionary:v18];
      [(IFTSchemaIFTClientEvent *)v5 setRequestContextTextContentTier1:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"entitySpanMatched"];
    objc_opt_class();
    v89 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[IFTSchemaIFTEntitySpanMatchResult alloc] initWithDictionary:v20];
      [(IFTSchemaIFTClientEvent *)v5 setEntitySpanMatched:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"contextRetrieved"];
    objc_opt_class();
    v88 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[IFTSchemaIFTContextRetrieved alloc] initWithDictionary:v22];
      [(IFTSchemaIFTClientEvent *)v5 setContextRetrieved:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"toolsRetrieved"];
    objc_opt_class();
    v87 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[IFTSchemaIFTToolRetrievalResponse alloc] initWithDictionary:v24];
      [(IFTSchemaIFTClientEvent *)v5 setToolsRetrieved:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationResult"];
    objc_opt_class();
    v86 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[IFTSchemaIFTQueryDecorationResult alloc] initWithDictionary:v26];
      [(IFTSchemaIFTClientEvent *)v5 setQueryDecorationResult:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationPrePlannerResult"];
    objc_opt_class();
    v85 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[IFTSchemaIFTQueryDecorationPrePlannerResult alloc] initWithDictionary:v28];
      [(IFTSchemaIFTClientEvent *)v5 setQueryDecorationPrePlannerResult:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"planCreated"];
    objc_opt_class();
    v84 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[IFTSchemaIFTPlan alloc] initWithDictionary:v30];
      [(IFTSchemaIFTClientEvent *)v5 setPlanCreated:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"astFlatExprSearchVariantTier1"];
    objc_opt_class();
    v83 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[IFTSchemaASTFlatExprSearchVariantTier1 alloc] initWithDictionary:v32];
      [(IFTSchemaIFTClientEvent *)v5 setAstFlatExprSearchVariantTier1:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"variablesSet"];
    objc_opt_class();
    v82 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[IFTSchemaIFTVariableStep alloc] initWithDictionary:v34];
      [(IFTSchemaIFTClientEvent *)v5 setVariablesSet:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"toolResolution"];
    objc_opt_class();
    v81 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[IFTSchemaIFTToolResolution alloc] initWithDictionary:v36];
      [(IFTSchemaIFTClientEvent *)v5 setToolResolution:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"queriesCreated"];
    objc_opt_class();
    v80 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[IFTSchemaIFTQueryStep alloc] initWithDictionary:v38];
      [(IFTSchemaIFTClientEvent *)v5 setQueriesCreated:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"actionResolverRequestCreated"];
    objc_opt_class();
    v79 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[IFTSchemaIFTActionResolverRequest alloc] initWithDictionary:v40];
      [(IFTSchemaIFTClientEvent *)v5 setActionResolverRequestCreated:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationRequest"];
    objc_opt_class();
    v78 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[IFTSchemaIFTResponseGenerationRequest alloc] initWithDictionary:v42];
      [(IFTSchemaIFTClientEvent *)v5 setResponseGenerationRequest:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"actionCancelled"];
    objc_opt_class();
    v77 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[IFTSchemaIFTActionCancellation alloc] initWithDictionary:v44];
      [(IFTSchemaIFTClientEvent *)v5 setActionCancelled:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"continuePlanning"];
    objc_opt_class();
    v76 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[IFTSchemaIFTContinuePlanning alloc] initWithDictionary:v46];
      [(IFTSchemaIFTClientEvent *)v5 setContinuePlanning:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"skipStatement"];
    objc_opt_class();
    v75 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[IFTSchemaIFTSkipStatement alloc] initWithDictionary:v48];
      [(IFTSchemaIFTClientEvent *)v5 setSkipStatement:v49];
    }

    v69 = v16;
    v50 = [dictionaryCopy objectForKeyedSubscript:@"executionPreconditionEvaluatorRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[IFTSchemaIFTExecutionPreconditionEvaluatorRequest alloc] initWithDictionary:v50];
      [(IFTSchemaIFTClientEvent *)v5 setExecutionPreconditionEvaluatorRequest:v51];
    }

    v74 = v6;
    v52 = [dictionaryCopy objectForKeyedSubscript:{@"actionCreated", v50}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [[IFTSchemaIFTAction alloc] initWithDictionary:v52];
      [(IFTSchemaIFTClientEvent *)v5 setActionCreated:v53];
    }

    v73 = v8;
    v54 = [dictionaryCopy objectForKeyedSubscript:@"clientActionCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [[IFTSchemaIFTClientAction alloc] initWithDictionary:v54];
      [(IFTSchemaIFTClientEvent *)v5 setClientActionCreated:v55];
    }

    v72 = v10;
    v56 = [dictionaryCopy objectForKeyedSubscript:@"queriesExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = [[IFTSchemaIFTQueryStepResults alloc] initWithDictionary:v56];
      [(IFTSchemaIFTClientEvent *)v5 setQueriesExecuted:v57];
    }

    v71 = v12;
    v58 = [dictionaryCopy objectForKeyedSubscript:@"statementEvaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v59 = [[IFTSchemaIFTStatementResult alloc] initWithDictionary:v58];
      [(IFTSchemaIFTClientEvent *)v5 setStatementEvaluated:v59];
    }

    v70 = v14;
    v60 = [dictionaryCopy objectForKeyedSubscript:@"systemResponseGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = [[IFTSchemaIFTSystemResponse alloc] initWithDictionary:v60];
      [(IFTSchemaIFTClientEvent *)v5 setSystemResponseGenerated:v61];
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"criticalError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = [[IFTSchemaIFTSessionError alloc] initWithDictionary:v62];
      [(IFTSchemaIFTClientEvent *)v5 setCriticalError:v63];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"recoverableError"];
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

- (IFTSchemaIFTClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTClientEvent *)self dictionaryRepresentation];
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
  if (self->_actionCancelled)
  {
    actionCancelled = [(IFTSchemaIFTClientEvent *)self actionCancelled];
    dictionaryRepresentation = [actionCancelled dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionCancelled"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionCancelled"];
    }
  }

  if (self->_actionCreated)
  {
    actionCreated = [(IFTSchemaIFTClientEvent *)self actionCreated];
    dictionaryRepresentation2 = [actionCreated dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"actionCreated"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"actionCreated"];
    }
  }

  if (self->_actionResolverRequestCreated)
  {
    actionResolverRequestCreated = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
    dictionaryRepresentation3 = [actionResolverRequestCreated dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"actionResolverRequestCreated"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"actionResolverRequestCreated"];
    }
  }

  if (self->_astFlatExprSearchVariantTier1)
  {
    astFlatExprSearchVariantTier1 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
    dictionaryRepresentation4 = [astFlatExprSearchVariantTier1 dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"astFlatExprSearchVariantTier1"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"astFlatExprSearchVariantTier1"];
    }
  }

  if (self->_clientActionCreated)
  {
    clientActionCreated = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
    dictionaryRepresentation5 = [clientActionCreated dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"clientActionCreated"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"clientActionCreated"];
    }
  }

  if (self->_contextPrewarmCompleted)
  {
    contextPrewarmCompleted = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
    dictionaryRepresentation6 = [contextPrewarmCompleted dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"contextPrewarmCompleted"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"contextPrewarmCompleted"];
    }
  }

  if (self->_contextPrewarmRequest)
  {
    contextPrewarmRequest = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
    dictionaryRepresentation7 = [contextPrewarmRequest dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"contextPrewarmRequest"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"contextPrewarmRequest"];
    }
  }

  if (self->_contextRetrieved)
  {
    contextRetrieved = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
    dictionaryRepresentation8 = [contextRetrieved dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"contextRetrieved"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"contextRetrieved"];
    }
  }

  if (self->_continuePlanning)
  {
    continuePlanning = [(IFTSchemaIFTClientEvent *)self continuePlanning];
    dictionaryRepresentation9 = [continuePlanning dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"continuePlanning"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"continuePlanning"];
    }
  }

  if (self->_criticalError)
  {
    criticalError = [(IFTSchemaIFTClientEvent *)self criticalError];
    dictionaryRepresentation10 = [criticalError dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"criticalError"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"criticalError"];
    }
  }

  if (self->_entitySpanMatched)
  {
    entitySpanMatched = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
    dictionaryRepresentation11 = [entitySpanMatched dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"entitySpanMatched"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"entitySpanMatched"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(IFTSchemaIFTClientEvent *)self eventMetadata];
    dictionaryRepresentation12 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_executionPreconditionEvaluatorRequest)
  {
    executionPreconditionEvaluatorRequest = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
    dictionaryRepresentation13 = [executionPreconditionEvaluatorRequest dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"executionPreconditionEvaluatorRequest"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"executionPreconditionEvaluatorRequest"];
    }
  }

  if (self->_planCreated)
  {
    planCreated = [(IFTSchemaIFTClientEvent *)self planCreated];
    dictionaryRepresentation14 = [planCreated dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"planCreated"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"planCreated"];
    }
  }

  if (self->_queriesCreated)
  {
    queriesCreated = [(IFTSchemaIFTClientEvent *)self queriesCreated];
    dictionaryRepresentation15 = [queriesCreated dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"queriesCreated"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"queriesCreated"];
    }
  }

  if (self->_queriesExecuted)
  {
    queriesExecuted = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
    dictionaryRepresentation16 = [queriesExecuted dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"queriesExecuted"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"queriesExecuted"];
    }
  }

  if (self->_queryDecorationPrePlannerResult)
  {
    queryDecorationPrePlannerResult = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
    dictionaryRepresentation17 = [queryDecorationPrePlannerResult dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"queryDecorationPrePlannerResult"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"queryDecorationPrePlannerResult"];
    }
  }

  if (self->_queryDecorationResult)
  {
    queryDecorationResult = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
    dictionaryRepresentation18 = [queryDecorationResult dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"queryDecorationResult"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"queryDecorationResult"];
    }
  }

  if (self->_recoverableError)
  {
    recoverableError = [(IFTSchemaIFTClientEvent *)self recoverableError];
    dictionaryRepresentation19 = [recoverableError dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"recoverableError"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"recoverableError"];
    }
  }

  if (self->_request)
  {
    request = [(IFTSchemaIFTClientEvent *)self request];
    dictionaryRepresentation20 = [request dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"request"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"request"];
    }
  }

  if (self->_requestContextTextContentTier1)
  {
    requestContextTextContentTier1 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
    dictionaryRepresentation21 = [requestContextTextContentTier1 dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"requestContextTextContentTier1"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"requestContextTextContentTier1"];
    }
  }

  if (self->_responseGenerationRequest)
  {
    responseGenerationRequest = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
    dictionaryRepresentation22 = [responseGenerationRequest dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"responseGenerationRequest"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"responseGenerationRequest"];
    }
  }

  if (self->_sessionStart)
  {
    sessionStart = [(IFTSchemaIFTClientEvent *)self sessionStart];
    dictionaryRepresentation23 = [sessionStart dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"sessionStart"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"sessionStart"];
    }
  }

  if (self->_skipStatement)
  {
    skipStatement = [(IFTSchemaIFTClientEvent *)self skipStatement];
    dictionaryRepresentation24 = [skipStatement dictionaryRepresentation];
    if (dictionaryRepresentation24)
    {
      [dictionary setObject:dictionaryRepresentation24 forKeyedSubscript:@"skipStatement"];
    }

    else
    {
      null24 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null24 forKeyedSubscript:@"skipStatement"];
    }
  }

  if (self->_statementEvaluated)
  {
    statementEvaluated = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
    dictionaryRepresentation25 = [statementEvaluated dictionaryRepresentation];
    if (dictionaryRepresentation25)
    {
      [dictionary setObject:dictionaryRepresentation25 forKeyedSubscript:@"statementEvaluated"];
    }

    else
    {
      null25 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null25 forKeyedSubscript:@"statementEvaluated"];
    }
  }

  if (self->_systemResponseGenerated)
  {
    systemResponseGenerated = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
    dictionaryRepresentation26 = [systemResponseGenerated dictionaryRepresentation];
    if (dictionaryRepresentation26)
    {
      [dictionary setObject:dictionaryRepresentation26 forKeyedSubscript:@"systemResponseGenerated"];
    }

    else
    {
      null26 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null26 forKeyedSubscript:@"systemResponseGenerated"];
    }
  }

  if (self->_terminate)
  {
    terminate = [(IFTSchemaIFTClientEvent *)self terminate];
    dictionaryRepresentation27 = [terminate dictionaryRepresentation];
    if (dictionaryRepresentation27)
    {
      [dictionary setObject:dictionaryRepresentation27 forKeyedSubscript:@"terminate"];
    }

    else
    {
      null27 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null27 forKeyedSubscript:@"terminate"];
    }
  }

  if (self->_toolResolution)
  {
    toolResolution = [(IFTSchemaIFTClientEvent *)self toolResolution];
    dictionaryRepresentation28 = [toolResolution dictionaryRepresentation];
    if (dictionaryRepresentation28)
    {
      [dictionary setObject:dictionaryRepresentation28 forKeyedSubscript:@"toolResolution"];
    }

    else
    {
      null28 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null28 forKeyedSubscript:@"toolResolution"];
    }
  }

  if (self->_toolsRetrieved)
  {
    toolsRetrieved = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
    dictionaryRepresentation29 = [toolsRetrieved dictionaryRepresentation];
    if (dictionaryRepresentation29)
    {
      [dictionary setObject:dictionaryRepresentation29 forKeyedSubscript:@"toolsRetrieved"];
    }

    else
    {
      null29 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null29 forKeyedSubscript:@"toolsRetrieved"];
    }
  }

  if (self->_variablesSet)
  {
    variablesSet = [(IFTSchemaIFTClientEvent *)self variablesSet];
    dictionaryRepresentation30 = [variablesSet dictionaryRepresentation];
    if (dictionaryRepresentation30)
    {
      [dictionary setObject:dictionaryRepresentation30 forKeyedSubscript:@"variablesSet"];
    }

    else
    {
      null30 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null30 forKeyedSubscript:@"variablesSet"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v94 = dictionary;

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_153;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_153;
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  eventMetadata3 = [(IFTSchemaIFTClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(IFTSchemaIFTClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
  eventMetadata2 = [equalCopy contextPrewarmRequest];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  contextPrewarmRequest = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
  if (contextPrewarmRequest)
  {
    v14 = contextPrewarmRequest;
    contextPrewarmRequest2 = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
    contextPrewarmRequest3 = [equalCopy contextPrewarmRequest];
    v17 = [contextPrewarmRequest2 isEqual:contextPrewarmRequest3];

    if (!v17)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
  eventMetadata2 = [equalCopy contextPrewarmCompleted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  contextPrewarmCompleted = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
  if (contextPrewarmCompleted)
  {
    v19 = contextPrewarmCompleted;
    contextPrewarmCompleted2 = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
    contextPrewarmCompleted3 = [equalCopy contextPrewarmCompleted];
    v22 = [contextPrewarmCompleted2 isEqual:contextPrewarmCompleted3];

    if (!v22)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self terminate];
  eventMetadata2 = [equalCopy terminate];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  terminate = [(IFTSchemaIFTClientEvent *)self terminate];
  if (terminate)
  {
    v24 = terminate;
    terminate2 = [(IFTSchemaIFTClientEvent *)self terminate];
    terminate3 = [equalCopy terminate];
    v27 = [terminate2 isEqual:terminate3];

    if (!v27)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self sessionStart];
  eventMetadata2 = [equalCopy sessionStart];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  sessionStart = [(IFTSchemaIFTClientEvent *)self sessionStart];
  if (sessionStart)
  {
    v29 = sessionStart;
    sessionStart2 = [(IFTSchemaIFTClientEvent *)self sessionStart];
    sessionStart3 = [equalCopy sessionStart];
    v32 = [sessionStart2 isEqual:sessionStart3];

    if (!v32)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self request];
  eventMetadata2 = [equalCopy request];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  request = [(IFTSchemaIFTClientEvent *)self request];
  if (request)
  {
    v34 = request;
    request2 = [(IFTSchemaIFTClientEvent *)self request];
    request3 = [equalCopy request];
    v37 = [request2 isEqual:request3];

    if (!v37)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
  eventMetadata2 = [equalCopy requestContextTextContentTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  requestContextTextContentTier1 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
  if (requestContextTextContentTier1)
  {
    v39 = requestContextTextContentTier1;
    requestContextTextContentTier12 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
    requestContextTextContentTier13 = [equalCopy requestContextTextContentTier1];
    v42 = [requestContextTextContentTier12 isEqual:requestContextTextContentTier13];

    if (!v42)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
  eventMetadata2 = [equalCopy entitySpanMatched];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  entitySpanMatched = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
  if (entitySpanMatched)
  {
    v44 = entitySpanMatched;
    entitySpanMatched2 = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
    entitySpanMatched3 = [equalCopy entitySpanMatched];
    v47 = [entitySpanMatched2 isEqual:entitySpanMatched3];

    if (!v47)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
  eventMetadata2 = [equalCopy contextRetrieved];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  contextRetrieved = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
  if (contextRetrieved)
  {
    v49 = contextRetrieved;
    contextRetrieved2 = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
    contextRetrieved3 = [equalCopy contextRetrieved];
    v52 = [contextRetrieved2 isEqual:contextRetrieved3];

    if (!v52)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
  eventMetadata2 = [equalCopy toolsRetrieved];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  toolsRetrieved = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
  if (toolsRetrieved)
  {
    v54 = toolsRetrieved;
    toolsRetrieved2 = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
    toolsRetrieved3 = [equalCopy toolsRetrieved];
    v57 = [toolsRetrieved2 isEqual:toolsRetrieved3];

    if (!v57)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
  eventMetadata2 = [equalCopy queryDecorationResult];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  queryDecorationResult = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
  if (queryDecorationResult)
  {
    v59 = queryDecorationResult;
    queryDecorationResult2 = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
    queryDecorationResult3 = [equalCopy queryDecorationResult];
    v62 = [queryDecorationResult2 isEqual:queryDecorationResult3];

    if (!v62)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
  eventMetadata2 = [equalCopy queryDecorationPrePlannerResult];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  queryDecorationPrePlannerResult = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
  if (queryDecorationPrePlannerResult)
  {
    v64 = queryDecorationPrePlannerResult;
    queryDecorationPrePlannerResult2 = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
    queryDecorationPrePlannerResult3 = [equalCopy queryDecorationPrePlannerResult];
    v67 = [queryDecorationPrePlannerResult2 isEqual:queryDecorationPrePlannerResult3];

    if (!v67)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self planCreated];
  eventMetadata2 = [equalCopy planCreated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  planCreated = [(IFTSchemaIFTClientEvent *)self planCreated];
  if (planCreated)
  {
    v69 = planCreated;
    planCreated2 = [(IFTSchemaIFTClientEvent *)self planCreated];
    planCreated3 = [equalCopy planCreated];
    v72 = [planCreated2 isEqual:planCreated3];

    if (!v72)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
  eventMetadata2 = [equalCopy astFlatExprSearchVariantTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  astFlatExprSearchVariantTier1 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
  if (astFlatExprSearchVariantTier1)
  {
    v74 = astFlatExprSearchVariantTier1;
    astFlatExprSearchVariantTier12 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
    astFlatExprSearchVariantTier13 = [equalCopy astFlatExprSearchVariantTier1];
    v77 = [astFlatExprSearchVariantTier12 isEqual:astFlatExprSearchVariantTier13];

    if (!v77)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self variablesSet];
  eventMetadata2 = [equalCopy variablesSet];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  variablesSet = [(IFTSchemaIFTClientEvent *)self variablesSet];
  if (variablesSet)
  {
    v79 = variablesSet;
    variablesSet2 = [(IFTSchemaIFTClientEvent *)self variablesSet];
    variablesSet3 = [equalCopy variablesSet];
    v82 = [variablesSet2 isEqual:variablesSet3];

    if (!v82)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self toolResolution];
  eventMetadata2 = [equalCopy toolResolution];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  toolResolution = [(IFTSchemaIFTClientEvent *)self toolResolution];
  if (toolResolution)
  {
    v84 = toolResolution;
    toolResolution2 = [(IFTSchemaIFTClientEvent *)self toolResolution];
    toolResolution3 = [equalCopy toolResolution];
    v87 = [toolResolution2 isEqual:toolResolution3];

    if (!v87)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self queriesCreated];
  eventMetadata2 = [equalCopy queriesCreated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  queriesCreated = [(IFTSchemaIFTClientEvent *)self queriesCreated];
  if (queriesCreated)
  {
    v89 = queriesCreated;
    queriesCreated2 = [(IFTSchemaIFTClientEvent *)self queriesCreated];
    queriesCreated3 = [equalCopy queriesCreated];
    v92 = [queriesCreated2 isEqual:queriesCreated3];

    if (!v92)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
  eventMetadata2 = [equalCopy actionResolverRequestCreated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  actionResolverRequestCreated = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
  if (actionResolverRequestCreated)
  {
    v94 = actionResolverRequestCreated;
    actionResolverRequestCreated2 = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
    actionResolverRequestCreated3 = [equalCopy actionResolverRequestCreated];
    v97 = [actionResolverRequestCreated2 isEqual:actionResolverRequestCreated3];

    if (!v97)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
  eventMetadata2 = [equalCopy responseGenerationRequest];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  responseGenerationRequest = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
  if (responseGenerationRequest)
  {
    v99 = responseGenerationRequest;
    responseGenerationRequest2 = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
    responseGenerationRequest3 = [equalCopy responseGenerationRequest];
    v102 = [responseGenerationRequest2 isEqual:responseGenerationRequest3];

    if (!v102)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self actionCancelled];
  eventMetadata2 = [equalCopy actionCancelled];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  actionCancelled = [(IFTSchemaIFTClientEvent *)self actionCancelled];
  if (actionCancelled)
  {
    v104 = actionCancelled;
    actionCancelled2 = [(IFTSchemaIFTClientEvent *)self actionCancelled];
    actionCancelled3 = [equalCopy actionCancelled];
    v107 = [actionCancelled2 isEqual:actionCancelled3];

    if (!v107)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self continuePlanning];
  eventMetadata2 = [equalCopy continuePlanning];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  continuePlanning = [(IFTSchemaIFTClientEvent *)self continuePlanning];
  if (continuePlanning)
  {
    v109 = continuePlanning;
    continuePlanning2 = [(IFTSchemaIFTClientEvent *)self continuePlanning];
    continuePlanning3 = [equalCopy continuePlanning];
    v112 = [continuePlanning2 isEqual:continuePlanning3];

    if (!v112)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self skipStatement];
  eventMetadata2 = [equalCopy skipStatement];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  skipStatement = [(IFTSchemaIFTClientEvent *)self skipStatement];
  if (skipStatement)
  {
    v114 = skipStatement;
    skipStatement2 = [(IFTSchemaIFTClientEvent *)self skipStatement];
    skipStatement3 = [equalCopy skipStatement];
    v117 = [skipStatement2 isEqual:skipStatement3];

    if (!v117)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
  eventMetadata2 = [equalCopy executionPreconditionEvaluatorRequest];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  executionPreconditionEvaluatorRequest = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
  if (executionPreconditionEvaluatorRequest)
  {
    v119 = executionPreconditionEvaluatorRequest;
    executionPreconditionEvaluatorRequest2 = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
    executionPreconditionEvaluatorRequest3 = [equalCopy executionPreconditionEvaluatorRequest];
    v122 = [executionPreconditionEvaluatorRequest2 isEqual:executionPreconditionEvaluatorRequest3];

    if (!v122)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self actionCreated];
  eventMetadata2 = [equalCopy actionCreated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  actionCreated = [(IFTSchemaIFTClientEvent *)self actionCreated];
  if (actionCreated)
  {
    v124 = actionCreated;
    actionCreated2 = [(IFTSchemaIFTClientEvent *)self actionCreated];
    actionCreated3 = [equalCopy actionCreated];
    v127 = [actionCreated2 isEqual:actionCreated3];

    if (!v127)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
  eventMetadata2 = [equalCopy clientActionCreated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  clientActionCreated = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
  if (clientActionCreated)
  {
    v129 = clientActionCreated;
    clientActionCreated2 = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
    clientActionCreated3 = [equalCopy clientActionCreated];
    v132 = [clientActionCreated2 isEqual:clientActionCreated3];

    if (!v132)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
  eventMetadata2 = [equalCopy queriesExecuted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  queriesExecuted = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
  if (queriesExecuted)
  {
    v134 = queriesExecuted;
    queriesExecuted2 = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
    queriesExecuted3 = [equalCopy queriesExecuted];
    v137 = [queriesExecuted2 isEqual:queriesExecuted3];

    if (!v137)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
  eventMetadata2 = [equalCopy statementEvaluated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  statementEvaluated = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
  if (statementEvaluated)
  {
    v139 = statementEvaluated;
    statementEvaluated2 = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
    statementEvaluated3 = [equalCopy statementEvaluated];
    v142 = [statementEvaluated2 isEqual:statementEvaluated3];

    if (!v142)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
  eventMetadata2 = [equalCopy systemResponseGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  systemResponseGenerated = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
  if (systemResponseGenerated)
  {
    v144 = systemResponseGenerated;
    systemResponseGenerated2 = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
    systemResponseGenerated3 = [equalCopy systemResponseGenerated];
    v147 = [systemResponseGenerated2 isEqual:systemResponseGenerated3];

    if (!v147)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self criticalError];
  eventMetadata2 = [equalCopy criticalError];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_152;
  }

  criticalError = [(IFTSchemaIFTClientEvent *)self criticalError];
  if (criticalError)
  {
    v149 = criticalError;
    criticalError2 = [(IFTSchemaIFTClientEvent *)self criticalError];
    criticalError3 = [equalCopy criticalError];
    v152 = [criticalError2 isEqual:criticalError3];

    if (!v152)
    {
      goto LABEL_153;
    }
  }

  else
  {
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self recoverableError];
  eventMetadata2 = [equalCopy recoverableError];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    recoverableError = [(IFTSchemaIFTClientEvent *)self recoverableError];
    if (!recoverableError)
    {

LABEL_156:
      v158 = 1;
      goto LABEL_154;
    }

    v154 = recoverableError;
    recoverableError2 = [(IFTSchemaIFTClientEvent *)self recoverableError];
    recoverableError3 = [equalCopy recoverableError];
    v157 = [recoverableError2 isEqual:recoverableError3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(IFTSchemaIFTClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(IFTSchemaIFTClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  contextPrewarmRequest = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];

  if (contextPrewarmRequest)
  {
    contextPrewarmRequest2 = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
    PBDataWriterWriteSubmessage();
  }

  contextPrewarmCompleted = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];

  if (contextPrewarmCompleted)
  {
    contextPrewarmCompleted2 = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
    PBDataWriterWriteSubmessage();
  }

  terminate = [(IFTSchemaIFTClientEvent *)self terminate];

  if (terminate)
  {
    terminate2 = [(IFTSchemaIFTClientEvent *)self terminate];
    PBDataWriterWriteSubmessage();
  }

  sessionStart = [(IFTSchemaIFTClientEvent *)self sessionStart];

  if (sessionStart)
  {
    sessionStart2 = [(IFTSchemaIFTClientEvent *)self sessionStart];
    PBDataWriterWriteSubmessage();
  }

  request = [(IFTSchemaIFTClientEvent *)self request];

  if (request)
  {
    request2 = [(IFTSchemaIFTClientEvent *)self request];
    PBDataWriterWriteSubmessage();
  }

  requestContextTextContentTier1 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];

  if (requestContextTextContentTier1)
  {
    requestContextTextContentTier12 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
    PBDataWriterWriteSubmessage();
  }

  entitySpanMatched = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];

  if (entitySpanMatched)
  {
    entitySpanMatched2 = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
    PBDataWriterWriteSubmessage();
  }

  contextRetrieved = [(IFTSchemaIFTClientEvent *)self contextRetrieved];

  if (contextRetrieved)
  {
    contextRetrieved2 = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
    PBDataWriterWriteSubmessage();
  }

  toolsRetrieved = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];

  if (toolsRetrieved)
  {
    toolsRetrieved2 = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationResult = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];

  if (queryDecorationResult)
  {
    queryDecorationResult2 = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationPrePlannerResult = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];

  if (queryDecorationPrePlannerResult)
  {
    queryDecorationPrePlannerResult2 = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
    PBDataWriterWriteSubmessage();
  }

  planCreated = [(IFTSchemaIFTClientEvent *)self planCreated];

  if (planCreated)
  {
    planCreated2 = [(IFTSchemaIFTClientEvent *)self planCreated];
    PBDataWriterWriteSubmessage();
  }

  astFlatExprSearchVariantTier1 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];

  if (astFlatExprSearchVariantTier1)
  {
    astFlatExprSearchVariantTier12 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
    PBDataWriterWriteSubmessage();
  }

  variablesSet = [(IFTSchemaIFTClientEvent *)self variablesSet];

  if (variablesSet)
  {
    variablesSet2 = [(IFTSchemaIFTClientEvent *)self variablesSet];
    PBDataWriterWriteSubmessage();
  }

  toolResolution = [(IFTSchemaIFTClientEvent *)self toolResolution];

  if (toolResolution)
  {
    toolResolution2 = [(IFTSchemaIFTClientEvent *)self toolResolution];
    PBDataWriterWriteSubmessage();
  }

  queriesCreated = [(IFTSchemaIFTClientEvent *)self queriesCreated];

  if (queriesCreated)
  {
    queriesCreated2 = [(IFTSchemaIFTClientEvent *)self queriesCreated];
    PBDataWriterWriteSubmessage();
  }

  actionResolverRequestCreated = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];

  if (actionResolverRequestCreated)
  {
    actionResolverRequestCreated2 = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
    PBDataWriterWriteSubmessage();
  }

  responseGenerationRequest = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];

  if (responseGenerationRequest)
  {
    responseGenerationRequest2 = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
    PBDataWriterWriteSubmessage();
  }

  actionCancelled = [(IFTSchemaIFTClientEvent *)self actionCancelled];

  if (actionCancelled)
  {
    actionCancelled2 = [(IFTSchemaIFTClientEvent *)self actionCancelled];
    PBDataWriterWriteSubmessage();
  }

  continuePlanning = [(IFTSchemaIFTClientEvent *)self continuePlanning];

  if (continuePlanning)
  {
    continuePlanning2 = [(IFTSchemaIFTClientEvent *)self continuePlanning];
    PBDataWriterWriteSubmessage();
  }

  skipStatement = [(IFTSchemaIFTClientEvent *)self skipStatement];

  if (skipStatement)
  {
    skipStatement2 = [(IFTSchemaIFTClientEvent *)self skipStatement];
    PBDataWriterWriteSubmessage();
  }

  executionPreconditionEvaluatorRequest = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];

  if (executionPreconditionEvaluatorRequest)
  {
    executionPreconditionEvaluatorRequest2 = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
    PBDataWriterWriteSubmessage();
  }

  actionCreated = [(IFTSchemaIFTClientEvent *)self actionCreated];

  if (actionCreated)
  {
    actionCreated2 = [(IFTSchemaIFTClientEvent *)self actionCreated];
    PBDataWriterWriteSubmessage();
  }

  clientActionCreated = [(IFTSchemaIFTClientEvent *)self clientActionCreated];

  if (clientActionCreated)
  {
    clientActionCreated2 = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
    PBDataWriterWriteSubmessage();
  }

  queriesExecuted = [(IFTSchemaIFTClientEvent *)self queriesExecuted];

  if (queriesExecuted)
  {
    queriesExecuted2 = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
    PBDataWriterWriteSubmessage();
  }

  statementEvaluated = [(IFTSchemaIFTClientEvent *)self statementEvaluated];

  if (statementEvaluated)
  {
    statementEvaluated2 = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
    PBDataWriterWriteSubmessage();
  }

  systemResponseGenerated = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];

  if (systemResponseGenerated)
  {
    systemResponseGenerated2 = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
    PBDataWriterWriteSubmessage();
  }

  criticalError = [(IFTSchemaIFTClientEvent *)self criticalError];

  if (criticalError)
  {
    criticalError2 = [(IFTSchemaIFTClientEvent *)self criticalError];
    PBDataWriterWriteSubmessage();
  }

  recoverableError = [(IFTSchemaIFTClientEvent *)self recoverableError];

  v63 = toCopy;
  if (recoverableError)
  {
    recoverableError2 = [(IFTSchemaIFTClientEvent *)self recoverableError];
    PBDataWriterWriteSubmessage();

    v63 = toCopy;
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

- (void)setRecoverableError:(id)error
{
  errorCopy = error;
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
  if (!errorCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  recoverableError = self->_recoverableError;
  self->_recoverableError = errorCopy;
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

- (void)setCriticalError:(id)error
{
  errorCopy = error;
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
  if (!errorCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  criticalError = self->_criticalError;
  self->_criticalError = errorCopy;
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

- (void)setSystemResponseGenerated:(id)generated
{
  generatedCopy = generated;
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
  if (!generatedCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  systemResponseGenerated = self->_systemResponseGenerated;
  self->_systemResponseGenerated = generatedCopy;
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

- (void)setStatementEvaluated:(id)evaluated
{
  evaluatedCopy = evaluated;
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
  if (!evaluatedCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  statementEvaluated = self->_statementEvaluated;
  self->_statementEvaluated = evaluatedCopy;
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

- (void)setQueriesExecuted:(id)executed
{
  executedCopy = executed;
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
  if (!executedCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  queriesExecuted = self->_queriesExecuted;
  self->_queriesExecuted = executedCopy;
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

- (void)setClientActionCreated:(id)created
{
  createdCopy = created;
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
  if (!createdCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  clientActionCreated = self->_clientActionCreated;
  self->_clientActionCreated = createdCopy;
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

- (void)setActionCreated:(id)created
{
  createdCopy = created;
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
  if (!createdCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  actionCreated = self->_actionCreated;
  self->_actionCreated = createdCopy;
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

- (void)setExecutionPreconditionEvaluatorRequest:(id)request
{
  requestCopy = request;
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
  if (!requestCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  executionPreconditionEvaluatorRequest = self->_executionPreconditionEvaluatorRequest;
  self->_executionPreconditionEvaluatorRequest = requestCopy;
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

- (void)setSkipStatement:(id)statement
{
  statementCopy = statement;
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

  self->_whichEvent_Type = (statementCopy != 0) << 7;
  skipStatement = self->_skipStatement;
  self->_skipStatement = statementCopy;
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

- (void)setContinuePlanning:(id)planning
{
  planningCopy = planning;
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
  if (!planningCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = planningCopy;
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

- (void)setActionCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
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
  if (!cancelledCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  actionCancelled = self->_actionCancelled;
  self->_actionCancelled = cancelledCopy;
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

- (void)setResponseGenerationRequest:(id)request
{
  requestCopy = request;
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
  if (!requestCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  responseGenerationRequest = self->_responseGenerationRequest;
  self->_responseGenerationRequest = requestCopy;
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

- (void)setActionResolverRequestCreated:(id)created
{
  createdCopy = created;
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
  if (!createdCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  actionResolverRequestCreated = self->_actionResolverRequestCreated;
  self->_actionResolverRequestCreated = createdCopy;
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

- (void)setQueriesCreated:(id)created
{
  createdCopy = created;
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
  if (!createdCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  queriesCreated = self->_queriesCreated;
  self->_queriesCreated = createdCopy;
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

- (void)setToolResolution:(id)resolution
{
  resolutionCopy = resolution;
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
  if (!resolutionCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  toolResolution = self->_toolResolution;
  self->_toolResolution = resolutionCopy;
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

- (void)setVariablesSet:(id)set
{
  setCopy = set;
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
  if (!setCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  variablesSet = self->_variablesSet;
  self->_variablesSet = setCopy;
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

- (void)setAstFlatExprSearchVariantTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  astFlatExprSearchVariantTier1 = self->_astFlatExprSearchVariantTier1;
  self->_astFlatExprSearchVariantTier1 = tier1Copy;
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

- (void)setPlanCreated:(id)created
{
  createdCopy = created;
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
  if (!createdCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  planCreated = self->_planCreated;
  self->_planCreated = createdCopy;
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

- (void)setQueryDecorationPrePlannerResult:(id)result
{
  resultCopy = result;
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
  if (!resultCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  queryDecorationPrePlannerResult = self->_queryDecorationPrePlannerResult;
  self->_queryDecorationPrePlannerResult = resultCopy;
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

- (void)setQueryDecorationResult:(id)result
{
  resultCopy = result;
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
  if (!resultCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  queryDecorationResult = self->_queryDecorationResult;
  self->_queryDecorationResult = resultCopy;
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

- (void)setToolsRetrieved:(id)retrieved
{
  retrievedCopy = retrieved;
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
  if (!retrievedCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  toolsRetrieved = self->_toolsRetrieved;
  self->_toolsRetrieved = retrievedCopy;
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

- (void)setContextRetrieved:(id)retrieved
{
  retrievedCopy = retrieved;
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
  if (!retrievedCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  contextRetrieved = self->_contextRetrieved;
  self->_contextRetrieved = retrievedCopy;
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

- (void)setEntitySpanMatched:(id)matched
{
  matchedCopy = matched;
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
  if (!matchedCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  entitySpanMatched = self->_entitySpanMatched;
  self->_entitySpanMatched = matchedCopy;
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

- (void)setRequestContextTextContentTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  requestContextTextContentTier1 = self->_requestContextTextContentTier1;
  self->_requestContextTextContentTier1 = tier1Copy;
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

- (void)setRequest:(id)request
{
  requestCopy = request;
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
  if (!requestCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  request = self->_request;
  self->_request = requestCopy;
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

- (void)setSessionStart:(id)start
{
  startCopy = start;
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
  if (!startCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  sessionStart = self->_sessionStart;
  self->_sessionStart = startCopy;
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

- (void)setTerminate:(id)terminate
{
  terminateCopy = terminate;
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
  if (!terminateCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  terminate = self->_terminate;
  self->_terminate = terminateCopy;
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

- (void)setContextPrewarmCompleted:(id)completed
{
  completedCopy = completed;
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
  if (!completedCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  contextPrewarmCompleted = self->_contextPrewarmCompleted;
  self->_contextPrewarmCompleted = completedCopy;
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

- (void)setContextPrewarmRequest:(id)request
{
  requestCopy = request;
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
  if (!requestCopy)
  {
    v33 = 0;
  }

  self->_whichEvent_Type = v33;
  contextPrewarmRequest = self->_contextPrewarmRequest;
  self->_contextPrewarmRequest = requestCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(IFTSchemaIFTClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x1C)
  {
    return @"com.apple.aiml.siri.ift.IFTClientEvent";
  }

  else
  {
    return off_1E78D8320[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v98.receiver = self;
  v98.super_class = IFTSchemaIFTClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v98 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  eventMetadata = [(IFTSchemaIFTClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTClientEvent *)self deleteEventMetadata];
  }

  contextPrewarmRequest = [(IFTSchemaIFTClientEvent *)self contextPrewarmRequest];
  v10 = [contextPrewarmRequest applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTClientEvent *)self deleteContextPrewarmRequest];
  }

  contextPrewarmCompleted = [(IFTSchemaIFTClientEvent *)self contextPrewarmCompleted];
  v13 = [contextPrewarmCompleted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTClientEvent *)self deleteContextPrewarmCompleted];
  }

  terminate = [(IFTSchemaIFTClientEvent *)self terminate];
  v16 = [terminate applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTClientEvent *)self deleteTerminate];
  }

  sessionStart = [(IFTSchemaIFTClientEvent *)self sessionStart];
  v19 = [sessionStart applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(IFTSchemaIFTClientEvent *)self deleteSessionStart];
  }

  request = [(IFTSchemaIFTClientEvent *)self request];
  v22 = [request applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequest];
  }

  requestContextTextContentTier1 = [(IFTSchemaIFTClientEvent *)self requestContextTextContentTier1];
  v25 = [requestContextTextContentTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(IFTSchemaIFTClientEvent *)self deleteRequestContextTextContentTier1];
  }

  entitySpanMatched = [(IFTSchemaIFTClientEvent *)self entitySpanMatched];
  v28 = [entitySpanMatched applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(IFTSchemaIFTClientEvent *)self deleteEntitySpanMatched];
  }

  contextRetrieved = [(IFTSchemaIFTClientEvent *)self contextRetrieved];
  v31 = [contextRetrieved applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(IFTSchemaIFTClientEvent *)self deleteContextRetrieved];
  }

  toolsRetrieved = [(IFTSchemaIFTClientEvent *)self toolsRetrieved];
  v34 = [toolsRetrieved applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(IFTSchemaIFTClientEvent *)self deleteToolsRetrieved];
  }

  queryDecorationResult = [(IFTSchemaIFTClientEvent *)self queryDecorationResult];
  v37 = [queryDecorationResult applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(IFTSchemaIFTClientEvent *)self deleteQueryDecorationResult];
  }

  queryDecorationPrePlannerResult = [(IFTSchemaIFTClientEvent *)self queryDecorationPrePlannerResult];
  v40 = [queryDecorationPrePlannerResult applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(IFTSchemaIFTClientEvent *)self deleteQueryDecorationPrePlannerResult];
  }

  planCreated = [(IFTSchemaIFTClientEvent *)self planCreated];
  v43 = [planCreated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(IFTSchemaIFTClientEvent *)self deletePlanCreated];
  }

  astFlatExprSearchVariantTier1 = [(IFTSchemaIFTClientEvent *)self astFlatExprSearchVariantTier1];
  v46 = [astFlatExprSearchVariantTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(IFTSchemaIFTClientEvent *)self deleteAstFlatExprSearchVariantTier1];
  }

  variablesSet = [(IFTSchemaIFTClientEvent *)self variablesSet];
  v49 = [variablesSet applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(IFTSchemaIFTClientEvent *)self deleteVariablesSet];
  }

  toolResolution = [(IFTSchemaIFTClientEvent *)self toolResolution];
  v52 = [toolResolution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(IFTSchemaIFTClientEvent *)self deleteToolResolution];
  }

  queriesCreated = [(IFTSchemaIFTClientEvent *)self queriesCreated];
  v55 = [queriesCreated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(IFTSchemaIFTClientEvent *)self deleteQueriesCreated];
  }

  actionResolverRequestCreated = [(IFTSchemaIFTClientEvent *)self actionResolverRequestCreated];
  v58 = [actionResolverRequestCreated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(IFTSchemaIFTClientEvent *)self deleteActionResolverRequestCreated];
  }

  responseGenerationRequest = [(IFTSchemaIFTClientEvent *)self responseGenerationRequest];
  v61 = [responseGenerationRequest applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(IFTSchemaIFTClientEvent *)self deleteResponseGenerationRequest];
  }

  actionCancelled = [(IFTSchemaIFTClientEvent *)self actionCancelled];
  v64 = [actionCancelled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
  {
    [(IFTSchemaIFTClientEvent *)self deleteActionCancelled];
  }

  continuePlanning = [(IFTSchemaIFTClientEvent *)self continuePlanning];
  v67 = [continuePlanning applySensitiveConditionsPolicy:policyCopy];
  suppressMessage21 = [v67 suppressMessage];

  if (suppressMessage21)
  {
    [(IFTSchemaIFTClientEvent *)self deleteContinuePlanning];
  }

  skipStatement = [(IFTSchemaIFTClientEvent *)self skipStatement];
  v70 = [skipStatement applySensitiveConditionsPolicy:policyCopy];
  suppressMessage22 = [v70 suppressMessage];

  if (suppressMessage22)
  {
    [(IFTSchemaIFTClientEvent *)self deleteSkipStatement];
  }

  executionPreconditionEvaluatorRequest = [(IFTSchemaIFTClientEvent *)self executionPreconditionEvaluatorRequest];
  v73 = [executionPreconditionEvaluatorRequest applySensitiveConditionsPolicy:policyCopy];
  suppressMessage23 = [v73 suppressMessage];

  if (suppressMessage23)
  {
    [(IFTSchemaIFTClientEvent *)self deleteExecutionPreconditionEvaluatorRequest];
  }

  actionCreated = [(IFTSchemaIFTClientEvent *)self actionCreated];
  v76 = [actionCreated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage24 = [v76 suppressMessage];

  if (suppressMessage24)
  {
    [(IFTSchemaIFTClientEvent *)self deleteActionCreated];
  }

  clientActionCreated = [(IFTSchemaIFTClientEvent *)self clientActionCreated];
  v79 = [clientActionCreated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage25 = [v79 suppressMessage];

  if (suppressMessage25)
  {
    [(IFTSchemaIFTClientEvent *)self deleteClientActionCreated];
  }

  queriesExecuted = [(IFTSchemaIFTClientEvent *)self queriesExecuted];
  v82 = [queriesExecuted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage26 = [v82 suppressMessage];

  if (suppressMessage26)
  {
    [(IFTSchemaIFTClientEvent *)self deleteQueriesExecuted];
  }

  statementEvaluated = [(IFTSchemaIFTClientEvent *)self statementEvaluated];
  v85 = [statementEvaluated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage27 = [v85 suppressMessage];

  if (suppressMessage27)
  {
    [(IFTSchemaIFTClientEvent *)self deleteStatementEvaluated];
  }

  systemResponseGenerated = [(IFTSchemaIFTClientEvent *)self systemResponseGenerated];
  v88 = [systemResponseGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage28 = [v88 suppressMessage];

  if (suppressMessage28)
  {
    [(IFTSchemaIFTClientEvent *)self deleteSystemResponseGenerated];
  }

  criticalError = [(IFTSchemaIFTClientEvent *)self criticalError];
  v91 = [criticalError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage29 = [v91 suppressMessage];

  if (suppressMessage29)
  {
    [(IFTSchemaIFTClientEvent *)self deleteCriticalError];
  }

  recoverableError = [(IFTSchemaIFTClientEvent *)self recoverableError];
  v94 = [recoverableError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage30 = [v94 suppressMessage];

  if (suppressMessage30)
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
  eventMetadata = [(IFTSchemaIFTClientEvent *)self eventMetadata];
  ifRequestId = [eventMetadata ifRequestId];

  if (ifRequestId)
  {
    value = [ifRequestId value];
    if (value)
    {
      value2 = [ifRequestId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 45;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(IFTSchemaIFTClientEvent *)self eventMetadata];
  ifRequestId = [eventMetadata ifRequestId];

  if (!ifRequestId)
  {
    goto LABEL_5;
  }

  value = [ifRequestId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [ifRequestId value];
  v6 = [value2 length];

  if (v6)
  {
    value = ifRequestId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(IFTSchemaIFTClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x1C)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9A38[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 0x1C)
  {
    return 0;
  }

  else
  {
    return off_1E78E9B20[tag - 101];
  }
}

@end