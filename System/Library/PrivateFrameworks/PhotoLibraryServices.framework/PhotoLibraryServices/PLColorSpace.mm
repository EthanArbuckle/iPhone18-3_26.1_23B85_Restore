@interface PLColorSpace
+ (id)colorSpaceFromName:(id)name;
+ (id)commonColorSpace_displaySpace;
- (BOOL)isEqual:(id)equal;
- (PLColorSpace)initWithName:(id)name;
@end

@implementation PLColorSpace

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    colorSpaceName = self->_colorSpaceName;
    colorSpaceName = [(PLColorSpace *)v5 colorSpaceName];
    v8 = [(NSString *)colorSpaceName isEqualToString:colorSpaceName];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PLColorSpace)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = PLColorSpace;
  v7 = [(PLColorSpace *)&v10 init];
  if (v7)
  {
    if (!nameCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PLColorSpace.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"colorSpaceName"}];
    }

    objc_storeStrong(&v7->_colorSpaceName, name);
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

  return [self colorSpaceFromName:v3];
}

void __45__PLColorSpace_commonColorSpace_displaySpace__block_invoke()
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  commonColorSpace_displaySpace_s_colorSpaceName = CGColorSpaceCopyName(DeviceRGB);

  CGColorSpaceRelease(DeviceRGB);
}

+ (id)colorSpaceFromName:(id)name
{
  nameCopy = name;
  v4 = [objc_alloc(objc_opt_class()) initWithName:nameCopy];

  return v4;
}

@end