@interface MHSchemaMHUserEngagementAccumulatedAggregationStats
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHUserEngagementAccumulatedAggregationStats)initWithDictionary:(id)dictionary;
- (MHSchemaMHUserEngagementAccumulatedAggregationStats)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAggregationStats:(id)stats;
- (void)setHasIntendedRequestRatio:(BOOL)ratio;
- (void)setHasNumberOfDaysAggregation:(BOOL)aggregation;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHUserEngagementAccumulatedAggregationStats

- (MHSchemaMHUserEngagementAccumulatedAggregationStats)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = MHSchemaMHUserEngagementAccumulatedAggregationStats;
  v5 = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"aggregationStartTimestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)v5 setAggregationStartTimestamp:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"numberOfDaysAggregation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHUserEngagementAccumulatedAggregationStats setNumberOfDaysAggregation:](v5, "setNumberOfDaysAggregation:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"aggregationStats"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v7;
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[MHSchemaMHUserEngagementAggregatedStats alloc] initWithDictionary:v14];
              [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)v5 addAggregationStats:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v11);
      }

      v7 = v21;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"cohortType", v21, v22, v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)v5 setCohortType:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"intendedRequestRatio"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 doubleValue];
      [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)v5 setIntendedRequestRatio:?];
    }

    v19 = v5;
  }

  return v5;
}

- (MHSchemaMHUserEngagementAccumulatedAggregationStats)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = MEMORY[0x1E696AD98];
    [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self aggregationStartTimestamp];
    v5 = [v4 numberWithDouble:?];
    [dictionary setObject:v5 forKeyedSubscript:@"aggregationStartTimestamp"];
  }

  if ([(NSArray *)self->_aggregationStats count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->_aggregationStats;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"aggregationStats"];
  }

  if (self->_cohortType)
  {
    cohortType = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self cohortType];
    v15 = [cohortType copy];
    [dictionary setObject:v15 forKeyedSubscript:@"cohortType"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v17 = MEMORY[0x1E696AD98];
    [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self intendedRequestRatio];
    v18 = [v17 numberWithDouble:?];
    [dictionary setObject:v18 forKeyedSubscript:@"intendedRequestRatio"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[MHSchemaMHUserEngagementAccumulatedAggregationStats numberOfDaysAggregation](self, "numberOfDaysAggregation")}];
    [dictionary setObject:v19 forKeyedSubscript:@"numberOfDaysAggregation"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    aggregationStartTimestamp = self->_aggregationStartTimestamp;
    if (aggregationStartTimestamp < 0.0)
    {
      aggregationStartTimestamp = -aggregationStartTimestamp;
    }

    *v2.i64 = floor(aggregationStartTimestamp + 0.5);
    v7 = (aggregationStartTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_numberOfDaysAggregation;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSArray *)self->_aggregationStats hash];
  v11 = [(NSString *)self->_cohortType hash];
  if ((*&self->_has & 4) != 0)
  {
    intendedRequestRatio = self->_intendedRequestRatio;
    if (intendedRequestRatio < 0.0)
    {
      intendedRequestRatio = -intendedRequestRatio;
    }

    *v12.i64 = floor(intendedRequestRatio + 0.5);
    v16 = (intendedRequestRatio - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v13, v12).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v9 ^ v5 ^ v10 ^ v11 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  v6 = equalCopy[48];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    aggregationStartTimestamp = self->_aggregationStartTimestamp;
    [equalCopy aggregationStartTimestamp];
    if (aggregationStartTimestamp != v8)
    {
      goto LABEL_19;
    }

    has = self->_has;
    v6 = equalCopy[48];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v9)
  {
    numberOfDaysAggregation = self->_numberOfDaysAggregation;
    if (numberOfDaysAggregation != [equalCopy numberOfDaysAggregation])
    {
      goto LABEL_19;
    }
  }

  aggregationStats = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self aggregationStats];
  aggregationStats2 = [equalCopy aggregationStats];
  if ((aggregationStats != 0) == (aggregationStats2 == 0))
  {
    goto LABEL_18;
  }

  aggregationStats3 = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self aggregationStats];
  if (aggregationStats3)
  {
    v14 = aggregationStats3;
    aggregationStats4 = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self aggregationStats];
    aggregationStats5 = [equalCopy aggregationStats];
    v17 = [aggregationStats4 isEqual:aggregationStats5];

    if (!v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  aggregationStats = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self cohortType];
  aggregationStats2 = [equalCopy cohortType];
  if ((aggregationStats != 0) == (aggregationStats2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  cohortType = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self cohortType];
  if (cohortType)
  {
    v19 = cohortType;
    cohortType2 = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self cohortType];
    cohortType3 = [equalCopy cohortType];
    v22 = [cohortType2 isEqual:cohortType3];

    if (!v22)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v25 = (*&self->_has >> 2) & 1;
  if (v25 == ((equalCopy[48] >> 2) & 1))
  {
    if (!v25 || (intendedRequestRatio = self->_intendedRequestRatio, [equalCopy intendedRequestRatio], intendedRequestRatio == v27))
    {
      v23 = 1;
      goto LABEL_20;
    }
  }

LABEL_19:
  v23 = 0;
LABEL_20:

  return v23;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_aggregationStats;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  cohortType = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self cohortType];

  if (cohortType)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (void)setHasIntendedRequestRatio:(BOOL)ratio
{
  if (ratio)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addAggregationStats:(id)stats
{
  statsCopy = stats;
  aggregationStats = self->_aggregationStats;
  v8 = statsCopy;
  if (!aggregationStats)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_aggregationStats;
    self->_aggregationStats = array;

    statsCopy = v8;
    aggregationStats = self->_aggregationStats;
  }

  [(NSArray *)aggregationStats addObject:statsCopy];
}

- (void)setHasNumberOfDaysAggregation:(BOOL)aggregation
{
  if (aggregation)
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
  v9.receiver = self;
  v9.super_class = MHSchemaMHUserEngagementAccumulatedAggregationStats;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self aggregationStats:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(MHSchemaMHUserEngagementAccumulatedAggregationStats *)self setAggregationStats:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end