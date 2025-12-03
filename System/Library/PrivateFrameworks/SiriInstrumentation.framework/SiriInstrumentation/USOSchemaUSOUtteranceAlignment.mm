@interface USOSchemaUSOUtteranceAlignment
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOUtteranceAlignment)initWithDictionary:(id)dictionary;
- (USOSchemaUSOUtteranceAlignment)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSpans:(id)spans;
- (void)setHasNodeIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOUtteranceAlignment

- (USOSchemaUSOUtteranceAlignment)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = USOSchemaUSOUtteranceAlignment;
  v5 = [(USOSchemaUSOUtteranceAlignment *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"asrHypothesisIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOUtteranceAlignment setAsrHypothesisIndex:](v5, "setAsrHypothesisIndex:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"spans"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          v12 = 0;
          do
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[USOSchemaUSOUtteranceSpan alloc] initWithDictionary:v13];
              [(USOSchemaUSOUtteranceAlignment *)v5 addSpans:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v10);
      }

      v6 = v18;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"nodeIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOUtteranceAlignment setNodeIndex:](v5, "setNodeIndex:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (USOSchemaUSOUtteranceAlignment)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOUtteranceAlignment *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOUtteranceAlignment *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOUtteranceAlignment asrHypothesisIndex](self, "asrHypothesisIndex")}];
    [dictionary setObject:v5 forKeyedSubscript:@"asrHypothesisIndex"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOUtteranceAlignment nodeIndex](self, "nodeIndex")}];
    [dictionary setObject:v6 forKeyedSubscript:@"nodeIndex"];
  }

  if ([(NSArray *)self->_spans count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_spans;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"spans"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_asrHypothesisIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_spans hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_nodeIndex;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    asrHypothesisIndex = self->_asrHypothesisIndex;
    if (asrHypothesisIndex != [equalCopy asrHypothesisIndex])
    {
      goto LABEL_15;
    }
  }

  spans = [(USOSchemaUSOUtteranceAlignment *)self spans];
  spans2 = [equalCopy spans];
  v8 = spans2;
  if ((spans != 0) == (spans2 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  spans3 = [(USOSchemaUSOUtteranceAlignment *)self spans];
  if (spans3)
  {
    v10 = spans3;
    spans4 = [(USOSchemaUSOUtteranceAlignment *)self spans];
    spans5 = [equalCopy spans];
    v13 = [spans4 isEqual:spans5];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((equalCopy[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    nodeIndex = self->_nodeIndex;
    if (nodeIndex != [equalCopy nodeIndex])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_spans;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasNodeIndex:(BOOL)index
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

- (void)addSpans:(id)spans
{
  spansCopy = spans;
  spans = self->_spans;
  v8 = spansCopy;
  if (!spans)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_spans;
    self->_spans = array;

    spansCopy = v8;
    spans = self->_spans;
  }

  [(NSArray *)spans addObject:spansCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = USOSchemaUSOUtteranceAlignment;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(USOSchemaUSOUtteranceAlignment *)self spans:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(USOSchemaUSOUtteranceAlignment *)self setSpans:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end