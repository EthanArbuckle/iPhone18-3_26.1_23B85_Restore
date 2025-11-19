@interface ODMSiriSchemaODMSiriCountsReportedAll
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriCountsReportedAll)initWithDictionary:(id)a3;
- (ODMSiriSchemaODMSiriCountsReportedAll)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)segmentsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addSegments:(int)a3;
- (void)addSiriCountsAll:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODMSiriSchemaODMSiriCountsReportedAll

- (ODMSiriSchemaODMSiriCountsReportedAll)initWithDictionary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = ODMSiriSchemaODMSiriCountsReportedAll;
  v5 = [(ODMSiriSchemaODMSiriCountsReportedAll *)&v34 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"aggregationInterval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODMSiriSchemaODMSiriAggregationInterval alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriCountsReportedAll *)v5 setAggregationInterval:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"siriCountsAll"];
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

    v16 = [v4 objectForKeyedSubscript:@"segments"];
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

- (ODMSiriSchemaODMSiriCountsReportedAll)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriCountsReportedAll *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_aggregationInterval)
  {
    v4 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"aggregationInterval"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"aggregationInterval"];
    }
  }

  if ([(NSArray *)self->_segments count])
  {
    v7 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self segments];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"segments"];
  }

  if ([(NSArray *)self->_siriCountsAlls count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
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

          v15 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (v15)
          {
            [v9 addObject:v15];
          }

          else
          {
            v16 = [MEMORY[0x1E695DFB0] null];
            [v9 addObject:v16];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"siriCountsAll"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v18];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(ODMSiriSchemaODMSiriAggregationInterval *)self->_aggregationInterval hash];
  v4 = [(NSArray *)self->_siriCountsAlls hash]^ v3;
  return v4 ^ [(NSArray *)self->_segments hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
  v6 = [v4 aggregationInterval];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
  if (v7)
  {
    v8 = v7;
    v9 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
    v10 = [v4 aggregationInterval];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self siriCountsAlls];
  v6 = [v4 siriCountsAlls];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self siriCountsAlls];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self siriCountsAlls];
    v15 = [v4 siriCountsAlls];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self segments];
  v6 = [v4 segments];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self segments];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self segments];
    v20 = [v4 segments];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];

  if (v5)
  {
    v6 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
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

- (int)segmentsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_segments objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addSegments:(int)a3
{
  v3 = *&a3;
  segments = self->_segments;
  if (!segments)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_segments;
    self->_segments = v6;

    segments = self->_segments;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)segments addObject:v8];
}

- (void)addSiriCountsAll:(id)a3
{
  v4 = a3;
  siriCountsAlls = self->_siriCountsAlls;
  v8 = v4;
  if (!siriCountsAlls)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_siriCountsAlls;
    self->_siriCountsAlls = v6;

    v4 = v8;
    siriCountsAlls = self->_siriCountsAlls;
  }

  [(NSArray *)siriCountsAlls addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ODMSiriSchemaODMSiriCountsReportedAll;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self aggregationInterval];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODMSiriSchemaODMSiriCountsReportedAll *)self deleteAggregationInterval];
  }

  v9 = [(ODMSiriSchemaODMSiriCountsReportedAll *)self siriCountsAlls];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
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