@interface _UIWindowOrientationUpdate
- (uint64_t)invalidateFences;
- (void)initWithOrientation:(void *)orientation transitionAnimationSettings:(void *)settings updateBlock:;
- (void)synchronizeDrawingWithFencesOnScene:(uint64_t)scene;
- (void)trackFence:(uint64_t)fence;
- (void)transferFencesToUpdate:(uint64_t)update;
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

- (void)initWithOrientation:(void *)orientation transitionAnimationSettings:(void *)settings updateBlock:
{
  orientationCopy = orientation;
  settingsCopy = settings;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = _UIWindowOrientationUpdate;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    self = v10;
    if (v10)
    {
      *(v10 + 2) = a2;
      objc_storeStrong(v10 + 3, orientation);
      v11 = _Block_copy(settingsCopy);
      v12 = self[4];
      self[4] = v11;

      v13 = self[1];
      self[1] = 0;
    }
  }

  return self;
}

- (void)trackFence:(uint64_t)fence
{
  v3 = a2;
  v4 = v3;
  if (fence && v3)
  {
    v5 = *(fence + 8);
    v8 = v4;
    if (!v5)
    {
      v6 = [MEMORY[0x1E695DFA8] set];
      v7 = *(fence + 8);
      *(fence + 8) = v6;

      v5 = *(fence + 8);
    }

    [v5 addObject:v8];
    v4 = v8;
  }
}

- (void)transferFencesToUpdate:(uint64_t)update
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (update)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = *(update + 8);
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

    [*(update + 8) removeAllObjects];
  }
}

- (void)synchronizeDrawingWithFencesOnScene:(uint64_t)scene
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (scene)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = *(scene + 8);
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

    [(_UIWindowOrientationUpdate *)scene invalidateFences];
  }
}

@end