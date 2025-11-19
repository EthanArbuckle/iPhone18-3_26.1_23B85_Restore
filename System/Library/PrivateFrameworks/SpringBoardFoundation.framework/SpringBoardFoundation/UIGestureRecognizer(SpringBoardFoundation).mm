@interface UIGestureRecognizer(SpringBoardFoundation)
- (id)sbf_activeTouches;
- (uint64_t)sbf_hasPointerTouch;
- (uint64_t)sbf_setPencilTouchesAllowed:()SpringBoardFoundation;
@end

@implementation UIGestureRecognizer(SpringBoardFoundation)

- (uint64_t)sbf_setPencilTouchesAllowed:()SpringBoardFoundation
{
  v5 = [a1 allowedTouchTypes];
  v10 = v5;
  if (a3)
  {
    v6 = [v5 containsObject:&unk_1F3D3E898];
    v7 = v10;
    if (v6)
    {
      goto LABEL_6;
    }

    v8 = [v10 mutableCopy];
    [v8 addObject:&unk_1F3D3E898];
  }

  else
  {
    v8 = [v5 mutableCopy];
    [v8 removeObject:&unk_1F3D3E898];
  }

  [a1 setAllowedTouchTypes:v8];

  v7 = v10;
LABEL_6:

  return MEMORY[0x1EEE66BB8](v6, v7);
}

- (id)sbf_activeTouches
{
  v2 = [a1 _activeEventOfType:0];
  v3 = [v2 touchesForGestureRecognizer:a1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v6 = v5;

  return v6;
}

- (uint64_t)sbf_hasPointerTouch
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 sbf_activeTouches];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) _isPointerTouch])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

@end