@interface TSKNullActionLayerDelegate
+ (id)layerDelegate;
@end

@implementation TSKNullActionLayerDelegate

+ (id)layerDelegate
{
  result = layerDelegate_sharedInstance;
  if (!layerDelegate_sharedInstance)
  {
    result = objc_alloc_init(TSKNullActionLayerDelegate);
    layerDelegate_sharedInstance = result;
  }

  return result;
}

@end