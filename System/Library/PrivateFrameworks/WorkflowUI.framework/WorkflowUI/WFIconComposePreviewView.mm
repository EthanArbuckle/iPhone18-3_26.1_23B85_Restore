@interface WFIconComposePreviewView
- (CGSize)intrinsicContentSize;
- (WFIconComposePreviewView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setIcon:(id)a3;
@end

@implementation WFIconComposePreviewView

- (CGSize)intrinsicContentSize
{
  v2 = 150.0;
  v3 = 150.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setIcon:(id)a3
{
  v4 = a3;
  v5 = [(WFIconComposePreviewView *)self iconDrawer];
  [v5 setIcon:v4];

  [(WFIconComposePreviewView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15.receiver = self;
  v15.super_class = WFIconComposePreviewView;
  [(WFIconComposePreviewView *)&v15 drawRect:?];
  v8 = [(WFIconComposePreviewView *)self traitCollection];
  v9 = [v8 userInterfaceStyle] == 2;
  v10 = [(WFIconComposePreviewView *)self iconDrawer];
  [v10 setDark:v9];

  v11 = [v8 accessibilityContrast] == 1;
  v12 = [(WFIconComposePreviewView *)self iconDrawer];
  [v12 setHighContrast:v11];

  v13 = [(WFIconComposePreviewView *)self iconDrawer];
  v14 = [MEMORY[0x277D79DF8] currentContextWithScale:0.0];
  [v13 drawInContext:v14 inRect:{x, y, width, height}];
}

- (WFIconComposePreviewView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = WFIconComposePreviewView;
  v3 = [(WFIconComposePreviewView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(WFIconComposePreviewView *)v3 setContentMode:3];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(WFIconComposePreviewView *)v4 setBackgroundColor:v5];

    v6 = objc_opt_new();
    iconDrawer = v4->_iconDrawer;
    v4->_iconDrawer = v6;

    v8 = v4;
  }

  return v4;
}

@end