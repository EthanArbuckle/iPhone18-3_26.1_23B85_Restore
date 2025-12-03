@interface WFIconComposePreviewView
- (CGSize)intrinsicContentSize;
- (WFIconComposePreviewView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setIcon:(id)icon;
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

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  iconDrawer = [(WFIconComposePreviewView *)self iconDrawer];
  [iconDrawer setIcon:iconCopy];

  [(WFIconComposePreviewView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15.receiver = self;
  v15.super_class = WFIconComposePreviewView;
  [(WFIconComposePreviewView *)&v15 drawRect:?];
  traitCollection = [(WFIconComposePreviewView *)self traitCollection];
  v9 = [traitCollection userInterfaceStyle] == 2;
  iconDrawer = [(WFIconComposePreviewView *)self iconDrawer];
  [iconDrawer setDark:v9];

  v11 = [traitCollection accessibilityContrast] == 1;
  iconDrawer2 = [(WFIconComposePreviewView *)self iconDrawer];
  [iconDrawer2 setHighContrast:v11];

  iconDrawer3 = [(WFIconComposePreviewView *)self iconDrawer];
  v14 = [MEMORY[0x277D79DF8] currentContextWithScale:0.0];
  [iconDrawer3 drawInContext:v14 inRect:{x, y, width, height}];
}

- (WFIconComposePreviewView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = WFIconComposePreviewView;
  v3 = [(WFIconComposePreviewView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(WFIconComposePreviewView *)v3 setContentMode:3];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WFIconComposePreviewView *)v4 setBackgroundColor:clearColor];

    v6 = objc_opt_new();
    iconDrawer = v4->_iconDrawer;
    v4->_iconDrawer = v6;

    v8 = v4;
  }

  return v4;
}

@end