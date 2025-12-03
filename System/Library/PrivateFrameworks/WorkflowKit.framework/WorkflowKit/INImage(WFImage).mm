@interface INImage(WFImage)
+ (id)imageWithWFImage:()WFImage;
- (id)wf_image;
@end

@implementation INImage(WFImage)

- (id)wf_image
{
  if ([self _isSystem])
  {
    v2 = MEMORY[0x1E69E0B58];
    _name = [self _name];
    v4 = [v2 glyphNamed:_name pointSize:17.0];

    mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
    userInterfaceStyle = [mEMORY[0x1E6996CA8] userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      v7 = [MEMORY[0x1E69E09E0] colorWithWhite:1.0 alpha:1.0];
      v8 = [v4 imageWithTintColor:v7];

      v4 = v8;
    }
  }

  else
  {
    _imageData = [self _imageData];
    if (!_imageData)
    {
      v4 = 0;
      goto LABEL_12;
    }

    v10 = _imageData;
    v4 = [MEMORY[0x1E69E0B58] imageWithDeviceScreenScaleImageData:_imageData];

    if (!v4)
    {
      goto LABEL_12;
    }
  }

  _renderingMode = [self _renderingMode];
  if (_renderingMode == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = _renderingMode == 1;
  }

  if (v12 != [v4 renderingMode])
  {
    v13 = [v4 imageWithRenderingMode:v12];

    v4 = v13;
  }

LABEL_12:

  return v4;
}

+ (id)imageWithWFImage:()WFImage
{
  v4 = a3;
  pNGRepresentation = [v4 PNGRepresentation];
  v6 = [self imageWithImageData:pNGRepresentation];

  [v4 sizeInPoints];
  v8 = v7;
  [v4 sizeInPoints];
  [v6 _setImageSize:v8];
  renderingMode = [v4 renderingMode];

  if (renderingMode == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = renderingMode == 1;
  }

  [v6 _setRenderingMode:v10];

  return v6;
}

@end