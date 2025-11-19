@interface _PXStoryFallbackStyleDescriptor
+ (_PXStoryFallbackStyleDescriptor)defaultFallbackStyleDescriptor;
@end

@implementation _PXStoryFallbackStyleDescriptor

+ (_PXStoryFallbackStyleDescriptor)defaultFallbackStyleDescriptor
{
  if (defaultFallbackStyleDescriptor_onceToken != -1)
  {
    dispatch_once(&defaultFallbackStyleDescriptor_onceToken, &__block_literal_global_524);
  }

  v3 = defaultFallbackStyleDescriptor_defaultFallbackStyleDescriptor;

  return v3;
}

@end