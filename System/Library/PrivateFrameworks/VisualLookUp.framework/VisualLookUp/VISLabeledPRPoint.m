@interface VISLabeledPRPoint
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (VISLabeledPRPoint)initWithDictionary:(id)a3;
- (VISLabeledPRPoint)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setLabel:(id)a3;
- (void)setReadable_label:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VISLabeledPRPoint

- (void)setLabel:(id)a3
{
  self->_label = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setReadable_label:(id)a3
{
  self->_readable_label = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  [(VISLabeledPRPoint *)self confidence];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISLabeledPRPoint *)self precision];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(VISLabeledPRPoint *)self recall];
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  v7 = [(VISLabeledPRPoint *)self label];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(VISLabeledPRPoint *)self readable_label];
  if (v8)
  {
    PBDataWriterWriteStringField();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  confidence = self->_confidence;
  [v4 confidence];
  if (confidence != v6)
  {
    goto LABEL_15;
  }

  precision = self->_precision;
  [v4 precision];
  if (precision != v8)
  {
    goto LABEL_15;
  }

  recall = self->_recall;
  [v4 recall];
  if (recall != v10)
  {
    goto LABEL_15;
  }

  v11 = [(VISLabeledPRPoint *)self label];
  v12 = [v4 label];
  if ((v11 != 0) == (v12 == 0))
  {
    goto LABEL_14;
  }

  v13 = [(VISLabeledPRPoint *)self label];
  if (v13)
  {
    v14 = v13;
    v15 = [(VISLabeledPRPoint *)self label];
    v16 = [v4 label];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v11 = [(VISLabeledPRPoint *)self readable_label];
  v12 = [v4 readable_label];
  if ((v11 != 0) != (v12 == 0))
  {
    v18 = [(VISLabeledPRPoint *)self readable_label];
    if (!v18)
    {

LABEL_18:
      v23 = 1;
      goto LABEL_16;
    }

    v19 = v18;
    v20 = [(VISLabeledPRPoint *)self readable_label];
    v21 = [v4 readable_label];
    v22 = [v20 isEqual:v21];

    if (v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v23 = 0;
LABEL_16:

  return v23;
}

- (unint64_t)hash
{
  confidence = self->_confidence;
  v6 = confidence < 0.0;
  if (confidence == 0.0)
  {
    v10 = 0;
  }

  else
  {
    v7 = confidence;
    if (v6)
    {
      v7 = -v7;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v9), v3, v2);
    v10 = 2654435761u * *v2.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v10 += v8;
      }
    }

    else
    {
      v10 -= fabs(v8);
    }
  }

  precision = self->_precision;
  v12 = precision < 0.0;
  if (precision == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v13 = precision;
    if (v12)
    {
      v13 = -v13;
    }

    *v2.i64 = floor(v13 + 0.5);
    v14 = (v13 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
    v16 = 2654435761u * *v2.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v16 += v14;
      }
    }

    else
    {
      v16 -= fabs(v14);
    }
  }

  recall = self->_recall;
  v18 = recall < 0.0;
  if (recall == 0.0)
  {
    v22 = 0;
  }

  else
  {
    v19 = recall;
    if (v18)
    {
      v19 = -v19;
    }

    *v2.i64 = floor(v19 + 0.5);
    v20 = (v19 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v22 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v3, v2).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v22 += v20;
      }
    }

    else
    {
      v22 -= fabs(v20);
    }
  }

  v23 = v16 ^ v10 ^ v22 ^ [(NSString *)self->_label hash];
  return v23 ^ [(NSString *)self->_readable_label hash];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_confidence != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(VISLabeledPRPoint *)self confidence];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"confidence"];
  }

  if (self->_label)
  {
    v6 = [(VISLabeledPRPoint *)self label];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"label"];
  }

  if (self->_precision != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(VISLabeledPRPoint *)self precision];
    v9 = [v8 numberWithFloat:?];
    [v3 setObject:v9 forKeyedSubscript:@"precision"];
  }

  if (self->_readable_label)
  {
    v10 = [(VISLabeledPRPoint *)self readable_label];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"readableLabel"];
  }

  if (self->_recall != 0.0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(VISLabeledPRPoint *)self recall];
    v13 = [v12 numberWithFloat:?];
    [v3 setObject:v13 forKeyedSubscript:@"recall"];
  }

  return v3;
}

- (NSData)jsonData
{
  v2 = [(VISLabeledPRPoint *)self dictionaryRepresentation];
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

- (VISLabeledPRPoint)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(VISLabeledPRPoint *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (VISLabeledPRPoint)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VISLabeledPRPoint;
  v5 = [(VISLabeledPRPoint *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"confidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(VISLabeledPRPoint *)v5 setConfidence:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"precision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(VISLabeledPRPoint *)v5 setPrecision:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"recall"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(VISLabeledPRPoint *)v5 setRecall:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(VISLabeledPRPoint *)v5 setLabel:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"readableLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(VISLabeledPRPoint *)v5 setReadable_label:v12];
    }

    v13 = v5;
  }

  return v5;
}

@end