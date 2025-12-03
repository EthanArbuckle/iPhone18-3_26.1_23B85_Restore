@interface PSEditingPane
+ (id)defaultBackgroundColor;
- (BOOL)shouldInsetContent;
- (PSEditingPane)initWithFrame:(CGRect)frame;
- (UIViewController)viewController;
- (id)scrollViewToBeInsetted;
- (void)insetContent;
- (void)layoutInsetContent:(CGRect)content;
- (void)setPreferenceSpecifier:(id)specifier;
@end

@implementation PSEditingPane

+ (id)defaultBackgroundColor
{
  v2 = +[PSListController appearance];
  backgroundColor = [v2 backgroundColor];

  if (backgroundColor)
  {
    v4 = +[PSListController appearance];
    backgroundColor2 = [v4 backgroundColor];
  }

  else
  {
    backgroundColor2 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  return backgroundColor2;
}

- (PSEditingPane)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PSEditingPane;
  v3 = [(PSEditingPane *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PSEditingPane *)v3 setAutoresizingMask:18];
  }

  return v4;
}

- (void)setPreferenceSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (self->_specifier != specifierCopy)
  {
    v6 = specifierCopy;
    objc_storeStrong(&self->_specifier, specifier);
    specifierCopy = v6;
  }
}

- (BOOL)shouldInsetContent
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice sf_isiPad])
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
  scrollViewToBeInsetted = [(PSEditingPane *)self scrollViewToBeInsetted];
  if (scrollViewToBeInsetted)
  {
    v5 = scrollViewToBeInsetted;
    [scrollViewToBeInsetted setScrollIndicatorInsets:{0.0, 0.0, 0.0, -PSTableViewSideInset()}];
    [v5 setClipsToBounds:0];
    groupTableViewBackgroundColor = [MEMORY[0x1E69DC888] groupTableViewBackgroundColor];
    [(PSEditingPane *)self setBackgroundColor:groupTableViewBackgroundColor];

    scrollViewToBeInsetted = v5;
  }
}

- (void)layoutInsetContent:(CGRect)content
{
  height = content.size.height;
  width = content.size.width;
  y = content.origin.y;
  x = content.origin.x;
  scrollViewToBeInsetted = [(PSEditingPane *)self scrollViewToBeInsetted];
  if (scrollViewToBeInsetted)
  {
    v9 = scrollViewToBeInsetted;
    v8 = PSTableViewSideInset();
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    v12 = CGRectInset(v11, v8, 0.0);
    [v9 setFrame:{v12.origin.x, v12.origin.y, v12.size.width, v12.size.height}];
    scrollViewToBeInsetted = v9;
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