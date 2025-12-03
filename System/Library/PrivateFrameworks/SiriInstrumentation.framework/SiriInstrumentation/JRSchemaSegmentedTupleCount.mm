@interface JRSchemaSegmentedTupleCount
- (BOOL)isEqual:(id)equal;
- (JRSchemaSegmentedTupleCount)initWithDictionary:(id)dictionary;
- (JRSchemaSegmentedTupleCount)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTupleCandidates:(id)candidates;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaSegmentedTupleCount

- (JRSchemaSegmentedTupleCount)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = JRSchemaSegmentedTupleCount;
  v5 = [(JRSchemaSegmentedTupleCount *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tupleCandidates"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [SISchemaUUID alloc];
              v14 = [(SISchemaUUID *)v13 initWithDictionary:v12, v18];
              [(JRSchemaSegmentedTupleCount *)v5 addTupleCandidates:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"count", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[JRSchemaSegmentedTupleCount setCount:](v5, "setCount:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (JRSchemaSegmentedTupleCount)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaSegmentedTupleCount *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaSegmentedTupleCount *)self dictionaryRepresentation];
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
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[JRSchemaSegmentedTupleCount count](self, "count")}];
    [dictionary setObject:v4 forKeyedSubscript:@"count"];
  }

  if ([(NSArray *)self->_tupleCandidates count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_tupleCandidates;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
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

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"tupleCandidates"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v14];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_tupleCandidates hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_count;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  tupleCandidates = [(JRSchemaSegmentedTupleCount *)self tupleCandidates];
  tupleCandidates2 = [equalCopy tupleCandidates];
  v7 = tupleCandidates2;
  if ((tupleCandidates != 0) == (tupleCandidates2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  tupleCandidates3 = [(JRSchemaSegmentedTupleCount *)self tupleCandidates];
  if (tupleCandidates3)
  {
    v9 = tupleCandidates3;
    tupleCandidates4 = [(JRSchemaSegmentedTupleCount *)self tupleCandidates];
    tupleCandidates5 = [equalCopy tupleCandidates];
    v12 = [tupleCandidates4 isEqual:tupleCandidates5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    count = self->_count;
    if (count != [equalCopy count])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_tupleCandidates;
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

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)addTupleCandidates:(id)candidates
{
  candidatesCopy = candidates;
  tupleCandidates = self->_tupleCandidates;
  v8 = candidatesCopy;
  if (!tupleCandidates)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tupleCandidates;
    self->_tupleCandidates = array;

    candidatesCopy = v8;
    tupleCandidates = self->_tupleCandidates;
  }

  [(NSArray *)tupleCandidates addObject:candidatesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = JRSchemaSegmentedTupleCount;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(JRSchemaSegmentedTupleCount *)self tupleCandidates:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(JRSchemaSegmentedTupleCount *)self setTupleCandidates:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end