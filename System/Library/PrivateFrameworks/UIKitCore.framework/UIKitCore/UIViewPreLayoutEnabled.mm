@interface UIViewPreLayoutEnabled
@end

@implementation UIViewPreLayoutEnabled

uint64_t ___UIViewPreLayoutEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      result = CASupportsFeature();
    }
  }

  byte_1ED49E117 = result;
  return result;
}

@end