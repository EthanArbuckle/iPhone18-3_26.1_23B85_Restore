@interface USPSchemaUSPMetric
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USPSchemaUSPMetric)initWithDictionary:(id)a3;
- (USPSchemaUSPMetric)initWithJSON:(id)a3;
- (double)iterationValuesAtIndex:(unint64_t)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addIterationValues:(double)a3;
- (void)writeTo:(id)a3;
@end

@implementation USPSchemaUSPMetric

- (USPSchemaUSPMetric)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = USPSchemaUSPMetric;
  v5 = [(USPSchemaUSPMetric *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(USPSchemaUSPMetric *)v5 setName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"unit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(USPSchemaUSPMetric *)v5 setUnit:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(USPSchemaUSPMetric *)v5 setValue:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"iterationValues"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v8;
      v21 = v6;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        do
        {
          v16 = 0;
          do
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * v16);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v17 doubleValue];
              [(USPSchemaUSPMetric *)v5 addIterationValues:?];
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v14);
      }

      v8 = v20;
      v6 = v21;
    }

    v18 = v5;
  }

  return v5;
}

- (USPSchemaUSPMetric)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USPSchemaUSPMetric *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USPSchemaUSPMetric *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_iterationValues count])
  {
    v4 = [(USPSchemaUSPMetric *)self iterationValues];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"iterationValues"];
  }

  if (self->_name)
  {
    v6 = [(USPSchemaUSPMetric *)self name];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"name"];
  }

  if (self->_unit)
  {
    v8 = [(USPSchemaUSPMetric *)self unit];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"unit"];
  }

  if (*&self->_has)
  {
    v10 = MEMORY[0x1E696AD98];
    [(USPSchemaUSPMetric *)self value];
    v11 = [v10 numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"value"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_unit hash];
  if (*&self->_has)
  {
    value = self->_value;
    if (value < 0.0)
    {
      value = -value;
    }

    *v5.i64 = floor(value + 0.5);
    v9 = (value - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7 ^ [(NSArray *)self->_iterationValues hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(USPSchemaUSPMetric *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(USPSchemaUSPMetric *)self name];
  if (v7)
  {
    v8 = v7;
    v9 = [(USPSchemaUSPMetric *)self name];
    v10 = [v4 name];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(USPSchemaUSPMetric *)self unit];
  v6 = [v4 unit];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v12 = [(USPSchemaUSPMetric *)self unit];
  if (v12)
  {
    v13 = v12;
    v14 = [(USPSchemaUSPMetric *)self unit];
    v15 = [v4 unit];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    value = self->_value;
    [v4 value];
    if (value != v18)
    {
      goto LABEL_20;
    }
  }

  v5 = [(USPSchemaUSPMetric *)self iterationValues];
  v6 = [v4 iterationValues];
  if ((v5 != 0) != (v6 == 0))
  {
    v19 = [(USPSchemaUSPMetric *)self iterationValues];
    if (!v19)
    {

LABEL_23:
      v24 = 1;
      goto LABEL_21;
    }

    v20 = v19;
    v21 = [(USPSchemaUSPMetric *)self iterationValues];
    v22 = [v4 iterationValues];
    v23 = [v21 isEqual:v22];

    if (v23)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v24 = 0;
LABEL_21:

  return v24;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(USPSchemaUSPMetric *)self name];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(USPSchemaUSPMetric *)self unit];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_iterationValues;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (double)iterationValuesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_iterationValues objectAtIndexedSubscript:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)addIterationValues:(double)a3
{
  iterationValues = self->_iterationValues;
  if (!iterationValues)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_iterationValues;
    self->_iterationValues = v6;

    iterationValues = self->_iterationValues;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(NSArray *)iterationValues addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end