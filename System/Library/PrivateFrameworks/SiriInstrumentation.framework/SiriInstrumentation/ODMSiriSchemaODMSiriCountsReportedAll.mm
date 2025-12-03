@interface ODMSiriSchemaODMSiriCountsReportedAll
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriCountsReportedAll)initWithDictionary:(id)dictionary;
- (ODMSiriSchemaODMSiriCountsReportedAll)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)segmentsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addSegments:(int)segments;
- (void)addSiriCountsAll:(id)all;
- (void)writeTo:(id)to;
@end

@implementation ODMSiriSchemaODMSiriCountsReportedAll

- (ODMSiriSchemaODMSiriCountsReportedAll)initWithDictionary:(id)dictionary
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v34.receiver = self;
  v34.super_class = ODMSiriSchemaODMSiriCountsReportedAll;
  v5 = [(ODMSiriSchemaODMSiriCountsReportedAll *)&v34 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"aggregationInterval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODMSiriSchemaODMSiriAggregationInterval alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriCountsReportedAll *)v5 setAggregationInterval:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"siriCountsAll"];
    objc_opt_class();
    v25 = v6;
    if (objc_opt_isKindOfClass())
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v31;
        do
        {
          v13 = 0;
          do
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v30 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[ODMSiriSchemaODMSiriCountsAll alloc] initWithDictionary:v14];
              [(ODMSiriSchemaODMSiriCountsReportedAll *)v5 addSiriCountsAll:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v11);
      }

      v6 = v25;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"segments"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v27;
        do
        {
          v21 = 0;
          do
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v26 + 1) + 8 * v21);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ODMSiriSchemaODMSiriCountsReportedAll addSegments:](v5, "addSegments:", [v22 intValue]);
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v19);
      }

      v6 = v25;
    }

    v23 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMSiriCountsReportedAll)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriCountsReportedAll *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODMSiriSchemaODMSiriCountsReportedAll *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_aggregationInterval)
  {
    aggregationInterval = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
    dictionaryRepresentation = [aggregationInterval dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"aggregationInterval"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"aggregationInterval"];
    }
  }

  if ([(NSArray *)self->_segments count])
  {
    segments = [(ODMSiriSchemaODMSiriCountsReportedAll *)self segments];
    v8 = [segments copy];
    [dictionary setObject:v8 forKeyedSubscript:@"segments"];
  }

  if ([(NSArray *)self->_siriCountsAlls count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_siriCountsAlls;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation2 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"siriCountsAll"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v18];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODMSiriSchemaODMSiriAggregationInterval *)self->_aggregationInterval hash];
  v4 = [(NSArray *)self->_siriCountsAlls hash]^ v3;
  return v4 ^ [(NSArray *)self->_segments hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  aggregationInterval = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
  aggregationInterval2 = [equalCopy aggregationInterval];
  if ((aggregationInterval != 0) == (aggregationInterval2 == 0))
  {
    goto LABEL_16;
  }

  aggregationInterval3 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
  if (aggregationInterval3)
  {
    v8 = aggregationInterval3;
    aggregationInterval4 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
    aggregationInterval5 = [equalCopy aggregationInterval];
    v11 = [aggregationInterval4 isEqual:aggregationInterval5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  aggregationInterval = [(ODMSiriSchemaODMSiriCountsReportedAll *)self siriCountsAlls];
  aggregationInterval2 = [equalCopy siriCountsAlls];
  if ((aggregationInterval != 0) == (aggregationInterval2 == 0))
  {
    goto LABEL_16;
  }

  siriCountsAlls = [(ODMSiriSchemaODMSiriCountsReportedAll *)self siriCountsAlls];
  if (siriCountsAlls)
  {
    v13 = siriCountsAlls;
    siriCountsAlls2 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self siriCountsAlls];
    siriCountsAlls3 = [equalCopy siriCountsAlls];
    v16 = [siriCountsAlls2 isEqual:siriCountsAlls3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  aggregationInterval = [(ODMSiriSchemaODMSiriCountsReportedAll *)self segments];
  aggregationInterval2 = [equalCopy segments];
  if ((aggregationInterval != 0) != (aggregationInterval2 == 0))
  {
    segments = [(ODMSiriSchemaODMSiriCountsReportedAll *)self segments];
    if (!segments)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = segments;
    segments2 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self segments];
    segments3 = [equalCopy segments];
    v21 = [segments2 isEqual:segments3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  aggregationInterval = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];

  if (aggregationInterval)
  {
    aggregationInterval2 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_siriCountsAlls;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_segments;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16) intValue];
        PBDataWriterWriteInt32Field();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (int)segmentsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_segments objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addSegments:(int)segments
{
  v3 = *&segments;
  segments = self->_segments;
  if (!segments)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_segments;
    self->_segments = array;

    segments = self->_segments;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)segments addObject:v8];
}

- (void)addSiriCountsAll:(id)all
{
  allCopy = all;
  siriCountsAlls = self->_siriCountsAlls;
  v8 = allCopy;
  if (!siriCountsAlls)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_siriCountsAlls;
    self->_siriCountsAlls = array;

    allCopy = v8;
    siriCountsAlls = self->_siriCountsAlls;
  }

  [(NSArray *)siriCountsAlls addObject:allCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = ODMSiriSchemaODMSiriCountsReportedAll;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:policyCopy];
  aggregationInterval = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
  v7 = [aggregationInterval applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODMSiriSchemaODMSiriCountsReportedAll *)self deleteAggregationInterval];
  }

  siriCountsAlls = [(ODMSiriSchemaODMSiriCountsReportedAll *)self siriCountsAlls];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:siriCountsAlls underConditions:policyCopy];
  [(ODMSiriSchemaODMSiriCountsReportedAll *)self setSiriCountsAlls:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end