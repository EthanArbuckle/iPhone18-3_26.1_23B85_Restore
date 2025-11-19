@interface TUIAssistantButtonSizeProvider
- (CGSize)_preferredTitleSizeForBarButtonItem:(id)a3;
- (CGSize)preferredSizeForButtonBarItem:(id)a3;
@end

@implementation TUIAssistantButtonSizeProvider

- (CGSize)preferredSizeForButtonBarItem:(id)a3
{
  v4 = a3;
  [v4 width];
  v6 = MEMORY[0x1E69DE788];
  if (v5 != 0.0)
  {
    goto LABEL_12;
  }

  v7 = [v4 title];
  if ([v7 length])
  {
    v8 = [v4 image];

    if (!v8)
    {
      [(TUIAssistantButtonSizeProvider *)self _preferredTitleSizeForBarButtonItem:v4];
LABEL_12:
      v17 = v5;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = [v4 customView];

  if (!v9)
  {
    if ([v4 systemItem] != 5)
    {
      [(TUIAssistantButtonSizeProvider *)self barButtonWidth];
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v10 = [v4 customView];
  [v10 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v12 = v11;
  v14 = v13;

  if (v12 <= 0.0)
  {
LABEL_10:
    v17 = *v6;
    goto LABEL_13;
  }

  v15 = [v4 customView];
  [v15 systemLayoutSizeFittingSize:{v12, v14}];
  v17 = v16;

LABEL_13:
  v18 = *v6;

  v19 = v17;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)_preferredTitleSizeForBarButtonItem:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  v5 = [a3 view];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = [v5 subviews];
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
LABEL_5:
        v10 = 0;
        while (1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v8)
            {
              goto LABEL_5;
            }

            goto LABEL_14;
          }
        }

        v12 = v11;

        if (!v12)
        {
          goto LABEL_15;
        }

        [v12 sizeThatFits:{v4, v3}];
        v4 = v13;
        v3 = v14;
        v6 = v12;
      }

LABEL_14:
    }
  }

LABEL_15:

  v15 = v4;
  v16 = v3;
  result.height = v16;
  result.width = v15;
  return result;
}

@end