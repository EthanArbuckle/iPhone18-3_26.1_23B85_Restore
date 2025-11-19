@interface SSMaterial
+ (id)cropHandle;
+ (id)vellumOpacitySliderTrack;
+ (id)vellumOpacitySliderValueImage;
- (double)colorAlpha;
- (id)_initWithFilterType:(id)a3 color:(id)a4;
- (void)applyToView:(id)a3;
@end

@implementation SSMaterial

- (id)_initWithFilterType:(id)a3 color:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = SSMaterial;
  v7 = a3;
  v8 = [(SSMaterial *)&v13 init];
  v9 = [MEMORY[0x1E6979378] filterWithType:{v7, v13.receiver, v13.super_class}];

  filter = v8->_filter;
  v8->_filter = v9;

  color = v8->_color;
  v8->_color = v6;

  return v8;
}

- (double)colorAlpha
{
  v4 = 0.0;
  v2 = [(SSMaterial *)self color];
  [v2 getRed:0 green:0 blue:0 alpha:&v4];

  return v4;
}

+ (id)vellumOpacitySliderValueImage
{
  v2 = [a1 alloc];
  v3 = [v2 _initWithFilterType:*MEMORY[0x1E6979C58] color:0];

  return v3;
}

+ (id)vellumOpacitySliderTrack
{
  v2 = [a1 alloc];
  v3 = *MEMORY[0x1E6979CF8];
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.4];
  v5 = [v2 _initWithFilterType:v3 color:v4];

  return v5;
}

+ (id)cropHandle
{
  v2 = [a1 alloc];
  v3 = *MEMORY[0x1E6979CF8];
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.82];
  v5 = [v2 _initWithFilterType:v3 color:v4];

  return v5;
}

- (void)applyToView:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_color)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    color = self->_color;
    if (isKindOfClass)
    {
      [v4 setTintColor:color];
    }

    else
    {
      [v4 setBackgroundColor:color];
    }
  }

  v7 = [v4 layer];
  v9[0] = self->_filter;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  [v7 setCompositingFilter:v8];
}

@end