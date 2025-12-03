@interface INFERENCESchemaINFERENCEPrivatizedHistoryStats
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEPrivatizedHistoryStats)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEPrivatizedHistoryStats)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unsigned)frequenciesAtIndex:(unint64_t)index;
- (void)addFrequencies:(unsigned int)frequencies;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEPrivatizedHistoryStats

- (INFERENCESchemaINFERENCEPrivatizedHistoryStats)initWithDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = INFERENCESchemaINFERENCEPrivatizedHistoryStats;
  v5 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"recency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPrivatizedHistoryStats setRecency:](v5, "setRecency:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"frequencies"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[INFERENCESchemaINFERENCEPrivatizedHistoryStats addFrequencies:](v5, "addFrequencies:", [v13 unsignedIntValue]);
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v10);
      }
    }

    v14 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEPrivatizedHistoryStats)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_frequencies count])
  {
    frequencies = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self frequencies];
    v5 = [frequencies copy];
    [dictionary setObject:v5 forKeyedSubscript:@"frequencies"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCEPrivatizedHistoryStats recency](self, "recency")}];
    [dictionary setObject:v6 forKeyedSubscript:@"recency"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_recency;
  }

  else
  {
    v2 = 0;
  }

  return [(NSArray *)self->_frequencies hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (recency = self->_recency, recency == [equalCopy recency]))
      {
        frequencies = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self frequencies];
        frequencies2 = [equalCopy frequencies];
        v8 = frequencies2;
        if ((frequencies != 0) != (frequencies2 == 0))
        {
          frequencies3 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self frequencies];
          if (!frequencies3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = frequencies3;
          frequencies4 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self frequencies];
          frequencies5 = [equalCopy frequencies];
          v13 = [frequencies4 isEqual:frequencies5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
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
  v5 = self->_frequencies;
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

        [*(*(&v10 + 1) + 8 * v9) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (unsigned)frequenciesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_frequencies objectAtIndexedSubscript:index];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)addFrequencies:(unsigned int)frequencies
{
  v3 = *&frequencies;
  frequencies = self->_frequencies;
  if (!frequencies)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_frequencies;
    self->_frequencies = array;

    frequencies = self->_frequencies;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)frequencies addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end