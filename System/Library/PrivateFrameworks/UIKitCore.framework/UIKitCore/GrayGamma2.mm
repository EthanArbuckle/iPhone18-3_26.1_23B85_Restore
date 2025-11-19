@interface GrayGamma2
@end

@implementation GrayGamma2

CGColorSpaceRef __GrayGamma2_2ColorSpace_block_invoke()
{
  if (dyld_program_sdk_at_least())
  {
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
  }

  else
  {
    result = CGColorSpaceCreateDeviceGray();
  }

  qword_1ED49BED8 = result;
  return result;
}

@end