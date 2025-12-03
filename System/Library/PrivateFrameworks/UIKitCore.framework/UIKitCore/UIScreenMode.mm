@interface UIScreenMode
+ (id)_screenModeForDisplayMode:(id)mode mainScreen:(BOOL)screen actualDisplayScale:(double)scale;
- (CGSize)_sizeWithLevel:(unint64_t)level;
- (CGSize)size;
- (UIScreenMode)initWithDisplayMode:(id)mode mainScreen:(BOOL)screen actualDisplayScale:(double)scale;
- (id)description;
@end

@implementation UIScreenMode

- (CGSize)size
{
  [(UIScreenMode *)self _sizeWithLevel:2, 0, 0];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)_screenModeForDisplayMode:(id)mode mainScreen:(BOOL)screen actualDisplayScale:(double)scale
{
  screenCopy = screen;
  modeCopy = mode;
  Mutable = sScreenModes;
  if (!sScreenModes)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    sScreenModes = Mutable;
  }

  v9 = CFDictionaryGetValue(Mutable, modeCopy);
  if (!v9)
  {
    v9 = [[UIScreenMode alloc] initWithDisplayMode:modeCopy mainScreen:screenCopy actualDisplayScale:scale];
    v10 = v9;
    CFDictionarySetValue(sScreenModes, modeCopy, v9);
  }

  v11 = v9;

  return v9;
}

- (UIScreenMode)initWithDisplayMode:(id)mode mainScreen:(BOOL)screen actualDisplayScale:(double)scale
{
  modeCopy = mode;
  v13.receiver = self;
  v13.super_class = UIScreenMode;
  v10 = [(UIScreenMode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_mode, mode);
    v11->_isMainScreen = screen;
    v11->_scale = scale;
  }

  return v11;
}

- (CGSize)_sizeWithLevel:(unint64_t)level
{
  [(FBSDisplayMode *)self->_mode pixelSize];
  v6 = v5;
  v8 = v7;
  v9 = 1.0;
  if (self->_isMainScreen)
  {
    v9 = _UIScreenForcedMainScreenScale(level) / self->_scale;
  }

  v10 = v6 * v9;
  v11 = v8 * v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_autoreleasePoolPush();
  [string appendFormat:@"<%@: %p", objc_opt_class(), self];
  [(UIScreenMode *)self _sizeWithLevel:0];
  [string appendFormat:@"; size = %f x %f", v5, v6];
  [string appendFormat:@">"];
  objc_autoreleasePoolPop(v4);

  return string;
}

@end