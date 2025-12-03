@interface PDDynamicDistortionCameraCalibration
- (BOOL)pointFromMetadataField:(id)field key:(id)key point:(CGPoint *)point;
- (BOOL)rectFromMetadataField:(id)field key:(id)key rect:(CGRect *)rect;
- (BOOL)updateForFrameWithDimensions:(CGSize)dimensions metadataDictionary:(id)dictionary;
- (PDDynamicDistortionCameraCalibration)initWithPixelSize:(__n128)size gdcModel:(__n128)model cameraToPlatformTransform:(__n128)transform;
@end

@implementation PDDynamicDistortionCameraCalibration

- (BOOL)updateForFrameWithDimensions:(CGSize)dimensions metadataDictionary:(id)dictionary
{
  height = dimensions.height;
  width = dimensions.width;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CF5098]];
  integerValue = [v8 integerValue];

  v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CF5090]];
  v11 = integerValue;
  integerValue2 = [v10 integerValue];

  [(PDDynamicDistortionCameraCalibration *)self setReferenceDimensions:integerValue, integerValue2];
  *&v13 = self->_rawSensorPixelSize;
  [(PDDynamicDistortionCameraCalibration *)self setPixelSize:v13];
  v14 = *MEMORY[0x277CF5160];
  v15 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CF5160]];

  if (v15)
  {
    v16 = *(MEMORY[0x277CBF398] + 16);
    v40 = *MEMORY[0x277CBF398];
    v41 = v16;
    if (![(PDDynamicDistortionCameraCalibration *)self rectFromMetadataField:dictionaryCopy key:v14 rect:&v40])
    {
      goto LABEL_9;
    }

    [(PDDynamicDistortionCameraCalibration *)self setReferenceDimensions:*&v41];
    if (([(PDDynamicDistortionCameraCalibration *)self scale:v11, integerValue2]& 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(PDDynamicDistortionCameraCalibration *)self setReferenceDimensions:v11, integerValue2];
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CF5010]];
  [v17 floatValue];
  v19 = v18;

  [(PDDynamicDistortionCameraCalibration *)self pixelSize];
  v21 = v20;
  if (![(PDDynamicDistortionCameraCalibration *)self pointFromMetadataField:dictionaryCopy key:*MEMORY[0x277CF4C00] point:&v44])
  {
    goto LABEL_9;
  }

  *&v22 = v19 * 0.001 / v21;
  LODWORD(v23) = 0;
  HIDWORD(v23) = v22;
  __asm { FMOV            V3.2S, #1.0 }

  [(PDDynamicDistortionCameraCalibration *)self setIntrinsicMatrix:COERCE_DOUBLE(v22), v23, COERCE_DOUBLE(vcvt_f32_f64(v44))];
  v29 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CF4C10]];
  [v29 floatValue];
  v38 = v30;

  v31 = vmlaq_n_f32(*self->_gdcBase.inverseOrders, *self->_gdcDynamic.inverseOrders, v38);
  v32 = vmlaq_n_f32(*&self->_gdcBase.forwardOrders[4], *&self->_gdcDynamic.forwardOrders[4], v38);
  v33 = vmlaq_n_f32(*&self->_gdcBase.inverseOrders[4], *&self->_gdcDynamic.inverseOrders[4], v38);
  v40 = vmlaq_n_f32(*self->_gdcBase.forwardOrders, *self->_gdcDynamic.forwardOrders, v38);
  v41 = v32;
  v42 = v31;
  v43 = v33;
  v34 = objc_alloc(MEMORY[0x277CED100]);
  v35 = [v34 initWithDistortionCenter:&v40 andPolynomials:*&v44];
  [(PDDynamicDistortionCameraCalibration *)self setDistortionModel:v35];

  if (![(PDDynamicDistortionCameraCalibration *)self rectFromMetadataField:dictionaryCopy key:*MEMORY[0x277CF5300] rect:v39])
  {
LABEL_9:
    height = 0;
    goto LABEL_10;
  }

  [(PDDynamicDistortionCameraCalibration *)self crop:v39[0], v39[1], v39[2], v39[3]];
  height = [(PDDynamicDistortionCameraCalibration *)self scale:width, height];
LABEL_10:

  return height;
}

- (BOOL)rectFromMetadataField:(id)field key:(id)key rect:(CGRect *)rect
{
  keyCopy = key;
  v8 = [field objectForKeyedSubscript:keyCopy];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_CannotFindDict.isa, keyCopy);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v8, rect))
  {
    NSLog(&cfstr_InvalidDiction.isa, keyCopy);
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (BOOL)pointFromMetadataField:(id)field key:(id)key point:(CGPoint *)point
{
  keyCopy = key;
  v8 = [field objectForKeyedSubscript:keyCopy];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_CannotFindDict.isa, keyCopy);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!CGPointMakeWithDictionaryRepresentation(v8, point))
  {
    NSLog(&cfstr_InvalidDiction.isa, keyCopy);
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (PDDynamicDistortionCameraCalibration)initWithPixelSize:(__n128)size gdcModel:(__n128)model cameraToPlatformTransform:(__n128)transform
{
  v10 = a8;
  v23.receiver = self;
  v23.super_class = PDDynamicDistortionCameraCalibration;
  v11 = [(PDDynamicDistortionCameraCalibration *)&v23 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  v11->_rawSensorPixelSize = a2;
  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277CF4538]];
  v14 = v13;
  if (!v13)
  {
    peridot_depth_log("GDC dictionary doesn't contain BasePolynomial key", *&size, *&model, *&transform, *&a6);
LABEL_14:

    v17 = 0;
    goto LABEL_15;
  }

  if ([v13 length] != 64)
  {
    peridot_depth_log("GDC dictionary BasePolynomial key is of wrong size", *&size, *&model, *&transform, *&a6);
    goto LABEL_14;
  }

  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277CF4540]];
  v16 = v15;
  if (!v15)
  {
    peridot_depth_log("GDC dictionary doesn't contain DynamicPolynomial key", *&size, *&model, *&transform, *&a6);
LABEL_13:

    goto LABEL_14;
  }

  if ([v15 length] != 64)
  {
    peridot_depth_log("GDC dictionary DynamicPolynomial key is of wrong size", *&size, *&model, *&transform, *&a6);
    goto LABEL_13;
  }

  memcpy(&v12->_gdcBase, [v14 bytes], objc_msgSend(v14, "length"));
  memcpy(&v12->_gdcDynamic, [v16 bytes], objc_msgSend(v16, "length"));
  [(PDDynamicDistortionCameraCalibration *)v12 setCameraToPlatformTransform:size.n128_f64[0], model.n128_f64[0], transform.n128_f64[0], a6.n128_f64[0]];

LABEL_7:
  v17 = v12;
LABEL_15:

  return v17;
}

@end