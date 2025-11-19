@interface PLColorSpace
+ (id)colorSpaceFromName:(id)a3;
+ (id)commonColorSpace_displaySpace;
- (BOOL)isEqual:(id)a3;
- (PLColorSpace)initWithName:(id)a3;
@end

@implementation PLColorSpace

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    colorSpaceName = self->_colorSpaceName;
    v7 = [(PLColorSpace *)v5 colorSpaceName];
    v8 = [(NSString *)colorSpaceName isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PLColorSpace)initWithName:(id)a3
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PLColorSpace;
  v7 = [(PLColorSpace *)&v10 init];
  if (v7)
  {
    if (!v6)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:v7 file:@"PLColorSpace.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"colorSpaceName"}];
    }

    objc_storeStrong(&v7->_colorSpaceName, a3);
  }

  return v7;
}

+ (id)commonColorSpace_displaySpace
{
  if (commonColorSpace_displaySpace__onceToken != -1)
  {
    dispatch_once(&commonColorSpace_displaySpace__onceToken, &__block_literal_global_110115);
  }

  v3 = commonColorSpace_displaySpace_s_colorSpaceName;

  return [a1 colorSpaceFromName:v3];
}

void __45__PLColorSpace_commonColorSpace_displaySpace__block_invoke()
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  commonColorSpace_displaySpace_s_colorSpaceName = CGColorSpaceCopyName(DeviceRGB);

  CGColorSpaceRelease(DeviceRGB);
}

+ (id)colorSpaceFromName:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithName:v3];

  return v4;
}

@end