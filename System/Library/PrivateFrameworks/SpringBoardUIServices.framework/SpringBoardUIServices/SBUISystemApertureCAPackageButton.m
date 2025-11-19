@interface SBUISystemApertureCAPackageButton
- (BOOL)_updateStateAnimated:(BOOL)a3;
- (BOOL)setState:(id)a3 animated:(BOOL)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBUISystemApertureCAPackageButton)initWithPackageProvider:(id)a3 state:(id)a4 primaryAction:(id)a5;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SBUISystemApertureCAPackageButton

- (SBUISystemApertureCAPackageButton)initWithPackageProvider:(id)a3 state:(id)a4 primaryAction:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    [SBUISystemApertureCAPackageButton initWithPackageProvider:a2 state:self primaryAction:?];
  }

  v13 = v12;
  v14 = [v10 providedView];
  [v14 frame];
  v18.receiver = self;
  v18.super_class = SBUISystemApertureCAPackageButton;
  v15 = [(SBUISystemApertureCAPackageButton *)&v18 initWithFrame:v13 primaryAction:?];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_packageProvider, a3);
    objc_storeStrong(&v16->_state, a4);
    [v14 setUserInteractionEnabled:0];
    [(SBUISystemApertureCAPackageButton *)v16 addSubview:v14];
    if (v11)
    {
      [(SBUISystemApertureCAPackageButton *)v16 _updateStateAnimated:0];
    }
  }

  return v16;
}

- (BOOL)setState:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_storeStrong(&self->_state, a3);

  return [(SBUISystemApertureCAPackageButton *)self _updateStateAnimated:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = SBUISystemApertureCAPackageButton;
  v5 = [(SBUISystemApertureCAPackageButton *)&v7 isHighlighted];
  v6.receiver = self;
  v6.super_class = SBUISystemApertureCAPackageButton;
  [(SBUISystemApertureCAPackageButton *)&v6 setHighlighted:v3];
  if (v5 != v3)
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
  v11 = [(SBUISystemApertureCustomContentProvider *)self->_packageProvider providedView];
  [v11 setBounds:{v4, v6, v8, v10}];
  UIRectGetCenter();
  [v11 setCenter:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(SBUISystemApertureCustomContentProvider *)self->_packageProvider providedView];
  [v5 sizeThatFits:{width, height}];
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
  v2 = [(SBUISystemApertureCustomContentProvider *)self->_packageProvider providedView];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)_updateStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self->_state;
  if ([(SBUISystemApertureCAPackageButton *)self isHighlighted])
  {
    v6 = [(NSString *)v5 stringByAppendingString:@"-pressed"];

    v5 = v6;
  }

  v7 = [(SBUISystemApertureCAPackageContentProvider *)self->_packageProvider setState:v5 animated:v3];

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