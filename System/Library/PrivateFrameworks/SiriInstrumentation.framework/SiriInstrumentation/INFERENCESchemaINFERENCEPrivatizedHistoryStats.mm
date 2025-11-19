@interface INFERENCESchemaINFERENCEPrivatizedHistoryStats
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEPrivatizedHistoryStats)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEPrivatizedHistoryStats)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unsigned)frequenciesAtIndex:(unint64_t)a3;
- (void)addFrequencies:(unsigned int)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEPrivatizedHistoryStats

- (INFERENCESchemaINFERENCEPrivatizedHistoryStats)initWithDictionary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = INFERENCESchemaINFERENCEPrivatizedHistoryStats;
  v5 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"recency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPrivatizedHistoryStats setRecency:](v5, "setRecency:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"frequencies"];
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

- (INFERENCESchemaINFERENCEPrivatizedHistoryStats)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_frequencies count])
  {
    v4 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self frequencies];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"frequencies"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCEPrivatizedHistoryStats recency](self, "recency")}];
    [v3 setObject:v6 forKeyedSubscript:@"recency"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (recency = self->_recency, recency == [v4 recency]))
      {
        v6 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self frequencies];
        v7 = [v4 frequencies];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self frequencies];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self frequencies];
          v12 = [v4 frequencies];
          v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (unsigned)frequenciesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_frequencies objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addFrequencies:(unsigned int)a3
{
  v3 = *&a3;
  frequencies = self->_frequencies;
  if (!frequencies)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_frequencies;
    self->_frequencies = v6;

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