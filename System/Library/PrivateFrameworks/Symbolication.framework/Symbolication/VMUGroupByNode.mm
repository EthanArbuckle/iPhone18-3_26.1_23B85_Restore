@interface VMUGroupByNode
- (void)enumerateGroups:(void *)groups withBlock:(id)block;
@end

@implementation VMUGroupByNode

- (void)enumerateGroups:(void *)groups withBlock:(id)block
{
  blockCopy = block;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = __44__VMUGroupByNode_enumerateGroups_withBlock___block_invoke;
  v18 = &unk_1E8279DE0;
  selfCopy = self;
  v7 = blockCopy;
  v20 = v7;
  v8 = v16;
  v11 = *groups;
  v9 = groups + 4;
  v10 = v11;
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = v12 >> 3;
      v14 = v9[v13];
      v15 = v12;
      if (v9[v13])
      {
        do
        {
          if (v14)
          {
            v17(v8, v15);
          }

          if (v14 < 2)
          {
            break;
          }

          v15 = (v15 + 1);
          v14 >>= 1;
        }

        while (v15 < v10);
      }

      v12 = (v12 + 8);
    }

    while (v12 < v10);
  }
}

void __44__VMUGroupByNode_enumerateGroups_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) typeNameForNode:a2];
  v6 = [VMUNodeGroup alloc];
  v7 = [*(a1 + 32) graph];
  v8 = [(VMUNodeGroup *)v6 initWithName:v5 graph:v7];

  [(VMUNodeGroup *)v8 addNode:a2];
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v4);
}

@end