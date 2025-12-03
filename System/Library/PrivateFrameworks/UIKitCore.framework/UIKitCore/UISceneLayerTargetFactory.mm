@interface UISceneLayerTargetFactory
+ (id)targetForContextID:(unsigned int)d;
+ (id)targetForUIWindow:(id)window;
@end

@implementation UISceneLayerTargetFactory

+ (id)targetForContextID:(unsigned int)d
{
  v3 = *&d;
  if (!d)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISceneLayerTarget.m" lineNumber:18 description:@"ContextID cannot be 0."];
  }

  v4 = [_UISceneLayerTargetWithContext alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__UISceneLayerTargetFactory_targetForContextID___block_invoke;
  v11[3] = &__block_descriptor_36_e25_B24__0_8__FBSceneLayer_16l;
  v12 = v3;
  v6 = [(_UISceneLayerTargetWithContext *)v4 initWithContext:v5 equalityType:1 matchingBlock:v11];

  return v6;
}

+ (id)targetForUIWindow:(id)window
{
  windowCopy = window;
  if (!windowCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISceneLayerTarget.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"window"}];
  }

  v6 = [_UISceneLayerTargetWithContext alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__UISceneLayerTargetFactory_targetForUIWindow___block_invoke;
  v11[3] = &unk_1E710A168;
  v12 = windowCopy;
  v7 = windowCopy;
  v8 = [(_UISceneLayerTargetWithContext *)v6 initWithContext:v7 equalityType:0 matchingBlock:v11];

  return v8;
}

BOOL __47__UISceneLayerTargetFactory_targetForUIWindow___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 type] == 1 && (objc_msgSend(*(a1 + 32), "_contextId") || objc_msgSend(v4, "contextID")))
  {
    v5 = [*(a1 + 32) _contextId];
    v6 = v5 == [v4 contextID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end