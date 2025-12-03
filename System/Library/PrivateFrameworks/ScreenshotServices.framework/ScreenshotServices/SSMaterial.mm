@interface SSMaterial
+ (id)cropHandle;
+ (id)vellumOpacitySliderTrack;
+ (id)vellumOpacitySliderValueImage;
- (double)colorAlpha;
- (id)_initWithFilterType:(id)type color:(id)color;
- (void)applyToView:(id)view;
@end

@implementation SSMaterial

- (id)_initWithFilterType:(id)type color:(id)color
{
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = SSMaterial;
  typeCopy = type;
  v8 = [(SSMaterial *)&v13 init];
  v9 = [MEMORY[0x1E6979378] filterWithType:{typeCopy, v13.receiver, v13.super_class}];

  filter = v8->_filter;
  v8->_filter = v9;

  color = v8->_color;
  v8->_color = colorCopy;

  return v8;
}

- (double)colorAlpha
{
  v4 = 0.0;
  color = [(SSMaterial *)self color];
  [color getRed:0 green:0 blue:0 alpha:&v4];

  return v4;
}

+ (id)vellumOpacitySliderValueImage
{
  v2 = [self alloc];
  v3 = [v2 _initWithFilterType:*MEMORY[0x1E6979C58] color:0];

  return v3;
}

+ (id)vellumOpacitySliderTrack
{
  v2 = [self alloc];
  v3 = *MEMORY[0x1E6979CF8];
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.4];
  v5 = [v2 _initWithFilterType:v3 color:v4];

  return v5;
}

+ (id)cropHandle
{
  v2 = [self alloc];
  v3 = *MEMORY[0x1E6979CF8];
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.82];
  v5 = [v2 _initWithFilterType:v3 color:v4];

  return v5;
}

- (void)applyToView:(id)view
{
  v9[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (self->_color)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    color = self->_color;
    if (isKindOfClass)
    {
      [viewCopy setTintColor:color];
    }

    else
    {
      [viewCopy setBackgroundColor:color];
    }
  }

  layer = [viewCopy layer];
  v9[0] = self->_filter;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [layer setCompositingFilter:v8];
}

@end