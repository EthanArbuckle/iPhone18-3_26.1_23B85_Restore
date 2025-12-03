@interface SBUISystemApertureCAPackageButton
- (BOOL)_updateStateAnimated:(BOOL)animated;
- (BOOL)setState:(id)state animated:(BOOL)animated;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBUISystemApertureCAPackageButton)initWithPackageProvider:(id)provider state:(id)state primaryAction:(id)action;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SBUISystemApertureCAPackageButton

- (SBUISystemApertureCAPackageButton)initWithPackageProvider:(id)provider state:(id)state primaryAction:(id)action
{
  providerCopy = provider;
  stateCopy = state;
  actionCopy = action;
  if (!providerCopy)
  {
    [SBUISystemApertureCAPackageButton initWithPackageProvider:a2 state:self primaryAction:?];
  }

  v13 = actionCopy;
  providedView = [providerCopy providedView];
  [providedView frame];
  v18.receiver = self;
  v18.super_class = SBUISystemApertureCAPackageButton;
  v15 = [(SBUISystemApertureCAPackageButton *)&v18 initWithFrame:v13 primaryAction:?];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_packageProvider, provider);
    objc_storeStrong(&v16->_state, state);
    [providedView setUserInteractionEnabled:0];
    [(SBUISystemApertureCAPackageButton *)v16 addSubview:providedView];
    if (stateCopy)
    {
      [(SBUISystemApertureCAPackageButton *)v16 _updateStateAnimated:0];
    }
  }

  return v16;
}

- (BOOL)setState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_storeStrong(&self->_state, state);

  return [(SBUISystemApertureCAPackageButton *)self _updateStateAnimated:animatedCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v7.receiver = self;
  v7.super_class = SBUISystemApertureCAPackageButton;
  isHighlighted = [(SBUISystemApertureCAPackageButton *)&v7 isHighlighted];
  v6.receiver = self;
  v6.super_class = SBUISystemApertureCAPackageButton;
  [(SBUISystemApertureCAPackageButton *)&v6 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    [(SBUISystemApertureCAPackageButton *)self _updateStateAnimated:1];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = SBUISystemApertureCAPackageButton;
  [(SBUISystemApertureCAPackageButton *)&v12 layoutSubviews];
  [(SBUISystemApertureCAPackageButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  providedView = [(SBUISystemApertureCustomContentProvider *)self->_packageProvider providedView];
  [providedView setBounds:{v4, v6, v8, v10}];
  UIRectGetCenter();
  [providedView setCenter:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  providedView = [(SBUISystemApertureCustomContentProvider *)self->_packageProvider providedView];
  [providedView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  providedView = [(SBUISystemApertureCustomContentProvider *)self->_packageProvider providedView];
  [providedView intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)_updateStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = self->_state;
  if ([(SBUISystemApertureCAPackageButton *)self isHighlighted])
  {
    v6 = [(NSString *)v5 stringByAppendingString:@"-pressed"];

    v5 = v6;
  }

  v7 = [(SBUISystemApertureCAPackageContentProvider *)self->_packageProvider setState:v5 animated:animatedCopy];

  return v7;
}

- (void)initWithPackageProvider:(const char *)a1 state:(uint64_t)a2 primaryAction:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"packageProvider != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBUISystemApertureCAPackageButton.m";
    v16 = 1024;
    v17 = 25;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A9A79000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end