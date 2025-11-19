@interface VIRegionalAnnotation
- (BOOL)isEqual:(id)a3;
- (CGRect)normalizedBoundingBox;
- (VIRegionalAnnotation)initWithLabel:(id)a3 normalizedBoundingBox:(CGRect)a4 confidence:(float)a5;
- (unint64_t)hash;
@end

@implementation VIRegionalAnnotation

- (VIRegionalAnnotation)initWithLabel:(id)a3 normalizedBoundingBox:(CGRect)a4 confidence:(float)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v16.receiver = self;
  v16.super_class = VIRegionalAnnotation;
  v12 = [(VIRegionalAnnotation *)&v16 init];
  if (v12)
  {
    v13 = [v11 copy];
    label = v12->_label;
    v12->_label = v13;

    v12->_normalizedBoundingBox.origin.x = x;
    v12->_normalizedBoundingBox.origin.y = y;
    v12->_normalizedBoundingBox.size.width = width;
    v12->_normalizedBoundingBox.size.height = height;
    v12->_confidence = a5;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    confidence = self->_confidence;
    [(VIRegionalAnnotation *)v6 confidence];
    if (confidence == v8 && ([(VIRegionalAnnotation *)v6 normalizedBoundingBox], v17.origin.x = v9, v17.origin.y = v10, v17.size.width = v11, v17.size.height = v12, CGRectEqualToRect(self->_normalizedBoundingBox, v17)))
    {
      label = self->_label;
      v14 = [(VIRegionalAnnotation *)v6 label];
      IsEqual = VIObjectIsEqual(label, v14);
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
  v9 = (confidence - *v2.i32) * 1.8447e19;
  *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v11 = vbslq_s8(v10, v3, v2);
  v12 = 2654435761u * *v11.i32;
  v13 = v12 + v9;
  if (v9 <= 0.0)
  {
    v13 = 2654435761u * *v11.i32;
  }

  v14 = v12 - fabsf(v9);
  if (v9 < 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  x = self->_normalizedBoundingBox.origin.x;
  y = self->_normalizedBoundingBox.origin.y;
  width = self->_normalizedBoundingBox.size.width;
  height = self->_normalizedBoundingBox.size.height;
  v20 = -x;
  if (x >= 0.0)
  {
    v20 = self->_normalizedBoundingBox.origin.x;
  }

  *v5.i64 = floor(v20 + 0.5);
  v21 = (v20 - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v22.f64[0] = NAN;
  v22.f64[1] = NAN;
  v23 = vnegq_f64(v22);
  v24 = vbslq_s8(v23, v6, v5);
  v25 = 2654435761u * *v24.i64;
  v26 = v25 + v21;
  if (v21 <= 0.0)
  {
    v26 = 2654435761u * *v24.i64;
  }

  v27 = v25 - fabs(v21);
  if (v21 < 0.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  if (y < 0.0)
  {
    y = -y;
  }

  *v24.i64 = floor(y + 0.5);
  v29 = y - *v24.i64;
  *v7.i64 = *v24.i64 - trunc(*v24.i64 * 5.42101086e-20) * 1.84467441e19;
  v30 = vbslq_s8(v23, v7, v24);
  v31 = v29 * 1.84467441e19;
  v32 = 2654435761u * *v30.i64;
  v33 = v32 + v31;
  if (v31 <= 0.0)
  {
    v33 = 2654435761u * *v30.i64;
  }

  v34 = v32 - fabs(v31);
  if (v31 < 0.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = v33;
  }

  if (width < 0.0)
  {
    width = -width;
  }

  *v4.i64 = floor(width + 0.5);
  v36 = (width - *v4.i64) * 1.84467441e19;
  *v30.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v4.i64[0] = vbslq_s8(v23, v30, v4).i64[0];
  v37 = 2654435761u * *v4.i64;
  v38 = v37 + v36;
  if (v36 <= 0.0)
  {
    v38 = 2654435761u * *v4.i64;
  }

  v39 = v37 - fabs(v36);
  if (v36 < 0.0)
  {
    v40 = v39;
  }

  else
  {
    v40 = v38;
  }

  if (height < 0.0)
  {
    height = -height;
  }

  *v11.i64 = floor(height + 0.5);
  v41 = (height - *v11.i64) * 1.84467441e19;
  *v10.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.i64[0] = vbslq_s8(v23, v10, v11).i64[0];
  v42 = 2654435761u * *v11.i64;
  v43 = v42 + v41;
  if (v41 <= 0.0)
  {
    v43 = 2654435761u * *v11.i64;
  }

  v44 = v42 - fabs(v41);
  if (v41 < 0.0)
  {
    v45 = v44;
  }

  else
  {
    v45 = v43;
  }

  return v28 ^ v15 ^ v35 ^ v40 ^ v45 ^ [(NSString *)self->_label hash];
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