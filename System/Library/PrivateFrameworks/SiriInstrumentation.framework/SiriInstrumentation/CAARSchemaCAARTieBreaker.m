@interface CAARSchemaCAARTieBreaker
- (BOOL)isEqual:(id)a3;
- (CAARSchemaCAARTieBreaker)initWithDictionary:(id)a3;
- (CAARSchemaCAARTieBreaker)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addActionCandidateBoosts:(id)a3;
- (void)setHasWasTieBreakerForcedSkipped:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAARSchemaCAARTieBreaker

- (CAARSchemaCAARTieBreaker)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CAARSchemaCAARTieBreaker;
  v5 = [(CAARSchemaCAARTieBreaker *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"tieBreakerName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(CAARSchemaCAARTieBreaker *)v5 setTieBreakerName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"actionCandidateBoosts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[CAARSchemaCAARScoreBoost alloc] initWithDictionary:v14];
              [(CAARSchemaCAARTieBreaker *)v5 addActionCandidateBoosts:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v11);
      }

      v6 = v20;
    }

    v16 = [v4 objectForKeyedSubscript:@"isTieBreakerSupported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARTieBreaker setIsTieBreakerSupported:](v5, "setIsTieBreakerSupported:", [v16 BOOLValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"wasTieBreakerForcedSkipped"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAARSchemaCAARTieBreaker setWasTieBreakerForcedSkipped:](v5, "setWasTieBreakerForcedSkipped:", [v17 BOOLValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (CAARSchemaCAARTieBreaker)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAARSchemaCAARTieBreaker *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAARSchemaCAARTieBreaker *)self dictionaryRepresentation];
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
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_actionCandidateBoosts count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_actionCandidateBoosts;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"actionCandidateBoosts"];
  }

  if (*(&self->_wasTieBreakerForcedSkipped + 1))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARTieBreaker isTieBreakerSupported](self, "isTieBreakerSupported")}];
    [v3 setObject:v12 forKeyedSubscript:@"isTieBreakerSupported"];
  }

  if (self->_tieBreakerName)
  {
    v13 = [(CAARSchemaCAARTieBreaker *)self tieBreakerName];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"tieBreakerName"];
  }

  if ((*(&self->_wasTieBreakerForcedSkipped + 1) & 2) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[CAARSchemaCAARTieBreaker wasTieBreakerForcedSkipped](self, "wasTieBreakerForcedSkipped")}];
    [v3 setObject:v15 forKeyedSubscript:@"wasTieBreakerForcedSkipped"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v17];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_tieBreakerName hash];
  v4 = [(NSArray *)self->_actionCandidateBoosts hash];
  if (*(&self->_wasTieBreakerForcedSkipped + 1))
  {
    v5 = 2654435761 * self->_isTieBreakerSupported;
    if ((*(&self->_wasTieBreakerForcedSkipped + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*(&self->_wasTieBreakerForcedSkipped + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_wasTieBreakerForcedSkipped;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(CAARSchemaCAARTieBreaker *)self tieBreakerName];
  v6 = [v4 tieBreakerName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(CAARSchemaCAARTieBreaker *)self tieBreakerName];
  if (v7)
  {
    v8 = v7;
    v9 = [(CAARSchemaCAARTieBreaker *)self tieBreakerName];
    v10 = [v4 tieBreakerName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(CAARSchemaCAARTieBreaker *)self actionCandidateBoosts];
  v6 = [v4 actionCandidateBoosts];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(CAARSchemaCAARTieBreaker *)self actionCandidateBoosts];
  if (v12)
  {
    v13 = v12;
    v14 = [(CAARSchemaCAARTieBreaker *)self actionCandidateBoosts];
    v15 = [v4 actionCandidateBoosts];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = *(&self->_wasTieBreakerForcedSkipped + 1);
  v20 = v4[26];
  if ((v19 & 1) == (v20 & 1))
  {
    if (v19)
    {
      isTieBreakerSupported = self->_isTieBreakerSupported;
      if (isTieBreakerSupported != [v4 isTieBreakerSupported])
      {
        goto LABEL_12;
      }

      v19 = *(&self->_wasTieBreakerForcedSkipped + 1);
      v20 = v4[26];
    }

    v22 = (v19 >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (wasTieBreakerForcedSkipped = self->_wasTieBreakerForcedSkipped, wasTieBreakerForcedSkipped == [v4 wasTieBreakerForcedSkipped]))
      {
        v17 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CAARSchemaCAARTieBreaker *)self tieBreakerName];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_actionCandidateBoosts;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *(&self->_wasTieBreakerForcedSkipped + 1);
  if (v11)
  {
    PBDataWriterWriteBOOLField();
    v11 = *(&self->_wasTieBreakerForcedSkipped + 1);
  }

  if ((v11 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasWasTieBreakerForcedSkipped:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_wasTieBreakerForcedSkipped + 1) = *(&self->_wasTieBreakerForcedSkipped + 1) & 0xFD | v3;
}

- (void)addActionCandidateBoosts:(id)a3
{
  v4 = a3;
  actionCandidateBoosts = self->_actionCandidateBoosts;
  v8 = v4;
  if (!actionCandidateBoosts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_actionCandidateBoosts;
    self->_actionCandidateBoosts = v6;

    v4 = v8;
    actionCandidateBoosts = self->_actionCandidateBoosts;
  }

  [(NSArray *)actionCandidateBoosts addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = CAARSchemaCAARTieBreaker;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(CAARSchemaCAARTieBreaker *)self actionCandidateBoosts:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(CAARSchemaCAARTieBreaker *)self setActionCandidateBoosts:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end