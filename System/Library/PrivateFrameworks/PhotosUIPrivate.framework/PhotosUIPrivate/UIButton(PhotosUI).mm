@interface UIButton(PhotosUI)
- (uint64_t)pu_setRTLAwareContentEdgeInsets:()PhotosUI;
- (void)pu_sendActionForControlEventsWithHighlightTimeout:()PhotosUI;
- (void)pu_setTitle:()PhotosUI andAccessibilityTitle:withFallback:forState:;
@end

@implementation UIButton(PhotosUI)

- (void)pu_sendActionForControlEventsWithHighlightTimeout:()PhotosUI
{
  [self sendActionsForControlEvents:?];
  [self setHighlighted:1];
  v2 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__UIButton_PhotosUI__pu_sendActionForControlEventsWithHighlightTimeout___block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

- (void)pu_setTitle:()PhotosUI andAccessibilityTitle:withFallback:forState:
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (pu_setTitle_andAccessibilityTitle_withFallback_forState__onceToken == -1)
  {
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&pu_setTitle_andAccessibilityTitle_withFallback_forState__onceToken, &__block_literal_global_97333);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  if (![v15 length] || pu_setTitle_andAccessibilityTitle_withFallback_forState__forceFallback == 1)
  {
    v13 = v12[2](v12);
    [self setImage:v13 forState:a6];

    v14 = 0;
    goto LABEL_8;
  }

LABEL_7:
  [self setImage:0 forState:a6];
  v14 = v15;
LABEL_8:
  v16 = v14;
  [self setTitle:v14 forState:a6];
  [self setAccessibilityLabel:v10];
}

- (uint64_t)pu_setRTLAwareContentEdgeInsets:()PhotosUI
{
  pu_currentCharacterDirection = [MEMORY[0x1E695DF58] pu_currentCharacterDirection];
  if (pu_currentCharacterDirection == 2)
  {
    v11 = a5;
  }

  else
  {
    v11 = a3;
  }

  if (pu_currentCharacterDirection == 2)
  {
    v12 = a3;
  }

  else
  {
    v12 = a5;
  }

  return [self setContentEdgeInsets:{a2, v11, a4, v12}];
}

@end