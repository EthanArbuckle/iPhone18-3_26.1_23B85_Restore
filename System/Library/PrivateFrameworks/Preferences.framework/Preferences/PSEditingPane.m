@interface PSEditingPane
+ (id)defaultBackgroundColor;
- (BOOL)shouldInsetContent;
- (PSEditingPane)initWithFrame:(CGRect)a3;
- (UIViewController)viewController;
- (id)scrollViewToBeInsetted;
- (void)insetContent;
- (void)layoutInsetContent:(CGRect)a3;
- (void)setPreferenceSpecifier:(id)a3;
@end

@implementation PSEditingPane

+ (id)defaultBackgroundColor
{
  v2 = +[PSListController appearance];
  v3 = [v2 backgroundColor];

  if (v3)
  {
    v4 = +[PSListController appearance];
    v5 = [v4 backgroundColor];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  return v5;
}

- (PSEditingPane)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PSEditingPane;
  v3 = [(PSEditingPane *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PSEditingPane *)v3 setAutoresizingMask:18];
  }

  return v4;
}

- (void)setPreferenceSpecifier:(id)a3
{
  v5 = a3;
  if (self->_specifier != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_specifier, a3);
    v5 = v6;
  }
}

- (BOOL)shouldInsetContent
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v2 sf_isiPad])
  {
    v3 = PSIsRunningInAssistant() ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)insetContent
{
  v3 = [(PSEditingPane *)self scrollViewToBeInsetted];
  if (v3)
  {
    v5 = v3;
    [v3 setScrollIndicatorInsets:{0.0, 0.0, 0.0, -PSTableViewSideInset()}];
    [v5 setClipsToBounds:0];
    v4 = [MEMORY[0x1E69DC888] groupTableViewBackgroundColor];
    [(PSEditingPane *)self setBackgroundColor:v4];

    v3 = v5;
  }
}

- (void)layoutInsetContent:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PSEditingPane *)self scrollViewToBeInsetted];
  if (v7)
  {
    v9 = v7;
    v8 = PSTableViewSideInset();
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    v12 = CGRectInset(v11, v8, 0.0);
    [v9 setFrame:{v12.origin.x, v12.origin.y, v12.size.width, v12.size.height}];
    v7 = v9;
  }
}

- (id)scrollViewToBeInsetted
{
  v3 = objc_opt_class();

  return PSFindViewOfClass(self, v3);
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end