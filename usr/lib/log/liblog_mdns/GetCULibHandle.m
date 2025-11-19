@interface GetCULibHandle
@end

@implementation GetCULibHandle

void *___GetCULibHandle_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreUtils.framework/CoreUtils", 2);
  _GetCULibHandle_sHandle = result;
  return result;
}

@end