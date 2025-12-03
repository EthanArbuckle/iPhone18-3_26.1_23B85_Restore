@interface GuidedFilterShaders
- (GuidedFilterShaders)initWithMetalContext:(id)context;
@end

@implementation GuidedFilterShaders

- (GuidedFilterShaders)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    sub_2958CB2AC(self);
LABEL_14:
    v6 = 0;
    goto LABEL_7;
  }

  v19.receiver = self;
  v19.super_class = GuidedFilterShaders;
  v6 = [(GuidedFilterShaders *)&v19 init];
  if (!v6)
  {
    sub_2958CB24C();
    goto LABEL_7;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v5, @"gfDownsampleGuide", 0);
  gfDownsampleGuide = v6->_gfDownsampleGuide;
  v6->_gfDownsampleGuide = v7;

  if (!v6->_gfDownsampleGuide)
  {
    sub_2958CB1C4(v6);
    goto LABEL_14;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v9, @"gfCalculateCoefficients", 0);
  gfCalculateCoefficients = v6->_gfCalculateCoefficients;
  v6->_gfCalculateCoefficients = v10;

  if (!v6->_gfCalculateCoefficients)
  {
    sub_2958CB13C(v6);
    goto LABEL_14;
  }

  v13 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v12, @"gfFilterCoefficients", 0);
  gfFilterCoefficients = v6->_gfFilterCoefficients;
  v6->_gfFilterCoefficients = v13;

  if (!v6->_gfFilterCoefficients)
  {
    sub_2958CB0B4(v6);
    goto LABEL_14;
  }

  v16 = objc_msgSend_computePipelineStateFor_constants_(contextCopy, v15, @"gfApplyCoefficients", 0);
  gfApplyCoefficients = v6->_gfApplyCoefficients;
  v6->_gfApplyCoefficients = v16;

  if (!v6->_gfApplyCoefficients)
  {
    sub_2958CB02C(v6);
    goto LABEL_14;
  }

LABEL_7:

  return v6;
}

@end