@interface SISchemaDeviceDynamicContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaDeviceDynamicContext)initWithDictionary:(id)a3;
- (SISchemaDeviceDynamicContext)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaDeviceDynamicContext

- (SISchemaDeviceDynamicContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaDeviceDynamicContext;
  v5 = [(SISchemaDeviceDynamicContext *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"location"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaLocation alloc] initWithDictionary:v6];
      [(SISchemaDeviceDynamicContext *)v5 setLocation:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"countryCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaDeviceDynamicContext *)v5 setCountryCode:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"timeIntervalSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(SISchemaDeviceDynamicContext *)v5 setTimeIntervalSince1970:?];
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaDeviceDynamicContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaDeviceDynamicContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaDeviceDynamicContext *)self dictionaryRepresentation];
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
  if (self->_countryCode)
  {
    v4 = [(SISchemaDeviceDynamicContext *)self countryCode];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"countryCode"];
  }

  if (self->_location)
  {
    v6 = [(SISchemaDeviceDynamicContext *)self location];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"location"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"location"];
    }
  }

  if (*&self->_has)
  {
    v9 = MEMORY[0x1E696AD98];
    [(SISchemaDeviceDynamicContext *)self timeIntervalSince1970];
    v10 = [v9 numberWithDouble:?];
    [v3 setObject:v10 forKeyedSubscript:@"timeIntervalSince1970"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaLocation *)self->_location hash];
  v4 = [(NSString *)self->_countryCode hash];
  if (*&self->_has)
  {
    timeIntervalSince1970 = self->_timeIntervalSince1970;
    if (timeIntervalSince1970 < 0.0)
    {
      timeIntervalSince1970 = -timeIntervalSince1970;
    }

    *v5.i64 = floor(timeIntervalSince1970 + 0.5);
    v9 = (timeIntervalSince1970 - *v5.i64) * 1.84467441e19;
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

  return v4 ^ v3 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SISchemaDeviceDynamicContext *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(SISchemaDeviceDynamicContext *)self location];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaDeviceDynamicContext *)self location];
    v10 = [v4 location];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDeviceDynamicContext *)self countryCode];
  v6 = [v4 countryCode];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(SISchemaDeviceDynamicContext *)self countryCode];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaDeviceDynamicContext *)self countryCode];
    v15 = [v4 countryCode];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (timeIntervalSince1970 = self->_timeIntervalSince1970, [v4 timeIntervalSince1970], timeIntervalSince1970 == v20))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(SISchemaDeviceDynamicContext *)self location];

  if (v4)
  {
    v5 = [(SISchemaDeviceDynamicContext *)self location];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaDeviceDynamicContext *)self countryCode];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = SISchemaDeviceDynamicContext;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaDeviceDynamicContext *)self location:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(SISchemaDeviceDynamicContext *)self deleteLocation];
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