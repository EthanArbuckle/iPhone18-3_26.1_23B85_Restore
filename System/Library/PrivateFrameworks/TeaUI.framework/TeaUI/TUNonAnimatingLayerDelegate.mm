@interface TUNonAnimatingLayerDelegate
- (id)actionForLayer:(id)layer forKey:(id)key;
@end

@implementation TUNonAnimatingLayerDelegate

- (id)actionForLayer:(id)layer forKey:(id)key
{
  v4 = objc_alloc_init(MEMORY[0x1E695DFB0]);

  return v4;
}

@end