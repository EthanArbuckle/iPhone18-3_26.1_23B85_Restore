@interface UIImageCIImageContent
@end

@implementation UIImageCIImageContent

void __34___UIImageCIImageContent__context__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v1 = *MEMORY[0x1E695F7E0];
  v4[0] = *MEMORY[0x1E695F838];
  v4[1] = v1;
  v5[0] = DeviceRGB;
  v5[1] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = qword_1ED4996D0;
  qword_1ED4996D0 = v2;

  CGColorSpaceRelease(DeviceRGB);
}

@end