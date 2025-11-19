@interface NLXSchemaCDMMatchingSpan
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMMatchingSpan)initWithDictionary:(id)a3;
- (NLXSchemaCDMMatchingSpan)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)matcherNamesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addMatcherNames:(int)a3;
- (void)setHasEndTokenIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMMatchingSpan

- (NLXSchemaCDMMatchingSpan)initWithDictionary:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = NLXSchemaCDMMatchingSpan;
  v5 = [(NLXSchemaCDMMatchingSpan *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NLXSchemaCDMMatchingSpan *)v5 setLabel:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(NLXSchemaCDMMatchingSpan *)v5 setLinkId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"startTokenIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMMatchingSpan setStartTokenIndex:](v5, "setStartTokenIndex:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"endTokenIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMMatchingSpan setEndTokenIndex:](v5, "setEndTokenIndex:", [v11 unsignedIntValue]);
    }

    v28 = v11;
    v12 = [v4 objectForKeyedSubscript:@"usoGraph"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[USOSchemaUSOGraph alloc] initWithDictionary:v12];
      [(NLXSchemaCDMMatchingSpan *)v5 setUsoGraph:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"matcherNames"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v10;
      v26 = v8;
      v27 = v6;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          v19 = 0;
          do
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[NLXSchemaCDMMatchingSpan addMatcherNames:](v5, "addMatcherNames:", [v20 intValue]);
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v17);
      }

      v8 = v26;
      v6 = v27;
      v10 = v25;
    }

    v21 = [v4 objectForKeyedSubscript:{@"internalSpanData", v25, v26, v27}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[NLXSchemaCDMInternalSpanData alloc] initWithDictionary:v21];
      [(NLXSchemaCDMMatchingSpan *)v5 setInternalSpanData:v22];
    }

    v23 = v5;
  }

  return v5;
}

- (NLXSchemaCDMMatchingSpan)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMMatchingSpan *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMMatchingSpan *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMMatchingSpan endTokenIndex](self, "endTokenIndex")}];
    [v3 setObject:v4 forKeyedSubscript:@"endTokenIndex"];
  }

  if (self->_internalSpanData)
  {
    v5 = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"internalSpanData"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"internalSpanData"];
    }
  }

  if (self->_label)
  {
    v8 = [(NLXSchemaCDMMatchingSpan *)self label];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"label"];
  }

  if (self->_linkId)
  {
    v10 = [(NLXSchemaCDMMatchingSpan *)self linkId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_matcherNames count])
  {
    v13 = [(NLXSchemaCDMMatchingSpan *)self matcherNames];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"matcherNames"];
  }

  if (*&self->_has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMMatchingSpan startTokenIndex](self, "startTokenIndex")}];
    [v3 setObject:v15 forKeyedSubscript:@"startTokenIndex"];
  }

  if (self->_usoGraph)
  {
    v16 = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"usoGraph"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"usoGraph"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_label hash];
  v4 = [(SISchemaUUID *)self->_linkId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_startTokenIndex;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_endTokenIndex;
LABEL_6:
  v7 = v4 ^ v3 ^ v5 ^ v6 ^ [(USOSchemaUSOGraph *)self->_usoGraph hash];
  v8 = [(NSArray *)self->_matcherNames hash];
  return v7 ^ v8 ^ [(NLXSchemaCDMInternalSpanData *)self->_internalSpanData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  v5 = [(NLXSchemaCDMMatchingSpan *)self label];
  v6 = [v4 label];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v7 = [(NLXSchemaCDMMatchingSpan *)self label];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMMatchingSpan *)self label];
    v10 = [v4 label];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMMatchingSpan *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v12 = [(NLXSchemaCDMMatchingSpan *)self linkId];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLXSchemaCDMMatchingSpan *)self linkId];
    v15 = [v4 linkId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[56];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    startTokenIndex = self->_startTokenIndex;
    if (startTokenIndex != [v4 startTokenIndex])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v18 = v4[56];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v20)
  {
    endTokenIndex = self->_endTokenIndex;
    if (endTokenIndex != [v4 endTokenIndex])
    {
      goto LABEL_34;
    }
  }

  v5 = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
  v6 = [v4 usoGraph];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v22 = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
  if (v22)
  {
    v23 = v22;
    v24 = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
    v25 = [v4 usoGraph];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMMatchingSpan *)self matcherNames];
  v6 = [v4 matcherNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_33;
  }

  v27 = [(NLXSchemaCDMMatchingSpan *)self matcherNames];
  if (v27)
  {
    v28 = v27;
    v29 = [(NLXSchemaCDMMatchingSpan *)self matcherNames];
    v30 = [v4 matcherNames];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
  v6 = [v4 internalSpanData];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  v32 = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
  if (!v32)
  {

LABEL_37:
    v37 = 1;
    goto LABEL_35;
  }

  v33 = v32;
  v34 = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
  v35 = [v4 internalSpanData];
  v36 = [v34 isEqual:v35];

  if (v36)
  {
    goto LABEL_37;
  }

LABEL_34:
  v37 = 0;
LABEL_35:

  return v37;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NLXSchemaCDMMatchingSpan *)self label];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(NLXSchemaCDMMatchingSpan *)self linkId];

  if (v6)
  {
    v7 = [(NLXSchemaCDMMatchingSpan *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v9 = [(NLXSchemaCDMMatchingSpan *)self usoGraph];

  if (v9)
  {
    v10 = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
    PBDataWriterWriteSubmessage();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_matcherNames;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v18 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v16 = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];

  if (v16)
  {
    v17 = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
    PBDataWriterWriteSubmessage();
  }
}

- (int)matcherNamesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_matcherNames objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addMatcherNames:(int)a3
{
  v3 = *&a3;
  matcherNames = self->_matcherNames;
  if (!matcherNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_matcherNames;
    self->_matcherNames = v6;

    matcherNames = self->_matcherNames;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)matcherNames addObject:v8];
}

- (void)setHasEndTokenIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NLXSchemaCDMMatchingSpan;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMMatchingSpan *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaCDMMatchingSpan *)self deleteLinkId];
  }

  v9 = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLXSchemaCDMMatchingSpan *)self deleteUsoGraph];
  }

  v12 = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(NLXSchemaCDMMatchingSpan *)self deleteInternalSpanData];
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