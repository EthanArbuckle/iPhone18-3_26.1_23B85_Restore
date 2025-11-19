@interface UIImageCIImageRenderer
@end

@implementation UIImageCIImageRenderer

CGColorSpaceRef __51___UIImageCIImageRenderer__targetColorSpaceForHDR___block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F178]);
  qword_1ED4996E0 = result;
  return result;
}

CGColorSpaceRef __51___UIImageCIImageRenderer__targetColorSpaceForHDR___block_invoke_2()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 _supportsDeepColor];

  v2 = MEMORY[0x1E695F110];
  if (!v1)
  {
    v2 = MEMORY[0x1E695F1C0];
  }

  result = CGColorSpaceCreateWithName(*v2);
  qword_1ED4996F0 = result;
  return result;
}

@end