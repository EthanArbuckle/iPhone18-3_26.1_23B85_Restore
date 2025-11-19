@interface JRSchemaJRModelOutputs
- (BOOL)isEqual:(id)a3;
- (JRSchemaJRModelOutputs)initWithDictionary:(id)a3;
- (JRSchemaJRModelOutputs)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addUserHistory:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaJRModelOutputs

- (JRSchemaJRModelOutputs)initWithDictionary:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42.receiver = self;
  v42.super_class = JRSchemaJRModelOutputs;
  v5 = [(JRSchemaJRModelOutputs *)&v42 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"action"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[JRSchemaJRAction alloc] initWithDictionary:v6];
      [(JRSchemaJRModelOutputs *)v5 setAction:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"candidates"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[JRSchemaJRActionCandidateTuple alloc] initWithDictionary:v8];
      [(JRSchemaJRModelOutputs *)v5 setCandidates:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"ranking"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[JRSchemaRanking alloc] initWithDictionary:v10];
      [(JRSchemaJRModelOutputs *)v5 setRanking:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"jrAnonymizedHistoryAndContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[JRSchemaJRAnonymizedHistoryAndContext alloc] initWithDictionary:v12];
      [(JRSchemaJRModelOutputs *)v5 setJrAnonymizedHistoryAndContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"didJRForcePrompt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[JRSchemaJRModelOutputs setDidJRForcePrompt:](v5, "setDidJRForcePrompt:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"modelDiagnosticSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[JRSchemaJRModelDiagnosticsSignals alloc] initWithDictionary:v15];
      [(JRSchemaJRModelOutputs *)v5 setModelDiagnosticSignals:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"shadowAction"];
    objc_opt_class();
    v37 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [[JRSchemaJRAction alloc] initWithDictionary:v17];
      [(JRSchemaJRModelOutputs *)v5 setShadowAction:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"shadowCandidates"];
    objc_opt_class();
    v36 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [[JRSchemaJRActionCandidateTuple alloc] initWithDictionary:v19];
      [(JRSchemaJRModelOutputs *)v5 setShadowCandidates:v20];
    }

    v21 = [v4 objectForKeyedSubscript:@"userHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v15;
      v32 = v12;
      v33 = v10;
      v34 = v8;
      v35 = v6;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v38 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [[JRSchemaUserHistory alloc] initWithDictionary:v27];
              [(JRSchemaJRModelOutputs *)v5 addUserHistory:v28];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v24);
      }

      v8 = v34;
      v6 = v35;
      v12 = v32;
      v10 = v33;
      v15 = v31;
    }

    v29 = v5;
  }

  return v5;
}

- (JRSchemaJRModelOutputs)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaJRModelOutputs *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaJRModelOutputs *)self dictionaryRepresentation];
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
  v40 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_action)
  {
    v4 = [(JRSchemaJRModelOutputs *)self action];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"action"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"action"];
    }
  }

  if (self->_candidates)
  {
    v7 = [(JRSchemaJRModelOutputs *)self candidates];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"candidates"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"candidates"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[JRSchemaJRModelOutputs didJRForcePrompt](self, "didJRForcePrompt")}];
    [v3 setObject:v10 forKeyedSubscript:@"didJRForcePrompt"];
  }

  if (self->_jrAnonymizedHistoryAndContext)
  {
    v11 = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"jrAnonymizedHistoryAndContext"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"jrAnonymizedHistoryAndContext"];
    }
  }

  if (self->_modelDiagnosticSignals)
  {
    v14 = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"modelDiagnosticSignals"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"modelDiagnosticSignals"];
    }
  }

  if (self->_ranking)
  {
    v17 = [(JRSchemaJRModelOutputs *)self ranking];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"ranking"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"ranking"];
    }
  }

  if (self->_shadowAction)
  {
    v20 = [(JRSchemaJRModelOutputs *)self shadowAction];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"shadowAction"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"shadowAction"];
    }
  }

  if (self->_shadowCandidates)
  {
    v23 = [(JRSchemaJRModelOutputs *)self shadowCandidates];
    v24 = [v23 dictionaryRepresentation];
    if (v24)
    {
      [v3 setObject:v24 forKeyedSubscript:@"shadowCandidates"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"shadowCandidates"];
    }
  }

  if ([(NSArray *)self->_userHistorys count])
  {
    v26 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = self->_userHistorys;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v36;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          if (v32)
          {
            [v26 addObject:v32];
          }

          else
          {
            v33 = [MEMORY[0x1E695DFB0] null];
            [v26 addObject:v33];
          }
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v29);
    }

    [v3 setObject:v26 forKeyedSubscript:@"userHistory"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v35];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(JRSchemaJRAction *)self->_action hash];
  v4 = [(JRSchemaJRActionCandidateTuple *)self->_candidates hash];
  v5 = [(JRSchemaRanking *)self->_ranking hash];
  v6 = [(JRSchemaJRAnonymizedHistoryAndContext *)self->_jrAnonymizedHistoryAndContext hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_didJRForcePrompt;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(JRSchemaJRModelDiagnosticsSignals *)self->_modelDiagnosticSignals hash];
  v10 = v8 ^ v9 ^ [(JRSchemaJRAction *)self->_shadowAction hash];
  v11 = [(JRSchemaJRActionCandidateTuple *)self->_shadowCandidates hash];
  return v10 ^ v11 ^ [(NSArray *)self->_userHistorys hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  v5 = [(JRSchemaJRModelOutputs *)self action];
  v6 = [v4 action];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v7 = [(JRSchemaJRModelOutputs *)self action];
  if (v7)
  {
    v8 = v7;
    v9 = [(JRSchemaJRModelOutputs *)self action];
    v10 = [v4 action];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRModelOutputs *)self candidates];
  v6 = [v4 candidates];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v12 = [(JRSchemaJRModelOutputs *)self candidates];
  if (v12)
  {
    v13 = v12;
    v14 = [(JRSchemaJRModelOutputs *)self candidates];
    v15 = [v4 candidates];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRModelOutputs *)self ranking];
  v6 = [v4 ranking];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v17 = [(JRSchemaJRModelOutputs *)self ranking];
  if (v17)
  {
    v18 = v17;
    v19 = [(JRSchemaJRModelOutputs *)self ranking];
    v20 = [v4 ranking];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
  v6 = [v4 jrAnonymizedHistoryAndContext];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v22 = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
  if (v22)
  {
    v23 = v22;
    v24 = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
    v25 = [v4 jrAnonymizedHistoryAndContext];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[80] & 1))
  {
    goto LABEL_45;
  }

  if (*&self->_has)
  {
    didJRForcePrompt = self->_didJRForcePrompt;
    if (didJRForcePrompt != [v4 didJRForcePrompt])
    {
      goto LABEL_45;
    }
  }

  v5 = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
  v6 = [v4 modelDiagnosticSignals];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v28 = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
  if (v28)
  {
    v29 = v28;
    v30 = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
    v31 = [v4 modelDiagnosticSignals];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRModelOutputs *)self shadowAction];
  v6 = [v4 shadowAction];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v33 = [(JRSchemaJRModelOutputs *)self shadowAction];
  if (v33)
  {
    v34 = v33;
    v35 = [(JRSchemaJRModelOutputs *)self shadowAction];
    v36 = [v4 shadowAction];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRModelOutputs *)self shadowCandidates];
  v6 = [v4 shadowCandidates];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_44;
  }

  v38 = [(JRSchemaJRModelOutputs *)self shadowCandidates];
  if (v38)
  {
    v39 = v38;
    v40 = [(JRSchemaJRModelOutputs *)self shadowCandidates];
    v41 = [v4 shadowCandidates];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRModelOutputs *)self userHistorys];
  v6 = [v4 userHistorys];
  if ((v5 != 0) != (v6 == 0))
  {
    v43 = [(JRSchemaJRModelOutputs *)self userHistorys];
    if (!v43)
    {

LABEL_48:
      v48 = 1;
      goto LABEL_46;
    }

    v44 = v43;
    v45 = [(JRSchemaJRModelOutputs *)self userHistorys];
    v46 = [v4 userHistorys];
    v47 = [v45 isEqual:v46];

    if (v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_44:
  }

LABEL_45:
  v48 = 0;
LABEL_46:

  return v48;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(JRSchemaJRModelOutputs *)self action];

  if (v5)
  {
    v6 = [(JRSchemaJRModelOutputs *)self action];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(JRSchemaJRModelOutputs *)self candidates];

  if (v7)
  {
    v8 = [(JRSchemaJRModelOutputs *)self candidates];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(JRSchemaJRModelOutputs *)self ranking];

  if (v9)
  {
    v10 = [(JRSchemaJRModelOutputs *)self ranking];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];

  if (v11)
  {
    v12 = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];

  if (v13)
  {
    v14 = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(JRSchemaJRModelOutputs *)self shadowAction];

  if (v15)
  {
    v16 = [(JRSchemaJRModelOutputs *)self shadowAction];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(JRSchemaJRModelOutputs *)self shadowCandidates];

  if (v17)
  {
    v18 = [(JRSchemaJRModelOutputs *)self shadowCandidates];
    PBDataWriterWriteSubmessage();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = self->_userHistorys;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v21);
  }
}

- (void)addUserHistory:(id)a3
{
  v4 = a3;
  userHistorys = self->_userHistorys;
  v8 = v4;
  if (!userHistorys)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_userHistorys;
    self->_userHistorys = v6;

    v4 = v8;
    userHistorys = self->_userHistorys;
  }

  [(NSArray *)userHistorys addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = JRSchemaJRModelOutputs;
  v5 = [(SISchemaInstrumentationMessage *)&v30 applySensitiveConditionsPolicy:v4];
  v6 = [(JRSchemaJRModelOutputs *)self action];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(JRSchemaJRModelOutputs *)self deleteAction];
  }

  v9 = [(JRSchemaJRModelOutputs *)self candidates];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(JRSchemaJRModelOutputs *)self deleteCandidates];
  }

  v12 = [(JRSchemaJRModelOutputs *)self ranking];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(JRSchemaJRModelOutputs *)self deleteRanking];
  }

  v15 = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(JRSchemaJRModelOutputs *)self deleteJrAnonymizedHistoryAndContext];
  }

  v18 = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(JRSchemaJRModelOutputs *)self deleteModelDiagnosticSignals];
  }

  v21 = [(JRSchemaJRModelOutputs *)self shadowAction];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(JRSchemaJRModelOutputs *)self deleteShadowAction];
  }

  v24 = [(JRSchemaJRModelOutputs *)self shadowCandidates];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(JRSchemaJRModelOutputs *)self deleteShadowCandidates];
  }

  v27 = [(JRSchemaJRModelOutputs *)self userHistorys];
  v28 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v27 underConditions:v4];
  [(JRSchemaJRModelOutputs *)self setUserHistorys:v28];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end