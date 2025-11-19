@interface INImage(WFImage)
+ (id)imageWithWFImage:()WFImage;
- (id)wf_image;
@end

@implementation INImage(WFImage)

- (id)wf_image
{
  if ([a1 _isSystem])
  {
    v2 = MEMORY[0x1E69E0B58];
    v3 = [a1 _name];
    v4 = [v2 glyphNamed:v3 pointSize:17.0];

    v5 = [MEMORY[0x1E6996CA8] sharedContext];
    v6 = [v5 userInterfaceStyle];

    if (v6 == 2)
    {
      v7 = [MEMORY[0x1E69E09E0] colorWithWhite:1.0 alpha:1.0];
      v8 = [v4 imageWithTintColor:v7];

      v4 = v8;
    }
  }

  else
  {
    v9 = [a1 _imageData];
    if (!v9)
    {
      v4 = 0;
      goto LABEL_12;
    }

    v10 = v9;
    v4 = [MEMORY[0x1E69E0B58] imageWithDeviceScreenScaleImageData:v9];

    if (!v4)
    {
      goto LABEL_12;
    }
  }

  v11 = [a1 _renderingMode];
  if (v11 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 == 1;
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
  v5 = [v4 PNGRepresentation];
  v6 = [a1 imageWithImageData:v5];

  [v4 sizeInPoints];
  v8 = v7;
  [v4 sizeInPoints];
  [v6 _setImageSize:v8];
  v9 = [v4 renderingMode];

  if (v9 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == 1;
  }

  [v6 _setRenderingMode:v10];

  return v6;
}

@end