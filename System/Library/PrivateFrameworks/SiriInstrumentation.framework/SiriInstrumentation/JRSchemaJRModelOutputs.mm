@interface JRSchemaJRModelOutputs
- (BOOL)isEqual:(id)equal;
- (JRSchemaJRModelOutputs)initWithDictionary:(id)dictionary;
- (JRSchemaJRModelOutputs)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addUserHistory:(id)history;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaJRModelOutputs

- (JRSchemaJRModelOutputs)initWithDictionary:(id)dictionary
{
  v44 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = JRSchemaJRModelOutputs;
  v5 = [(JRSchemaJRModelOutputs *)&v42 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"action"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[JRSchemaJRAction alloc] initWithDictionary:v6];
      [(JRSchemaJRModelOutputs *)v5 setAction:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"candidates"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[JRSchemaJRActionCandidateTuple alloc] initWithDictionary:v8];
      [(JRSchemaJRModelOutputs *)v5 setCandidates:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ranking"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[JRSchemaRanking alloc] initWithDictionary:v10];
      [(JRSchemaJRModelOutputs *)v5 setRanking:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"jrAnonymizedHistoryAndContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[JRSchemaJRAnonymizedHistoryAndContext alloc] initWithDictionary:v12];
      [(JRSchemaJRModelOutputs *)v5 setJrAnonymizedHistoryAndContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"didJRForcePrompt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[JRSchemaJRModelOutputs setDidJRForcePrompt:](v5, "setDidJRForcePrompt:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"modelDiagnosticSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[JRSchemaJRModelDiagnosticsSignals alloc] initWithDictionary:v15];
      [(JRSchemaJRModelOutputs *)v5 setModelDiagnosticSignals:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"shadowAction"];
    objc_opt_class();
    v37 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [[JRSchemaJRAction alloc] initWithDictionary:v17];
      [(JRSchemaJRModelOutputs *)v5 setShadowAction:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"shadowCandidates"];
    objc_opt_class();
    v36 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [[JRSchemaJRActionCandidateTuple alloc] initWithDictionary:v19];
      [(JRSchemaJRModelOutputs *)v5 setShadowCandidates:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"userHistory"];
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

- (JRSchemaJRModelOutputs)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaJRModelOutputs *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaJRModelOutputs *)self dictionaryRepresentation];
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
  v40 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_action)
  {
    action = [(JRSchemaJRModelOutputs *)self action];
    dictionaryRepresentation = [action dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"action"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"action"];
    }
  }

  if (self->_candidates)
  {
    candidates = [(JRSchemaJRModelOutputs *)self candidates];
    dictionaryRepresentation2 = [candidates dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"candidates"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"candidates"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[JRSchemaJRModelOutputs didJRForcePrompt](self, "didJRForcePrompt")}];
    [dictionary setObject:v10 forKeyedSubscript:@"didJRForcePrompt"];
  }

  if (self->_jrAnonymizedHistoryAndContext)
  {
    jrAnonymizedHistoryAndContext = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
    dictionaryRepresentation3 = [jrAnonymizedHistoryAndContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"jrAnonymizedHistoryAndContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"jrAnonymizedHistoryAndContext"];
    }
  }

  if (self->_modelDiagnosticSignals)
  {
    modelDiagnosticSignals = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
    dictionaryRepresentation4 = [modelDiagnosticSignals dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"modelDiagnosticSignals"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"modelDiagnosticSignals"];
    }
  }

  if (self->_ranking)
  {
    ranking = [(JRSchemaJRModelOutputs *)self ranking];
    dictionaryRepresentation5 = [ranking dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"ranking"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"ranking"];
    }
  }

  if (self->_shadowAction)
  {
    shadowAction = [(JRSchemaJRModelOutputs *)self shadowAction];
    dictionaryRepresentation6 = [shadowAction dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"shadowAction"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"shadowAction"];
    }
  }

  if (self->_shadowCandidates)
  {
    shadowCandidates = [(JRSchemaJRModelOutputs *)self shadowCandidates];
    dictionaryRepresentation7 = [shadowCandidates dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"shadowCandidates"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"shadowCandidates"];
    }
  }

  if ([(NSArray *)self->_userHistorys count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation8 = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation8)
          {
            [array addObject:dictionaryRepresentation8];
          }

          else
          {
            null8 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null8];
          }
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v29);
    }

    [dictionary setObject:array forKeyedSubscript:@"userHistory"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v35];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_45;
  }

  action = [(JRSchemaJRModelOutputs *)self action];
  action2 = [equalCopy action];
  if ((action != 0) == (action2 == 0))
  {
    goto LABEL_44;
  }

  action3 = [(JRSchemaJRModelOutputs *)self action];
  if (action3)
  {
    v8 = action3;
    action4 = [(JRSchemaJRModelOutputs *)self action];
    action5 = [equalCopy action];
    v11 = [action4 isEqual:action5];

    if (!v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  action = [(JRSchemaJRModelOutputs *)self candidates];
  action2 = [equalCopy candidates];
  if ((action != 0) == (action2 == 0))
  {
    goto LABEL_44;
  }

  candidates = [(JRSchemaJRModelOutputs *)self candidates];
  if (candidates)
  {
    v13 = candidates;
    candidates2 = [(JRSchemaJRModelOutputs *)self candidates];
    candidates3 = [equalCopy candidates];
    v16 = [candidates2 isEqual:candidates3];

    if (!v16)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  action = [(JRSchemaJRModelOutputs *)self ranking];
  action2 = [equalCopy ranking];
  if ((action != 0) == (action2 == 0))
  {
    goto LABEL_44;
  }

  ranking = [(JRSchemaJRModelOutputs *)self ranking];
  if (ranking)
  {
    v18 = ranking;
    ranking2 = [(JRSchemaJRModelOutputs *)self ranking];
    ranking3 = [equalCopy ranking];
    v21 = [ranking2 isEqual:ranking3];

    if (!v21)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  action = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
  action2 = [equalCopy jrAnonymizedHistoryAndContext];
  if ((action != 0) == (action2 == 0))
  {
    goto LABEL_44;
  }

  jrAnonymizedHistoryAndContext = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
  if (jrAnonymizedHistoryAndContext)
  {
    v23 = jrAnonymizedHistoryAndContext;
    jrAnonymizedHistoryAndContext2 = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
    jrAnonymizedHistoryAndContext3 = [equalCopy jrAnonymizedHistoryAndContext];
    v26 = [jrAnonymizedHistoryAndContext2 isEqual:jrAnonymizedHistoryAndContext3];

    if (!v26)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[80] & 1))
  {
    goto LABEL_45;
  }

  if (*&self->_has)
  {
    didJRForcePrompt = self->_didJRForcePrompt;
    if (didJRForcePrompt != [equalCopy didJRForcePrompt])
    {
      goto LABEL_45;
    }
  }

  action = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
  action2 = [equalCopy modelDiagnosticSignals];
  if ((action != 0) == (action2 == 0))
  {
    goto LABEL_44;
  }

  modelDiagnosticSignals = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
  if (modelDiagnosticSignals)
  {
    v29 = modelDiagnosticSignals;
    modelDiagnosticSignals2 = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
    modelDiagnosticSignals3 = [equalCopy modelDiagnosticSignals];
    v32 = [modelDiagnosticSignals2 isEqual:modelDiagnosticSignals3];

    if (!v32)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  action = [(JRSchemaJRModelOutputs *)self shadowAction];
  action2 = [equalCopy shadowAction];
  if ((action != 0) == (action2 == 0))
  {
    goto LABEL_44;
  }

  shadowAction = [(JRSchemaJRModelOutputs *)self shadowAction];
  if (shadowAction)
  {
    v34 = shadowAction;
    shadowAction2 = [(JRSchemaJRModelOutputs *)self shadowAction];
    shadowAction3 = [equalCopy shadowAction];
    v37 = [shadowAction2 isEqual:shadowAction3];

    if (!v37)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  action = [(JRSchemaJRModelOutputs *)self shadowCandidates];
  action2 = [equalCopy shadowCandidates];
  if ((action != 0) == (action2 == 0))
  {
    goto LABEL_44;
  }

  shadowCandidates = [(JRSchemaJRModelOutputs *)self shadowCandidates];
  if (shadowCandidates)
  {
    v39 = shadowCandidates;
    shadowCandidates2 = [(JRSchemaJRModelOutputs *)self shadowCandidates];
    shadowCandidates3 = [equalCopy shadowCandidates];
    v42 = [shadowCandidates2 isEqual:shadowCandidates3];

    if (!v42)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  action = [(JRSchemaJRModelOutputs *)self userHistorys];
  action2 = [equalCopy userHistorys];
  if ((action != 0) != (action2 == 0))
  {
    userHistorys = [(JRSchemaJRModelOutputs *)self userHistorys];
    if (!userHistorys)
    {

LABEL_48:
      v48 = 1;
      goto LABEL_46;
    }

    v44 = userHistorys;
    userHistorys2 = [(JRSchemaJRModelOutputs *)self userHistorys];
    userHistorys3 = [equalCopy userHistorys];
    v47 = [userHistorys2 isEqual:userHistorys3];

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

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  action = [(JRSchemaJRModelOutputs *)self action];

  if (action)
  {
    action2 = [(JRSchemaJRModelOutputs *)self action];
    PBDataWriterWriteSubmessage();
  }

  candidates = [(JRSchemaJRModelOutputs *)self candidates];

  if (candidates)
  {
    candidates2 = [(JRSchemaJRModelOutputs *)self candidates];
    PBDataWriterWriteSubmessage();
  }

  ranking = [(JRSchemaJRModelOutputs *)self ranking];

  if (ranking)
  {
    ranking2 = [(JRSchemaJRModelOutputs *)self ranking];
    PBDataWriterWriteSubmessage();
  }

  jrAnonymizedHistoryAndContext = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];

  if (jrAnonymizedHistoryAndContext)
  {
    jrAnonymizedHistoryAndContext2 = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  modelDiagnosticSignals = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];

  if (modelDiagnosticSignals)
  {
    modelDiagnosticSignals2 = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
    PBDataWriterWriteSubmessage();
  }

  shadowAction = [(JRSchemaJRModelOutputs *)self shadowAction];

  if (shadowAction)
  {
    shadowAction2 = [(JRSchemaJRModelOutputs *)self shadowAction];
    PBDataWriterWriteSubmessage();
  }

  shadowCandidates = [(JRSchemaJRModelOutputs *)self shadowCandidates];

  if (shadowCandidates)
  {
    shadowCandidates2 = [(JRSchemaJRModelOutputs *)self shadowCandidates];
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

- (void)addUserHistory:(id)history
{
  historyCopy = history;
  userHistorys = self->_userHistorys;
  v8 = historyCopy;
  if (!userHistorys)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_userHistorys;
    self->_userHistorys = array;

    historyCopy = v8;
    userHistorys = self->_userHistorys;
  }

  [(NSArray *)userHistorys addObject:historyCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v30.receiver = self;
  v30.super_class = JRSchemaJRModelOutputs;
  v5 = [(SISchemaInstrumentationMessage *)&v30 applySensitiveConditionsPolicy:policyCopy];
  action = [(JRSchemaJRModelOutputs *)self action];
  v7 = [action applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(JRSchemaJRModelOutputs *)self deleteAction];
  }

  candidates = [(JRSchemaJRModelOutputs *)self candidates];
  v10 = [candidates applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(JRSchemaJRModelOutputs *)self deleteCandidates];
  }

  ranking = [(JRSchemaJRModelOutputs *)self ranking];
  v13 = [ranking applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(JRSchemaJRModelOutputs *)self deleteRanking];
  }

  jrAnonymizedHistoryAndContext = [(JRSchemaJRModelOutputs *)self jrAnonymizedHistoryAndContext];
  v16 = [jrAnonymizedHistoryAndContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(JRSchemaJRModelOutputs *)self deleteJrAnonymizedHistoryAndContext];
  }

  modelDiagnosticSignals = [(JRSchemaJRModelOutputs *)self modelDiagnosticSignals];
  v19 = [modelDiagnosticSignals applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(JRSchemaJRModelOutputs *)self deleteModelDiagnosticSignals];
  }

  shadowAction = [(JRSchemaJRModelOutputs *)self shadowAction];
  v22 = [shadowAction applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(JRSchemaJRModelOutputs *)self deleteShadowAction];
  }

  shadowCandidates = [(JRSchemaJRModelOutputs *)self shadowCandidates];
  v25 = [shadowCandidates applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(JRSchemaJRModelOutputs *)self deleteShadowCandidates];
  }

  userHistorys = [(JRSchemaJRModelOutputs *)self userHistorys];
  v28 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:userHistorys underConditions:policyCopy];
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