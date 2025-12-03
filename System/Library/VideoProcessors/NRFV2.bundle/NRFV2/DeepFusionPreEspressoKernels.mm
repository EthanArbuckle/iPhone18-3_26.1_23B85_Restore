@interface DeepFusionPreEspressoKernels
- (DeepFusionPreEspressoKernels)initWithMetal:(id)metal networkVersion:(int)version;
@end

@implementation DeepFusionPreEspressoKernels

- (DeepFusionPreEspressoKernels)initWithMetal:(id)metal networkVersion:(int)version
{
  metalCopy = metal;
  v29.receiver = self;
  v29.super_class = DeepFusionPreEspressoKernels;
  v8 = [(DeepFusionPreEspressoKernels *)&v29 init];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v7, @"yuvCopyAndBias", 0);
  yuvCopyAndBias = v8->_yuvCopyAndBias;
  v8->_yuvCopyAndBias = v9;

  if (!v8->_yuvCopyAndBias)
  {
    sub_2958CA124();
LABEL_13:
    v25 = 0;
    goto LABEL_9;
  }

  v12 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v11, @"yuvPlanarRGBToRGBA", 0);
  yuvPlanarRGBToRGBA = v8->_yuvPlanarRGBToRGBA;
  v8->_yuvPlanarRGBToRGBA = v12;

  if (!v8->_yuvPlanarRGBToRGBA)
  {
    sub_2958CA080();
    goto LABEL_13;
  }

  v15 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v14, @"filterChroma", 0);
  filterChroma = v8->_filterChroma;
  v8->_filterChroma = v15;

  if (!v8->_filterChroma)
  {
    sub_2958C9FDC();
    goto LABEL_13;
  }

  v17 = objc_alloc_init(MEMORY[0x29EDBB5A8]);
  v28 = version == 2;
  objc_msgSend_setConstantValue_type_atIndex_(v17, v18, &v28, 53, 1);
  v27 = 0;
  estimateAndTuneNoise = v8->_estimateAndTuneNoise;
  do
  {
    objc_msgSend_setConstantValue_type_atIndex_(v17, v19, &v27, 53, 0);
    v22 = objc_msgSend_computePipelineStateFor_constants_(metalCopy, v21, @"estimateAndTuneNoise", v17);
    v23 = estimateAndTuneNoise[v27];
    estimateAndTuneNoise[v27] = v22;

    v24 = v27++;
  }

  while (v24 < 1);

LABEL_8:
  v25 = v8;
LABEL_9:

  return v25;
}

@end