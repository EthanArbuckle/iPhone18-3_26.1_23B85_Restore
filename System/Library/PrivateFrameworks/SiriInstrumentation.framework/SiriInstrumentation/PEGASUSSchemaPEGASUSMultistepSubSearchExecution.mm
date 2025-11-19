@interface PEGASUSSchemaPEGASUSMultistepSubSearchExecution
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSMultistepSubSearchExecution)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSMultistepSubSearchExecution)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)subSearchDomainsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addSubSearchDomains:(int)a3;
- (void)setHasHasAugmentedQuery:(BOOL)a3;
- (void)setHasHasNextSteps:(BOOL)a3;
- (void)setHasParentDomain:(BOOL)a3;
- (void)setHasSearchType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSMultistepSubSearchExecution

- (PEGASUSSchemaPEGASUSMultistepSubSearchExecution)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PEGASUSSchemaPEGASUSMultistepSubSearchExecution;
  v5 = [(PEGASUSSchemaPEGASUSMultistepSubSearchExecution *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"loopbackDepth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSMultistepSubSearchExecution setLoopbackDepth:](v5, "setLoopbackDepth:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"parentDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSMultistepSubSearchExecution setParentDomain:](v5, "setParentDomain:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"hasNextSteps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSMultistepSubSearchExecution setHasNextSteps:](v5, "setHasNextSteps:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"searchType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSMultistepSubSearchExecution setSearchType:](v5, "setSearchType:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"subSearchDomains"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v8;
      v21 = v7;
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[PEGASUSSchemaPEGASUSMultistepSubSearchExecution addSubSearchDomains:](v5, "addSubSearchDomains:", [v16 intValue]);
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v13);
      }

      v7 = v21;
      v6 = v22;
      v8 = v20;
    }

    v17 = [v4 objectForKeyedSubscript:@"hasAugmentedQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSMultistepSubSearchExecution setHasAugmentedQuery:](v5, "setHasAugmentedQuery:", [v17 BOOLValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSMultistepSubSearchExecution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSMultistepSubSearchExecution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSMultistepSubSearchExecution *)self dictionaryRepresentation];
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
  v4 = *(&self->_hasAugmentedQuery + 1);
  if ((v4 & 0x10) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSMultistepSubSearchExecution hasAugmentedQuery](self, "hasAugmentedQuery")}];
    [v3 setObject:v5 forKeyedSubscript:@"hasAugmentedQuery"];

    v4 = *(&self->_hasAugmentedQuery + 1);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(&self->_hasAugmentedQuery + 1) & 4) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSMultistepSubSearchExecution hasNextSteps](self, "hasNextSteps")}];
  [v3 setObject:v6 forKeyedSubscript:@"hasNextSteps"];

  v4 = *(&self->_hasAugmentedQuery + 1);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[PEGASUSSchemaPEGASUSMultistepSubSearchExecution loopbackDepth](self, "loopbackDepth")}];
  [v3 setObject:v7 forKeyedSubscript:@"loopbackDepth"];

  v4 = *(&self->_hasAugmentedQuery + 1);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_10:
  v8 = [(PEGASUSSchemaPEGASUSMultistepSubSearchExecution *)self parentDomain]- 1;
  if (v8 > 0x1E)
  {
    v9 = @"PEGASUSDOMAIN_UNKNOWN";
  }

  else
  {
    v9 = off_1E78DF9A0[v8];
  }

  [v3 setObject:v9 forKeyedSubscript:@"parentDomain"];
  if ((*(&self->_hasAugmentedQuery + 1) & 8) != 0)
  {
LABEL_14:
    v10 = [(PEGASUSSchemaPEGASUSMultistepSubSearchExecution *)self searchType]- 1;
    if (v10 > 6)
    {
      v11 = @"PEGASUSMULTISTEPSEARCHTYPE_UNKNOWN";
    }

    else
    {
      v11 = off_1E78DFA98[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"searchType"];
  }

LABEL_18:
  if ([(NSArray *)self->_subSearchDomains count])
  {
    v12 = [(PEGASUSSchemaPEGASUSMultistepSubSearchExecution *)self subSearchDomains];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"subSearchDomains"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_hasAugmentedQuery + 1))
  {
    v3 = 2654435761 * self->_loopbackDepth;
    if ((*(&self->_hasAugmentedQuery + 1) & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_parentDomain;
      if ((*(&self->_hasAugmentedQuery + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*(&self->_hasAugmentedQuery + 1) & 8) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*(&self->_hasAugmentedQuery + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*(&self->_hasAugmentedQuery + 1) & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_hasNextSteps;
  if ((*(&self->_hasAugmentedQuery + 1) & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_searchType;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = [(NSArray *)self->_subSearchDomains hash];
  if ((*(&self->_hasAugmentedQuery + 1) & 0x10) != 0)
  {
    v8 = 2654435761 * self->_hasAugmentedQuery;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = *(&self->_hasAugmentedQuery + 1);
  v6 = v4[33];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_27;
  }

  if (v5)
  {
    loopbackDepth = self->_loopbackDepth;
    if (loopbackDepth != [v4 loopbackDepth])
    {
      goto LABEL_27;
    }

    v5 = *(&self->_hasAugmentedQuery + 1);
    v6 = v4[33];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v8)
  {
    parentDomain = self->_parentDomain;
    if (parentDomain != [v4 parentDomain])
    {
      goto LABEL_27;
    }

    v5 = *(&self->_hasAugmentedQuery + 1);
    v6 = v4[33];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v10)
  {
    hasNextSteps = self->_hasNextSteps;
    if (hasNextSteps == [v4 hasNextSteps])
    {
      v5 = *(&self->_hasAugmentedQuery + 1);
      v6 = v4[33];
      goto LABEL_14;
    }

LABEL_27:
    v24 = 0;
    goto LABEL_28;
  }

LABEL_14:
  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v12)
  {
    searchType = self->_searchType;
    if (searchType != [v4 searchType])
    {
      goto LABEL_27;
    }
  }

  v14 = [(PEGASUSSchemaPEGASUSMultistepSubSearchExecution *)self subSearchDomains];
  v15 = [v4 subSearchDomains];
  v16 = v15;
  if ((v14 != 0) == (v15 == 0))
  {

    goto LABEL_27;
  }

  v17 = [(PEGASUSSchemaPEGASUSMultistepSubSearchExecution *)self subSearchDomains];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSMultistepSubSearchExecution *)self subSearchDomains];
    v20 = [v4 subSearchDomains];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v22 = (*(&self->_hasAugmentedQuery + 1) >> 4) & 1;
  if (v22 != ((v4[33] >> 4) & 1))
  {
    goto LABEL_27;
  }

  if (v22)
  {
    hasAugmentedQuery = self->_hasAugmentedQuery;
    if (hasAugmentedQuery != [v4 hasAugmentedQuery])
    {
      goto LABEL_27;
    }
  }

  v24 = 1;
LABEL_28:

  return v24;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(&self->_hasAugmentedQuery + 1);
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v5 = *(&self->_hasAugmentedQuery + 1);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(&self->_hasAugmentedQuery + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  v5 = *(&self->_hasAugmentedQuery + 1);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_hasAugmentedQuery + 1) & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_subSearchDomains;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((*(&self->_hasAugmentedQuery + 1) & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasHasAugmentedQuery:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasAugmentedQuery + 1) = *(&self->_hasAugmentedQuery + 1) & 0xEF | v3;
}

- (int)subSearchDomainsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_subSearchDomains objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addSubSearchDomains:(int)a3
{
  v3 = *&a3;
  subSearchDomains = self->_subSearchDomains;
  if (!subSearchDomains)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_subSearchDomains;
    self->_subSearchDomains = v6;

    subSearchDomains = self->_subSearchDomains;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)subSearchDomains addObject:v8];
}

- (void)setHasSearchType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasAugmentedQuery + 1) = *(&self->_hasAugmentedQuery + 1) & 0xF7 | v3;
}

- (void)setHasHasNextSteps:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasAugmentedQuery + 1) = *(&self->_hasAugmentedQuery + 1) & 0xFB | v3;
}

- (void)setHasParentDomain:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasAugmentedQuery + 1) = *(&self->_hasAugmentedQuery + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end