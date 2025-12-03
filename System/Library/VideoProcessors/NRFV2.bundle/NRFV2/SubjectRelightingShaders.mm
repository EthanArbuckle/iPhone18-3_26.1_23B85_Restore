@interface SubjectRelightingShaders
- (SubjectRelightingShaders)initWithMetalContext:(id)context;
@end

@implementation SubjectRelightingShaders

- (SubjectRelightingShaders)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    sub_295876234(self);
LABEL_20:
    v6 = 0;
    goto LABEL_10;
  }

  v28.receiver = self;
  v28.super_class = SubjectRelightingShaders;
  v6 = [(SubjectRelightingShaders *)&v28 init];
  if (!v6)
  {
    sub_2958761D0();
    goto LABEL_10;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v5, @"srlV2GlobalSparseHistogram", 0);
  srlV2GlobalHistogram = v6->_srlV2GlobalHistogram;
  v6->_srlV2GlobalHistogram = v7;

  if (!v6->_srlV2GlobalHistogram)
  {
    sub_295876134(v6);
    goto LABEL_20;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v9, @"srlV2FaceSparseHistogram", 0);
  srlV2FaceHistogram = v6->_srlV2FaceHistogram;
  v6->_srlV2FaceHistogram = v10;

  if (!v6->_srlV2FaceHistogram)
  {
    sub_295876098(v6);
    goto LABEL_20;
  }

  v13 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v12, @"srlV2CalcCoefficients", 0);
  srlV2CalcCoefficients = v6->_srlV2CalcCoefficients;
  v6->_srlV2CalcCoefficients = v13;

  if (!v6->_srlV2CalcCoefficients)
  {
    sub_295875FFC(v6);
    goto LABEL_20;
  }

  v16 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v15, @"srlV2GlobalSparseHistogramLivePhotos", 0);
  srlV2GlobalHistogramLivePhotos = v6->_srlV2GlobalHistogramLivePhotos;
  v6->_srlV2GlobalHistogramLivePhotos = v16;

  if (!v6->_srlV2GlobalHistogramLivePhotos)
  {
    sub_295875F60(v6);
    goto LABEL_20;
  }

  v19 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v18, @"srlV2FaceSparseHistogramLivePhotos", 0);
  srlV2FaceHistogramLivePhotos = v6->_srlV2FaceHistogramLivePhotos;
  v6->_srlV2FaceHistogramLivePhotos = v19;

  if (!v6->_srlV2FaceHistogramLivePhotos)
  {
    sub_295875EC4(v6);
    goto LABEL_20;
  }

  v22 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v21, @"srlV2CalcCoefficientsLivePhotos", 0);
  srlV2CalcCoefficientsLivePhotos = v6->_srlV2CalcCoefficientsLivePhotos;
  v6->_srlV2CalcCoefficientsLivePhotos = v22;

  if (!v6->_srlV2CalcCoefficientsLivePhotos)
  {
    sub_295875E28(v6);
    goto LABEL_20;
  }

  v25 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v24, @"srlV2Apply", 0);
  srlV2Apply = v6->_srlV2Apply;
  v6->_srlV2Apply = v25;

  if (!v6->_srlV2Apply)
  {
    sub_295875D8C(v6);
    goto LABEL_20;
  }

LABEL_10:

  return v6;
}

@end