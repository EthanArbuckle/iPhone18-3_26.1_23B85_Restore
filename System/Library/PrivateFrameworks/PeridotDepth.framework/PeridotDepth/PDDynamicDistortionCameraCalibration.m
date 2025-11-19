@interface PDDynamicDistortionCameraCalibration
- (BOOL)pointFromMetadataField:(id)a3 key:(id)a4 point:(CGPoint *)a5;
- (BOOL)rectFromMetadataField:(id)a3 key:(id)a4 rect:(CGRect *)a5;
- (BOOL)updateForFrameWithDimensions:(CGSize)a3 metadataDictionary:(id)a4;
- (PDDynamicDistortionCameraCalibration)initWithPixelSize:(__n128)a3 gdcModel:(__n128)a4 cameraToPlatformTransform:(__n128)a5;
@end

@implementation PDDynamicDistortionCameraCalibration

- (BOOL)updateForFrameWithDimensions:(CGSize)a3 metadataDictionary:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CF5098]];
  v9 = [v8 integerValue];

  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CF5090]];
  v11 = v9;
  v12 = [v10 integerValue];

  [(PDDynamicDistortionCameraCalibration *)self setReferenceDimensions:v9, v12];
  *&v13 = self->_rawSensorPixelSize;
  [(PDDynamicDistortionCameraCalibration *)self setPixelSize:v13];
  v14 = *MEMORY[0x277CF5160];
  v15 = [v7 objectForKeyedSubscript:*MEMORY[0x277CF5160]];

  if (v15)
  {
    v16 = *(MEMORY[0x277CBF398] + 16);
    v40 = *MEMORY[0x277CBF398];
    v41 = v16;
    if (![(PDDynamicDistortionCameraCalibration *)self rectFromMetadataField:v7 key:v14 rect:&v40])
    {
      goto LABEL_9;
    }

    [(PDDynamicDistortionCameraCalibration *)self setReferenceDimensions:*&v41];
    if (([(PDDynamicDistortionCameraCalibration *)self scale:v11, v12]& 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(PDDynamicDistortionCameraCalibration *)self setReferenceDimensions:v11, v12];
  }

  v17 = [v7 objectForKeyedSubscript:*MEMORY[0x277CF5010]];
  [v17 floatValue];
  v19 = v18;

  [(PDDynamicDistortionCameraCalibration *)self pixelSize];
  v21 = v20;
  if (![(PDDynamicDistortionCameraCalibration *)self pointFromMetadataField:v7 key:*MEMORY[0x277CF4C00] point:&v44])
  {
    goto LABEL_9;
  }

  *&v22 = v19 * 0.001 / v21;
  LODWORD(v23) = 0;
  HIDWORD(v23) = v22;
  __asm { FMOV            V3.2S, #1.0 }

  [(PDDynamicDistortionCameraCalibration *)self setIntrinsicMatrix:COERCE_DOUBLE(v22), v23, COERCE_DOUBLE(vcvt_f32_f64(v44))];
  v29 = [v7 objectForKeyedSubscript:*MEMORY[0x277CF4C10]];
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

  if (![(PDDynamicDistortionCameraCalibration *)self rectFromMetadataField:v7 key:*MEMORY[0x277CF5300] rect:v39])
  {
LABEL_9:
    v36 = 0;
    goto LABEL_10;
  }

  [(PDDynamicDistortionCameraCalibration *)self crop:v39[0], v39[1], v39[2], v39[3]];
  v36 = [(PDDynamicDistortionCameraCalibration *)self scale:width, height];
LABEL_10:

  return v36;
}

- (BOOL)rectFromMetadataField:(id)a3 key:(id)a4 rect:(CGRect *)a5
{
  v7 = a4;
  v8 = [a3 objectForKeyedSubscript:v7];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_CannotFindDict.isa, v7);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v8, a5))
  {
    NSLog(&cfstr_InvalidDiction.isa, v7);
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (BOOL)pointFromMetadataField:(id)a3 key:(id)a4 point:(CGPoint *)a5
{
  v7 = a4;
  v8 = [a3 objectForKeyedSubscript:v7];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_CannotFindDict.isa, v7);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!CGPointMakeWithDictionaryRepresentation(v8, a5))
  {
    NSLog(&cfstr_InvalidDiction.isa, v7);
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (PDDynamicDistortionCameraCalibration)initWithPixelSize:(__n128)a3 gdcModel:(__n128)a4 cameraToPlatformTransform:(__n128)a5
{
  v10 = a8;
  v23.receiver = a1;
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
    peridot_depth_log("GDC dictionary doesn't contain BasePolynomial key", *&a3, *&a4, *&a5, *&a6);
LABEL_14:

    v17 = 0;
    goto LABEL_15;
  }

  if ([v13 length] != 64)
  {
    peridot_depth_log("GDC dictionary BasePolynomial key is of wrong size", *&a3, *&a4, *&a5, *&a6);
    goto LABEL_14;
  }

  v15 = [v10 objectForKeyedSubscript:*MEMORY[0x277CF4540]];
  v16 = v15;
  if (!v15)
  {
    peridot_depth_log("GDC dictionary doesn't contain DynamicPolynomial key", *&a3, *&a4, *&a5, *&a6);
LABEL_13:

    goto LABEL_14;
  }

  if ([v15 length] != 64)
  {
    peridot_depth_log("GDC dictionary DynamicPolynomial key is of wrong size", *&a3, *&a4, *&a5, *&a6);
    goto LABEL_13;
  }

  memcpy(&v12->_gdcBase, [v14 bytes], objc_msgSend(v14, "length"));
  memcpy(&v12->_gdcDynamic, [v16 bytes], objc_msgSend(v16, "length"));
  [(PDDynamicDistortionCameraCalibration *)v12 setCameraToPlatformTransform:a3.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0], a6.n128_f64[0]];

LABEL_7:
  v17 = v12;
LABEL_15:

  return v17;
}

@end