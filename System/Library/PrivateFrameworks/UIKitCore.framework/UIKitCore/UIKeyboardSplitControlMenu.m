@interface UIKeyboardSplitControlMenu
+ (id)activeInstance;
+ (id)sharedInstance;
- (CGSize)preferredSize;
- (UIKeyboardSplitControlMenu)initWithFrame:(CGRect)a3;
- (id)titleForItemAtIndex:(unint64_t)a3;
- (int)visibleItemForIndex:(unint64_t)a3;
- (void)actionForItem:(id)a3;
- (void)didFinishSplitTransition;
- (void)didSelectItemAtIndex:(unint64_t)a3;
- (void)setSplitAndUndocked:(BOOL)a3;
@end

@implementation UIKeyboardSplitControlMenu

+ (id)activeInstance
{
  if (+[UIKeyboardImpl rivenTranslationPreference])
  {
    v2 = gSharedSplitControlMenu;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (UIKeyboardSplitControlMenu)initWithFrame:(CGRect)a3
{
  v29[6] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = UIKeyboardSplitControlMenu;
  v3 = [(UIKeyboardMenuView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v29[2] = objc_opt_class();
    v29[3] = objc_opt_class();
    v29[4] = objc_opt_class();
    v4 = 0;
    v29[5] = objc_opt_class();
    memset(v28, 0, sizeof(v28));
    do
    {
      v5 = objc_alloc_init(v29[v4]);
      v6 = *(v28 + v4 * 8);
      *(v28 + v4 * 8) = v5;

      ++v4;
    }

    while (v4 != 6);
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:6];
    items = v3->_items;
    v3->_items = v7;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v3->_items;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      v13 = 175.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v22 + 1) + 8 * i) label];
          v16 = [(UIKeyboardMenuView *)v3 font];
          [v15 _legacy_sizeWithFont:v16];
          v18 = v17;

          if (v18 + 48.0 > v13)
          {
            v13 = v18 + 48.0;
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = 175.0;
    }

    v3->m_preferredSize.width = v13;
    v3->m_preferredSize.height = 100.0;
    v19 = v3;
    for (j = 40; j != -8; j -= 8)
    {
    }
  }

  return v3;
}

+ (id)sharedInstance
{
  if (+[UIKeyboardImpl rivenTranslationPreference])
  {
    v2 = gSharedSplitControlMenu;
    if (!gSharedSplitControlMenu)
    {
      v3 = [UIKeyboardSplitControlMenu alloc];
      v4 = [(UIKeyboardSplitControlMenu *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v5 = gSharedSplitControlMenu;
      gSharedSplitControlMenu = v4;

      v2 = gSharedSplitControlMenu;
    }

    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)actionForItem:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_items;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 label];
        v12 = [v4 isEqualToString:v11];

        if (v12)
        {
          [v10 actionForMenu:self];
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (CGSize)preferredSize
{
  width = self->m_preferredSize.width;
  v3 = [(UIKeyboardSplitControlMenu *)self numberOfItems]* 50.0;
  v4 = width;
  result.height = v3;
  result.width = v4;
  return result;
}

- (int)visibleItemForIndex:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v6;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v13 + 1) + 8 * v10) visible])
        {
          if (v7 == a3)
          {
            LODWORD(v7) = v11;
            goto LABEL_14;
          }

          ++v7;
        }

        ++v11;
        ++v10;
      }

      while (v6 != v10);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

LABEL_14:

  return v7;
}

- (id)titleForItemAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_items objectAtIndexedSubscript:[(UIKeyboardSplitControlMenu *)self visibleItemForIndex:a3]];
  v4 = [v3 label];

  return v4;
}

- (void)setSplitAndUndocked:(BOOL)a3
{
  v3 = a3;
  if (+[UIKeyboardImpl isSplit]!= a3)
  {
    UIKeyboardSetSplit(v3);
  }

  v5 = +[UIPeripheralHost sharedInstance];
  v6 = [v5 isUndocked];

  if (v6 != v3)
  {
    if (+[UIKeyboardImpl isSplit]== v3)
    {

      UIKeyboardSetUndocked(v3);
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __50__UIKeyboardSplitControlMenu_setSplitAndUndocked___block_invoke;
      v7[3] = &__block_descriptor_33_e5_v8__0l;
      v8 = v3;
      [(UIKeyboardSplitControlMenu *)self setFinishSplitTransitionBlock:v7];
    }
  }
}

- (void)didSelectItemAtIndex:(unint64_t)a3
{
  [(UIKeyboardMenuView *)self hide];
  v5 = [(NSArray *)self->_items objectAtIndexedSubscript:[(UIKeyboardSplitControlMenu *)self visibleItemForIndex:a3]];
  [v5 actionForMenu:self];
}

- (void)didFinishSplitTransition
{
  v3 = [(UIKeyboardSplitControlMenu *)self finishSplitTransitionBlock];

  if (v3)
  {
    v4 = [(UIKeyboardSplitControlMenu *)self finishSplitTransitionBlock];
    v4[2]();

    [(UIKeyboardSplitControlMenu *)self setFinishSplitTransitionBlock:0];
  }
}

void __53__UIKeyboardSplitControlMenu_Floating_actionForMenu___block_invoke()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 setSplit:0 animated:0];

  UIKeyboardSetUndocked(1);
}

void __49__UIKeyboardSplitControlMenu_Dock_actionForMenu___block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) setFinishSplitTransitionBlock:0];
  if (a2)
  {
    [UIKeyboardImpl setPersistentOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

    UIKeyboardForceOrderInAutomatic();
  }

  else
  {

    UIKeyboardSetUndocked(0);
  }
}

void __50__UIKeyboardSplitControlMenu_Split_actionForMenu___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [UIKeyboardImpl setPersistentSplitProgress:1.0];

    UIKeyboardForceOrderInAutomatic();
  }

  else
  {
    UIKeyboardSetSplit(1);
    [*(a1 + 32) setFinishSplitTransitionBlock:0];
    v3 = +[UIPeripheralHost sharedInstance];
    v4 = [v3 isUndocked];

    if ((v4 & 1) == 0)
    {
      v5 = *(a1 + 32);

      [v5 setFinishSplitTransitionBlock:&__block_literal_global_463];
    }
  }
}

void __57__UIKeyboardSplitControlMenu_DockAndMerge_actionForMenu___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    [UIKeyboardImpl setPersistentSplitProgress:0.0];
    [UIKeyboardImpl setPersistentOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];

    UIKeyboardForceOrderInAutomatic();
  }

  else
  {
    UIKeyboardSetSplit(0);
    [*(a1 + 32) setFinishSplitTransitionBlock:0];
    v3 = +[UIPeripheralHost sharedInstance];
    v4 = [v3 isUndocked];

    if (v4)
    {
      [UIKeyboardImpl setPersistentOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }

    v5 = *(a1 + 32);

    [v5 setFinishSplitTransitionBlock:&__block_literal_global_479];
  }
}

@end