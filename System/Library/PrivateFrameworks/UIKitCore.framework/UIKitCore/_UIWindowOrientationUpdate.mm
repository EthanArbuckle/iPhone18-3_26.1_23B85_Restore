@interface _UIWindowOrientationUpdate
- (uint64_t)invalidateFences;
- (void)initWithOrientation:(void *)a3 transitionAnimationSettings:(void *)a4 updateBlock:;
- (void)synchronizeDrawingWithFencesOnScene:(uint64_t)a1;
- (void)trackFence:(uint64_t)a1;
- (void)transferFencesToUpdate:(uint64_t)a1;
@end

@implementation _UIWindowOrientationUpdate

- (uint64_t)invalidateFences
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(result + 8);
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v6++) invalidate];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    return [*(v1 + 8) removeAllObjects];
  }

  return result;
}

- (void)initWithOrientation:(void *)a3 transitionAnimationSettings:(void *)a4 updateBlock:
{
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = _UIWindowOrientationUpdate;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v10;
    if (v10)
    {
      *(v10 + 2) = a2;
      objc_storeStrong(v10 + 3, a3);
      v11 = _Block_copy(v9);
      v12 = a1[4];
      a1[4] = v11;

      v13 = a1[1];
      a1[1] = 0;
    }
  }

  return a1;
}

- (void)trackFence:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = *(a1 + 8);
    v8 = v4;
    if (!v5)
    {
      v6 = [MEMORY[0x1E695DFA8] set];
      v7 = *(a1 + 8);
      *(a1 + 8) = v6;

      v5 = *(a1 + 8);
    }

    [v5 addObject:v8];
    v4 = v8;
  }
}

- (void)transferFencesToUpdate:(uint64_t)a1
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = *(a1 + 8);
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(_UIWindowOrientationUpdate *)v3 trackFence:?];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [*(a1 + 8) removeAllObjects];
  }
}

- (void)synchronizeDrawingWithFencesOnScene:(uint64_t)a1
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = *(a1 + 8);
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 _synchronizeDrawingWithFence:{*(*(&v9 + 1) + 8 * v8++), v9}];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(_UIWindowOrientationUpdate *)a1 invalidateFences];
  }
}

@end