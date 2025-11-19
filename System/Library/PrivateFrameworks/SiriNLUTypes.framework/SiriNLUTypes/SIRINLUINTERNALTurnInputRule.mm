@interface SIRINLUINTERNALTurnInputRule
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addNegativeContextRules:(id)a3;
- (void)addPositiveContextRules:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALTurnInputRule

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  utteranceRule = self->_utteranceRule;
  v6 = *(v4 + 3);
  if (utteranceRule)
  {
    if (v6)
    {
      [(SIRINLUINTERNALUtteranceRule *)utteranceRule mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUINTERNALTurnInputRule *)self setUtteranceRule:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *(v4 + 2);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUINTERNALTurnInputRule *)self addPositiveContextRules:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(v4 + 1);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUINTERNALTurnInputRule *)self addNegativeContextRules:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUINTERNALUtteranceRule *)self->_utteranceRule hash];
  v4 = [(NSMutableArray *)self->_positiveContextRules hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_negativeContextRules hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((utteranceRule = self->_utteranceRule, !(utteranceRule | v4[3])) || -[SIRINLUINTERNALUtteranceRule isEqual:](utteranceRule, "isEqual:")) && ((positiveContextRules = self->_positiveContextRules, !(positiveContextRules | v4[2])) || -[NSMutableArray isEqual:](positiveContextRules, "isEqual:")))
  {
    negativeContextRules = self->_negativeContextRules;
    if (negativeContextRules | v4[1])
    {
      v8 = [(NSMutableArray *)negativeContextRules isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUINTERNALUtteranceRule *)self->_utteranceRule copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_positiveContextRules;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v26 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addPositiveContextRules:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_negativeContextRules;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) copyWithZone:{a3, v22}];
        [v5 addNegativeContextRules:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if (self->_utteranceRule)
  {
    [v12 setUtteranceRule:?];
  }

  if ([(SIRINLUINTERNALTurnInputRule *)self positiveContextRulesCount])
  {
    [v12 clearPositiveContextRules];
    v4 = [(SIRINLUINTERNALTurnInputRule *)self positiveContextRulesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUINTERNALTurnInputRule *)self positiveContextRulesAtIndex:i];
        [v12 addPositiveContextRules:v7];
      }
    }
  }

  if ([(SIRINLUINTERNALTurnInputRule *)self negativeContextRulesCount])
  {
    [v12 clearNegativeContextRules];
    v8 = [(SIRINLUINTERNALTurnInputRule *)self negativeContextRulesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SIRINLUINTERNALTurnInputRule *)self negativeContextRulesAtIndex:j];
        [v12 addNegativeContextRules:v11];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_utteranceRule)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_positiveContextRules;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_negativeContextRules;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  utteranceRule = self->_utteranceRule;
  if (utteranceRule)
  {
    v5 = [(SIRINLUINTERNALUtteranceRule *)utteranceRule dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"utterance_rule"];
  }

  if ([(NSMutableArray *)self->_positiveContextRules count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_positiveContextRules, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = self->_positiveContextRules;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"positive_context_rules"];
  }

  if ([(NSMutableArray *)self->_negativeContextRules count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_negativeContextRules, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_negativeContextRules;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"negative_context_rules"];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALTurnInputRule;
  v4 = [(SIRINLUINTERNALTurnInputRule *)&v8 description];
  v5 = [(SIRINLUINTERNALTurnInputRule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addNegativeContextRules:(id)a3
{
  v4 = a3;
  negativeContextRules = self->_negativeContextRules;
  v8 = v4;
  if (!negativeContextRules)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_negativeContextRules;
    self->_negativeContextRules = v6;

    v4 = v8;
    negativeContextRules = self->_negativeContextRules;
  }

  [(NSMutableArray *)negativeContextRules addObject:v4];
}

- (void)addPositiveContextRules:(id)a3
{
  v4 = a3;
  positiveContextRules = self->_positiveContextRules;
  v8 = v4;
  if (!positiveContextRules)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_positiveContextRules;
    self->_positiveContextRules = v6;

    v4 = v8;
    positiveContextRules = self->_positiveContextRules;
  }

  [(NSMutableArray *)positiveContextRules addObject:v4];
}

@end