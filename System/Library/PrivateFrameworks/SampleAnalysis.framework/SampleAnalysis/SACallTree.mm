@interface SACallTree
- (SACallTree)initWithRootObjects:(id)objects;
- (void)enumerateCallTreeFrames:(id)frames;
@end

@implementation SACallTree

- (SACallTree)initWithRootObjects:(id)objects
{
  v8.receiver = self;
  v8.super_class = SACallTree;
  v4 = [(SACallTree *)&v8 init];
  if (v4)
  {
    v5 = [objects copy];
    rootObjects = v4->_rootObjects;
    v4->_rootObjects = v5;
  }

  return v4;
}

- (void)enumerateCallTreeFrames:(id)frames
{
  rootObjects = self->_rootObjects;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__SACallTree_enumerateCallTreeFrames___block_invoke;
  v4[3] = &unk_1E86F71F8;
  v4[4] = frames;
  [SACallTreeFrame enumerateTree:v4 block:?];
}

uint64_t __38__SACallTree_enumerateCallTreeFrames___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [a2 isTruncatedLeafCallstack];
    if ((result & 1) == 0)
    {
      v5 = *(*(a1 + 32) + 16);

      return v5();
    }
  }

  return result;
}

@end