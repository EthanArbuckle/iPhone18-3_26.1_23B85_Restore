@interface IFTSchemaIFTExpression
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTCallExpression)call;
- (IFTSchemaIFTCancelExpression)cancel;
- (IFTSchemaIFTConfirmExpression)confirm;
- (IFTSchemaIFTContinuePlanningExpression)continuePlanning;
- (IFTSchemaIFTDotExpression)dot;
- (IFTSchemaIFTEndOfPlanExpression)endOfPlan;
- (IFTSchemaIFTExplicitResolutionRequest)explicitResolutionRequest;
- (IFTSchemaIFTExpression)initWithDictionary:(id)a3;
- (IFTSchemaIFTExpression)initWithJSON:(id)a3;
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
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setCall:(id)a3;
- (void)setCancel:(id)a3;
- (void)setConfirm:(id)a3;
- (void)setContinuePlanning:(id)a3;
- (void)setDot:(id)a3;
- (void)setEndOfPlan:(id)a3;
- (void)setExplicitResolutionRequest:(id)a3;
- (void)setFormat:(id)a3;
- (void)setGetMentionedApps:(id)a3;
- (void)setIndex:(id)a3;
- (void)setInfix:(id)a3;
- (void)setNoMatchingTool:(id)a3;
- (void)setOpen:(id)a3;
- (void)setPayload:(id)a3;
- (void)setPick:(id)a3;
- (void)setPickOne:(id)a3;
- (void)setPrefix:(id)a3;
- (void)setReject:(id)a3;
- (void)setResolveTool:(id)a3;
- (void)setSay:(id)a3;
- (void)setSearch:(id)a3;
- (void)setStatementId:(id)a3;
- (void)setStructuredSearch:(id)a3;
- (void)setUndo:(id)a3;
- (void)setUpdateParameters:(id)a3;
- (void)setValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTExpression

- (IFTSchemaIFTExpression)initWithDictionary:(id)a3
{
  v4 = a3;
  v79.receiver = self;
  v79.super_class = IFTSchemaIFTExpression;
  v5 = [(IFTSchemaIFTExpression *)&v79 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTValueExpression alloc] initWithDictionary:v6];
      [(IFTSchemaIFTExpression *)v5 setValue:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v8];
      [(IFTSchemaIFTExpression *)v5 setStatementId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"prefix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTPrefixExpression alloc] initWithDictionary:v10];
      [(IFTSchemaIFTExpression *)v5 setPrefix:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"infix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTInfixExpression alloc] initWithDictionary:v12];
      [(IFTSchemaIFTExpression *)v5 setInfix:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"dot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IFTSchemaIFTDotExpression alloc] initWithDictionary:v14];
      [(IFTSchemaIFTExpression *)v5 setDot:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaIFTIndexExpression alloc] initWithDictionary:v16];
      [(IFTSchemaIFTExpression *)v5 setIndex:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"updateParameters"];
    objc_opt_class();
    v78 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[IFTSchemaIFTUpdateParametersExpression alloc] initWithDictionary:v18];
      [(IFTSchemaIFTExpression *)v5 setUpdateParameters:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"call"];
    objc_opt_class();
    v77 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[IFTSchemaIFTCallExpression alloc] initWithDictionary:v20];
      [(IFTSchemaIFTExpression *)v5 setCall:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"say"];
    objc_opt_class();
    v76 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[IFTSchemaIFTSayExpression alloc] initWithDictionary:v22];
      [(IFTSchemaIFTExpression *)v5 setSay:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"pick"];
    objc_opt_class();
    v75 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[IFTSchemaIFTPickExpression alloc] initWithDictionary:v24];
      [(IFTSchemaIFTExpression *)v5 setPick:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"confirm"];
    objc_opt_class();
    v74 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[IFTSchemaIFTConfirmExpression alloc] initWithDictionary:v26];
      [(IFTSchemaIFTExpression *)v5 setConfirm:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"search"];
    objc_opt_class();
    v73 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[IFTSchemaIFTSearchExpression alloc] initWithDictionary:v28];
      [(IFTSchemaIFTExpression *)v5 setSearch:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"pickOne"];
    objc_opt_class();
    v72 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[IFTSchemaIFTPickOneExpression alloc] initWithDictionary:v30];
      [(IFTSchemaIFTExpression *)v5 setPickOne:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"resolveTool"];
    objc_opt_class();
    v71 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[IFTSchemaIFTResolveToolExpression alloc] initWithDictionary:v32];
      [(IFTSchemaIFTExpression *)v5 setResolveTool:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"undo"];
    objc_opt_class();
    v70 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[IFTSchemaIFTUndoExpression alloc] initWithDictionary:v34];
      [(IFTSchemaIFTExpression *)v5 setUndo:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"reject"];
    objc_opt_class();
    v69 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[IFTSchemaIFTRejectExpression alloc] initWithDictionary:v36];
      [(IFTSchemaIFTExpression *)v5 setReject:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"cancel"];
    objc_opt_class();
    v68 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[IFTSchemaIFTCancelExpression alloc] initWithDictionary:v38];
      [(IFTSchemaIFTExpression *)v5 setCancel:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"noMatchingTool"];
    objc_opt_class();
    v67 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[IFTSchemaIFTNoMatchingToolExpression alloc] initWithDictionary:v40];
      [(IFTSchemaIFTExpression *)v5 setNoMatchingTool:v41];
    }

    v65 = v8;
    v42 = [v4 objectForKeyedSubscript:@"continuePlanning"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[IFTSchemaIFTContinuePlanningExpression alloc] initWithDictionary:v42];
      [(IFTSchemaIFTExpression *)v5 setContinuePlanning:v43];
    }

    v64 = v10;
    v44 = [v4 objectForKeyedSubscript:{@"endOfPlan", v42}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[IFTSchemaIFTEndOfPlanExpression alloc] initWithDictionary:v44];
      [(IFTSchemaIFTExpression *)v5 setEndOfPlan:v45];
    }

    v63 = v12;
    v46 = [v4 objectForKeyedSubscript:@"getMentionedApps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[IFTSchemaIFTGetMentionedAppsExpression alloc] initWithDictionary:v46];
      [(IFTSchemaIFTExpression *)v5 setGetMentionedApps:v47];
    }

    v62 = v14;
    v48 = [v4 objectForKeyedSubscript:@"open"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[IFTSchemaIFTOpenExpression alloc] initWithDictionary:v48];
      [(IFTSchemaIFTExpression *)v5 setOpen:v49];
    }

    v61 = v16;
    v50 = [v4 objectForKeyedSubscript:@"explicitResolutionRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[IFTSchemaIFTExplicitResolutionRequest alloc] initWithDictionary:v50];
      [(IFTSchemaIFTExpression *)v5 setExplicitResolutionRequest:v51];
    }

    v66 = v6;
    v52 = [v4 objectForKeyedSubscript:@"payload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [[IFTSchemaIFTPayloadExpression alloc] initWithDictionary:v52];
      [(IFTSchemaIFTExpression *)v5 setPayload:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"format"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [[IFTSchemaIFTFormatExpression alloc] initWithDictionary:v54];
      [(IFTSchemaIFTExpression *)v5 setFormat:v55];
    }

    v56 = [v4 objectForKeyedSubscript:@"structuredSearch"];
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

- (IFTSchemaIFTExpression)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTExpression *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTExpression *)self dictionaryRepresentation];
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
  if (self->_call)
  {
    v4 = [(IFTSchemaIFTExpression *)self call];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"call"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"call"];
    }
  }

  if (self->_cancel)
  {
    v7 = [(IFTSchemaIFTExpression *)self cancel];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"cancel"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"cancel"];
    }
  }

  if (self->_confirm)
  {
    v10 = [(IFTSchemaIFTExpression *)self confirm];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"confirm"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"confirm"];
    }
  }

  if (self->_continuePlanning)
  {
    v13 = [(IFTSchemaIFTExpression *)self continuePlanning];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"continuePlanning"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"continuePlanning"];
    }
  }

  if (self->_dot)
  {
    v16 = [(IFTSchemaIFTExpression *)self dot];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"dot"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"dot"];
    }
  }

  if (self->_endOfPlan)
  {
    v19 = [(IFTSchemaIFTExpression *)self endOfPlan];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"endOfPlan"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"endOfPlan"];
    }
  }

  if (self->_explicitResolutionRequest)
  {
    v22 = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"explicitResolutionRequest"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"explicitResolutionRequest"];
    }
  }

  if (self->_format)
  {
    v25 = [(IFTSchemaIFTExpression *)self format];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"format"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"format"];
    }
  }

  if (self->_getMentionedApps)
  {
    v28 = [(IFTSchemaIFTExpression *)self getMentionedApps];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"getMentionedApps"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"getMentionedApps"];
    }
  }

  if (self->_index)
  {
    v31 = [(IFTSchemaIFTExpression *)self index];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"index"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"index"];
    }
  }

  if (self->_infix)
  {
    v34 = [(IFTSchemaIFTExpression *)self infix];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"infix"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"infix"];
    }
  }

  if (self->_noMatchingTool)
  {
    v37 = [(IFTSchemaIFTExpression *)self noMatchingTool];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"noMatchingTool"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"noMatchingTool"];
    }
  }

  if (self->_open)
  {
    v40 = [(IFTSchemaIFTExpression *)self open];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"open"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"open"];
    }
  }

  if (self->_payload)
  {
    v43 = [(IFTSchemaIFTExpression *)self payload];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"payload"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"payload"];
    }
  }

  if (self->_pick)
  {
    v46 = [(IFTSchemaIFTExpression *)self pick];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"pick"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"pick"];
    }
  }

  if (self->_pickOne)
  {
    v49 = [(IFTSchemaIFTExpression *)self pickOne];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"pickOne"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"pickOne"];
    }
  }

  if (self->_prefix)
  {
    v52 = [(IFTSchemaIFTExpression *)self prefix];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"prefix"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"prefix"];
    }
  }

  if (self->_reject)
  {
    v55 = [(IFTSchemaIFTExpression *)self reject];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"reject"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"reject"];
    }
  }

  if (self->_resolveTool)
  {
    v58 = [(IFTSchemaIFTExpression *)self resolveTool];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"resolveTool"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"resolveTool"];
    }
  }

  if (self->_say)
  {
    v61 = [(IFTSchemaIFTExpression *)self say];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"say"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"say"];
    }
  }

  if (self->_search)
  {
    v64 = [(IFTSchemaIFTExpression *)self search];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"search"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"search"];
    }
  }

  if (self->_statementId)
  {
    v67 = [(IFTSchemaIFTExpression *)self statementId];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"statementId"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"statementId"];
    }
  }

  if (self->_structuredSearch)
  {
    v70 = [(IFTSchemaIFTExpression *)self structuredSearch];
    v71 = [v70 dictionaryRepresentation];
    if (v71)
    {
      [v3 setObject:v71 forKeyedSubscript:@"structuredSearch"];
    }

    else
    {
      v72 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v72 forKeyedSubscript:@"structuredSearch"];
    }
  }

  if (self->_undo)
  {
    v73 = [(IFTSchemaIFTExpression *)self undo];
    v74 = [v73 dictionaryRepresentation];
    if (v74)
    {
      [v3 setObject:v74 forKeyedSubscript:@"undo"];
    }

    else
    {
      v75 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v75 forKeyedSubscript:@"undo"];
    }
  }

  if (self->_updateParameters)
  {
    v76 = [(IFTSchemaIFTExpression *)self updateParameters];
    v77 = [v76 dictionaryRepresentation];
    if (v77)
    {
      [v3 setObject:v77 forKeyedSubscript:@"updateParameters"];
    }

    else
    {
      v78 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v78 forKeyedSubscript:@"updateParameters"];
    }
  }

  if (self->_value)
  {
    v79 = [(IFTSchemaIFTExpression *)self value];
    v80 = [v79 dictionaryRepresentation];
    if (v80)
    {
      [v3 setObject:v80 forKeyedSubscript:@"value"];
    }

    else
    {
      v81 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v81 forKeyedSubscript:@"value"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v82 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_133;
  }

  whichOneof_Expression = self->_whichOneof_Expression;
  if (whichOneof_Expression != [v4 whichOneof_Expression])
  {
    goto LABEL_133;
  }

  v6 = [(IFTSchemaIFTExpression *)self value];
  v7 = [v4 value];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v8 = [(IFTSchemaIFTExpression *)self value];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTExpression *)self value];
    v11 = [v4 value];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self statementId];
  v7 = [v4 statementId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v13 = [(IFTSchemaIFTExpression *)self statementId];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTExpression *)self statementId];
    v16 = [v4 statementId];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self prefix];
  v7 = [v4 prefix];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v18 = [(IFTSchemaIFTExpression *)self prefix];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTExpression *)self prefix];
    v21 = [v4 prefix];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self infix];
  v7 = [v4 infix];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v23 = [(IFTSchemaIFTExpression *)self infix];
  if (v23)
  {
    v24 = v23;
    v25 = [(IFTSchemaIFTExpression *)self infix];
    v26 = [v4 infix];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self dot];
  v7 = [v4 dot];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v28 = [(IFTSchemaIFTExpression *)self dot];
  if (v28)
  {
    v29 = v28;
    v30 = [(IFTSchemaIFTExpression *)self dot];
    v31 = [v4 dot];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self index];
  v7 = [v4 index];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v33 = [(IFTSchemaIFTExpression *)self index];
  if (v33)
  {
    v34 = v33;
    v35 = [(IFTSchemaIFTExpression *)self index];
    v36 = [v4 index];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self updateParameters];
  v7 = [v4 updateParameters];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v38 = [(IFTSchemaIFTExpression *)self updateParameters];
  if (v38)
  {
    v39 = v38;
    v40 = [(IFTSchemaIFTExpression *)self updateParameters];
    v41 = [v4 updateParameters];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self call];
  v7 = [v4 call];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v43 = [(IFTSchemaIFTExpression *)self call];
  if (v43)
  {
    v44 = v43;
    v45 = [(IFTSchemaIFTExpression *)self call];
    v46 = [v4 call];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self say];
  v7 = [v4 say];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v48 = [(IFTSchemaIFTExpression *)self say];
  if (v48)
  {
    v49 = v48;
    v50 = [(IFTSchemaIFTExpression *)self say];
    v51 = [v4 say];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self pick];
  v7 = [v4 pick];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v53 = [(IFTSchemaIFTExpression *)self pick];
  if (v53)
  {
    v54 = v53;
    v55 = [(IFTSchemaIFTExpression *)self pick];
    v56 = [v4 pick];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self confirm];
  v7 = [v4 confirm];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v58 = [(IFTSchemaIFTExpression *)self confirm];
  if (v58)
  {
    v59 = v58;
    v60 = [(IFTSchemaIFTExpression *)self confirm];
    v61 = [v4 confirm];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self search];
  v7 = [v4 search];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v63 = [(IFTSchemaIFTExpression *)self search];
  if (v63)
  {
    v64 = v63;
    v65 = [(IFTSchemaIFTExpression *)self search];
    v66 = [v4 search];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self pickOne];
  v7 = [v4 pickOne];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v68 = [(IFTSchemaIFTExpression *)self pickOne];
  if (v68)
  {
    v69 = v68;
    v70 = [(IFTSchemaIFTExpression *)self pickOne];
    v71 = [v4 pickOne];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self resolveTool];
  v7 = [v4 resolveTool];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v73 = [(IFTSchemaIFTExpression *)self resolveTool];
  if (v73)
  {
    v74 = v73;
    v75 = [(IFTSchemaIFTExpression *)self resolveTool];
    v76 = [v4 resolveTool];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self undo];
  v7 = [v4 undo];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v78 = [(IFTSchemaIFTExpression *)self undo];
  if (v78)
  {
    v79 = v78;
    v80 = [(IFTSchemaIFTExpression *)self undo];
    v81 = [v4 undo];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self reject];
  v7 = [v4 reject];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v83 = [(IFTSchemaIFTExpression *)self reject];
  if (v83)
  {
    v84 = v83;
    v85 = [(IFTSchemaIFTExpression *)self reject];
    v86 = [v4 reject];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self cancel];
  v7 = [v4 cancel];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v88 = [(IFTSchemaIFTExpression *)self cancel];
  if (v88)
  {
    v89 = v88;
    v90 = [(IFTSchemaIFTExpression *)self cancel];
    v91 = [v4 cancel];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self noMatchingTool];
  v7 = [v4 noMatchingTool];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v93 = [(IFTSchemaIFTExpression *)self noMatchingTool];
  if (v93)
  {
    v94 = v93;
    v95 = [(IFTSchemaIFTExpression *)self noMatchingTool];
    v96 = [v4 noMatchingTool];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self continuePlanning];
  v7 = [v4 continuePlanning];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v98 = [(IFTSchemaIFTExpression *)self continuePlanning];
  if (v98)
  {
    v99 = v98;
    v100 = [(IFTSchemaIFTExpression *)self continuePlanning];
    v101 = [v4 continuePlanning];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self endOfPlan];
  v7 = [v4 endOfPlan];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v103 = [(IFTSchemaIFTExpression *)self endOfPlan];
  if (v103)
  {
    v104 = v103;
    v105 = [(IFTSchemaIFTExpression *)self endOfPlan];
    v106 = [v4 endOfPlan];
    v107 = [v105 isEqual:v106];

    if (!v107)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self getMentionedApps];
  v7 = [v4 getMentionedApps];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v108 = [(IFTSchemaIFTExpression *)self getMentionedApps];
  if (v108)
  {
    v109 = v108;
    v110 = [(IFTSchemaIFTExpression *)self getMentionedApps];
    v111 = [v4 getMentionedApps];
    v112 = [v110 isEqual:v111];

    if (!v112)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self open];
  v7 = [v4 open];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v113 = [(IFTSchemaIFTExpression *)self open];
  if (v113)
  {
    v114 = v113;
    v115 = [(IFTSchemaIFTExpression *)self open];
    v116 = [v4 open];
    v117 = [v115 isEqual:v116];

    if (!v117)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
  v7 = [v4 explicitResolutionRequest];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v118 = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
  if (v118)
  {
    v119 = v118;
    v120 = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
    v121 = [v4 explicitResolutionRequest];
    v122 = [v120 isEqual:v121];

    if (!v122)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self payload];
  v7 = [v4 payload];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v123 = [(IFTSchemaIFTExpression *)self payload];
  if (v123)
  {
    v124 = v123;
    v125 = [(IFTSchemaIFTExpression *)self payload];
    v126 = [v4 payload];
    v127 = [v125 isEqual:v126];

    if (!v127)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self format];
  v7 = [v4 format];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_132;
  }

  v128 = [(IFTSchemaIFTExpression *)self format];
  if (v128)
  {
    v129 = v128;
    v130 = [(IFTSchemaIFTExpression *)self format];
    v131 = [v4 format];
    v132 = [v130 isEqual:v131];

    if (!v132)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTExpression *)self structuredSearch];
  v7 = [v4 structuredSearch];
  if ((v6 != 0) != (v7 == 0))
  {
    v133 = [(IFTSchemaIFTExpression *)self structuredSearch];
    if (!v133)
    {

LABEL_136:
      v138 = 1;
      goto LABEL_134;
    }

    v134 = v133;
    v135 = [(IFTSchemaIFTExpression *)self structuredSearch];
    v136 = [v4 structuredSearch];
    v137 = [v135 isEqual:v136];

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

- (void)writeTo:(id)a3
{
  v57 = a3;
  v4 = [(IFTSchemaIFTExpression *)self value];

  if (v4)
  {
    v5 = [(IFTSchemaIFTExpression *)self value];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTExpression *)self statementId];

  if (v6)
  {
    v7 = [(IFTSchemaIFTExpression *)self statementId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTExpression *)self prefix];

  if (v8)
  {
    v9 = [(IFTSchemaIFTExpression *)self prefix];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IFTSchemaIFTExpression *)self infix];

  if (v10)
  {
    v11 = [(IFTSchemaIFTExpression *)self infix];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(IFTSchemaIFTExpression *)self dot];

  if (v12)
  {
    v13 = [(IFTSchemaIFTExpression *)self dot];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(IFTSchemaIFTExpression *)self index];

  if (v14)
  {
    v15 = [(IFTSchemaIFTExpression *)self index];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(IFTSchemaIFTExpression *)self updateParameters];

  if (v16)
  {
    v17 = [(IFTSchemaIFTExpression *)self updateParameters];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(IFTSchemaIFTExpression *)self call];

  if (v18)
  {
    v19 = [(IFTSchemaIFTExpression *)self call];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(IFTSchemaIFTExpression *)self say];

  if (v20)
  {
    v21 = [(IFTSchemaIFTExpression *)self say];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(IFTSchemaIFTExpression *)self pick];

  if (v22)
  {
    v23 = [(IFTSchemaIFTExpression *)self pick];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(IFTSchemaIFTExpression *)self confirm];

  if (v24)
  {
    v25 = [(IFTSchemaIFTExpression *)self confirm];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(IFTSchemaIFTExpression *)self search];

  if (v26)
  {
    v27 = [(IFTSchemaIFTExpression *)self search];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(IFTSchemaIFTExpression *)self pickOne];

  if (v28)
  {
    v29 = [(IFTSchemaIFTExpression *)self pickOne];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(IFTSchemaIFTExpression *)self resolveTool];

  if (v30)
  {
    v31 = [(IFTSchemaIFTExpression *)self resolveTool];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(IFTSchemaIFTExpression *)self undo];

  if (v32)
  {
    v33 = [(IFTSchemaIFTExpression *)self undo];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(IFTSchemaIFTExpression *)self reject];

  if (v34)
  {
    v35 = [(IFTSchemaIFTExpression *)self reject];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(IFTSchemaIFTExpression *)self cancel];

  if (v36)
  {
    v37 = [(IFTSchemaIFTExpression *)self cancel];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(IFTSchemaIFTExpression *)self noMatchingTool];

  if (v38)
  {
    v39 = [(IFTSchemaIFTExpression *)self noMatchingTool];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(IFTSchemaIFTExpression *)self continuePlanning];

  if (v40)
  {
    v41 = [(IFTSchemaIFTExpression *)self continuePlanning];
    PBDataWriterWriteSubmessage();
  }

  v42 = [(IFTSchemaIFTExpression *)self endOfPlan];

  if (v42)
  {
    v43 = [(IFTSchemaIFTExpression *)self endOfPlan];
    PBDataWriterWriteSubmessage();
  }

  v44 = [(IFTSchemaIFTExpression *)self getMentionedApps];

  if (v44)
  {
    v45 = [(IFTSchemaIFTExpression *)self getMentionedApps];
    PBDataWriterWriteSubmessage();
  }

  v46 = [(IFTSchemaIFTExpression *)self open];

  if (v46)
  {
    v47 = [(IFTSchemaIFTExpression *)self open];
    PBDataWriterWriteSubmessage();
  }

  v48 = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];

  if (v48)
  {
    v49 = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
    PBDataWriterWriteSubmessage();
  }

  v50 = [(IFTSchemaIFTExpression *)self payload];

  if (v50)
  {
    v51 = [(IFTSchemaIFTExpression *)self payload];
    PBDataWriterWriteSubmessage();
  }

  v52 = [(IFTSchemaIFTExpression *)self format];

  if (v52)
  {
    v53 = [(IFTSchemaIFTExpression *)self format];
    PBDataWriterWriteSubmessage();
  }

  v54 = [(IFTSchemaIFTExpression *)self structuredSearch];

  v55 = v57;
  if (v54)
  {
    v56 = [(IFTSchemaIFTExpression *)self structuredSearch];
    PBDataWriterWriteSubmessage();

    v55 = v57;
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

- (void)setStructuredSearch:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  structuredSearch = self->_structuredSearch;
  self->_structuredSearch = v4;
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

- (void)setFormat:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  format = self->_format;
  self->_format = v4;
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

- (void)setPayload:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  payload = self->_payload;
  self->_payload = v4;
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

- (void)setExplicitResolutionRequest:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  explicitResolutionRequest = self->_explicitResolutionRequest;
  self->_explicitResolutionRequest = v4;
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

- (void)setOpen:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  open = self->_open;
  self->_open = v4;
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

- (void)setGetMentionedApps:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  getMentionedApps = self->_getMentionedApps;
  self->_getMentionedApps = v4;
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

- (void)setEndOfPlan:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  endOfPlan = self->_endOfPlan;
  self->_endOfPlan = v4;
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

- (void)setContinuePlanning:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = v4;
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

- (void)setNoMatchingTool:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  noMatchingTool = self->_noMatchingTool;
  self->_noMatchingTool = v4;
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

- (void)setCancel:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  cancel = self->_cancel;
  self->_cancel = v4;
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

- (void)setReject:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  reject = self->_reject;
  self->_reject = v4;
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

- (void)setUndo:(id)a3
{
  v4 = a3;
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

  self->_whichOneof_Expression = 16 * (v4 != 0);
  undo = self->_undo;
  self->_undo = v4;
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

- (void)setResolveTool:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  resolveTool = self->_resolveTool;
  self->_resolveTool = v4;
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

- (void)setPickOne:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  pickOne = self->_pickOne;
  self->_pickOne = v4;
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

- (void)setSearch:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  search = self->_search;
  self->_search = v4;
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

- (void)setConfirm:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  confirm = self->_confirm;
  self->_confirm = v4;
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

- (void)setPick:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  pick = self->_pick;
  self->_pick = v4;
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

- (void)setSay:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  say = self->_say;
  self->_say = v4;
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

- (void)setCall:(id)a3
{
  v4 = a3;
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

  self->_whichOneof_Expression = 8 * (v4 != 0);
  call = self->_call;
  self->_call = v4;
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

- (void)setUpdateParameters:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  updateParameters = self->_updateParameters;
  self->_updateParameters = v4;
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

- (void)setIndex:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  index = self->_index;
  self->_index = v4;
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

- (void)setDot:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  dot = self->_dot;
  self->_dot = v4;
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

- (void)setInfix:(id)a3
{
  v4 = a3;
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

  self->_whichOneof_Expression = 4 * (v4 != 0);
  infix = self->_infix;
  self->_infix = v4;
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

- (void)setPrefix:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v30 = 0;
  }

  self->_whichOneof_Expression = v30;
  prefix = self->_prefix;
  self->_prefix = v4;
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

- (void)setStatementId:(id)a3
{
  v4 = a3;
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

  self->_whichOneof_Expression = 2 * (v4 != 0);
  statementId = self->_statementId;
  self->_statementId = v4;
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

- (void)setValue:(id)a3
{
  v4 = a3;
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

  self->_whichOneof_Expression = v4 != 0;
  value = self->_value;
  self->_value = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v85.receiver = self;
  v85.super_class = IFTSchemaIFTExpression;
  v5 = [(SISchemaInstrumentationMessage *)&v85 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTExpression *)self value];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTExpression *)self deleteValue];
  }

  v9 = [(IFTSchemaIFTExpression *)self statementId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTExpression *)self deleteStatementId];
  }

  v12 = [(IFTSchemaIFTExpression *)self prefix];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTExpression *)self deletePrefix];
  }

  v15 = [(IFTSchemaIFTExpression *)self infix];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(IFTSchemaIFTExpression *)self deleteInfix];
  }

  v18 = [(IFTSchemaIFTExpression *)self dot];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(IFTSchemaIFTExpression *)self deleteDot];
  }

  v21 = [(IFTSchemaIFTExpression *)self index];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(IFTSchemaIFTExpression *)self deleteIndex];
  }

  v24 = [(IFTSchemaIFTExpression *)self updateParameters];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(IFTSchemaIFTExpression *)self deleteUpdateParameters];
  }

  v27 = [(IFTSchemaIFTExpression *)self call];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(IFTSchemaIFTExpression *)self deleteCall];
  }

  v30 = [(IFTSchemaIFTExpression *)self say];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(IFTSchemaIFTExpression *)self deleteSay];
  }

  v33 = [(IFTSchemaIFTExpression *)self pick];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(IFTSchemaIFTExpression *)self deletePick];
  }

  v36 = [(IFTSchemaIFTExpression *)self confirm];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(IFTSchemaIFTExpression *)self deleteConfirm];
  }

  v39 = [(IFTSchemaIFTExpression *)self search];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(IFTSchemaIFTExpression *)self deleteSearch];
  }

  v42 = [(IFTSchemaIFTExpression *)self pickOne];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(IFTSchemaIFTExpression *)self deletePickOne];
  }

  v45 = [(IFTSchemaIFTExpression *)self resolveTool];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(IFTSchemaIFTExpression *)self deleteResolveTool];
  }

  v48 = [(IFTSchemaIFTExpression *)self undo];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(IFTSchemaIFTExpression *)self deleteUndo];
  }

  v51 = [(IFTSchemaIFTExpression *)self reject];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(IFTSchemaIFTExpression *)self deleteReject];
  }

  v54 = [(IFTSchemaIFTExpression *)self cancel];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(IFTSchemaIFTExpression *)self deleteCancel];
  }

  v57 = [(IFTSchemaIFTExpression *)self noMatchingTool];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(IFTSchemaIFTExpression *)self deleteNoMatchingTool];
  }

  v60 = [(IFTSchemaIFTExpression *)self continuePlanning];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(IFTSchemaIFTExpression *)self deleteContinuePlanning];
  }

  v63 = [(IFTSchemaIFTExpression *)self endOfPlan];
  v64 = [v63 applySensitiveConditionsPolicy:v4];
  v65 = [v64 suppressMessage];

  if (v65)
  {
    [(IFTSchemaIFTExpression *)self deleteEndOfPlan];
  }

  v66 = [(IFTSchemaIFTExpression *)self getMentionedApps];
  v67 = [v66 applySensitiveConditionsPolicy:v4];
  v68 = [v67 suppressMessage];

  if (v68)
  {
    [(IFTSchemaIFTExpression *)self deleteGetMentionedApps];
  }

  v69 = [(IFTSchemaIFTExpression *)self open];
  v70 = [v69 applySensitiveConditionsPolicy:v4];
  v71 = [v70 suppressMessage];

  if (v71)
  {
    [(IFTSchemaIFTExpression *)self deleteOpen];
  }

  v72 = [(IFTSchemaIFTExpression *)self explicitResolutionRequest];
  v73 = [v72 applySensitiveConditionsPolicy:v4];
  v74 = [v73 suppressMessage];

  if (v74)
  {
    [(IFTSchemaIFTExpression *)self deleteExplicitResolutionRequest];
  }

  v75 = [(IFTSchemaIFTExpression *)self payload];
  v76 = [v75 applySensitiveConditionsPolicy:v4];
  v77 = [v76 suppressMessage];

  if (v77)
  {
    [(IFTSchemaIFTExpression *)self deletePayload];
  }

  v78 = [(IFTSchemaIFTExpression *)self format];
  v79 = [v78 applySensitiveConditionsPolicy:v4];
  v80 = [v79 suppressMessage];

  if (v80)
  {
    [(IFTSchemaIFTExpression *)self deleteFormat];
  }

  v81 = [(IFTSchemaIFTExpression *)self structuredSearch];
  v82 = [v81 applySensitiveConditionsPolicy:v4];
  v83 = [v82 suppressMessage];

  if (v83)
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