@interface VKImageAnalysisInteractionResultInfo
- (CGRect)normalizedBoundingRect;
- (VKImageAnalysisInteractionResultInfo)initWithDisplayLabel:(id)a3 displayMessage:(id)a4 glyphName:(id)a5 rect:(CGRect)a6;
@end

@implementation VKImageAnalysisInteractionResultInfo

- (VKImageAnalysisInteractionResultInfo)initWithDisplayLabel:(id)a3 displayMessage:(id)a4 glyphName:(id)a5 rect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = VKImageAnalysisInteractionResultInfo;
  v17 = [(VKImageAnalysisInteractionResultInfo *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_domain, a3);
    objc_storeStrong(&v18->_displayLabel, a3);
    objc_storeStrong(&v18->_displayMessage, a4);
    objc_storeStrong(&v18->_glyphName, a5);
    v18->_normalizedBoundingRect.origin.x = x;
    v18->_normalizedBoundingRect.origin.y = y;
    v18->_normalizedBoundingRect.size.width = width;
    v18->_normalizedBoundingRect.size.height = height;
  }

  return v18;
}

- (CGRect)normalizedBoundingRect
{
  x = self->_normalizedBoundingRect.origin.x;
  y = self->_normalizedBoundingRect.origin.y;
  width = self->_normalizedBoundingRect.size.width;
  height = self->_normalizedBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end