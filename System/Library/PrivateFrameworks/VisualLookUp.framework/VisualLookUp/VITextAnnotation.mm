@interface VITextAnnotation
- (BOOL)isEqual:(id)equal;
- (CGRect)normalizedBoundingBox;
- (VITextAnnotation)initWithText:(id)text normalizedBoundingBox:(CGRect)box confidence:(float)confidence;
- (unint64_t)hash;
@end

@implementation VITextAnnotation

- (VITextAnnotation)initWithText:(id)text normalizedBoundingBox:(CGRect)box confidence:(float)confidence
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  textCopy = text;
  v16.receiver = self;
  v16.super_class = VITextAnnotation;
  v12 = [(VITextAnnotation *)&v16 init];
  if (v12)
  {
    v13 = [textCopy copy];
    text = v12->_text;
    v12->_text = v13;

    v12->_normalizedBoundingBox.origin.x = x;
    v12->_normalizedBoundingBox.origin.y = y;
    v12->_normalizedBoundingBox.size.width = width;
    v12->_normalizedBoundingBox.size.height = height;
    v12->_confidence = confidence;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    confidence = self->_confidence;
    [(VITextAnnotation *)v6 confidence];
    if (confidence == v8 && ([(VITextAnnotation *)v6 normalizedBoundingBox], v17.origin.x = v9, v17.origin.y = v10, v17.size.width = v11, v17.size.height = v12, CGRectEqualToRect(self->_normalizedBoundingBox, v17)))
    {
      text = self->_text;
      text = [(VITextAnnotation *)v6 text];
      IsEqual = VIObjectIsEqual(text, text);
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v2.i32 = floorf(confidence + 0.5);
  v8 = (confidence - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = vbslq_s8(v9, v3, v2);
  v11 = 2654435761u * *v10.i32;
  v12 = v11 + v8;
  if (v8 <= 0.0)
  {
    v12 = 2654435761u * *v10.i32;
  }

  v13 = v11 - fabsf(v8);
  if (v8 >= 0.0)
  {
    v13 = v12;
  }

  x = self->_normalizedBoundingBox.origin.x;
  y = self->_normalizedBoundingBox.origin.y;
  width = self->_normalizedBoundingBox.size.width;
  height = self->_normalizedBoundingBox.size.height;
  v18 = -x;
  if (x >= 0.0)
  {
    v18 = self->_normalizedBoundingBox.origin.x;
  }

  *v5.i64 = floor(v18 + 0.5);
  v19 = (v18 - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v21 = vnegq_f64(v20);
  v22 = vbslq_s8(v21, v6, v5);
  v23 = 2654435761u * *v22.i64;
  v24 = v23 + v19;
  if (v19 <= 0.0)
  {
    v24 = 2654435761u * *v22.i64;
  }

  v25 = v23 - fabs(v19);
  if (v19 >= 0.0)
  {
    v25 = v24;
  }

  if (y < 0.0)
  {
    y = -y;
  }

  *v22.i64 = floor(y + 0.5);
  v26 = (y - *v22.i64) * 1.84467441e19;
  *v6.i64 = *v22.i64 - trunc(*v22.i64 * 5.42101086e-20) * 1.84467441e19;
  v29 = vbslq_s8(v21, v6, v22);
  v27 = 2654435761u * *v29.i64;
  v28 = v27 + v26;
  *v29.i64 = fabs(v26);
  if (v26 <= 0.0)
  {
    v28 = v27;
  }

  v30 = v27 - *v29.i64;
  if (v26 >= 0.0)
  {
    v30 = v28;
  }

  if (width < 0.0)
  {
    width = -width;
  }

  *v4.i64 = floor(width + 0.5);
  v31 = (width - *v4.i64) * 1.84467441e19;
  *v29.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v4.i64[0] = vbslq_s8(v21, v29, v4).i64[0];
  v32 = 2654435761u * *v4.i64;
  v33 = v32 + v31;
  if (v31 <= 0.0)
  {
    v33 = 2654435761u * *v4.i64;
  }

  v34 = v32 - fabs(v31);
  if (v31 >= 0.0)
  {
    v34 = v33;
  }

  if (height < 0.0)
  {
    height = -height;
  }

  *v10.i64 = floor(height + 0.5);
  v35 = (height - *v10.i64) * 1.84467441e19;
  *v9.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.i64[0] = vbslq_s8(v21, v9, v10).i64[0];
  v36 = 2654435761u * *v10.i64;
  v37 = v36 + v35;
  if (v35 <= 0.0)
  {
    v37 = 2654435761u * *v10.i64;
  }

  v38 = v36 - fabs(v35);
  if (v35 >= 0.0)
  {
    v38 = v37;
  }

  return v25 ^ v13 ^ v30 ^ v34 ^ v38;
}

- (CGRect)normalizedBoundingBox
{
  x = self->_normalizedBoundingBox.origin.x;
  y = self->_normalizedBoundingBox.origin.y;
  width = self->_normalizedBoundingBox.size.width;
  height = self->_normalizedBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end