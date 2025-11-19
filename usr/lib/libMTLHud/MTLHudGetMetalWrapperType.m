@interface MTLHudGetMetalWrapperType
@end

@implementation MTLHudGetMetalWrapperType

void __MTLHudGetMetalWrapperType_block_invoke(id a1)
{
  v1 = getenv([@"METAL_DEVICE_WRAPPER_TYPE" UTF8String]);
  if (v1)
  {
    MTLHudGetMetalWrapperType_wrapperType = strtol(v1, 0, 0);
  }

  else
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    MTLHudGetMetalWrapperType_wrapperType = [v2 integerForKey:@"METAL_DEVICE_WRAPPER_TYPE"];
  }
}

@end