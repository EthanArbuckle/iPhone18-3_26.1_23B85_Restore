@interface NLXSchemaCDMMatchingSpan
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMMatchingSpan)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMMatchingSpan)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)matcherNamesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addMatcherNames:(int)names;
- (void)setHasEndTokenIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMMatchingSpan

- (NLXSchemaCDMMatchingSpan)initWithDictionary:(id)dictionary
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = NLXSchemaCDMMatchingSpan;
  v5 = [(NLXSchemaCDMMatchingSpan *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NLXSchemaCDMMatchingSpan *)v5 setLabel:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(NLXSchemaCDMMatchingSpan *)v5 setLinkId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"startTokenIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMMatchingSpan setStartTokenIndex:](v5, "setStartTokenIndex:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"endTokenIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaCDMMatchingSpan setEndTokenIndex:](v5, "setEndTokenIndex:", [v11 unsignedIntValue]);
    }

    v28 = v11;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"usoGraph"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[USOSchemaUSOGraph alloc] initWithDictionary:v12];
      [(NLXSchemaCDMMatchingSpan *)v5 setUsoGraph:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"matcherNames"];
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

    v21 = [dictionaryCopy objectForKeyedSubscript:{@"internalSpanData", v25, v26, v27}];
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

- (NLXSchemaCDMMatchingSpan)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMMatchingSpan *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMMatchingSpan *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMMatchingSpan endTokenIndex](self, "endTokenIndex")}];
    [dictionary setObject:v4 forKeyedSubscript:@"endTokenIndex"];
  }

  if (self->_internalSpanData)
  {
    internalSpanData = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
    dictionaryRepresentation = [internalSpanData dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"internalSpanData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"internalSpanData"];
    }
  }

  if (self->_label)
  {
    label = [(NLXSchemaCDMMatchingSpan *)self label];
    v9 = [label copy];
    [dictionary setObject:v9 forKeyedSubscript:@"label"];
  }

  if (self->_linkId)
  {
    linkId = [(NLXSchemaCDMMatchingSpan *)self linkId];
    dictionaryRepresentation2 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_matcherNames count])
  {
    matcherNames = [(NLXSchemaCDMMatchingSpan *)self matcherNames];
    v14 = [matcherNames copy];
    [dictionary setObject:v14 forKeyedSubscript:@"matcherNames"];
  }

  if (*&self->_has)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLXSchemaCDMMatchingSpan startTokenIndex](self, "startTokenIndex")}];
    [dictionary setObject:v15 forKeyedSubscript:@"startTokenIndex"];
  }

  if (self->_usoGraph)
  {
    usoGraph = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
    dictionaryRepresentation3 = [usoGraph dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"usoGraph"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"usoGraph"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  label = [(NLXSchemaCDMMatchingSpan *)self label];
  label2 = [equalCopy label];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_33;
  }

  label3 = [(NLXSchemaCDMMatchingSpan *)self label];
  if (label3)
  {
    v8 = label3;
    label4 = [(NLXSchemaCDMMatchingSpan *)self label];
    label5 = [equalCopy label];
    v11 = [label4 isEqual:label5];

    if (!v11)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  label = [(NLXSchemaCDMMatchingSpan *)self linkId];
  label2 = [equalCopy linkId];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_33;
  }

  linkId = [(NLXSchemaCDMMatchingSpan *)self linkId];
  if (linkId)
  {
    v13 = linkId;
    linkId2 = [(NLXSchemaCDMMatchingSpan *)self linkId];
    linkId3 = [equalCopy linkId];
    v16 = [linkId2 isEqual:linkId3];

    if (!v16)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = equalCopy[56];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    startTokenIndex = self->_startTokenIndex;
    if (startTokenIndex != [equalCopy startTokenIndex])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v18 = equalCopy[56];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v20)
  {
    endTokenIndex = self->_endTokenIndex;
    if (endTokenIndex != [equalCopy endTokenIndex])
    {
      goto LABEL_34;
    }
  }

  label = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
  label2 = [equalCopy usoGraph];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_33;
  }

  usoGraph = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
  if (usoGraph)
  {
    v23 = usoGraph;
    usoGraph2 = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
    usoGraph3 = [equalCopy usoGraph];
    v26 = [usoGraph2 isEqual:usoGraph3];

    if (!v26)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  label = [(NLXSchemaCDMMatchingSpan *)self matcherNames];
  label2 = [equalCopy matcherNames];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_33;
  }

  matcherNames = [(NLXSchemaCDMMatchingSpan *)self matcherNames];
  if (matcherNames)
  {
    v28 = matcherNames;
    matcherNames2 = [(NLXSchemaCDMMatchingSpan *)self matcherNames];
    matcherNames3 = [equalCopy matcherNames];
    v31 = [matcherNames2 isEqual:matcherNames3];

    if (!v31)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  label = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
  label2 = [equalCopy internalSpanData];
  if ((label != 0) == (label2 == 0))
  {
LABEL_33:

    goto LABEL_34;
  }

  internalSpanData = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
  if (!internalSpanData)
  {

LABEL_37:
    v37 = 1;
    goto LABEL_35;
  }

  v33 = internalSpanData;
  internalSpanData2 = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
  internalSpanData3 = [equalCopy internalSpanData];
  v36 = [internalSpanData2 isEqual:internalSpanData3];

  if (v36)
  {
    goto LABEL_37;
  }

LABEL_34:
  v37 = 0;
LABEL_35:

  return v37;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  label = [(NLXSchemaCDMMatchingSpan *)self label];

  if (label)
  {
    PBDataWriterWriteStringField();
  }

  linkId = [(NLXSchemaCDMMatchingSpan *)self linkId];

  if (linkId)
  {
    linkId2 = [(NLXSchemaCDMMatchingSpan *)self linkId];
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

  usoGraph = [(NLXSchemaCDMMatchingSpan *)self usoGraph];

  if (usoGraph)
  {
    usoGraph2 = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
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

  internalSpanData = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];

  if (internalSpanData)
  {
    internalSpanData2 = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
    PBDataWriterWriteSubmessage();
  }
}

- (int)matcherNamesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_matcherNames objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addMatcherNames:(int)names
{
  v3 = *&names;
  matcherNames = self->_matcherNames;
  if (!matcherNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matcherNames;
    self->_matcherNames = array;

    matcherNames = self->_matcherNames;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)matcherNames addObject:v8];
}

- (void)setHasEndTokenIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = NLXSchemaCDMMatchingSpan;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(NLXSchemaCDMMatchingSpan *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMMatchingSpan *)self deleteLinkId];
  }

  usoGraph = [(NLXSchemaCDMMatchingSpan *)self usoGraph];
  v10 = [usoGraph applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMMatchingSpan *)self deleteUsoGraph];
  }

  internalSpanData = [(NLXSchemaCDMMatchingSpan *)self internalSpanData];
  v13 = [internalSpanData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
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