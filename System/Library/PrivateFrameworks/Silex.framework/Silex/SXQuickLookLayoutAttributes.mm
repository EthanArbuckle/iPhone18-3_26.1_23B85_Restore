@interface SXQuickLookLayoutAttributes
- (CGRect)errorLabelFrame;
- (CGRect)thumbnailFrame;
- (SXQuickLookLayoutAttributes)initWithThumbnailFrame:(CGRect)frame errorLabelFrame:(CGRect)labelFrame;
@end

@implementation SXQuickLookLayoutAttributes

- (SXQuickLookLayoutAttributes)initWithThumbnailFrame:(CGRect)frame errorLabelFrame:(CGRect)labelFrame
{
  height = labelFrame.size.height;
  width = labelFrame.size.width;
  y = labelFrame.origin.y;
  x = labelFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  v13.receiver = self;
  v13.super_class = SXQuickLookLayoutAttributes;
  result = [(SXQuickLookLayoutAttributes *)&v13 init];
  if (result)
  {
    result->_thumbnailFrame.origin.x = v11;
    result->_thumbnailFrame.origin.y = v10;
    result->_thumbnailFrame.size.width = v9;
    result->_thumbnailFrame.size.height = v8;
    result->_errorLabelFrame.origin.x = x;
    result->_errorLabelFrame.origin.y = y;
    result->_errorLabelFrame.size.width = width;
    result->_errorLabelFrame.size.height = height;
  }

  return result;
}

- (CGRect)thumbnailFrame
{
  x = self->_thumbnailFrame.origin.x;
  y = self->_thumbnailFrame.origin.y;
  width = self->_thumbnailFrame.size.width;
  height = self->_thumbnailFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)errorLabelFrame
{
  x = self->_errorLabelFrame.origin.x;
  y = self->_errorLabelFrame.origin.y;
  width = self->_errorLabelFrame.size.width;
  height = self->_errorLabelFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end