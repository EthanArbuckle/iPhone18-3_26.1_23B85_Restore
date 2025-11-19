@interface VISOperatingPointSelectors
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (VISOperatingPointSelectors)initWithDictionary:(id)a3;
- (VISOperatingPointSelectors)initWithJSON:(id)a3;
- (float)confidence;
- (float)f_beta;
- (float)precision;
- (float)recall;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setConfidence:(float)a3;
- (void)setF_beta:(float)a3;
- (void)setPrecision:(float)a3;
- (void)setRecall:(float)a3;
- (void)writeTo:(id)a3;
@end

@implementation VISOperatingPointSelectors

- (void)setConfidence:(float)a3
{
  self->_precision = 0.0;
  self->_recall = 0.0;
  self->_f_beta = 0.0;
  self->_whichSelectors = 1;
  self->_confidence = a3;
}

- (float)confidence
{
  result = 0.0;
  if (self->_whichSelectors == 1)
  {
    return self->_confidence;
  }

  return result;
}

- (void)setPrecision:(float)a3
{
  self->_confidence = 0.0;
  self->_recall = 0.0;
  self->_f_beta = 0.0;
  self->_whichSelectors = 2;
  self->_precision = a3;
}

- (float)precision
{
  result = 0.0;
  if (self->_whichSelectors == 2)
  {
    return self->_precision;
  }

  return result;
}

- (void)setRecall:(float)a3
{
  self->_confidence = 0.0;
  self->_precision = 0.0;
  self->_f_beta = 0.0;
  self->_whichSelectors = 3;
  self->_recall = a3;
}

- (float)recall
{
  result = 0.0;
  if (self->_whichSelectors == 3)
  {
    return self->_recall;
  }

  return result;
}

- (void)setF_beta:(float)a3
{
  self->_confidence = 0.0;
  self->_precision = 0.0;
  self->_recall = 0.0;
  self->_whichSelectors = 4;
  self->_f_beta = a3;
}

- (float)f_beta
{
  result = 0.0;
  if (self->_whichSelectors == 4)
  {
    return self->_f_beta;
  }

  return result;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  [(VISOperatingPointSelectors *)self confidence];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISOperatingPointSelectors *)self precision];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISOperatingPointSelectors *)self recall];
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISOperatingPointSelectors *)self f_beta];
  v7 = v9;
  if (v8 != 0.0)
  {
    PBDataWriterWriteFloatField();
    v7 = v9;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (confidence = self->_confidence, objc_msgSend(v4, "confidence"), confidence == v6) && (precision = self->_precision, objc_msgSend(v4, "precision"), precision == v8) && (recall = self->_recall, objc_msgSend(v4, "recall"), recall == v10))
  {
    f_beta = self->_f_beta;
    [v4 f_beta];
    v11 = f_beta == v14;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  confidence = self->_confidence;
  v5 = confidence < 0.0;
  if (confidence == 0.0)
  {
    v9 = 0;
  }

  else
  {
    v6 = confidence;
    if (v5)
    {
      v6 = -v6;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v9 += v7;
      }
    }

    else
    {
      v9 -= fabs(v7);
    }
  }

  precision = self->_precision;
  v11 = precision < 0.0;
  if (precision == 0.0)
  {
    v15 = 0;
  }

  else
  {
    v12 = precision;
    if (v11)
    {
      v12 = -v12;
    }

    *v2.i64 = floor(v12 + 0.5);
    v13 = (v12 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v14), v3, v2);
    v15 = 2654435761u * *v2.i64;
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

  recall = self->_recall;
  v17 = recall < 0.0;
  if (recall == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v18 = recall;
    if (v17)
    {
      v18 = -v18;
    }

    *v2.i64 = floor(v18 + 0.5);
    v19 = (v18 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v20), v3, v2);
    v21 = 2654435761u * *v2.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v21 += v19;
      }
    }

    else
    {
      v21 -= fabs(v19);
    }
  }

  f_beta = self->_f_beta;
  v23 = f_beta < 0.0;
  if (f_beta == 0.0)
  {
    v27 = 0;
  }

  else
  {
    v24 = f_beta;
    if (v23)
    {
      v24 = -v24;
    }

    *v2.i64 = floor(v24 + 0.5);
    v25 = (v24 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v27 = 2654435761u * *vbslq_s8(vnegq_f64(v26), v3, v2).i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v27 += v25;
      }
    }

    else
    {
      v27 -= fabs(v25);
    }
  }

  return v15 ^ v9 ^ v21 ^ v27;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_confidence != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(VISOperatingPointSelectors *)self confidence];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"confidence"];
  }

  if (self->_f_beta != 0.0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(VISOperatingPointSelectors *)self f_beta];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"fBeta"];
  }

  if (self->_precision != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(VISOperatingPointSelectors *)self precision];
    v9 = [v8 numberWithFloat:?];
    [v3 setObject:v9 forKeyedSubscript:@"precision"];
  }

  if (self->_recall != 0.0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(VISOperatingPointSelectors *)self recall];
    v11 = [v10 numberWithFloat:?];
    [v3 setObject:v11 forKeyedSubscript:@"recall"];
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(VISOperatingPointSelectors *)self dictionaryRepresentation];
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

- (VISOperatingPointSelectors)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(VISOperatingPointSelectors *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (VISOperatingPointSelectors)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VISOperatingPointSelectors;
  v5 = [(VISOperatingPointSelectors *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"confidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(VISOperatingPointSelectors *)v5 setConfidence:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"precision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(VISOperatingPointSelectors *)v5 setPrecision:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"recall"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(VISOperatingPointSelectors *)v5 setRecall:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"f_beta"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(VISOperatingPointSelectors *)v5 setF_beta:?];
    }

    v10 = v5;
  }

  return v5;
}

@end