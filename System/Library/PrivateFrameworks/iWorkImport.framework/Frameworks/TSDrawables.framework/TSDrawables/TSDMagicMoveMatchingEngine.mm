@interface TSDMagicMoveMatchingEngine
+ (id)matchingEngine;
- (TSDMagicMoveMatchingEngine)init;
@end

@implementation TSDMagicMoveMatchingEngine

+ (id)matchingEngine
{
  v2 = objc_alloc_init(TSDMagicMoveMatchingEngine);

  return v2;
}

- (TSDMagicMoveMatchingEngine)init
{
  v6.receiver = self;
  v6.super_class = TSDMagicMoveMatchingEngine;
  v2 = [(TSDMagicMoveMatchingEngine *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    matches = v2->_matches;
    v2->_matches = v3;
  }

  return v2;
}

@end