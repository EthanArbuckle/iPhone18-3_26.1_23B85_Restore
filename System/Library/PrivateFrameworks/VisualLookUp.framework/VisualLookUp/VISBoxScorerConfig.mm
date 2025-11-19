@interface VISBoxScorerConfig
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (VISBoxScorerConfig)initWithDictionary:(id)a3;
- (VISBoxScorerConfig)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation VISBoxScorerConfig

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(VISBoxScorerConfig *)self granularity])
  {
    PBDataWriterWriteInt32Field();
  }

  [(VISBoxScorerConfig *)self xmean];
  if (v4 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  [(VISBoxScorerConfig *)self ymean];
  if (v5 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  [(VISBoxScorerConfig *)self std];
  v6 = v8;
  if (v7 != 0.0)
  {
    PBDataWriterWriteDoubleField();
    v6 = v8;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (granularity = self->_granularity, granularity == objc_msgSend(v4, "granularity")) && (xmean = self->_xmean, objc_msgSend(v4, "xmean"), xmean == v7) && (ymean = self->_ymean, objc_msgSend(v4, "ymean"), ymean == v9))
  {
    std = self->_std;
    [v4 std];
    v10 = std == v13;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  xmean = self->_xmean;
  if (xmean == 0.0)
  {
    v7 = 0;
  }

  else
  {
    if (xmean < 0.0)
    {
      xmean = -xmean;
    }

    *v2.i64 = floor(xmean + 0.5);
    v5 = (xmean - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v6), v3, v2);
    v7 = 2654435761u * *v2.i64;
    if (v5 >= 0.0)
    {
      if (v5 > 0.0)
      {
        v7 += v5;
      }
    }

    else
    {
      v7 -= fabs(v5);
    }
  }

  ymean = self->_ymean;
  if (ymean == 0.0)
  {
    v11 = 0;
  }

  else
  {
    if (ymean < 0.0)
    {
      ymean = -ymean;
    }

    *v2.i64 = floor(ymean + 0.5);
    v9 = (ymean - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v10), v3, v2);
    v11 = 2654435761u * *v2.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v11 += v9;
      }
    }

    else
    {
      v11 -= fabs(v9);
    }
  }

  std = self->_std;
  if (std == 0.0)
  {
    v15 = 0;
  }

  else
  {
    if (std < 0.0)
    {
      std = -std;
    }

    *v2.i64 = floor(std + 0.5);
    v13 = (std - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v3, v2).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v15 += v13;
      }
    }

    else
    {
      v15 -= fabs(v13);
    }
  }

  return v7 ^ v11 ^ v15 ^ (2654435761 * self->_granularity);
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_granularity)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[VISBoxScorerConfig granularity](self, "granularity")}];
    [v3 setObject:v4 forKeyedSubscript:@"granularity"];
  }

  if (self->_std != 0.0)
  {
    v5 = MEMORY[0x1E696AD98];
    [(VISBoxScorerConfig *)self std];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"std"];
  }

  if (self->_xmean != 0.0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(VISBoxScorerConfig *)self xmean];
    v8 = [v7 numberWithDouble:?];
    [v3 setObject:v8 forKeyedSubscript:@"xmean"];
  }

  if (self->_ymean != 0.0)
  {
    v9 = MEMORY[0x1E696AD98];
    [(VISBoxScorerConfig *)self ymean];
    v10 = [v9 numberWithDouble:?];
    [v3 setObject:v10 forKeyedSubscript:@"ymean"];
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(VISBoxScorerConfig *)self dictionaryRepresentation];
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

- (VISBoxScorerConfig)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(VISBoxScorerConfig *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (VISBoxScorerConfig)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VISBoxScorerConfig;
  v5 = [(VISBoxScorerConfig *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"granularity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VISBoxScorerConfig setGranularity:](v5, "setGranularity:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"xmean"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(VISBoxScorerConfig *)v5 setXmean:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"ymean"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(VISBoxScorerConfig *)v5 setYmean:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"std"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(VISBoxScorerConfig *)v5 setStd:?];
    }

    v10 = v5;
  }

  return v5;
}

@end