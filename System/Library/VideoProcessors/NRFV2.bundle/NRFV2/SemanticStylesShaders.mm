@interface SemanticStylesShaders
- (SemanticStylesShaders)initWithMetalContext:(id)context;
@end

@implementation SemanticStylesShaders

- (SemanticStylesShaders)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    sub_29588B8C8(self);
LABEL_16:
    v6 = 0;
    goto LABEL_8;
  }

  v22.receiver = self;
  v22.super_class = SemanticStylesShaders;
  v6 = [(SemanticStylesShaders *)&v22 init];
  if (!v6)
  {
    sub_29588B864();
    goto LABEL_8;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v5, @"ssCalculateLocalHistogramStats", 0);
  ssCalculateLocalHistogramStats = v6->_ssCalculateLocalHistogramStats;
  v6->_ssCalculateLocalHistogramStats = v7;

  if (!v6->_ssCalculateLocalHistogramStats)
  {
    sub_29588B7C8(v6);
    goto LABEL_16;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v9, @"ssCalculateGlobalHistogram", 0);
  ssCalculateGlobalHistogram = v6->_ssCalculateGlobalHistogram;
  v6->_ssCalculateGlobalHistogram = v10;

  if (!v6->_ssCalculateGlobalHistogram)
  {
    sub_29588B72C(v6);
    goto LABEL_16;
  }

  v13 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v12, @"ssCalculateGlobalStats", 0);
  ssCalculateGlobalStats = v6->_ssCalculateGlobalStats;
  v6->_ssCalculateGlobalStats = v13;

  if (!v6->_ssCalculateGlobalStats)
  {
    sub_29588B690(v6);
    goto LABEL_16;
  }

  v16 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v15, @"ssCreateGuide", 0);
  ssCreateGuide = v6->_ssCreateGuide;
  v6->_ssCreateGuide = v16;

  if (!v6->_ssCreateGuide)
  {
    sub_29588B5F4(v6);
    goto LABEL_16;
  }

  v19 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v18, @"ssRenderAdjustments", 0);
  ssRenderAdjustments = v6->_ssRenderAdjustments;
  v6->_ssRenderAdjustments = v19;

  if (!v6->_ssRenderAdjustments)
  {
    sub_29588B558(v6);
    goto LABEL_16;
  }

LABEL_8:

  return v6;
}

@end