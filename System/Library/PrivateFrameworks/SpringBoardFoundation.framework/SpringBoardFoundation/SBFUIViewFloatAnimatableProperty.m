@interface SBFUIViewFloatAnimatableProperty
+ (id)sbf_animatablePropertyWithProgressMilestonesToBlocks:(id)a3;
- (void)invalidate;
@end

@implementation SBFUIViewFloatAnimatableProperty

+ (id)sbf_animatablePropertyWithProgressMilestonesToBlocks:(id)a3
{
  v4 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__SBFUIViewFloatAnimatableProperty_sbf_animatablePropertyWithProgressMilestonesToBlocks___block_invoke;
  v12[3] = &unk_1E80803E8;
  v5 = v4;
  v13 = v5;
  v6 = MEMORY[0x1BFB4D9B0](v12);
  v7 = MEMORY[0x1E695DFD8];
  v8 = [v5 allKeys];
  v9 = [v7 setWithArray:v8];
  v10 = [a1 sbf_animatablePropertyWithProgressMilestones:v9 block:v6];

  if (v5)
  {
    [v10[5] removeObjectForKey:&unk_1F3D3F398];
  }

  return v10;
}

void __89__SBFUIViewFloatAnimatableProperty_sbf_animatablePropertyWithProgressMilestonesToBlocks___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = objc_opt_class();
  v9 = v7;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v9)
  {
    if ((*(v11 + 32) & 1) == 0)
    {
      v12 = [*(a1 + 32) mutableCopy];
      v13 = *(v11 + 5);
      *(v11 + 5) = v12;

      *(v11 + 32) = 1;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [*(v11 + 5) allKeys];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v21 + 1) + 8 * i);
          [v19 bs_CGFloatValue];
          if (BSFloatApproximatelyEqualToFloat())
          {
            v20 = [*(v11 + 5) objectForKey:v19];
            [*(v11 + 5) removeObjectForKey:v19];
            (v20)[2](v20, v11, 0, a3, a4);
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }
  }
}

- (void)invalidate
{
  v16 = *MEMORY[0x1E69E9840];
  [(UIViewFloatAnimatableProperty *)self presentationValue];
  v14.receiver = self;
  v14.super_class = SBFUIViewFloatAnimatableProperty;
  [(UIAnimatablePropertyWrapper *)&v14 invalidate];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_mutableMilestonesToBlocks allKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_mutableMilestonesToBlocks objectForKey:v8];
        if (v9)
        {
          [v8 bs_CGFloatValue];
          (v9)[2](v9, self, 1);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_mutableMilestonesToBlocks removeAllObjects];
}

@end