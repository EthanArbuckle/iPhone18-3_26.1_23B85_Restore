@interface UIScreenMode
+ (id)_screenModeForDisplayMode:(id)a3 mainScreen:(BOOL)a4 actualDisplayScale:(double)a5;
- (CGSize)_sizeWithLevel:(unint64_t)a3;
- (CGSize)size;
- (UIScreenMode)initWithDisplayMode:(id)a3 mainScreen:(BOOL)a4 actualDisplayScale:(double)a5;
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

+ (id)_screenModeForDisplayMode:(id)a3 mainScreen:(BOOL)a4 actualDisplayScale:(double)a5
{
  v6 = a4;
  v7 = a3;
  Mutable = sScreenModes;
  if (!sScreenModes)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    sScreenModes = Mutable;
  }

  v9 = CFDictionaryGetValue(Mutable, v7);
  if (!v9)
  {
    v9 = [[UIScreenMode alloc] initWithDisplayMode:v7 mainScreen:v6 actualDisplayScale:a5];
    v10 = v9;
    CFDictionarySetValue(sScreenModes, v7, v9);
  }

  v11 = v9;

  return v9;
}

- (UIScreenMode)initWithDisplayMode:(id)a3 mainScreen:(BOOL)a4 actualDisplayScale:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = UIScreenMode;
  v10 = [(UIScreenMode *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_mode, a3);
    v11->_isMainScreen = a4;
    v11->_scale = a5;
  }

  return v11;
}

- (CGSize)_sizeWithLevel:(unint64_t)a3
{
  [(FBSDisplayMode *)self->_mode pixelSize];
  v6 = v5;
  v8 = v7;
  v9 = 1.0;
  if (self->_isMainScreen)
  {
    v9 = _UIScreenForcedMainScreenScale(a3) / self->_scale;
  }

  v10 = v6 * v9;
  v11 = v8 * v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_autoreleasePoolPush();
  [v3 appendFormat:@"<%@: %p", objc_opt_class(), self];
  [(UIScreenMode *)self _sizeWithLevel:0];
  [v3 appendFormat:@"; size = %f x %f", v5, v6];
  [v3 appendFormat:@">"];
  objc_autoreleasePoolPop(v4);

  return v3;
}

@end