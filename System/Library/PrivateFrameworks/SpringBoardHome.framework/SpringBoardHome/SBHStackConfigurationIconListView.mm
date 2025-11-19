@interface SBHStackConfigurationIconListView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBIconViewDelegate)iconViewDelegate;
- (void)_setupCustomBackgroundConfigurationForIconView:(id)a3;
- (void)configureIconView:(id)a3 forIcon:(id)a4;
@end

@implementation SBHStackConfigurationIconListView

- (void)configureIconView:(id)a3 forIcon:(id)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = SBHStackConfigurationIconListView;
  [(SBIconListView *)&v8 configureIconView:v6 forIcon:a4];
  v7 = [(SBHStackConfigurationIconListView *)self iconViewDelegate];
  [v6 setDelegate:v7];

  [v6 setIconContentScalingEnabled:1];
  [v6 setAllowsResizeHandle:0];
  [v6 _updateAccessoryViewAnimated:0];
  [v6 setStartsDragMoreQuickly:1];
  [(SBHStackConfigurationIconListView *)self _setupCustomBackgroundConfigurationForIconView:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SBIconListView *)self addLayoutObserver:v6];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v6.receiver = self;
  v6.super_class = SBHStackConfigurationIconListView;
  [(SBIconListView *)&v6 sizeThatFits:a3.width, a3.height];
  v4 = SBHSizeCeiling(v3);
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_setupCustomBackgroundConfigurationForIconView:(id)a3
{
  v3 = [a3 customIconImageViewController];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 backgroundViewProvider];
    v5 = [v4 copy];

    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __84__SBHStackConfigurationIconListView__setupCustomBackgroundConfigurationForIconView___block_invoke;
      v10[3] = &unk_1E80899C8;
      v5 = v5;
      v11 = v5;
      [v3 setBackgroundViewProvider:v10];
      if (objc_opt_respondsToSelector())
      {
        v6 = [v3 backgroundViewConfigurator];
        v7 = [v6 copy];

        if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = __84__SBHStackConfigurationIconListView__setupCustomBackgroundConfigurationForIconView___block_invoke_2;
          v8[3] = &unk_1E80899F0;
          v7 = v7;
          v9 = v7;
          [v3 setBackgroundViewConfigurator:v8];
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }
}

SBHWidgetWrapperBackgroundView *__84__SBHStackConfigurationIconListView__setupCustomBackgroundConfigurationForIconView___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DD250]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v4 = (*(*(a1 + 32) + 16))();
  v5 = [[SBHWidgetWrapperBackgroundView alloc] initWithUnderlyingBackgroundView:v3 widgetBackgroundView:v4];

  return v5;
}

void __84__SBHStackConfigurationIconListView__setupCustomBackgroundConfigurationForIconView___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v13 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v13;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 widgetBackgroundView];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v13;
  }

  v12 = v11;

  (*(*(a1 + 32) + 16))();
}

- (SBIconViewDelegate)iconViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewDelegate);

  return WeakRetained;
}

@end