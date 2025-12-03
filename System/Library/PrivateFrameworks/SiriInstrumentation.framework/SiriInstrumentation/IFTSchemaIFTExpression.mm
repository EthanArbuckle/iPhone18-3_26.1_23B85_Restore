@interface IFTSchemaIFTExpression
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTCallExpression)call;
- (IFTSchemaIFTCancelExpression)cancel;
- (IFTSchemaIFTConfirmExpression)confirm;
- (IFTSchemaIFTContinuePlanningExpression)continuePlanning;
- (IFTSchemaIFTDotExpression)dot;
- (IFTSchemaIFTEndOfPlanExpression)endOfPlan;
- (IFTSchemaIFTExplicitResolutionRequest)explicitResolutionRequest;
- (IFTSchemaIFTExpression)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTExpression)initWithJSON:(id)n;
- (IFTSchemaIFTFormatExpression)format;
- (IFTSchemaIFTGetMentionedAppsExpression)getMentionedApps;
- (IFTSchemaIFTIndexExpression)index;
- (IFTSchemaIFTInfixExpression)infix;
- (IFTSchemaIFTNoMatchingToolExpression)noMatchingTool;
- (IFTSchemaIFTOpenExpression)open;
- (IFTSchemaIFTPayloadExpression)payload;
- (IFTSchemaIFTPickExpression)pick;
- (IFTSchemaIFTPickOneExpression)pickOne;
- (IFTSchemaIFTPrefixExpression)prefix;
- (IFTSchemaIFTRejectExpression)reject;
- (IFTSchemaIFTResolveToolExpression)resolveTool;
- (IFTSchemaIFTSayExpression)say;
- (IFTSchemaIFTSearchExpression)search;
- (IFTSchemaIFTStatementId)statementId;
- (IFTSchemaIFTStructuredSearchExpression)structuredSearch;
- (IFTSchemaIFTUndoExpression)undo;
- (IFTSchemaIFTUpdateParametersExpression)updateParameters;
- (IFTSchemaIFTValueExpression)value;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCall;
- (void)deleteCancel;
- (void)deleteConfirm;
- (void)deleteContinuePlanning;
- (void)deleteDot;
- (void)deleteEndOfPlan;
- (void)deleteExplicitResolutionRequest;
- (void)deleteFormat;
- (void)deleteGetMentionedApps;
- (void)deleteIndex;
- (void)deleteInfix;
- (void)deleteNoMatchingTool;
- (void)deleteOpen;
- (void)deletePayload;
- (void)deletePick;
- (void)deletePickOne;
- (void)deletePrefix;
- (void)deleteReject;
- (void)deleteResolveTool;
- (void)deleteSay;
- (void)deleteSearch;
- (void)deleteStatementId;
- (void)deleteStructuredSearch;
- (void)deleteUndo;
- (void)deleteUpdateParameters;
- (void)deleteValue;
- (void)setCall:(id)call;
- (void)setCancel:(id)cancel;
- (void)setConfirm:(id)confirm;
- (void)setContinuePlanning:(id)planning;
- (void)setDot:(id)dot;
- (void)setEndOfPlan:(id)plan;
- (void)setExplicitResolutionRequest:(id)request;
- (void)setFormat:(id)format;
- (void)setGetMentionedApps:(id)apps;
- (void)setIndex:(id)index;
- (void)setInfix:(id)infix;
- (void)setNoMatchingTool:(id)tool;
- (void)setOpen:(id)open;
- (void)setPayload:(id)payload;
- (void)setPick:(id)pick;
- (void)setPickOne:(id)one;
- (void)setPrefix:(id)prefix;
- (void)setReject:(id)reject;
- (void)setResolveTool:(id)tool;
- (void)setSay:(id)say;
- (void)setSearch:(id)search;
- (void)setStatementId:(id)id;
- (void)setStructuredSearch:(id)search;
- (void)setUndo:(id)undo;
- (void)setUpdateParameters:(id)parameters;
- (void)setValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTExpression

- (IFTSchemaIFTExpression)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v79.receiver = self;
  v79.super_class = IFTSchemaIFTExpression;
  v5 = [(IFTSchemaIFTExpression *)&v79 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTValueExpression alloc] initWithDictionary:v6];
      [(IFTSchemaIFTExpression *)v5 setValue:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v8];
      [(IFTSchemaIFTExpression *)v5 setStatementId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"prefix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTPrefixExpression alloc] initWithDictionary:v10];
      [(IFTSchemaIFTExpression *)v5 setPrefix:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"infix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTInfixExpression alloc] initWithDictionary:v12];
      [(IFTSchemaIFTExpression *)v5 setInfix:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"dot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IFTSchemaIFTDotExpression alloc] initWithDictionary:v14];
      [(IFTSchemaIFTExpression *)v5 setDot:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaIFTIndexExpression alloc] initWithDictionary:v16];
      [(IFTSchemaIFTExpression *)v5 setIndex:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"updateParameters"];
    objc_opt_class();
    v78 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[IFTSchemaIFTUpdateParametersExpression alloc] initWithDictionary:v18];
      [(IFTSchemaIFTExpression *)v5 setUpdateParameters:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"call"];
    objc_opt_class();
    v77 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[IFTSchemaIFTCallExpression alloc] initWithDictionary:v20];
      [(IFTSchemaIFTExpression *)v5 setCall:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"say"];
    objc_opt_class();
    v76 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[IFTSchemaIFTSayExpression alloc] initWithDictionary:v22];
      [(IFTSchemaIFTExpression *)v5 setSay:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"pick"];
    objc_opt_class();
    v75 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[IFTSchemaIFTPickExpression alloc] initWithDictionary:v24];
      [(IFTSchemaIFTExpression *)v5 setPick:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"confirm"];
    objc_opt_class();
    v74 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[IFTSchemaIFTConfirmExpression alloc] initWithDictionary:v26];
      [(IFTSchemaIFTExpression *)v5 setConfirm:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"search"];
    objc_opt_class();
    v73 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[IFTSchemaIFTSearchExpression alloc] initWithDictionary:v28];
      [(IFTSchemaIFTExpression *)v5 setSearch:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"pickOne"];
    objc_opt_class();
    v72 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[IFTSchemaIFTPickOneExpression alloc] initWithDictionary:v30];
      [(IFTSchemaIFTExpression *)v5 setPickOne:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"resolveTool"];
    objc_opt_class();
    v71 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[IFTSchemaIFTResolveToolExpression alloc] initWithDictionary:v32];
      [(IFTSchemaIFTExpression *)v5 setResolveTool:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"undo"];
    objc_opt_class();
    v70 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[IFTSchemaIFTUndoExpression alloc] initWithDictionary:v34];
      [(IFTSchemaIFTExpression *)v5 setUndo:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"reject"];
    objc_opt_class();
    v69 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[IFTSchemaIFTRejectExpression alloc] initWithDictionary:v36];
      [(IFTSchemaIFTExpression *)v5 setReject:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"cancel"];
    objc_opt_class();
    v68 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[IFTSchemaIFTCancelExpression alloc] initWithDictionary:v38];
      [(IFTSchemaIFTExpression *)v5 setCancel:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"noMatchingTool"];
    objc_opt_class();
    v67 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[IFTSchemaIFTNoMatchingToolExpression alloc] initWithDictionary:v40];
      [(IFTSchemaIFTExpression *)v5 setNoMatchingTool:v41];
    }

    v65 = v8;
    v42 = [dictionaryCopy objectForKeyedSubscript:@"continuePlanning"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[IFTSchemaIFTContinuePlanningExpression alloc] initWithDictionary:v42];
      [(IFTSchemaIFTExpression *)v5 setContinuePlanning:v43];
    }

    v64 = v10;
    v44 = [dictionaryCopy objectForKeyedSubscript:{@"endOfPlan", v42}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[IFTSchemaIFTEndOfPlanExpression alloc] initWithDictionary:v44];
      [(IFTSchemaIFTExpression *)v5 setEndOfPlan:v45];
    }

    v63 = v12;
    v46 = [dictionaryCopy objectForKeyedSubscript:@"getMentionedApps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[IFTSchemaIFTGetMentionedAppsExpression alloc] initWithDictionary:v46];
      [(IFTSchemaIFTExpression *)v5 setGetMentionedApps:v47];
    }

    v62 = v14;
    v48 = [dictionaryCopy objectForKeyedSubscript:@"open"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[IFTSchemaIFTOpenExpression alloc] initWithDictionary:v48];
      [(IFTSchemaIFTExpression *)v5 setOpen:v49];
    }

    v61 = v16;
    v50 = [dictionaryCopy objectForKeyedSubscript:@"explicitResolutionRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[IFTSchemaIFTExplicitResolutionRequest alloc] initWithDictionary:v50];
      [(IFTSchemaIFTExpression *)v5 setExplicitResolutionRequest:v51];
    }

    v66 = v6;
    v52 = [dictionaryCopy objectForKeyedSubscript:@"payload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [[IFTSchemaIFTPayloadExpression alloc] initWithDictionary:v52];
      [(IFTSchemaIFTExpression *)v5 setPayload:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"format"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [[IFTSchemaIFTFormatExpression alloc] initWithDictionary:v54];
      [(IFTSchemaIFTExpression *)v5 setFormat:v55];
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"structuredSearch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = [[IFTSchemaIFTStructuredSearchExpression alloc] initWithDictionary:v56];
      [(IFTSchemaIFTExpression *)v5 setStructuredSearch:v57];
    }

    v58 = v5;
  }

  return v5;
}

- (IFTSchemaIFTExpression)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTExpression *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTExpression *)self dictionaryRepresentation];
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
  if (self->_call)
  {
    call = [(IFTSchemaIFTExpression *)self call];
    dictionaryRepresentation = [call dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"call"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"call"];
    }
  }

  if (self->_cancel)
  {
    cancel = [(IFTSchemaIFTExpression *)self cancel];
    dictionaryRepresentation2 = [cancel dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"cancel"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"cancel"];
    }
  }

  if (self->_confirm)
  {
    confirm = [(IFTSchemaIFTExpression *)self confirm];
    dictionaryRepresentation3 = [confirm dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"confirm"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"confirm"];
    }
  }

  if (self->_continuePlanning)
  {
    continuePlanning = [(IFTSchemaIFTExpression *)self continuePlanning];
    dictionaryRepresentation4 = [continuePlanning dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"continuePlanning"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"continuePlanning"];
    }
  }

  if (self->_dot)
  {
    v16 = [(IFTSchemaIFTExpression *)self dot];
    dictionaryRepresentation5 = [v16 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"dot"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"dot"];
    }
  }

  if (self->_endOfPlan)
  {
    endOfPlan = [(IFTSchemaIFTExpression *)self endOfPlan];
    dictionaryRepresentation6 = [endOfPlan dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"endOfPlan"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"endOfPlan"];
    }
  }

  if (self->_explicitResolutionRequest)
  {
    explicitResolutionRequest = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
    dictionaryRepresentation7 = [explicitResolutionRequest dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"explicitResolutionRequest"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"explicitResolutionRequest"];
    }
  }

  if (self->_format)
  {
    format = [(IFTSchemaIFTExpression *)self format];
    dictionaryRepresentation8 = [format dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"format"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"format"];
    }
  }

  if (self->_getMentionedApps)
  {
    getMentionedApps = [(IFTSchemaIFTExpression *)self getMentionedApps];
    dictionaryRepresentation9 = [getMentionedApps dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"getMentionedApps"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"getMentionedApps"];
    }
  }

  if (self->_index)
  {
    index = [(IFTSchemaIFTExpression *)self index];
    dictionaryRepresentation10 = [index dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"index"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"index"];
    }
  }

  if (self->_infix)
  {
    infix = [(IFTSchemaIFTExpression *)self infix];
    dictionaryRepresentation11 = [infix dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"infix"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"infix"];
    }
  }

  if (self->_noMatchingTool)
  {
    noMatchingTool = [(IFTSchemaIFTExpression *)self noMatchingTool];
    dictionaryRepresentation12 = [noMatchingTool dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"noMatchingTool"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"noMatchingTool"];
    }
  }

  if (self->_open)
  {
    open = [(IFTSchemaIFTExpression *)self open];
    dictionaryRepresentation13 = [open dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"open"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"open"];
    }
  }

  if (self->_payload)
  {
    payload = [(IFTSchemaIFTExpression *)self payload];
    dictionaryRepresentation14 = [payload dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"payload"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"payload"];
    }
  }

  if (self->_pick)
  {
    pick = [(IFTSchemaIFTExpression *)self pick];
    dictionaryRepresentation15 = [pick dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"pick"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"pick"];
    }
  }

  if (self->_pickOne)
  {
    pickOne = [(IFTSchemaIFTExpression *)self pickOne];
    dictionaryRepresentation16 = [pickOne dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"pickOne"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"pickOne"];
    }
  }

  if (self->_prefix)
  {
    prefix = [(IFTSchemaIFTExpression *)self prefix];
    dictionaryRepresentation17 = [prefix dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"prefix"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"prefix"];
    }
  }

  if (self->_reject)
  {
    reject = [(IFTSchemaIFTExpression *)self reject];
    dictionaryRepresentation18 = [reject dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"reject"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"reject"];
    }
  }

  if (self->_resolveTool)
  {
    resolveTool = [(IFTSchemaIFTExpression *)self resolveTool];
    dictionaryRepresentation19 = [resolveTool dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"resolveTool"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"resolveTool"];
    }
  }

  if (self->_say)
  {
    v61 = [(IFTSchemaIFTExpression *)self say];
    dictionaryRepresentation20 = [v61 dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"say"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"say"];
    }
  }

  if (self->_search)
  {
    search = [(IFTSchemaIFTExpression *)self search];
    dictionaryRepresentation21 = [search dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"search"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"search"];
    }
  }

  if (self->_statementId)
  {
    statementId = [(IFTSchemaIFTExpression *)self statementId];
    dictionaryRepresentation22 = [statementId dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"statementId"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_structuredSearch)
  {
    structuredSearch = [(IFTSchemaIFTExpression *)self structuredSearch];
    dictionaryRepresentation23 = [structuredSearch dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"structuredSearch"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"structuredSearch"];
    }
  }

  if (self->_undo)
  {
    undo = [(IFTSchemaIFTExpression *)self undo];
    dictionaryRepresentation24 = [undo dictionaryRepresentation];
    if (dictionaryRepresentation24)
    {
      [dictionary setObject:dictionaryRepresentation24 forKeyedSubscript:@"undo"];
    }

    else
    {
      null24 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null24 forKeyedSubscript:@"undo"];
    }
  }

  if (self->_updateParameters)
  {
    updateParameters = [(IFTSchemaIFTExpression *)self updateParameters];
    dictionaryRepresentation25 = [updateParameters dictionaryRepresentation];
    if (dictionaryRepresentation25)
    {
      [dictionary setObject:dictionaryRepresentation25 forKeyedSubscript:@"updateParameters"];
    }

    else
    {
      null25 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null25 forKeyedSubscript:@"updateParameters"];
    }
  }

  if (self->_value)
  {
    value = [(IFTSchemaIFTExpression *)self value];
    dictionaryRepresentation26 = [value dictionaryRepresentation];
    if (dictionaryRepresentation26)
    {
      [dictionary setObject:dictionaryRepresentation26 forKeyedSubscript:@"value"];
    }

    else
    {
      null26 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null26 forKeyedSubscript:@"value"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v82 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTValueExpression *)self->_value hash];
  v4 = [(IFTSchemaIFTStatementId *)self->_statementId hash]^ v3;
  v5 = [(IFTSchemaIFTPrefixExpression *)self->_prefix hash];
  v6 = v4 ^ v5 ^ [(IFTSchemaIFTInfixExpression *)self->_infix hash];
  v7 = [(IFTSchemaIFTDotExpression *)self->_dot hash];
  v8 = v7 ^ [(IFTSchemaIFTIndexExpression *)self->_index hash];
  v9 = v6 ^ v8 ^ [(IFTSchemaIFTUpdateParametersExpression *)self->_updateParameters hash];
  v10 = [(IFTSchemaIFTCallExpression *)self->_call hash];
  v11 = v10 ^ [(IFTSchemaIFTSayExpression *)self->_say hash];
  v12 = v11 ^ [(IFTSchemaIFTPickExpression *)self->_pick hash];
  v13 = v9 ^ v12 ^ [(IFTSchemaIFTConfirmExpression *)self->_confirm hash];
  v14 = [(IFTSchemaIFTSearchExpression *)self->_search hash];
  v15 = v14 ^ [(IFTSchemaIFTPickOneExpression *)self->_pickOne hash];
  v16 = v15 ^ [(IFTSchemaIFTResolveToolExpression *)self->_resolveTool hash];
  v17 = v16 ^ [(IFTSchemaIFTUndoExpression *)self->_undo hash];
  v18 = v13 ^ v17 ^ [(IFTSchemaIFTRejectExpression *)self->_reject hash];
  v19 = [(IFTSchemaIFTCancelExpression *)self->_cancel hash];
  v20 = v19 ^ [(IFTSchemaIFTNoMatchingToolExpression *)self->_noMatchingTool hash];
  v21 = v20 ^ [(IFTSchemaIFTContinuePlanningExpression *)self->_continuePlanning hash];
  v22 = v21 ^ [(IFTSchemaIFTEndOfPlanExpression *)self->_endOfPlan hash];
  v23 = v22 ^ [(IFTSchemaIFTGetMentionedAppsExpression *)self->_getMentionedApps hash];
  v24 = v18 ^ v23 ^ [(IFTSchemaIFTOpenExpression *)self->_open hash];
  v25 = [(IFTSchemaIFTExplicitResolutionRequest *)self->_explicitResolutionRequest hash];
  v26 = v25 ^ [(IFTSchemaIFTPayloadExpression *)self->_payload hash];
  v27 = v26 ^ [(IFTSchemaIFTFormatExpression *)self->_format hash];
  return v24 ^ v27 ^ [(IFTSchemaIFTStructuredSearchExpression *)self->_structuredSearch hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_133;
  }

  whichOneof_Expression = self->_whichOneof_Expression;
  if (whichOneof_Expression != [equalCopy whichOneof_Expression])
  {
    goto LABEL_133;
  }

  value = [(IFTSchemaIFTExpression *)self value];
  value2 = [equalCopy value];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  value3 = [(IFTSchemaIFTExpression *)self value];
  if (value3)
  {
    v9 = value3;
    value4 = [(IFTSchemaIFTExpression *)self value];
    value5 = [equalCopy value];
    v12 = [value4 isEqual:value5];

    if (!v12)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self statementId];
  value2 = [equalCopy statementId];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  statementId = [(IFTSchemaIFTExpression *)self statementId];
  if (statementId)
  {
    v14 = statementId;
    statementId2 = [(IFTSchemaIFTExpression *)self statementId];
    statementId3 = [equalCopy statementId];
    v17 = [statementId2 isEqual:statementId3];

    if (!v17)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self prefix];
  value2 = [equalCopy prefix];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  prefix = [(IFTSchemaIFTExpression *)self prefix];
  if (prefix)
  {
    v19 = prefix;
    prefix2 = [(IFTSchemaIFTExpression *)self prefix];
    prefix3 = [equalCopy prefix];
    v22 = [prefix2 isEqual:prefix3];

    if (!v22)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self infix];
  value2 = [equalCopy infix];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  infix = [(IFTSchemaIFTExpression *)self infix];
  if (infix)
  {
    v24 = infix;
    infix2 = [(IFTSchemaIFTExpression *)self infix];
    infix3 = [equalCopy infix];
    v27 = [infix2 isEqual:infix3];

    if (!v27)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self dot];
  value2 = [equalCopy dot];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  v28 = [(IFTSchemaIFTExpression *)self dot];
  if (v28)
  {
    v29 = v28;
    v30 = [(IFTSchemaIFTExpression *)self dot];
    v31 = [equalCopy dot];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self index];
  value2 = [equalCopy index];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  index = [(IFTSchemaIFTExpression *)self index];
  if (index)
  {
    v34 = index;
    index2 = [(IFTSchemaIFTExpression *)self index];
    index3 = [equalCopy index];
    v37 = [index2 isEqual:index3];

    if (!v37)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self updateParameters];
  value2 = [equalCopy updateParameters];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  updateParameters = [(IFTSchemaIFTExpression *)self updateParameters];
  if (updateParameters)
  {
    v39 = updateParameters;
    updateParameters2 = [(IFTSchemaIFTExpression *)self updateParameters];
    updateParameters3 = [equalCopy updateParameters];
    v42 = [updateParameters2 isEqual:updateParameters3];

    if (!v42)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self call];
  value2 = [equalCopy call];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  call = [(IFTSchemaIFTExpression *)self call];
  if (call)
  {
    v44 = call;
    call2 = [(IFTSchemaIFTExpression *)self call];
    call3 = [equalCopy call];
    v47 = [call2 isEqual:call3];

    if (!v47)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self say];
  value2 = [equalCopy say];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  v48 = [(IFTSchemaIFTExpression *)self say];
  if (v48)
  {
    v49 = v48;
    v50 = [(IFTSchemaIFTExpression *)self say];
    v51 = [equalCopy say];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self pick];
  value2 = [equalCopy pick];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  pick = [(IFTSchemaIFTExpression *)self pick];
  if (pick)
  {
    v54 = pick;
    pick2 = [(IFTSchemaIFTExpression *)self pick];
    pick3 = [equalCopy pick];
    v57 = [pick2 isEqual:pick3];

    if (!v57)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self confirm];
  value2 = [equalCopy confirm];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  confirm = [(IFTSchemaIFTExpression *)self confirm];
  if (confirm)
  {
    v59 = confirm;
    confirm2 = [(IFTSchemaIFTExpression *)self confirm];
    confirm3 = [equalCopy confirm];
    v62 = [confirm2 isEqual:confirm3];

    if (!v62)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self search];
  value2 = [equalCopy search];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  search = [(IFTSchemaIFTExpression *)self search];
  if (search)
  {
    v64 = search;
    search2 = [(IFTSchemaIFTExpression *)self search];
    search3 = [equalCopy search];
    v67 = [search2 isEqual:search3];

    if (!v67)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self pickOne];
  value2 = [equalCopy pickOne];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  pickOne = [(IFTSchemaIFTExpression *)self pickOne];
  if (pickOne)
  {
    v69 = pickOne;
    pickOne2 = [(IFTSchemaIFTExpression *)self pickOne];
    pickOne3 = [equalCopy pickOne];
    v72 = [pickOne2 isEqual:pickOne3];

    if (!v72)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self resolveTool];
  value2 = [equalCopy resolveTool];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  resolveTool = [(IFTSchemaIFTExpression *)self resolveTool];
  if (resolveTool)
  {
    v74 = resolveTool;
    resolveTool2 = [(IFTSchemaIFTExpression *)self resolveTool];
    resolveTool3 = [equalCopy resolveTool];
    v77 = [resolveTool2 isEqual:resolveTool3];

    if (!v77)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self undo];
  value2 = [equalCopy undo];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  undo = [(IFTSchemaIFTExpression *)self undo];
  if (undo)
  {
    v79 = undo;
    undo2 = [(IFTSchemaIFTExpression *)self undo];
    undo3 = [equalCopy undo];
    v82 = [undo2 isEqual:undo3];

    if (!v82)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self reject];
  value2 = [equalCopy reject];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  reject = [(IFTSchemaIFTExpression *)self reject];
  if (reject)
  {
    v84 = reject;
    reject2 = [(IFTSchemaIFTExpression *)self reject];
    reject3 = [equalCopy reject];
    v87 = [reject2 isEqual:reject3];

    if (!v87)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self cancel];
  value2 = [equalCopy cancel];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  cancel = [(IFTSchemaIFTExpression *)self cancel];
  if (cancel)
  {
    v89 = cancel;
    cancel2 = [(IFTSchemaIFTExpression *)self cancel];
    cancel3 = [equalCopy cancel];
    v92 = [cancel2 isEqual:cancel3];

    if (!v92)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self noMatchingTool];
  value2 = [equalCopy noMatchingTool];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  noMatchingTool = [(IFTSchemaIFTExpression *)self noMatchingTool];
  if (noMatchingTool)
  {
    v94 = noMatchingTool;
    noMatchingTool2 = [(IFTSchemaIFTExpression *)self noMatchingTool];
    noMatchingTool3 = [equalCopy noMatchingTool];
    v97 = [noMatchingTool2 isEqual:noMatchingTool3];

    if (!v97)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self continuePlanning];
  value2 = [equalCopy continuePlanning];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  continuePlanning = [(IFTSchemaIFTExpression *)self continuePlanning];
  if (continuePlanning)
  {
    v99 = continuePlanning;
    continuePlanning2 = [(IFTSchemaIFTExpression *)self continuePlanning];
    continuePlanning3 = [equalCopy continuePlanning];
    v102 = [continuePlanning2 isEqual:continuePlanning3];

    if (!v102)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self endOfPlan];
  value2 = [equalCopy endOfPlan];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  endOfPlan = [(IFTSchemaIFTExpression *)self endOfPlan];
  if (endOfPlan)
  {
    v104 = endOfPlan;
    endOfPlan2 = [(IFTSchemaIFTExpression *)self endOfPlan];
    endOfPlan3 = [equalCopy endOfPlan];
    v107 = [endOfPlan2 isEqual:endOfPlan3];

    if (!v107)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self getMentionedApps];
  value2 = [equalCopy getMentionedApps];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  getMentionedApps = [(IFTSchemaIFTExpression *)self getMentionedApps];
  if (getMentionedApps)
  {
    v109 = getMentionedApps;
    getMentionedApps2 = [(IFTSchemaIFTExpression *)self getMentionedApps];
    getMentionedApps3 = [equalCopy getMentionedApps];
    v112 = [getMentionedApps2 isEqual:getMentionedApps3];

    if (!v112)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self open];
  value2 = [equalCopy open];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  open = [(IFTSchemaIFTExpression *)self open];
  if (open)
  {
    v114 = open;
    open2 = [(IFTSchemaIFTExpression *)self open];
    open3 = [equalCopy open];
    v117 = [open2 isEqual:open3];

    if (!v117)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
  value2 = [equalCopy explicitResolutionRequest];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  explicitResolutionRequest = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
  if (explicitResolutionRequest)
  {
    v119 = explicitResolutionRequest;
    explicitResolutionRequest2 = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
    explicitResolutionRequest3 = [equalCopy explicitResolutionRequest];
    v122 = [explicitResolutionRequest2 isEqual:explicitResolutionRequest3];

    if (!v122)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self payload];
  value2 = [equalCopy payload];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  payload = [(IFTSchemaIFTExpression *)self payload];
  if (payload)
  {
    v124 = payload;
    payload2 = [(IFTSchemaIFTExpression *)self payload];
    payload3 = [equalCopy payload];
    v127 = [payload2 isEqual:payload3];

    if (!v127)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self format];
  value2 = [equalCopy format];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_132;
  }

  format = [(IFTSchemaIFTExpression *)self format];
  if (format)
  {
    v129 = format;
    format2 = [(IFTSchemaIFTExpression *)self format];
    format3 = [equalCopy format];
    v132 = [format2 isEqual:format3];

    if (!v132)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTExpression *)self structuredSearch];
  value2 = [equalCopy structuredSearch];
  if ((value != 0) != (value2 == 0))
  {
    structuredSearch = [(IFTSchemaIFTExpression *)self structuredSearch];
    if (!structuredSearch)
    {

LABEL_136:
      v138 = 1;
      goto LABEL_134;
    }

    v134 = structuredSearch;
    structuredSearch2 = [(IFTSchemaIFTExpression *)self structuredSearch];
    structuredSearch3 = [equalCopy structuredSearch];
    v137 = [structuredSearch2 isEqual:structuredSearch3];

    if (v137)
    {
      goto LABEL_136;
    }
  }

  else
  {
LABEL_132:
  }

LABEL_133:
  v138 = 0;
LABEL_134:

  return v138;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  value = [(IFTSchemaIFTExpression *)self value];

  if (value)
  {
    value2 = [(IFTSchemaIFTExpression *)self value];
    PBDataWriterWriteSubmessage();
  }

  statementId = [(IFTSchemaIFTExpression *)self statementId];

  if (statementId)
  {
    statementId2 = [(IFTSchemaIFTExpression *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  prefix = [(IFTSchemaIFTExpression *)self prefix];

  if (prefix)
  {
    prefix2 = [(IFTSchemaIFTExpression *)self prefix];
    PBDataWriterWriteSubmessage();
  }

  infix = [(IFTSchemaIFTExpression *)self infix];

  if (infix)
  {
    infix2 = [(IFTSchemaIFTExpression *)self infix];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(IFTSchemaIFTExpression *)self dot];

  if (v12)
  {
    v13 = [(IFTSchemaIFTExpression *)self dot];
    PBDataWriterWriteSubmessage();
  }

  index = [(IFTSchemaIFTExpression *)self index];

  if (index)
  {
    index2 = [(IFTSchemaIFTExpression *)self index];
    PBDataWriterWriteSubmessage();
  }

  updateParameters = [(IFTSchemaIFTExpression *)self updateParameters];

  if (updateParameters)
  {
    updateParameters2 = [(IFTSchemaIFTExpression *)self updateParameters];
    PBDataWriterWriteSubmessage();
  }

  call = [(IFTSchemaIFTExpression *)self call];

  if (call)
  {
    call2 = [(IFTSchemaIFTExpression *)self call];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(IFTSchemaIFTExpression *)self say];

  if (v20)
  {
    v21 = [(IFTSchemaIFTExpression *)self say];
    PBDataWriterWriteSubmessage();
  }

  pick = [(IFTSchemaIFTExpression *)self pick];

  if (pick)
  {
    pick2 = [(IFTSchemaIFTExpression *)self pick];
    PBDataWriterWriteSubmessage();
  }

  confirm = [(IFTSchemaIFTExpression *)self confirm];

  if (confirm)
  {
    confirm2 = [(IFTSchemaIFTExpression *)self confirm];
    PBDataWriterWriteSubmessage();
  }

  search = [(IFTSchemaIFTExpression *)self search];

  if (search)
  {
    search2 = [(IFTSchemaIFTExpression *)self search];
    PBDataWriterWriteSubmessage();
  }

  pickOne = [(IFTSchemaIFTExpression *)self pickOne];

  if (pickOne)
  {
    pickOne2 = [(IFTSchemaIFTExpression *)self pickOne];
    PBDataWriterWriteSubmessage();
  }

  resolveTool = [(IFTSchemaIFTExpression *)self resolveTool];

  if (resolveTool)
  {
    resolveTool2 = [(IFTSchemaIFTExpression *)self resolveTool];
    PBDataWriterWriteSubmessage();
  }

  undo = [(IFTSchemaIFTExpression *)self undo];

  if (undo)
  {
    undo2 = [(IFTSchemaIFTExpression *)self undo];
    PBDataWriterWriteSubmessage();
  }

  reject = [(IFTSchemaIFTExpression *)self reject];

  if (reject)
  {
    reject2 = [(IFTSchemaIFTExpression *)self reject];
    PBDataWriterWriteSubmessage();
  }

  cancel = [(IFTSchemaIFTExpression *)self cancel];

  if (cancel)
  {
    cancel2 = [(IFTSchemaIFTExpression *)self cancel];
    PBDataWriterWriteSubmessage();
  }

  noMatchingTool = [(IFTSchemaIFTExpression *)self noMatchingTool];

  if (noMatchingTool)
  {
    noMatchingTool2 = [(IFTSchemaIFTExpression *)self noMatchingTool];
    PBDataWriterWriteSubmessage();
  }

  continuePlanning = [(IFTSchemaIFTExpression *)self continuePlanning];

  if (continuePlanning)
  {
    continuePlanning2 = [(IFTSchemaIFTExpression *)self continuePlanning];
    PBDataWriterWriteSubmessage();
  }

  endOfPlan = [(IFTSchemaIFTExpression *)self endOfPlan];

  if (endOfPlan)
  {
    endOfPlan2 = [(IFTSchemaIFTExpression *)self endOfPlan];
    PBDataWriterWriteSubmessage();
  }

  getMentionedApps = [(IFTSchemaIFTExpression *)self getMentionedApps];

  if (getMentionedApps)
  {
    getMentionedApps2 = [(IFTSchemaIFTExpression *)self getMentionedApps];
    PBDataWriterWriteSubmessage();
  }

  open = [(IFTSchemaIFTExpression *)self open];

  if (open)
  {
    open2 = [(IFTSchemaIFTExpression *)self open];
    PBDataWriterWriteSubmessage();
  }

  explicitResolutionRequest = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];

  if (explicitResolutionRequest)
  {
    explicitResolutionRequest2 = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
    PBDataWriterWriteSubmessage();
  }

  payload = [(IFTSchemaIFTExpression *)self payload];

  if (payload)
  {
    payload2 = [(IFTSchemaIFTExpression *)self payload];
    PBDataWriterWriteSubmessage();
  }

  format = [(IFTSchemaIFTExpression *)self format];

  if (format)
  {
    format2 = [(IFTSchemaIFTExpression *)self format];
    PBDataWriterWriteSubmessage();
  }

  structuredSearch = [(IFTSchemaIFTExpression *)self structuredSearch];

  v55 = toCopy;
  if (structuredSearch)
  {
    structuredSearch2 = [(IFTSchemaIFTExpression *)self structuredSearch];
    PBDataWriterWriteSubmessage();

    v55 = toCopy;
  }
}

- (void)deleteStructuredSearch
{
  if (self->_whichOneof_Expression == 27)
  {
    self->_whichOneof_Expression = 0;
    self->_structuredSearch = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTStructuredSearchExpression)structuredSearch
{
  if (self->_whichOneof_Expression == 27)
  {
    v3 = self->_structuredSearch;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStructuredSearch:(id)search
{
  searchCopy = search;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  v30 = 27;
  if (!searchCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = searchCopy;
}

- (void)deleteFormat
{
  if (self->_whichOneof_Expression == 26)
  {
    self->_whichOneof_Expression = 0;
    self->_format = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTFormatExpression)format
{
  if (self->_whichOneof_Expression == 26)
  {
    v3 = self->_format;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFormat:(id)format
{
  formatCopy = format;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 26;
  if (!formatCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  format = self->_format;
  self->_format = formatCopy;
}

- (void)deletePayload
{
  if (self->_whichOneof_Expression == 25)
  {
    self->_whichOneof_Expression = 0;
    self->_payload = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPayloadExpression)payload
{
  if (self->_whichOneof_Expression == 25)
  {
    v3 = self->_payload;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPayload:(id)payload
{
  payloadCopy = payload;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 25;
  if (!payloadCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  payload = self->_payload;
  self->_payload = payloadCopy;
}

- (void)deleteExplicitResolutionRequest
{
  if (self->_whichOneof_Expression == 24)
  {
    self->_whichOneof_Expression = 0;
    self->_explicitResolutionRequest = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTExplicitResolutionRequest)explicitResolutionRequest
{
  if (self->_whichOneof_Expression == 24)
  {
    v3 = self->_explicitResolutionRequest;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setExplicitResolutionRequest:(id)request
{
  requestCopy = request;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 24;
  if (!requestCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = requestCopy;
}

- (void)deleteOpen
{
  if (self->_whichOneof_Expression == 23)
  {
    self->_whichOneof_Expression = 0;
    self->_open = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTOpenExpression)open
{
  if (self->_whichOneof_Expression == 23)
  {
    v3 = self->_open;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOpen:(id)open
{
  openCopy = open;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 23;
  if (!openCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  open = self->_open;
  self->_open = openCopy;
}

- (void)deleteGetMentionedApps
{
  if (self->_whichOneof_Expression == 22)
  {
    self->_whichOneof_Expression = 0;
    self->_getMentionedApps = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTGetMentionedAppsExpression)getMentionedApps
{
  if (self->_whichOneof_Expression == 22)
  {
    v3 = self->_getMentionedApps;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGetMentionedApps:(id)apps
{
  appsCopy = apps;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 22;
  if (!appsCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = appsCopy;
}

- (void)deleteEndOfPlan
{
  if (self->_whichOneof_Expression == 21)
  {
    self->_whichOneof_Expression = 0;
    self->_endOfPlan = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTEndOfPlanExpression)endOfPlan
{
  if (self->_whichOneof_Expression == 21)
  {
    v3 = self->_endOfPlan;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEndOfPlan:(id)plan
{
  planCopy = plan;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 21;
  if (!planCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = planCopy;
}

- (void)deleteContinuePlanning
{
  if (self->_whichOneof_Expression == 20)
  {
    self->_whichOneof_Expression = 0;
    self->_continuePlanning = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTContinuePlanningExpression)continuePlanning
{
  if (self->_whichOneof_Expression == 20)
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
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 20;
  if (!planningCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = planningCopy;
}

- (void)deleteNoMatchingTool
{
  if (self->_whichOneof_Expression == 19)
  {
    self->_whichOneof_Expression = 0;
    self->_noMatchingTool = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTNoMatchingToolExpression)noMatchingTool
{
  if (self->_whichOneof_Expression == 19)
  {
    v3 = self->_noMatchingTool;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNoMatchingTool:(id)tool
{
  toolCopy = tool;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 19;
  if (!toolCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = toolCopy;
}

- (void)deleteCancel
{
  if (self->_whichOneof_Expression == 18)
  {
    self->_whichOneof_Expression = 0;
    self->_cancel = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTCancelExpression)cancel
{
  if (self->_whichOneof_Expression == 18)
  {
    v3 = self->_cancel;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCancel:(id)cancel
{
  cancelCopy = cancel;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 18;
  if (!cancelCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  cancel = self->_cancel;
  self->_cancel = cancelCopy;
}

- (void)deleteReject
{
  if (self->_whichOneof_Expression == 17)
  {
    self->_whichOneof_Expression = 0;
    self->_reject = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTRejectExpression)reject
{
  if (self->_whichOneof_Expression == 17)
  {
    v3 = self->_reject;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setReject:(id)reject
{
  rejectCopy = reject;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 17;
  if (!rejectCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  reject = self->_reject;
  self->_reject = rejectCopy;
}

- (void)deleteUndo
{
  if (self->_whichOneof_Expression == 16)
  {
    self->_whichOneof_Expression = 0;
    self->_undo = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTUndoExpression)undo
{
  if (self->_whichOneof_Expression == 16)
  {
    v3 = self->_undo;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUndo:(id)undo
{
  undoCopy = undo;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  self->_whichOneof_Expression = 16 * (undoCopy != 0);
  undo = self->_undo;
  self->_undo = undoCopy;
}

- (void)deleteResolveTool
{
  if (self->_whichOneof_Expression == 15)
  {
    self->_whichOneof_Expression = 0;
    self->_resolveTool = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTResolveToolExpression)resolveTool
{
  if (self->_whichOneof_Expression == 15)
  {
    v3 = self->_resolveTool;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setResolveTool:(id)tool
{
  toolCopy = tool;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 15;
  if (!toolCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  resolveTool = self->_resolveTool;
  self->_resolveTool = toolCopy;
}

- (void)deletePickOne
{
  if (self->_whichOneof_Expression == 14)
  {
    self->_whichOneof_Expression = 0;
    self->_pickOne = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPickOneExpression)pickOne
{
  if (self->_whichOneof_Expression == 14)
  {
    v3 = self->_pickOne;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPickOne:(id)one
{
  oneCopy = one;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 14;
  if (!oneCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  pickOne = self->_pickOne;
  self->_pickOne = oneCopy;
}

- (void)deleteSearch
{
  if (self->_whichOneof_Expression == 13)
  {
    self->_whichOneof_Expression = 0;
    self->_search = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSearchExpression)search
{
  if (self->_whichOneof_Expression == 13)
  {
    v3 = self->_search;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSearch:(id)search
{
  searchCopy = search;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 13;
  if (!searchCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  search = self->_search;
  self->_search = searchCopy;
}

- (void)deleteConfirm
{
  if (self->_whichOneof_Expression == 12)
  {
    self->_whichOneof_Expression = 0;
    self->_confirm = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTConfirmExpression)confirm
{
  if (self->_whichOneof_Expression == 12)
  {
    v3 = self->_confirm;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConfirm:(id)confirm
{
  confirmCopy = confirm;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 12;
  if (!confirmCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  confirm = self->_confirm;
  self->_confirm = confirmCopy;
}

- (void)deletePick
{
  if (self->_whichOneof_Expression == 10)
  {
    self->_whichOneof_Expression = 0;
    self->_pick = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPickExpression)pick
{
  if (self->_whichOneof_Expression == 10)
  {
    v3 = self->_pick;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPick:(id)pick
{
  pickCopy = pick;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 10;
  if (!pickCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  pick = self->_pick;
  self->_pick = pickCopy;
}

- (void)deleteSay
{
  if (self->_whichOneof_Expression == 9)
  {
    self->_whichOneof_Expression = 0;
    self->_say = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSayExpression)say
{
  if (self->_whichOneof_Expression == 9)
  {
    v3 = self->_say;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSay:(id)say
{
  sayCopy = say;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 9;
  if (!sayCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  say = self->_say;
  self->_say = sayCopy;
}

- (void)deleteCall
{
  if (self->_whichOneof_Expression == 8)
  {
    self->_whichOneof_Expression = 0;
    self->_call = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTCallExpression)call
{
  if (self->_whichOneof_Expression == 8)
  {
    v3 = self->_call;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCall:(id)call
{
  callCopy = call;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  self->_whichOneof_Expression = 8 * (callCopy != 0);
  call = self->_call;
  self->_call = callCopy;
}

- (void)deleteUpdateParameters
{
  if (self->_whichOneof_Expression == 7)
  {
    self->_whichOneof_Expression = 0;
    self->_updateParameters = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTUpdateParametersExpression)updateParameters
{
  if (self->_whichOneof_Expression == 7)
  {
    v3 = self->_updateParameters;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUpdateParameters:(id)parameters
{
  parametersCopy = parameters;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 7;
  if (!parametersCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  updateParameters = self->_updateParameters;
  self->_updateParameters = parametersCopy;
}

- (void)deleteIndex
{
  if (self->_whichOneof_Expression == 6)
  {
    self->_whichOneof_Expression = 0;
    self->_index = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTIndexExpression)index
{
  if (self->_whichOneof_Expression == 6)
  {
    v3 = self->_index;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setIndex:(id)index
{
  indexCopy = index;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 6;
  if (!indexCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  index = self->_index;
  self->_index = indexCopy;
}

- (void)deleteDot
{
  if (self->_whichOneof_Expression == 5)
  {
    self->_whichOneof_Expression = 0;
    self->_dot = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTDotExpression)dot
{
  if (self->_whichOneof_Expression == 5)
  {
    v3 = self->_dot;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDot:(id)dot
{
  dotCopy = dot;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 5;
  if (!dotCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  dot = self->_dot;
  self->_dot = dotCopy;
}

- (void)deleteInfix
{
  if (self->_whichOneof_Expression == 4)
  {
    self->_whichOneof_Expression = 0;
    self->_infix = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTInfixExpression)infix
{
  if (self->_whichOneof_Expression == 4)
  {
    v3 = self->_infix;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setInfix:(id)infix
{
  infixCopy = infix;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  self->_whichOneof_Expression = 4 * (infixCopy != 0);
  infix = self->_infix;
  self->_infix = infixCopy;
}

- (void)deletePrefix
{
  if (self->_whichOneof_Expression == 3)
  {
    self->_whichOneof_Expression = 0;
    self->_prefix = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPrefixExpression)prefix
{
  if (self->_whichOneof_Expression == 3)
  {
    v3 = self->_prefix;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPrefix:(id)prefix
{
  prefixCopy = prefix;
  value = self->_value;
  self->_value = 0;

  statementId = self->_statementId;
  self->_statementId = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  v30 = 3;
  if (!prefixCopy)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  prefix = self->_prefix;
  self->_prefix = prefixCopy;
}

- (void)deleteStatementId
{
  if (self->_whichOneof_Expression == 2)
  {
    self->_whichOneof_Expression = 0;
    self->_statementId = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTStatementId)statementId
{
  if (self->_whichOneof_Expression == 2)
  {
    v3 = self->_statementId;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStatementId:(id)id
{
  idCopy = id;
  value = self->_value;
  self->_value = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  self->_whichOneof_Expression = 2 * (idCopy != 0);
  statementId = self->_statementId;
  self->_statementId = idCopy;
}

- (void)deleteValue
{
  if (self->_whichOneof_Expression == 1)
  {
    self->_whichOneof_Expression = 0;
    self->_value = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTValueExpression)value
{
  if (self->_whichOneof_Expression == 1)
  {
    v3 = self->_value;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  statementId = self->_statementId;
  self->_statementId = 0;

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  call = self->_call;
  self->_call = 0;

  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = 0;

  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = 0;

  open = self->_open;
  self->_open = 0;

  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = 0;

  payload = self->_payload;
  self->_payload = 0;

  format = self->_format;
  self->_format = 0;

  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = 0;

  self->_whichOneof_Expression = valueCopy != 0;
  value = self->_value;
  self->_value = valueCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v85.receiver = self;
  v85.super_class = IFTSchemaIFTExpression;
  v5 = [(SISchemaInstrumentationMessage *)&v85 applySensitiveConditionsPolicy:policyCopy];
  value = [(IFTSchemaIFTExpression *)self value];
  v7 = [value applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTExpression *)self deleteValue];
  }

  statementId = [(IFTSchemaIFTExpression *)self statementId];
  v10 = [statementId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTExpression *)self deleteStatementId];
  }

  prefix = [(IFTSchemaIFTExpression *)self prefix];
  v13 = [prefix applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTExpression *)self deletePrefix];
  }

  infix = [(IFTSchemaIFTExpression *)self infix];
  v16 = [infix applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTExpression *)self deleteInfix];
  }

  v18 = [(IFTSchemaIFTExpression *)self dot];
  v19 = [v18 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(IFTSchemaIFTExpression *)self deleteDot];
  }

  index = [(IFTSchemaIFTExpression *)self index];
  v22 = [index applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(IFTSchemaIFTExpression *)self deleteIndex];
  }

  updateParameters = [(IFTSchemaIFTExpression *)self updateParameters];
  v25 = [updateParameters applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(IFTSchemaIFTExpression *)self deleteUpdateParameters];
  }

  call = [(IFTSchemaIFTExpression *)self call];
  v28 = [call applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(IFTSchemaIFTExpression *)self deleteCall];
  }

  v30 = [(IFTSchemaIFTExpression *)self say];
  v31 = [v30 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(IFTSchemaIFTExpression *)self deleteSay];
  }

  pick = [(IFTSchemaIFTExpression *)self pick];
  v34 = [pick applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(IFTSchemaIFTExpression *)self deletePick];
  }

  confirm = [(IFTSchemaIFTExpression *)self confirm];
  v37 = [confirm applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(IFTSchemaIFTExpression *)self deleteConfirm];
  }

  search = [(IFTSchemaIFTExpression *)self search];
  v40 = [search applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(IFTSchemaIFTExpression *)self deleteSearch];
  }

  pickOne = [(IFTSchemaIFTExpression *)self pickOne];
  v43 = [pickOne applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(IFTSchemaIFTExpression *)self deletePickOne];
  }

  resolveTool = [(IFTSchemaIFTExpression *)self resolveTool];
  v46 = [resolveTool applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(IFTSchemaIFTExpression *)self deleteResolveTool];
  }

  undo = [(IFTSchemaIFTExpression *)self undo];
  v49 = [undo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(IFTSchemaIFTExpression *)self deleteUndo];
  }

  reject = [(IFTSchemaIFTExpression *)self reject];
  v52 = [reject applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(IFTSchemaIFTExpression *)self deleteReject];
  }

  cancel = [(IFTSchemaIFTExpression *)self cancel];
  v55 = [cancel applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(IFTSchemaIFTExpression *)self deleteCancel];
  }

  noMatchingTool = [(IFTSchemaIFTExpression *)self noMatchingTool];
  v58 = [noMatchingTool applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(IFTSchemaIFTExpression *)self deleteNoMatchingTool];
  }

  continuePlanning = [(IFTSchemaIFTExpression *)self continuePlanning];
  v61 = [continuePlanning applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(IFTSchemaIFTExpression *)self deleteContinuePlanning];
  }

  endOfPlan = [(IFTSchemaIFTExpression *)self endOfPlan];
  v64 = [endOfPlan applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
  {
    [(IFTSchemaIFTExpression *)self deleteEndOfPlan];
  }

  getMentionedApps = [(IFTSchemaIFTExpression *)self getMentionedApps];
  v67 = [getMentionedApps applySensitiveConditionsPolicy:policyCopy];
  suppressMessage21 = [v67 suppressMessage];

  if (suppressMessage21)
  {
    [(IFTSchemaIFTExpression *)self deleteGetMentionedApps];
  }

  open = [(IFTSchemaIFTExpression *)self open];
  v70 = [open applySensitiveConditionsPolicy:policyCopy];
  suppressMessage22 = [v70 suppressMessage];

  if (suppressMessage22)
  {
    [(IFTSchemaIFTExpression *)self deleteOpen];
  }

  explicitResolutionRequest = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
  v73 = [explicitResolutionRequest applySensitiveConditionsPolicy:policyCopy];
  suppressMessage23 = [v73 suppressMessage];

  if (suppressMessage23)
  {
    [(IFTSchemaIFTExpression *)self deleteExplicitResolutionRequest];
  }

  payload = [(IFTSchemaIFTExpression *)self payload];
  v76 = [payload applySensitiveConditionsPolicy:policyCopy];
  suppressMessage24 = [v76 suppressMessage];

  if (suppressMessage24)
  {
    [(IFTSchemaIFTExpression *)self deletePayload];
  }

  format = [(IFTSchemaIFTExpression *)self format];
  v79 = [format applySensitiveConditionsPolicy:policyCopy];
  suppressMessage25 = [v79 suppressMessage];

  if (suppressMessage25)
  {
    [(IFTSchemaIFTExpression *)self deleteFormat];
  }

  structuredSearch = [(IFTSchemaIFTExpression *)self structuredSearch];
  v82 = [structuredSearch applySensitiveConditionsPolicy:policyCopy];
  suppressMessage26 = [v82 suppressMessage];

  if (suppressMessage26)
  {
    [(IFTSchemaIFTExpression *)self deleteStructuredSearch];
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