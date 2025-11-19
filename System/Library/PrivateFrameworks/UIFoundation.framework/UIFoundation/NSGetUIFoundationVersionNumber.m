@interface NSGetUIFoundationVersionNumber
@end

@implementation NSGetUIFoundationVersionNumber

void *___NSGetUIFoundationVersionNumber_block_invoke()
{
  result = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "infoDictionary"), "valueForKey:", @"CFBundleVersion"}];
  if (result)
  {
    result = [result doubleValue];
    v2 = floor(v1 + 0.5);
  }

  else
  {
    v2 = 0.0;
  }

  _NSGetUIFoundationVersionNumber_UIFoundationVersionNumber = *&v2;
  return result;
}

@end