@interface PFZlibDataCompressionOptions
+ (id)defaultOptions;
@end

@implementation PFZlibDataCompressionOptions

+ (id)defaultOptions
{
  v2 = objc_opt_new();
  *(v2 + 8) = xmmword_1B36A1F50;
  *(v2 + 24) = 0x4000;

  return v2;
}

@end