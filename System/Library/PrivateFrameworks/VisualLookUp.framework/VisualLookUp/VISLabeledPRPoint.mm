@interface VISLabeledPRPoint
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (VISLabeledPRPoint)initWithDictionary:(id)dictionary;
- (VISLabeledPRPoint)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setLabel:(id)label;
- (void)setReadable_label:(id)readable_label;
- (void)writeTo:(id)to;
@end

@implementation VISLabeledPRPoint

- (void)setLabel:(id)label
{
  self->_label = [label copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setReadable_label:(id)readable_label
{
  self->_readable_label = [readable_label copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  label = [(VISLabeledPRPoint *)self label];
  if (label)
  {
    PBDataWriterWriteStringField();
  }

  readable_label = [(VISLabeledPRPoint *)self readable_label];
  if (readable_label)
  {
    PBDataWriterWriteStringField();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  confidence = self->_confidence;
  [equalCopy confidence];
  if (confidence != v6)
  {
    goto LABEL_15;
  }

  precision = self->_precision;
  [equalCopy precision];
  if (precision != v8)
  {
    goto LABEL_15;
  }

  recall = self->_recall;
  [equalCopy recall];
  if (recall != v10)
  {
    goto LABEL_15;
  }

  label = [(VISLabeledPRPoint *)self label];
  label2 = [equalCopy label];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_14;
  }

  label3 = [(VISLabeledPRPoint *)self label];
  if (label3)
  {
    v14 = label3;
    label4 = [(VISLabeledPRPoint *)self label];
    label5 = [equalCopy label];
    v17 = [label4 isEqual:label5];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  label = [(VISLabeledPRPoint *)self readable_label];
  label2 = [equalCopy readable_label];
  if ((label != 0) != (label2 == 0))
  {
    readable_label = [(VISLabeledPRPoint *)self readable_label];
    if (!readable_label)
    {

LABEL_18:
      v23 = 1;
      goto LABEL_16;
    }

    v19 = readable_label;
    readable_label2 = [(VISLabeledPRPoint *)self readable_label];
    readable_label3 = [equalCopy readable_label];
    v22 = [readable_label2 isEqual:readable_label3];

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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_confidence != 0.0)
  {
    v4 = MEMORY[0x1E696AD98];
    [(VISLabeledPRPoint *)self confidence];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"confidence"];
  }

  if (self->_label)
  {
    label = [(VISLabeledPRPoint *)self label];
    v7 = [label copy];
    [dictionary setObject:v7 forKeyedSubscript:@"label"];
  }

  if (self->_precision != 0.0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(VISLabeledPRPoint *)self precision];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"precision"];
  }

  if (self->_readable_label)
  {
    readable_label = [(VISLabeledPRPoint *)self readable_label];
    v11 = [readable_label copy];
    [dictionary setObject:v11 forKeyedSubscript:@"readableLabel"];
  }

  if (self->_recall != 0.0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(VISLabeledPRPoint *)self recall];
    v13 = [v12 numberWithFloat:?];
    [dictionary setObject:v13 forKeyedSubscript:@"recall"];
  }

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(VISLabeledPRPoint *)self dictionaryRepresentation];
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

- (VISLabeledPRPoint)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(VISLabeledPRPoint *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (VISLabeledPRPoint)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = VISLabeledPRPoint;
  v5 = [(VISLabeledPRPoint *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(VISLabeledPRPoint *)v5 setConfidence:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"precision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(VISLabeledPRPoint *)v5 setPrecision:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"recall"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(VISLabeledPRPoint *)v5 setRecall:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(VISLabeledPRPoint *)v5 setLabel:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"readableLabel"];
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