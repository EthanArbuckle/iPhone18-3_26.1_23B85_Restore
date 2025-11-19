@interface TSDMagicMoveMatchingEngine
+ (id)matchingEngine;
- (TSDMagicMoveMatchingEngine)init;
- (void)dealloc;
@end

@implementation TSDMagicMoveMatchingEngine

+ (id)matchingEngine
{
  v2 = objc_alloc_init(TSDMagicMoveMatchingEngine);

  return v2;
}

- (TSDMagicMoveMatchingEngine)init
{
  v4.receiver = self;
  v4.super_class = TSDMagicMoveMatchingEngine;
  v2 = [(TSDMagicMoveMatchingEngine *)&v4 init];
  if (v2)
  {
    v2->_matches = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDMagicMoveMatchingEngine;
  [(TSDMagicMoveMatchingEngine *)&v3 dealloc];
}

@end