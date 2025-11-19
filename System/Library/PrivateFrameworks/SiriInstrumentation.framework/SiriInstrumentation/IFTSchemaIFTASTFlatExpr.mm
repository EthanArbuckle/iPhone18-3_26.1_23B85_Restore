@interface IFTSchemaIFTASTFlatExpr
- (BOOL)isEqual:(id)a3;
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
- (IFTSchemaIFTASTFlatExpr)initWithDictionary:(id)a3;
- (IFTSchemaIFTASTFlatExpr)initWithJSON:(id)a3;
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
- (void)setCall:(id)a3;
- (void)setCancel:(id)a3;
- (void)setConfirm:(id)a3;
- (void)setContinuePlanning:(id)a3;
- (void)setDot:(id)a3;
- (void)setEndOfPlan:(BOOL)a3;
- (void)setIndex:(id)a3;
- (void)setInfix:(id)a3;
- (void)setNoMatchingTool:(BOOL)a3;
- (void)setPick:(id)a3;
- (void)setPickOne:(id)a3;
- (void)setPrefix:(id)a3;
- (void)setReject:(id)a3;
- (void)setResolveTool:(id)a3;
- (void)setSay:(id)a3;
- (void)setSearch:(id)a3;
- (void)setUndo:(id)a3;
- (void)setUpdate:(id)a3;
- (void)setUpdateParameters:(id)a3;
- (void)setValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTASTFlatExpr

- (IFTSchemaIFTASTFlatExpr)initWithDictionary:(id)a3
{
  v4 = a3;
  v59.receiver = self;
  v59.super_class = IFTSchemaIFTASTFlatExpr;
  v5 = [(IFTSchemaIFTASTFlatExpr *)&v59 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaASTFlatValue alloc] initWithDictionary:v6];
      [(IFTSchemaIFTASTFlatExpr *)v5 setValue:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"prefix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaASTFlatExprPrefixVariant alloc] initWithDictionary:v8];
      [(IFTSchemaIFTASTFlatExpr *)v5 setPrefix:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"infix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaASTFlatExprInfixVariant alloc] initWithDictionary:v10];
      [(IFTSchemaIFTASTFlatExpr *)v5 setInfix:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"dot"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaASTFlatExprDotVariant alloc] initWithDictionary:v12];
      [(IFTSchemaIFTASTFlatExpr *)v5 setDot:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[IFTSchemaASTFlatExprIndexVariant alloc] initWithDictionary:v14];
      [(IFTSchemaIFTASTFlatExpr *)v5 setIndex:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"call"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[IFTSchemaASTFlatExprCallVariant alloc] initWithDictionary:v16];
      [(IFTSchemaIFTASTFlatExpr *)v5 setCall:v17];
    }

    v54 = v6;
    v18 = [v4 objectForKeyedSubscript:@"update"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[IFTSchemaASTFlatExprUpdateVariant alloc] initWithDictionary:v18];
      [(IFTSchemaIFTASTFlatExpr *)v5 setUpdate:v19];
    }

    v48 = v18;
    v20 = [v4 objectForKeyedSubscript:@"endOfPlan"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTASTFlatExpr setEndOfPlan:](v5, "setEndOfPlan:", [v20 BOOLValue]);
    }

    v47 = v20;
    v21 = [v4 objectForKeyedSubscript:@"say"];
    objc_opt_class();
    v58 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [[IFTSchemaASTFlatExprSayVariant alloc] initWithDictionary:v21];
      [(IFTSchemaIFTASTFlatExpr *)v5 setSay:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"pick"];
    objc_opt_class();
    v57 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [[IFTSchemaASTFlatExprPickVariant alloc] initWithDictionary:v23];
      [(IFTSchemaIFTASTFlatExpr *)v5 setPick:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"confirm"];
    objc_opt_class();
    v56 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[IFTSchemaASTFlatExprConfirmVariant alloc] initWithDictionary:v25];
      [(IFTSchemaIFTASTFlatExpr *)v5 setConfirm:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"search"];
    objc_opt_class();
    v55 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[IFTSchemaASTFlatExprSearchVariant alloc] initWithDictionary:v27];
      [(IFTSchemaIFTASTFlatExpr *)v5 setSearch:v28];
    }

    v51 = v12;
    v29 = [v4 objectForKeyedSubscript:@"pickOne"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[IFTSchemaASTFlatExprPickOneVariant alloc] initWithDictionary:v29];
      [(IFTSchemaIFTASTFlatExpr *)v5 setPickOne:v30];
    }

    v46 = v29;
    v50 = v14;
    v31 = [v4 objectForKeyedSubscript:@"noMatchingTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTASTFlatExpr setNoMatchingTool:](v5, "setNoMatchingTool:", [v31 BOOLValue]);
    }

    v49 = v16;
    v32 = [v4 objectForKeyedSubscript:@"undo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[IFTSchemaASTFlatExprUndoVariant alloc] initWithDictionary:v32];
      [(IFTSchemaIFTASTFlatExpr *)v5 setUndo:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"resolveTool"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[IFTSchemaASTFlatExprResolveToolVariant alloc] initWithDictionary:v34];
      [(IFTSchemaIFTASTFlatExpr *)v5 setResolveTool:v35];
    }

    v53 = v8;
    v36 = [v4 objectForKeyedSubscript:@"reject"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[IFTSchemaASTFlatExprRejectVariant alloc] initWithDictionary:v36];
      [(IFTSchemaIFTASTFlatExpr *)v5 setReject:v37];
    }

    v52 = v10;
    v38 = [v4 objectForKeyedSubscript:@"cancel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[IFTSchemaASTFlatExprCancelVariant alloc] initWithDictionary:v38];
      [(IFTSchemaIFTASTFlatExpr *)v5 setCancel:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"continuePlanning"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[IFTSchemaASTExprContinuePlanningVariant alloc] initWithDictionary:v40];
      [(IFTSchemaIFTASTFlatExpr *)v5 setContinuePlanning:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"updateParameters"];
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

- (IFTSchemaIFTASTFlatExpr)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTASTFlatExpr *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTASTFlatExpr *)self dictionaryRepresentation];
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
    v4 = [(IFTSchemaIFTASTFlatExpr *)self call];
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
    v7 = [(IFTSchemaIFTASTFlatExpr *)self cancel];
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
    v10 = [(IFTSchemaIFTASTFlatExpr *)self confirm];
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
    v13 = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
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
    v16 = [(IFTSchemaIFTASTFlatExpr *)self dot];
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

  if (self->_whichOneof_Astflatexpr == 8)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTASTFlatExpr endOfPlan](self, "endOfPlan")}];
    [v3 setObject:v19 forKeyedSubscript:@"endOfPlan"];
  }

  if (self->_index)
  {
    v20 = [(IFTSchemaIFTASTFlatExpr *)self index];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"index"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"index"];
    }
  }

  if (self->_infix)
  {
    v23 = [(IFTSchemaIFTASTFlatExpr *)self infix];
    v24 = [v23 dictionaryRepresentation];
    if (v24)
    {
      [v3 setObject:v24 forKeyedSubscript:@"infix"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"infix"];
    }
  }

  if (self->_whichOneof_Astflatexpr == 14)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTASTFlatExpr noMatchingTool](self, "noMatchingTool")}];
    [v3 setObject:v26 forKeyedSubscript:@"noMatchingTool"];
  }

  if (self->_pick)
  {
    v27 = [(IFTSchemaIFTASTFlatExpr *)self pick];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"pick"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"pick"];
    }
  }

  if (self->_pickOne)
  {
    v30 = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"pickOne"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"pickOne"];
    }
  }

  if (self->_prefix)
  {
    v33 = [(IFTSchemaIFTASTFlatExpr *)self prefix];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"prefix"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"prefix"];
    }
  }

  if (self->_reject)
  {
    v36 = [(IFTSchemaIFTASTFlatExpr *)self reject];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"reject"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"reject"];
    }
  }

  if (self->_resolveTool)
  {
    v39 = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
    v40 = [v39 dictionaryRepresentation];
    if (v40)
    {
      [v3 setObject:v40 forKeyedSubscript:@"resolveTool"];
    }

    else
    {
      v41 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v41 forKeyedSubscript:@"resolveTool"];
    }
  }

  if (self->_say)
  {
    v42 = [(IFTSchemaIFTASTFlatExpr *)self say];
    v43 = [v42 dictionaryRepresentation];
    if (v43)
    {
      [v3 setObject:v43 forKeyedSubscript:@"say"];
    }

    else
    {
      v44 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v44 forKeyedSubscript:@"say"];
    }
  }

  if (self->_search)
  {
    v45 = [(IFTSchemaIFTASTFlatExpr *)self search];
    v46 = [v45 dictionaryRepresentation];
    if (v46)
    {
      [v3 setObject:v46 forKeyedSubscript:@"search"];
    }

    else
    {
      v47 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v47 forKeyedSubscript:@"search"];
    }
  }

  if (self->_undo)
  {
    v48 = [(IFTSchemaIFTASTFlatExpr *)self undo];
    v49 = [v48 dictionaryRepresentation];
    if (v49)
    {
      [v3 setObject:v49 forKeyedSubscript:@"undo"];
    }

    else
    {
      v50 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v50 forKeyedSubscript:@"undo"];
    }
  }

  if (self->_update)
  {
    v51 = [(IFTSchemaIFTASTFlatExpr *)self update];
    v52 = [v51 dictionaryRepresentation];
    if (v52)
    {
      [v3 setObject:v52 forKeyedSubscript:@"update"];
    }

    else
    {
      v53 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v53 forKeyedSubscript:@"update"];
    }
  }

  if (self->_updateParameters)
  {
    v54 = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
    v55 = [v54 dictionaryRepresentation];
    if (v55)
    {
      [v3 setObject:v55 forKeyedSubscript:@"updateParameters"];
    }

    else
    {
      v56 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v56 forKeyedSubscript:@"updateParameters"];
    }
  }

  if (self->_value)
  {
    v57 = [(IFTSchemaIFTASTFlatExpr *)self value];
    v58 = [v57 dictionaryRepresentation];
    if (v58)
    {
      [v3 setObject:v58 forKeyedSubscript:@"value"];
    }

    else
    {
      v59 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v59 forKeyedSubscript:@"value"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_95;
  }

  whichOneof_Astflatexpr = self->_whichOneof_Astflatexpr;
  if (whichOneof_Astflatexpr != [v4 whichOneof_Astflatexpr])
  {
    goto LABEL_95;
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self value];
  v7 = [v4 value];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v8 = [(IFTSchemaIFTASTFlatExpr *)self value];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTASTFlatExpr *)self value];
    v11 = [v4 value];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self prefix];
  v7 = [v4 prefix];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v13 = [(IFTSchemaIFTASTFlatExpr *)self prefix];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTASTFlatExpr *)self prefix];
    v16 = [v4 prefix];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self infix];
  v7 = [v4 infix];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v18 = [(IFTSchemaIFTASTFlatExpr *)self infix];
  if (v18)
  {
    v19 = v18;
    v20 = [(IFTSchemaIFTASTFlatExpr *)self infix];
    v21 = [v4 infix];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self dot];
  v7 = [v4 dot];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v23 = [(IFTSchemaIFTASTFlatExpr *)self dot];
  if (v23)
  {
    v24 = v23;
    v25 = [(IFTSchemaIFTASTFlatExpr *)self dot];
    v26 = [v4 dot];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self index];
  v7 = [v4 index];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v28 = [(IFTSchemaIFTASTFlatExpr *)self index];
  if (v28)
  {
    v29 = v28;
    v30 = [(IFTSchemaIFTASTFlatExpr *)self index];
    v31 = [v4 index];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self call];
  v7 = [v4 call];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v33 = [(IFTSchemaIFTASTFlatExpr *)self call];
  if (v33)
  {
    v34 = v33;
    v35 = [(IFTSchemaIFTASTFlatExpr *)self call];
    v36 = [v4 call];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self update];
  v7 = [v4 update];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v38 = [(IFTSchemaIFTASTFlatExpr *)self update];
  if (v38)
  {
    v39 = v38;
    v40 = [(IFTSchemaIFTASTFlatExpr *)self update];
    v41 = [v4 update];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  endOfPlan = self->_endOfPlan;
  if (endOfPlan != [v4 endOfPlan])
  {
    goto LABEL_95;
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self say];
  v7 = [v4 say];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v44 = [(IFTSchemaIFTASTFlatExpr *)self say];
  if (v44)
  {
    v45 = v44;
    v46 = [(IFTSchemaIFTASTFlatExpr *)self say];
    v47 = [v4 say];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self pick];
  v7 = [v4 pick];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v49 = [(IFTSchemaIFTASTFlatExpr *)self pick];
  if (v49)
  {
    v50 = v49;
    v51 = [(IFTSchemaIFTASTFlatExpr *)self pick];
    v52 = [v4 pick];
    v53 = [v51 isEqual:v52];

    if (!v53)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self confirm];
  v7 = [v4 confirm];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v54 = [(IFTSchemaIFTASTFlatExpr *)self confirm];
  if (v54)
  {
    v55 = v54;
    v56 = [(IFTSchemaIFTASTFlatExpr *)self confirm];
    v57 = [v4 confirm];
    v58 = [v56 isEqual:v57];

    if (!v58)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self search];
  v7 = [v4 search];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v59 = [(IFTSchemaIFTASTFlatExpr *)self search];
  if (v59)
  {
    v60 = v59;
    v61 = [(IFTSchemaIFTASTFlatExpr *)self search];
    v62 = [v4 search];
    v63 = [v61 isEqual:v62];

    if (!v63)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
  v7 = [v4 pickOne];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v64 = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
  if (v64)
  {
    v65 = v64;
    v66 = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
    v67 = [v4 pickOne];
    v68 = [v66 isEqual:v67];

    if (!v68)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  noMatchingTool = self->_noMatchingTool;
  if (noMatchingTool != [v4 noMatchingTool])
  {
    goto LABEL_95;
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self undo];
  v7 = [v4 undo];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v70 = [(IFTSchemaIFTASTFlatExpr *)self undo];
  if (v70)
  {
    v71 = v70;
    v72 = [(IFTSchemaIFTASTFlatExpr *)self undo];
    v73 = [v4 undo];
    v74 = [v72 isEqual:v73];

    if (!v74)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
  v7 = [v4 resolveTool];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v75 = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
  if (v75)
  {
    v76 = v75;
    v77 = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
    v78 = [v4 resolveTool];
    v79 = [v77 isEqual:v78];

    if (!v79)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self reject];
  v7 = [v4 reject];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v80 = [(IFTSchemaIFTASTFlatExpr *)self reject];
  if (v80)
  {
    v81 = v80;
    v82 = [(IFTSchemaIFTASTFlatExpr *)self reject];
    v83 = [v4 reject];
    v84 = [v82 isEqual:v83];

    if (!v84)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self cancel];
  v7 = [v4 cancel];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v85 = [(IFTSchemaIFTASTFlatExpr *)self cancel];
  if (v85)
  {
    v86 = v85;
    v87 = [(IFTSchemaIFTASTFlatExpr *)self cancel];
    v88 = [v4 cancel];
    v89 = [v87 isEqual:v88];

    if (!v89)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
  v7 = [v4 continuePlanning];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_94;
  }

  v90 = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
  if (v90)
  {
    v91 = v90;
    v92 = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
    v93 = [v4 continuePlanning];
    v94 = [v92 isEqual:v93];

    if (!v94)
    {
      goto LABEL_95;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
  v7 = [v4 updateParameters];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_94:

    goto LABEL_95;
  }

  v95 = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
  if (!v95)
  {

LABEL_98:
    v100 = 1;
    goto LABEL_96;
  }

  v96 = v95;
  v97 = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
  v98 = [v4 updateParameters];
  v99 = [v97 isEqual:v98];

  if (v99)
  {
    goto LABEL_98;
  }

LABEL_95:
  v100 = 0;
LABEL_96:

  return v100;
}

- (void)writeTo:(id)a3
{
  v41 = a3;
  v4 = [(IFTSchemaIFTASTFlatExpr *)self value];

  if (v4)
  {
    v5 = [(IFTSchemaIFTASTFlatExpr *)self value];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(IFTSchemaIFTASTFlatExpr *)self prefix];

  if (v6)
  {
    v7 = [(IFTSchemaIFTASTFlatExpr *)self prefix];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(IFTSchemaIFTASTFlatExpr *)self infix];

  if (v8)
  {
    v9 = [(IFTSchemaIFTASTFlatExpr *)self infix];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(IFTSchemaIFTASTFlatExpr *)self dot];

  if (v10)
  {
    v11 = [(IFTSchemaIFTASTFlatExpr *)self dot];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(IFTSchemaIFTASTFlatExpr *)self index];

  if (v12)
  {
    v13 = [(IFTSchemaIFTASTFlatExpr *)self index];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(IFTSchemaIFTASTFlatExpr *)self call];

  if (v14)
  {
    v15 = [(IFTSchemaIFTASTFlatExpr *)self call];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(IFTSchemaIFTASTFlatExpr *)self update];

  if (v16)
  {
    v17 = [(IFTSchemaIFTASTFlatExpr *)self update];
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

  v20 = [(IFTSchemaIFTASTFlatExpr *)self pick];

  if (v20)
  {
    v21 = [(IFTSchemaIFTASTFlatExpr *)self pick];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(IFTSchemaIFTASTFlatExpr *)self confirm];

  if (v22)
  {
    v23 = [(IFTSchemaIFTASTFlatExpr *)self confirm];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(IFTSchemaIFTASTFlatExpr *)self search];

  if (v24)
  {
    v25 = [(IFTSchemaIFTASTFlatExpr *)self search];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(IFTSchemaIFTASTFlatExpr *)self pickOne];

  if (v26)
  {
    v27 = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
    PBDataWriterWriteSubmessage();
  }

  if (self->_whichOneof_Astflatexpr == 14)
  {
    PBDataWriterWriteBOOLField();
  }

  v28 = [(IFTSchemaIFTASTFlatExpr *)self undo];

  if (v28)
  {
    v29 = [(IFTSchemaIFTASTFlatExpr *)self undo];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];

  if (v30)
  {
    v31 = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(IFTSchemaIFTASTFlatExpr *)self reject];

  if (v32)
  {
    v33 = [(IFTSchemaIFTASTFlatExpr *)self reject];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(IFTSchemaIFTASTFlatExpr *)self cancel];

  if (v34)
  {
    v35 = [(IFTSchemaIFTASTFlatExpr *)self cancel];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];

  if (v36)
  {
    v37 = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];

  v39 = v41;
  if (v38)
  {
    v40 = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
    PBDataWriterWriteSubmessage();

    v39 = v41;
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

- (void)setUpdateParameters:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  updateParameters = self->_updateParameters;
  self->_updateParameters = v4;
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

- (void)setContinuePlanning:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  continuePlanning = self->_continuePlanning;
  self->_continuePlanning = v4;
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

- (void)setCancel:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  cancel = self->_cancel;
  self->_cancel = v4;
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

- (void)setReject:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  reject = self->_reject;
  self->_reject = v4;
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

- (void)setResolveTool:(id)a3
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

  self->_whichOneof_Astflatexpr = 16 * (v4 != 0);
  resolveTool = self->_resolveTool;
  self->_resolveTool = v4;
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

- (void)setUndo:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  undo = self->_undo;
  self->_undo = v4;
}

- (void)deleteNoMatchingTool
{
  if (self->_whichOneof_Astflatexpr == 14)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_noMatchingTool = 0;
  }
}

- (void)setNoMatchingTool:(BOOL)a3
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
  self->_noMatchingTool = a3;
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

- (void)setPickOne:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  pickOne = self->_pickOne;
  self->_pickOne = v4;
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

- (void)setSearch:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  search = self->_search;
  self->_search = v4;
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

- (void)setConfirm:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  confirm = self->_confirm;
  self->_confirm = v4;
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

- (void)setPick:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  pick = self->_pick;
  self->_pick = v4;
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

- (void)setSay:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  say = self->_say;
  self->_say = v4;
}

- (void)deleteEndOfPlan
{
  if (self->_whichOneof_Astflatexpr == 8)
  {
    self->_whichOneof_Astflatexpr = 0;
    self->_endOfPlan = 0;
  }
}

- (void)setEndOfPlan:(BOOL)a3
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
  self->_endOfPlan = a3;
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

- (void)setUpdate:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  update = self->_update;
  self->_update = v4;
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

- (void)setCall:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  call = self->_call;
  self->_call = v4;
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

- (void)setIndex:(id)a3
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  index = self->_index;
  self->_index = v4;
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

- (void)setDot:(id)a3
{
  v4 = a3;
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

  self->_whichOneof_Astflatexpr = 4 * (v4 != 0);
  dot = self->_dot;
  self->_dot = v4;
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

- (void)setInfix:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichOneof_Astflatexpr = v22;
  infix = self->_infix;
  self->_infix = v4;
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

- (void)setPrefix:(id)a3
{
  v4 = a3;
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

  self->_whichOneof_Astflatexpr = 2 * (v4 != 0);
  prefix = self->_prefix;
  self->_prefix = v4;
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

- (void)setValue:(id)a3
{
  v4 = a3;
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

  self->_whichOneof_Astflatexpr = v4 != 0;
  value = self->_value;
  self->_value = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = IFTSchemaIFTASTFlatExpr;
  v5 = [(SISchemaInstrumentationMessage *)&v61 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTASTFlatExpr *)self value];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteValue];
  }

  v9 = [(IFTSchemaIFTASTFlatExpr *)self prefix];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deletePrefix];
  }

  v12 = [(IFTSchemaIFTASTFlatExpr *)self infix];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteInfix];
  }

  v15 = [(IFTSchemaIFTASTFlatExpr *)self dot];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteDot];
  }

  v18 = [(IFTSchemaIFTASTFlatExpr *)self index];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteIndex];
  }

  v21 = [(IFTSchemaIFTASTFlatExpr *)self call];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteCall];
  }

  v24 = [(IFTSchemaIFTASTFlatExpr *)self update];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteUpdate];
  }

  v27 = [(IFTSchemaIFTASTFlatExpr *)self say];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteSay];
  }

  v30 = [(IFTSchemaIFTASTFlatExpr *)self pick];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deletePick];
  }

  v33 = [(IFTSchemaIFTASTFlatExpr *)self confirm];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteConfirm];
  }

  v36 = [(IFTSchemaIFTASTFlatExpr *)self search];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteSearch];
  }

  v39 = [(IFTSchemaIFTASTFlatExpr *)self pickOne];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deletePickOne];
  }

  v42 = [(IFTSchemaIFTASTFlatExpr *)self undo];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteUndo];
  }

  v45 = [(IFTSchemaIFTASTFlatExpr *)self resolveTool];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteResolveTool];
  }

  v48 = [(IFTSchemaIFTASTFlatExpr *)self reject];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteReject];
  }

  v51 = [(IFTSchemaIFTASTFlatExpr *)self cancel];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteCancel];
  }

  v54 = [(IFTSchemaIFTASTFlatExpr *)self continuePlanning];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(IFTSchemaIFTASTFlatExpr *)self deleteContinuePlanning];
  }

  v57 = [(IFTSchemaIFTASTFlatExpr *)self updateParameters];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
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