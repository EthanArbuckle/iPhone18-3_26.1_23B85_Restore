@interface SXIssueCoverPresentationOptions
- (CGSize)size;
- (SXIssueCoverPresentationOptions)initWithSize:(CGSize)a3 videoPlaybackEnabled:(BOOL)a4 parentBackgroundColor:(id)a5;
@end

@implementation SXIssueCoverPresentationOptions

- (SXIssueCoverPresentationOptions)initWithSize:(CGSize)a3 videoPlaybackEnabled:(BOOL)a4 parentBackgroundColor:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = SXIssueCoverPresentationOptions;
  v10 = [(SXIssueCoverPresentationOptions *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_size.width = width;
    v10->_size.height = height;
    v10->_videoPlaybackEnabled = a4;
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = [MEMORY[0x1E69DC888] whiteColor];
    }

    parentBackgroundColor = v11->_parentBackgroundColor;
    v11->_parentBackgroundColor = v12;
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