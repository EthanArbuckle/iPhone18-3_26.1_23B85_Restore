@interface VKImageAnalysisInteractionResultInfo
- (CGRect)normalizedBoundingRect;
- (VKImageAnalysisInteractionResultInfo)initWithDisplayLabel:(id)label displayMessage:(id)message glyphName:(id)name rect:(CGRect)rect;
@end

@implementation VKImageAnalysisInteractionResultInfo

- (VKImageAnalysisInteractionResultInfo)initWithDisplayLabel:(id)label displayMessage:(id)message glyphName:(id)name rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  labelCopy = label;
  messageCopy = message;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = VKImageAnalysisInteractionResultInfo;
  v17 = [(VKImageAnalysisInteractionResultInfo *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_domain, label);
    objc_storeStrong(&v18->_displayLabel, label);
    objc_storeStrong(&v18->_displayMessage, message);
    objc_storeStrong(&v18->_glyphName, name);
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