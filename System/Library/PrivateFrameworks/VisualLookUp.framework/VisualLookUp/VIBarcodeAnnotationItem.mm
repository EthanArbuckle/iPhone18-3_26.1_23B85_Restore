@interface VIBarcodeAnnotationItem
+ (id)annotationItemFromObservation:(id)observation;
- (BOOL)isEqual:(id)equal;
- (CGRect)normalizedBoundingBox;
- (VIBarcodeAnnotationItem)initWithSymbology:(id)symbology payloadStringValue:(id)value normalizedBoundingBox:(CGRect)box confidence:(float)confidence;
- (unint64_t)hash;
@end

@implementation VIBarcodeAnnotationItem

- (VIBarcodeAnnotationItem)initWithSymbology:(id)symbology payloadStringValue:(id)value normalizedBoundingBox:(CGRect)box confidence:(float)confidence
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  symbologyCopy = symbology;
  valueCopy = value;
  v21.receiver = self;
  v21.super_class = VIBarcodeAnnotationItem;
  v15 = [(VIBarcodeAnnotationItem *)&v21 init];
  if (v15)
  {
    v16 = [symbologyCopy copy];
    symbology = v15->_symbology;
    v15->_symbology = v16;

    v18 = [valueCopy copy];
    payloadStringValue = v15->_payloadStringValue;
    v15->_payloadStringValue = v18;

    v15->_normalizedBoundingBox.origin.x = x;
    v15->_normalizedBoundingBox.origin.y = y;
    v15->_normalizedBoundingBox.size.width = width;
    v15->_normalizedBoundingBox.size.height = height;
    v15->_confidence = confidence;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
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
    symbology = self->_symbology;
    symbology = [(VIBarcodeAnnotationItem *)v6 symbology];
    if (VIObjectIsEqual(symbology, symbology))
    {
      payloadStringValue = self->_payloadStringValue;
      payloadStringValue = [(VIBarcodeAnnotationItem *)v6 payloadStringValue];
      if (VIObjectIsEqual(payloadStringValue, payloadStringValue) && ([(VIBarcodeAnnotationItem *)v6 normalizedBoundingBox], v19.origin.x = v11, v19.origin.y = v12, v19.size.width = v13, v19.size.height = v14, CGRectEqualToRect(self->_normalizedBoundingBox, v19)))
      {
        confidence = self->_confidence;
        [(VIBarcodeAnnotationItem *)v6 confidence];
        v17 = confidence == v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_symbology hash];
  v4 = [(NSString *)self->_payloadStringValue hash];
  v9.i64[0] = *&self->_normalizedBoundingBox.origin.x;
  v10.i64[0] = *&self->_normalizedBoundingBox.origin.y;
  x = -*v9.i64;
  if (*v9.i64 >= 0.0)
  {
    x = self->_normalizedBoundingBox.origin.x;
  }

  *v5.i64 = floor(x + 0.5);
  v12 = x - *v5.i64;
  *v8.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = vnegq_f64(v13);
  v8.i64[0] = vbslq_s8(v14, v8, v5).i64[0];
  width = self->_normalizedBoundingBox.size.width;
  height = self->_normalizedBoundingBox.size.height;
  v17 = v12 * 1.84467441e19;
  v18 = 2654435761u * *v8.i64;
  v19 = v18 + v17;
  if (v17 <= 0.0)
  {
    v19 = 2654435761u * *v8.i64;
  }

  v20 = v18 - fabs(v17);
  if (v17 >= 0.0)
  {
    v20 = v19;
  }

  if (*v10.i64 < 0.0)
  {
    *v10.i64 = -*v10.i64;
  }

  *v6.i64 = floor(*v10.i64 + 0.5);
  v21 = (*v10.i64 - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v22 = vbslq_s8(v14, v7, v6);
  v23 = 2654435761u * *v22.i64;
  v24 = v23 + v21;
  if (v21 <= 0.0)
  {
    v24 = 2654435761u * *v22.i64;
  }

  v25 = v23 - fabs(v21);
  if (v21 >= 0.0)
  {
    v25 = v24;
  }

  v26 = -width;
  if (width >= 0.0)
  {
    v26 = self->_normalizedBoundingBox.size.width;
  }

  *v22.i64 = floor(v26 + 0.5);
  v27 = (v26 - *v22.i64) * 1.84467441e19;
  *v7.i64 = *v22.i64 - trunc(*v22.i64 * 5.42101086e-20) * 1.84467441e19;
  v22.i64[0] = vbslq_s8(v14, v7, v22).i64[0];
  v28 = 2654435761u * *v22.i64;
  v29 = v28 + v27;
  if (v27 <= 0.0)
  {
    v29 = 2654435761u * *v22.i64;
  }

  v30 = v28 - fabs(v27);
  if (v27 >= 0.0)
  {
    v30 = v29;
  }

  if (height < 0.0)
  {
    height = -height;
  }

  *v9.i64 = floor(height + 0.5);
  *v5.i64 = (height - *v9.i64) * 1.84467441e19;
  *v10.i64 = *v9.i64 - trunc(*v9.i64 * 5.42101086e-20) * 1.84467441e19;
  v31 = 2654435761u * *vbslq_s8(v14, v10, v9).i64;
  v32 = v31 + *v5.i64;
  v33 = fabs(*v5.i64);
  if (*v5.i64 <= 0.0)
  {
    v32 = v31;
  }

  v34 = v31 - v33;
  if (*v5.i64 >= 0.0)
  {
    v34 = v32;
  }

  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v14.i32 = floorf(confidence + 0.5);
  v36 = (confidence - *v14.i32) * 1.8447e19;
  *v5.i32 = *v14.i32 - (truncf(*v14.i32 * 5.421e-20) * 1.8447e19);
  v37.i64[0] = 0x8000000080000000;
  v37.i64[1] = 0x8000000080000000;
  v14.i32[0] = vbslq_s8(v37, v5, v14).i32[0];
  v38 = 2654435761u * *v14.i32;
  v39 = v38 + v36;
  if (v36 <= 0.0)
  {
    v39 = 2654435761u * *v14.i32;
  }

  v40 = v38 - fabsf(v36);
  if (v36 >= 0.0)
  {
    v40 = v39;
  }

  return v4 ^ v3 ^ v20 ^ v25 ^ v30 ^ v34 ^ v40;
}

+ (id)annotationItemFromObservation:(id)observation
{
  observationCopy = observation;
  v4 = objc_alloc(objc_opt_class());
  symbology = [observationCopy symbology];
  payloadStringValue = [observationCopy payloadStringValue];
  [observationCopy boundingBox];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [observationCopy confidence];
  v16 = v15;

  LODWORD(v17) = v16;
  v18 = [v4 initWithSymbology:symbology payloadStringValue:payloadStringValue normalizedBoundingBox:v8 confidence:{v10, v12, v14, v17}];

  return v18;
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