@interface UIGestureRecognizer(SpringBoardFoundation)
- (id)sbf_activeTouches;
- (uint64_t)sbf_hasPointerTouch;
- (uint64_t)sbf_setPencilTouchesAllowed:()SpringBoardFoundation;
@end

@implementation UIGestureRecognizer(SpringBoardFoundation)

- (uint64_t)sbf_setPencilTouchesAllowed:()SpringBoardFoundation
{
  allowedTouchTypes = [self allowedTouchTypes];
  v10 = allowedTouchTypes;
  if (a3)
  {
    v6 = [allowedTouchTypes containsObject:&unk_1F3D3E898];
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
    v8 = [allowedTouchTypes mutableCopy];
    [v8 removeObject:&unk_1F3D3E898];
  }

  [self setAllowedTouchTypes:v8];

  v7 = v10;
LABEL_6:

  return MEMORY[0x1EEE66BB8](v6, v7);
}

- (id)sbf_activeTouches
{
  v2 = [self _activeEventOfType:0];
  v3 = [v2 touchesForGestureRecognizer:self];
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
  sbf_activeTouches = [self sbf_activeTouches];
  v2 = [sbf_activeTouches countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(sbf_activeTouches);
        }

        if ([*(*(&v6 + 1) + 8 * i) _isPointerTouch])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [sbf_activeTouches countByEnumeratingWithState:&v6 objects:v10 count:16];
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