@interface IFTSchemaIFTASTFlatExpr
- (BOOL)isEqual:(id)equal;
- (IFTSchemaASTExprContinuePlanningVariant)continuePlanning;
- (IFTSchemaASTFlatExprCallVariant)call;
- (IFTSchemaASTFlatExprCancelVariant)cancel;
- (IFTSchemaASTFlatExprConfirmVariant)confirm;
- (IFTSchemaASTFlatExprDotVariant)dot;
- (IFTSchemaASTFlatExprIndexVariant)index;
- (IFTSchemaASTFlatExprInfixVariant)infix;
- (IFTSchemaASTFlatExprPickOneVariant)pickOne;
- (IFTSchemaASTFlatExprPickVariant)pick;
- (IFTSchemaASTFlatExprPrefixVariant)prefix;
- (IFTSchemaASTFlatExprRejectVariant)reject;
- (IFTSchemaASTFlatExprResolveToolVariant)resolveTool;
- (IFTSchemaASTFlatExprSayVariant)say;
- (IFTSchemaASTFlatExprSearchVariant)search;
- (IFTSchemaASTFlatExprUndoVariant)undo;
- (IFTSchemaASTFlatExprUpdateParametersVariant)updateParameters;
- (IFTSchemaASTFlatExprUpdateVariant)update;
- (IFTSchemaASTFlatValue)value;
- (IFTSchemaIFTASTFlatExpr)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTASTFlatExpr)initWithJSON:(id)n;
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
- (void)deleteIndex;
- (void)deleteInfix;
- (void)deleteNoMatchingTool;
- (void)deletePick;
- (void)deletePickOne;
- (void)deletePrefix;
- (void)deleteReject;
- (void)deleteResolveTool;
- (void)deleteSay;
- (void)deleteSearch;
- (void)deleteUndo;
- (void)deleteUpdate;
- (void)deleteUpdateParameters;
- (void)deleteValue;
- (void)setCall:(id)call;
- (void)setCancel:(id)cancel;
- (void)setConfirm:(id)confirm;
- (void)setContinuePlanning:(id)planning;
- (void)setDot:(id)dot;
- (void)setEndOfPlan:(BOOL)plan;
- (void)setIndex:(id)index;
- (void)setInfix:(id)infix;
- (void)setNoMatchingTool:(BOOL)tool;
- (void)setPick:(id)pick;
- (void)setPickOne:(id)one;
- (void)setPrefix:(id)prefix;
- (void)setReject:(id)reject;
- (void)setResolveTool:(id)tool;
- (void)setSay:(id)say;
- (void)setSearch:(id)search;
- (void)setUndo:(id)undo;
- (void)setUpdate:(id)update;
- (void)setUpdateParameters:(id)parameters;
- (void)setValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTASTFlatExpr

- (IFTSchemaIFTASTFlatExpr)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v59.receiver = self;
  v59.super_class = IFTSchemaIFTASTFlatExpr;
  v5 = [(IFTSchemaIFTASTFlatExpr *)&v59 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaASTFlatValue alloc] initWithDictionary:v6];
      [(IFTSchemaIFTASTFlatExpr *)v5 setValue:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"prefix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaASTFlatExprPrefixVariant alloc] initWithDictionary:v8];
      [(IFTSchemaIFTASTFlatExpr *)v5 setPrefix:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"infix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaASTFlatExprInfixVariant alloc] initWithDictionary:v10];
      [(IFTSchemaIFTASTFlatExpr *)v5 setInfix:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"dot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaASTFlatExprDotVariant alloc] initWithDictionary:v12];
      [(IFTSchemaIFTASTFlatExpr *)v5 setDot:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IFTSchemaASTFlatExprIndexVariant alloc] initWithDictionary:v14];
      [(IFTSchemaIFTASTFlatExpr *)v5 setIndex:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"call"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaASTFlatExprCallVariant alloc] initWithDictionary:v16];
      [(IFTSchemaIFTASTFlatExpr *)v5 setCall:v17];
    }

    v54 = v6;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"update"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[IFTSchemaASTFlatExprUpdateVariant alloc] initWithDictionary:v18];
      [(IFTSchemaIFTASTFlatExpr *)v5 setUpdate:v19];
    }

    v48 = v18;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"endOfPlan"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTASTFlatExpr setEndOfPlan:](v5, "setEndOfPlan:", [v20 BOOLValue]);
    }

    v47 = v20;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"say"];
    objc_opt_class();
    v58 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [[IFTSchemaASTFlatExprSayVariant alloc] initWithDictionary:v21];
      [(IFTSchemaIFTASTFlatExpr *)v5 setSay:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"pick"];
    objc_opt_class();
    v57 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [[IFTSchemaASTFlatExprPickVariant alloc] initWithDictionary:v23];
      [(IFTSchemaIFTASTFlatExpr *)v5 setPick:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"confirm"];
    objc_opt_class();
    v56 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[IFTSchemaASTFlatExprConfirmVariant alloc] initWithDictionary:v25];
      [(IFTSchemaIFTASTFlatExpr *)v5 setConfirm:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"search"];
    objc_opt_class();
    v55 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[IFTSchemaASTFlatExprSearchVariant alloc] initWithDictionary:v27];
      [(IFTSchemaIFTASTFlatExpr *)v5 setSearch:v28];
    }

    v51 = v12;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"pickOne"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[IFTSchemaASTFlatExprPickOneVariant alloc] initWithDictionary:v29];
      [(IFTSchemaIFTASTFlatExpr *)v5 setPickOne:v30];
    }

    v46 = v29;
    v50 = v14;
    v31 = [dictionaryCopy objectForKeyedSubscript:@"noMatchingTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTASTFlatExpr setNoMatchingTool:](v5, "setNoMatchingTool:", [v31 BOOLValue]);
    }

    v49 = v16;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"undo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[IFTSchemaASTFlatExprUndoVariant alloc] initWithDictionary:v32];
      [(IFTSchemaIFTASTFlatExpr *)v5 setUndo:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"resolveTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[IFTSchemaASTFlatExprResolveToolVariant alloc] initWithDictionary:v34];
      [(IFTSchemaIFTASTFlatExpr *)v5 setResolveTool:v35];
    }

    v53 = v8;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"reject"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[IFTSchemaASTFlatExprRejectVariant alloc] initWithDictionary:v36];
      [(IFTSchemaIFTASTFlatExpr *)v5 setReject:v37];
    }

    v52 = v10;
    v38 = [dictionaryCopy objectForKeyedSubscript:@"cancel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[IFTSchemaASTFlatExprCancelVariant alloc] initWithDictionary:v38];
      [(IFTSchemaIFTASTFlatExpr *)v5 setCancel:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"continuePlanning"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[IFTSchemaASTExprContinuePlanningVariant alloc] initWithDictionary:v40];
      [(IFTSchemaIFTASTFlatExpr *)v5 setContinuePlanning:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"updateParameters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[IFTSchemaASTFlatExprUpdateParametersVariant alloc] initWithDictionary:v42];
      [(IFTSchemaIFTASTFlatExpr *)v5 setUpdateParameters:v43];
    }

    v44 = v5;
  }

  return v5;
}

- (IFTSchemaIFTASTFlatExpr)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTASTFlatExpr *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTASTFlatExpr *)self dictionaryRepresentation];
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
    call = [(IFTSchemaIFTASTFlatExpr *)self call];
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
    cancel = [(IFTSchemaIFTASTFlatExpr *)self cancel];
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
    confirm = [(IFTSchemaIFTASTFlatExpr *)self confirm];
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
    continuePlanning = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
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
    v16 = [(IFTSchemaIFTASTFlatExpr *)self dot];
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

  if (self->_whichOneof_Astflatexpr == 8)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTASTFlatExpr endOfPlan](self, "endOfPlan")}];
    [dictionary setObject:v19 forKeyedSubscript:@"endOfPlan"];
  }

  if (self->_index)
  {
    index = [(IFTSchemaIFTASTFlatExpr *)self index];
    dictionaryRepresentation6 = [index dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"index"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"index"];
    }
  }

  if (self->_infix)
  {
    infix = [(IFTSchemaIFTASTFlatExpr *)self infix];
    dictionaryRepresentation7 = [infix dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"infix"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"infix"];
    }
  }

  if (self->_whichOneof_Astflatexpr == 14)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTASTFlatExpr noMatchingTool](self, "noMatchingTool")}];
    [dictionary setObject:v26 forKeyedSubscript:@"noMatchingTool"];
  }

  if (self->_pick)
  {
    pick = [(IFTSchemaIFTASTFlatExpr *)self pick];
    dictionaryRepresentation8 = [pick dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"pick"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"pick"];
    }
  }

  if (self->_pickOne)
  {
    pickOne = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
    dictionaryRepresentation9 = [pickOne dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"pickOne"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"pickOne"];
    }
  }

  if (self->_prefix)
  {
    prefix = [(IFTSchemaIFTASTFlatExpr *)self prefix];
    dictionaryRepresentation10 = [prefix dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"prefix"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"prefix"];
    }
  }

  if (self->_reject)
  {
    reject = [(IFTSchemaIFTASTFlatExpr *)self reject];
    dictionaryRepresentation11 = [reject dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"reject"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"reject"];
    }
  }

  if (self->_resolveTool)
  {
    resolveTool = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
    dictionaryRepresentation12 = [resolveTool dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"resolveTool"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"resolveTool"];
    }
  }

  if (self->_say)
  {
    v42 = [(IFTSchemaIFTASTFlatExpr *)self say];
    dictionaryRepresentation13 = [v42 dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"say"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"say"];
    }
  }

  if (self->_search)
  {
    search = [(IFTSchemaIFTASTFlatExpr *)self search];
    dictionaryRepresentation14 = [search dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"search"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"search"];
    }
  }

  if (self->_undo)
  {
    undo = [(IFTSchemaIFTASTFlatExpr *)self undo];
    dictionaryRepresentation15 = [undo dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"undo"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"undo"];
    }
  }

  if (self->_update)
  {
    update = [(IFTSchemaIFTASTFlatExpr *)self update];
    dictionaryRepresentation16 = [update dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"update"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"update"];
    }
  }

  if (self->_updateParameters)
  {
    updateParameters = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
    dictionaryRepresentation17 = [updateParameters dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"updateParameters"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"updateParameters"];
    }
  }

  if (self->_value)
  {
    value = [(IFTSchemaIFTASTFlatExpr *)self value];
    dictionaryRepresentation18 = [value dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"value"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"value"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v22 = [(IFTSchemaASTFlatValue *)self->_value hash];
  v21 = [(IFTSchemaASTFlatExprPrefixVariant *)self->_prefix hash];
  v20 = [(IFTSchemaASTFlatExprInfixVariant *)self->_infix hash];
  v19 = [(IFTSchemaASTFlatExprDotVariant *)self->_dot hash];
  v18 = [(IFTSchemaASTFlatExprIndexVariant *)self->_index hash];
  v3 = [(IFTSchemaASTFlatExprCallVariant *)self->_call hash];
  v4 = [(IFTSchemaASTFlatExprUpdateVariant *)self->_update hash];
  if (self->_whichOneof_Astflatexpr == 8)
  {
    v5 = 2654435761 * self->_endOfPlan;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(IFTSchemaASTFlatExprSayVariant *)self->_say hash];
  v7 = [(IFTSchemaASTFlatExprPickVariant *)self->_pick hash];
  v8 = [(IFTSchemaASTFlatExprConfirmVariant *)self->_confirm hash];
  v9 = [(IFTSchemaASTFlatExprSearchVariant *)self->_search hash];
  v10 = [(IFTSchemaASTFlatExprPickOneVariant *)self->_pickOne hash];
  if (self->_whichOneof_Astflatexpr == 14)
  {
    v11 = 2654435761 * self->_noMatchingTool;
  }

  else
  {
    v11 = 0;
  }

  v12 = v9 ^ v10 ^ v11 ^ [(IFTSchemaASTFlatExprUndoVariant *)self->_undo hash];
  v13 = v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v12 ^ [(IFTSchemaASTFlatExprResolveToolVariant *)self->_resolveTool hash];
  v14 = [(IFTSchemaASTFlatExprRejectVariant *)self->_reject hash];
  v15 = v14 ^ [(IFTSchemaASTFlatExprCancelVariant *)self->_cancel hash];
  v16 = v15 ^ [(IFTSchemaASTExprContinuePlanningVariant *)self->_continuePlanning hash];
  return v13 ^ v16 ^ [(IFTSchemaASTFlatExprUpdateParametersVariant *)self->_updateParameters hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_95;
  }

  whichOneof_Astflatexpr = self->_whichOneof_Astflatexpr;
  if (whichOneof_Astflatexpr != [equalCopy whichOneof_Astflatexpr])
  {
    goto LABEL_95;
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self value];
  value2 = [equalCopy value];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  value3 = [(IFTSchemaIFTASTFlatExpr *)self value];
  if (value3)
  {
    v9 = value3;
    value4 = [(IFTSchemaIFTASTFlatExpr *)self value];
    value5 = [equalCopy value];
    v12 = [value4 isEqual:value5];

    if (!v12)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self prefix];
  value2 = [equalCopy prefix];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  prefix = [(IFTSchemaIFTASTFlatExpr *)self prefix];
  if (prefix)
  {
    v14 = prefix;
    prefix2 = [(IFTSchemaIFTASTFlatExpr *)self prefix];
    prefix3 = [equalCopy prefix];
    v17 = [prefix2 isEqual:prefix3];

    if (!v17)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self infix];
  value2 = [equalCopy infix];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  infix = [(IFTSchemaIFTASTFlatExpr *)self infix];
  if (infix)
  {
    v19 = infix;
    infix2 = [(IFTSchemaIFTASTFlatExpr *)self infix];
    infix3 = [equalCopy infix];
    v22 = [infix2 isEqual:infix3];

    if (!v22)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self dot];
  value2 = [equalCopy dot];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  v23 = [(IFTSchemaIFTASTFlatExpr *)self dot];
  if (v23)
  {
    v24 = v23;
    v25 = [(IFTSchemaIFTASTFlatExpr *)self dot];
    v26 = [equalCopy dot];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self index];
  value2 = [equalCopy index];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  index = [(IFTSchemaIFTASTFlatExpr *)self index];
  if (index)
  {
    v29 = index;
    index2 = [(IFTSchemaIFTASTFlatExpr *)self index];
    index3 = [equalCopy index];
    v32 = [index2 isEqual:index3];

    if (!v32)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self call];
  value2 = [equalCopy call];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  call = [(IFTSchemaIFTASTFlatExpr *)self call];
  if (call)
  {
    v34 = call;
    call2 = [(IFTSchemaIFTASTFlatExpr *)self call];
    call3 = [equalCopy call];
    v37 = [call2 isEqual:call3];

    if (!v37)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self update];
  value2 = [equalCopy update];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  update = [(IFTSchemaIFTASTFlatExpr *)self update];
  if (update)
  {
    v39 = update;
    update2 = [(IFTSchemaIFTASTFlatExpr *)self update];
    update3 = [equalCopy update];
    v42 = [update2 isEqual:update3];

    if (!v42)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  endOfPlan = self->_endOfPlan;
  if (endOfPlan != [equalCopy endOfPlan])
  {
    goto LABEL_95;
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self say];
  value2 = [equalCopy say];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  v44 = [(IFTSchemaIFTASTFlatExpr *)self say];
  if (v44)
  {
    v45 = v44;
    v46 = [(IFTSchemaIFTASTFlatExpr *)self say];
    v47 = [equalCopy say];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self pick];
  value2 = [equalCopy pick];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  pick = [(IFTSchemaIFTASTFlatExpr *)self pick];
  if (pick)
  {
    v50 = pick;
    pick2 = [(IFTSchemaIFTASTFlatExpr *)self pick];
    pick3 = [equalCopy pick];
    v53 = [pick2 isEqual:pick3];

    if (!v53)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self confirm];
  value2 = [equalCopy confirm];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  confirm = [(IFTSchemaIFTASTFlatExpr *)self confirm];
  if (confirm)
  {
    v55 = confirm;
    confirm2 = [(IFTSchemaIFTASTFlatExpr *)self confirm];
    confirm3 = [equalCopy confirm];
    v58 = [confirm2 isEqual:confirm3];

    if (!v58)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self search];
  value2 = [equalCopy search];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  search = [(IFTSchemaIFTASTFlatExpr *)self search];
  if (search)
  {
    v60 = search;
    search2 = [(IFTSchemaIFTASTFlatExpr *)self search];
    search3 = [equalCopy search];
    v63 = [search2 isEqual:search3];

    if (!v63)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
  value2 = [equalCopy pickOne];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  pickOne = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
  if (pickOne)
  {
    v65 = pickOne;
    pickOne2 = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
    pickOne3 = [equalCopy pickOne];
    v68 = [pickOne2 isEqual:pickOne3];

    if (!v68)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  noMatchingTool = self->_noMatchingTool;
  if (noMatchingTool != [equalCopy noMatchingTool])
  {
    goto LABEL_95;
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self undo];
  value2 = [equalCopy undo];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  undo = [(IFTSchemaIFTASTFlatExpr *)self undo];
  if (undo)
  {
    v71 = undo;
    undo2 = [(IFTSchemaIFTASTFlatExpr *)self undo];
    undo3 = [equalCopy undo];
    v74 = [undo2 isEqual:undo3];

    if (!v74)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
  value2 = [equalCopy resolveTool];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  resolveTool = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
  if (resolveTool)
  {
    v76 = resolveTool;
    resolveTool2 = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
    resolveTool3 = [equalCopy resolveTool];
    v79 = [resolveTool2 isEqual:resolveTool3];

    if (!v79)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self reject];
  value2 = [equalCopy reject];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  reject = [(IFTSchemaIFTASTFlatExpr *)self reject];
  if (reject)
  {
    v81 = reject;
    reject2 = [(IFTSchemaIFTASTFlatExpr *)self reject];
    reject3 = [equalCopy reject];
    v84 = [reject2 isEqual:reject3];

    if (!v84)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self cancel];
  value2 = [equalCopy cancel];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  cancel = [(IFTSchemaIFTASTFlatExpr *)self cancel];
  if (cancel)
  {
    v86 = cancel;
    cancel2 = [(IFTSchemaIFTASTFlatExpr *)self cancel];
    cancel3 = [equalCopy cancel];
    v89 = [cancel2 isEqual:cancel3];

    if (!v89)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
  value2 = [equalCopy continuePlanning];
  if ((value != 0) == (value2 == 0))
  {
    goto LABEL_94;
  }

  continuePlanning = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
  if (continuePlanning)
  {
    v91 = continuePlanning;
    continuePlanning2 = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
    continuePlanning3 = [equalCopy continuePlanning];
    v94 = [continuePlanning2 isEqual:continuePlanning3];

    if (!v94)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  value = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
  value2 = [equalCopy updateParameters];
  if ((value != 0) == (value2 == 0))
  {
LABEL_94:

    goto LABEL_95;
  }

  updateParameters = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
  if (!updateParameters)
  {

LABEL_98:
    v100 = 1;
    goto LABEL_96;
  }

  v96 = updateParameters;
  updateParameters2 = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
  updateParameters3 = [equalCopy updateParameters];
  v99 = [updateParameters2 isEqual:updateParameters3];

  if (v99)
  {
    goto LABEL_98;
  }

LABEL_95:
  v100 = 0;
LABEL_96:

  return v100;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  value = [(IFTSchemaIFTASTFlatExpr *)self value];

  if (value)
  {
    value2 = [(IFTSchemaIFTASTFlatExpr *)self value];
    PBDataWriterWriteSubmessage();
  }

  prefix = [(IFTSchemaIFTASTFlatExpr *)self prefix];

  if (prefix)
  {
    prefix2 = [(IFTSchemaIFTASTFlatExpr *)self prefix];
    PBDataWriterWriteSubmessage();
  }

  infix = [(IFTSchemaIFTASTFlatExpr *)self infix];

  if (infix)
  {
    infix2 = [(IFTSchemaIFTASTFlatExpr *)self infix];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IFTSchemaIFTASTFlatExpr *)self dot];

  if (v10)
  {
    v11 = [(IFTSchemaIFTASTFlatExpr *)self dot];
    PBDataWriterWriteSubmessage();
  }

  index = [(IFTSchemaIFTASTFlatExpr *)self index];

  if (index)
  {
    index2 = [(IFTSchemaIFTASTFlatExpr *)self index];
    PBDataWriterWriteSubmessage();
  }

  call = [(IFTSchemaIFTASTFlatExpr *)self call];

  if (call)
  {
    call2 = [(IFTSchemaIFTASTFlatExpr *)self call];
    PBDataWriterWriteSubmessage();
  }

  update = [(IFTSchemaIFTASTFlatExpr *)self update];

  if (update)
  {
    update2 = [(IFTSchemaIFTASTFlatExpr *)self update];
    PBDataWriterWriteSubmessage();
  }

  if (self->_whichOneof_Astflatexpr == 8)
  {
    PBDataWriterWriteBOOLField();
  }

  v18 = [(IFTSchemaIFTASTFlatExpr *)self say];

  if (v18)
  {
    v19 = [(IFTSchemaIFTASTFlatExpr *)self say];
    PBDataWriterWriteSubmessage();
  }

  pick = [(IFTSchemaIFTASTFlatExpr *)self pick];

  if (pick)
  {
    pick2 = [(IFTSchemaIFTASTFlatExpr *)self pick];
    PBDataWriterWriteSubmessage();
  }

  confirm = [(IFTSchemaIFTASTFlatExpr *)self confirm];

  if (confirm)
  {
    confirm2 = [(IFTSchemaIFTASTFlatExpr *)self confirm];
    PBDataWriterWriteSubmessage();
  }

  search = [(IFTSchemaIFTASTFlatExpr *)self search];

  if (search)
  {
    search2 = [(IFTSchemaIFTASTFlatExpr *)self search];
    PBDataWriterWriteSubmessage();
  }

  pickOne = [(IFTSchemaIFTASTFlatExpr *)self pickOne];

  if (pickOne)
  {
    pickOne2 = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
    PBDataWriterWriteSubmessage();
  }

  if (self->_whichOneof_Astflatexpr == 14)
  {
    PBDataWriterWriteBOOLField();
  }

  undo = [(IFTSchemaIFTASTFlatExpr *)self undo];

  if (undo)
  {
    undo2 = [(IFTSchemaIFTASTFlatExpr *)self undo];
    PBDataWriterWriteSubmessage();
  }

  resolveTool = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];

  if (resolveTool)
  {
    resolveTool2 = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
    PBDataWriterWriteSubmessage();
  }

  reject = [(IFTSchemaIFTASTFlatExpr *)self reject];

  if (reject)
  {
    reject2 = [(IFTSchemaIFTASTFlatExpr *)self reject];
    PBDataWriterWriteSubmessage();
  }

  cancel = [(IFTSchemaIFTASTFlatExpr *)self cancel];

  if (cancel)
  {
    cancel2 = [(IFTSchemaIFTASTFlatExpr *)self cancel];
    PBDataWriterWriteSubmessage();
  }

  continuePlanning = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];

  if (continuePlanning)
  {
    continuePlanning2 = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
    PBDataWriterWriteSubmessage();
  }

  updateParameters = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];

  v39 = toCopy;
  if (updateParameters)
  {
    updateParameters2 = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
    PBDataWriterWriteSubmessage();

    v39 = toCopy;
  }
}

- (void)deleteUpdateParameters
{
  if (self->_whichOneof_Astflatexpr == 20)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_updateParameters = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprUpdateParametersVariant)updateParameters
{
  if (self->_whichOneof_Astflatexpr == 20)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  v22 = 20;
  if (!parametersCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  updateParameters = self->_updateParameters;
  self->_updateParameters = parametersCopy;
}

- (void)deleteContinuePlanning
{
  if (self->_whichOneof_Astflatexpr == 19)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_continuePlanning = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTExprContinuePlanningVariant)continuePlanning
{
  if (self->_whichOneof_Astflatexpr == 19)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 19;
  if (!planningCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = planningCopy;
}

- (void)deleteCancel
{
  if (self->_whichOneof_Astflatexpr == 18)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_cancel = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprCancelVariant)cancel
{
  if (self->_whichOneof_Astflatexpr == 18)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 18;
  if (!cancelCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  cancel = self->_cancel;
  self->_cancel = cancelCopy;
}

- (void)deleteReject
{
  if (self->_whichOneof_Astflatexpr == 17)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_reject = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprRejectVariant)reject
{
  if (self->_whichOneof_Astflatexpr == 17)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 17;
  if (!rejectCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  reject = self->_reject;
  self->_reject = rejectCopy;
}

- (void)deleteResolveTool
{
  if (self->_whichOneof_Astflatexpr == 16)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_resolveTool = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprResolveToolVariant)resolveTool
{
  if (self->_whichOneof_Astflatexpr == 16)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  self->_whichOneof_Astflatexpr = 16 * (toolCopy != 0);
  resolveTool = self->_resolveTool;
  self->_resolveTool = toolCopy;
}

- (void)deleteUndo
{
  if (self->_whichOneof_Astflatexpr == 15)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_undo = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprUndoVariant)undo
{
  if (self->_whichOneof_Astflatexpr == 15)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 15;
  if (!undoCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  undo = self->_undo;
  self->_undo = undoCopy;
}

- (void)deleteNoMatchingTool
{
  if (self->_whichOneof_Astflatexpr == 14)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_noMatchingTool = 0;
  }
}

- (void)setNoMatchingTool:(BOOL)tool
{
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

  call = self->_call;
  self->_call = 0;

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  self->_whichOneof_Astflatexpr = 14;
  self->_noMatchingTool = tool;
}

- (void)deletePickOne
{
  if (self->_whichOneof_Astflatexpr == 13)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_pickOne = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprPickOneVariant)pickOne
{
  if (self->_whichOneof_Astflatexpr == 13)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 13;
  if (!oneCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  pickOne = self->_pickOne;
  self->_pickOne = oneCopy;
}

- (void)deleteSearch
{
  if (self->_whichOneof_Astflatexpr == 12)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_search = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprSearchVariant)search
{
  if (self->_whichOneof_Astflatexpr == 12)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 12;
  if (!searchCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  search = self->_search;
  self->_search = searchCopy;
}

- (void)deleteConfirm
{
  if (self->_whichOneof_Astflatexpr == 11)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_confirm = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprConfirmVariant)confirm
{
  if (self->_whichOneof_Astflatexpr == 11)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
  say = self->_say;
  self->_say = 0;

  pick = self->_pick;
  self->_pick = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 11;
  if (!confirmCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  confirm = self->_confirm;
  self->_confirm = confirmCopy;
}

- (void)deletePick
{
  if (self->_whichOneof_Astflatexpr == 10)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_pick = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprPickVariant)pick
{
  if (self->_whichOneof_Astflatexpr == 10)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
  say = self->_say;
  self->_say = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 10;
  if (!pickCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  pick = self->_pick;
  self->_pick = pickCopy;
}

- (void)deleteSay
{
  if (self->_whichOneof_Astflatexpr == 9)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_say = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprSayVariant)say
{
  if (self->_whichOneof_Astflatexpr == 9)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
  pick = self->_pick;
  self->_pick = 0;

  confirm = self->_confirm;
  self->_confirm = 0;

  search = self->_search;
  self->_search = 0;

  pickOne = self->_pickOne;
  self->_pickOne = 0;

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 9;
  if (!sayCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  say = self->_say;
  self->_say = sayCopy;
}

- (void)deleteEndOfPlan
{
  if (self->_whichOneof_Astflatexpr == 8)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_endOfPlan = 0;
  }
}

- (void)setEndOfPlan:(BOOL)plan
{
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

  call = self->_call;
  self->_call = 0;

  update = self->_update;
  self->_update = 0;

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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  self->_whichOneof_Astflatexpr = 8;
  self->_endOfPlan = plan;
}

- (void)deleteUpdate
{
  if (self->_whichOneof_Astflatexpr == 7)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_update = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprUpdateVariant)update
{
  if (self->_whichOneof_Astflatexpr == 7)
  {
    v3 = self->_update;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUpdate:(id)update
{
  updateCopy = update;
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

  call = self->_call;
  self->_call = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 7;
  if (!updateCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  update = self->_update;
  self->_update = updateCopy;
}

- (void)deleteCall
{
  if (self->_whichOneof_Astflatexpr == 6)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_call = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprCallVariant)call
{
  if (self->_whichOneof_Astflatexpr == 6)
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

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 6;
  if (!callCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  call = self->_call;
  self->_call = callCopy;
}

- (void)deleteIndex
{
  if (self->_whichOneof_Astflatexpr == 5)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_index = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprIndexVariant)index
{
  if (self->_whichOneof_Astflatexpr == 5)
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

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  call = self->_call;
  self->_call = 0;

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 5;
  if (!indexCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  index = self->_index;
  self->_index = indexCopy;
}

- (void)deleteDot
{
  if (self->_whichOneof_Astflatexpr == 4)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_dot = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprDotVariant)dot
{
  if (self->_whichOneof_Astflatexpr == 4)
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

  prefix = self->_prefix;
  self->_prefix = 0;

  infix = self->_infix;
  self->_infix = 0;

  index = self->_index;
  self->_index = 0;

  call = self->_call;
  self->_call = 0;

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  self->_whichOneof_Astflatexpr = 4 * (dotCopy != 0);
  dot = self->_dot;
  self->_dot = dotCopy;
}

- (void)deleteInfix
{
  if (self->_whichOneof_Astflatexpr == 3)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_infix = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprInfixVariant)infix
{
  if (self->_whichOneof_Astflatexpr == 3)
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

  prefix = self->_prefix;
  self->_prefix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  call = self->_call;
  self->_call = 0;

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  v22 = 3;
  if (!infixCopy)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  infix = self->_infix;
  self->_infix = infixCopy;
}

- (void)deletePrefix
{
  if (self->_whichOneof_Astflatexpr == 2)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_prefix = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatExprPrefixVariant)prefix
{
  if (self->_whichOneof_Astflatexpr == 2)
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

  infix = self->_infix;
  self->_infix = 0;

  dot = self->_dot;
  self->_dot = 0;

  index = self->_index;
  self->_index = 0;

  call = self->_call;
  self->_call = 0;

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  self->_whichOneof_Astflatexpr = 2 * (prefixCopy != 0);
  prefix = self->_prefix;
  self->_prefix = prefixCopy;
}

- (void)deleteValue
{
  if (self->_whichOneof_Astflatexpr == 1)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_value = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaASTFlatValue)value
{
  if (self->_whichOneof_Astflatexpr == 1)
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

  update = self->_update;
  self->_update = 0;

  self->_endOfPlan = 0;
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

  self->_noMatchingTool = 0;
  undo = self->_undo;
  self->_undo = 0;

  resolveTool = self->_resolveTool;
  self->_resolveTool = 0;

  reject = self->_reject;
  self->_reject = 0;

  cancel = self->_cancel;
  self->_cancel = 0;

  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = 0;

  updateParameters = self->_updateParameters;
  self->_updateParameters = 0;

  self->_whichOneof_Astflatexpr = valueCopy != 0;
  value = self->_value;
  self->_value = valueCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v61.receiver = self;
  v61.super_class = IFTSchemaIFTASTFlatExpr;
  v5 = [(SISchemaInstrumentationMessage *)&v61 applySensitiveConditionsPolicy:policyCopy];
  value = [(IFTSchemaIFTASTFlatExpr *)self value];
  v7 = [value applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteValue];
  }

  prefix = [(IFTSchemaIFTASTFlatExpr *)self prefix];
  v10 = [prefix applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deletePrefix];
  }

  infix = [(IFTSchemaIFTASTFlatExpr *)self infix];
  v13 = [infix applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteInfix];
  }

  v15 = [(IFTSchemaIFTASTFlatExpr *)self dot];
  v16 = [v15 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteDot];
  }

  index = [(IFTSchemaIFTASTFlatExpr *)self index];
  v19 = [index applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteIndex];
  }

  call = [(IFTSchemaIFTASTFlatExpr *)self call];
  v22 = [call applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteCall];
  }

  update = [(IFTSchemaIFTASTFlatExpr *)self update];
  v25 = [update applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteUpdate];
  }

  v27 = [(IFTSchemaIFTASTFlatExpr *)self say];
  v28 = [v27 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteSay];
  }

  pick = [(IFTSchemaIFTASTFlatExpr *)self pick];
  v31 = [pick applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deletePick];
  }

  confirm = [(IFTSchemaIFTASTFlatExpr *)self confirm];
  v34 = [confirm applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteConfirm];
  }

  search = [(IFTSchemaIFTASTFlatExpr *)self search];
  v37 = [search applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteSearch];
  }

  pickOne = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
  v40 = [pickOne applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deletePickOne];
  }

  undo = [(IFTSchemaIFTASTFlatExpr *)self undo];
  v43 = [undo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteUndo];
  }

  resolveTool = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
  v46 = [resolveTool applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteResolveTool];
  }

  reject = [(IFTSchemaIFTASTFlatExpr *)self reject];
  v49 = [reject applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteReject];
  }

  cancel = [(IFTSchemaIFTASTFlatExpr *)self cancel];
  v52 = [cancel applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteCancel];
  }

  continuePlanning = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
  v55 = [continuePlanning applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteContinuePlanning];
  }

  updateParameters = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
  v58 = [updateParameters applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteUpdateParameters];
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