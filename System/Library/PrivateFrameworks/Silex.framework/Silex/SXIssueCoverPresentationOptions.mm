@interface SXIssueCoverPresentationOptions
- (CGSize)size;
- (SXIssueCoverPresentationOptions)initWithSize:(CGSize)size videoPlaybackEnabled:(BOOL)enabled parentBackgroundColor:(id)color;
@end

@implementation SXIssueCoverPresentationOptions

- (SXIssueCoverPresentationOptions)initWithSize:(CGSize)size videoPlaybackEnabled:(BOOL)enabled parentBackgroundColor:(id)color
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v15.receiver = self;
  v15.super_class = SXIssueCoverPresentationOptions;
  v10 = [(SXIssueCoverPresentationOptions *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_size.width = width;
    v10->_size.height = height;
    v10->_videoPlaybackEnabled = enabled;
    if (colorCopy)
    {
      whiteColor = colorCopy;
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    parentBackgroundColor = v11->_parentBackgroundColor;
    v11->_parentBackgroundColor = whiteColor;
  }

  return v11;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end