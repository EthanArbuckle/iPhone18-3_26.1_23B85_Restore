@interface STUIStatusBarDisplayableContainerView
- (BOOL)isUserInteractionEnabled;
- (UIView)subviewForBaselineAlignment;
- (void)applyStyleAttributes:(id)a3;
@end

@implementation STUIStatusBarDisplayableContainerView

- (void)applyStyleAttributes:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(STUIStatusBarDisplayableContainerView *)self subviews];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 applyStyleAttributes:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)isUserInteractionEnabled
{
  if ([(STUIStatusBarDisplayableContainerView *)self forceAllowInteraction])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = STUIStatusBarDisplayableContainerView;
  return [(STUIStatusBarDisplayableContainerView *)&v4 isUserInteractionEnabled];
}

- (UIView)subviewForBaselineAlignment
{
  WeakRetained = objc_loadWeakRetained(&self->_subviewForBaselineAlignment);

  return WeakRetained;
}

@end