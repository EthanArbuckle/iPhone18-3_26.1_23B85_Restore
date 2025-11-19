@interface WFGlyphView
- (BOOL)outline;
- (UIColor)glyphColor;
- (UIEdgeInsets)glyphInsets;
- (WFGlyphView)initWithFrame:(CGRect)a3;
- (unsigned)glyphCharacter;
- (void)drawRect:(CGRect)a3;
- (void)setGlyphCharacter:(unsigned __int16)a3;
- (void)setGlyphColor:(id)a3;
- (void)setOutline:(BOOL)a3;
@end

@implementation WFGlyphView

- (UIEdgeInsets)glyphInsets
{
  top = self->_glyphInsets.top;
  left = self->_glyphInsets.left;
  bottom = self->_glyphInsets.bottom;
  right = self->_glyphInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setGlyphColor:(id)a3
{
  v8 = a3;
  v4 = [(WFGlyphView *)self glyphColor];
  v5 = [v4 isEqual:v8];

  if ((v5 & 1) == 0)
  {
    v6 = [objc_alloc(MEMORY[0x277D79E20]) initWithPlatformColor:v8];
    v7 = [(WFGlyphView *)self iconDrawer];
    [v7 setGlyphColor:v6];

    [(WFGlyphView *)self setNeedsDisplay];
  }
}

- (UIColor)glyphColor
{
  v2 = [(WFGlyphView *)self iconDrawer];
  v3 = [v2 glyphColor];
  v4 = [v3 UIColor];

  return v4;
}

- (void)setGlyphCharacter:(unsigned __int16)a3
{
  v3 = a3;
  if ([(WFGlyphView *)self glyphCharacter]!= a3)
  {
    v5 = [(WFGlyphView *)self iconDrawer];
    [v5 setGlyphCharacter:v3];

    [(WFGlyphView *)self setNeedsDisplay];
  }
}

- (unsigned)glyphCharacter
{
  v2 = [(WFGlyphView *)self iconDrawer];
  v3 = [v2 glyphCharacter];

  return v3;
}

- (void)setOutline:(BOOL)a3
{
  v3 = a3;
  v4 = [(WFGlyphView *)self iconDrawer];
  [v4 setOutline:v3];
}

- (BOOL)outline
{
  v2 = [(WFGlyphView *)self iconDrawer];
  v3 = [v2 outline];

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19.receiver = self;
  v19.super_class = WFGlyphView;
  [(WFGlyphView *)&v19 drawRect:?];
  v8 = [(WFGlyphView *)self traitCollection];
  v9 = [v8 userInterfaceStyle] == 2;
  v10 = [(WFGlyphView *)self iconDrawer];
  [v10 setDark:v9];

  v11 = [v8 accessibilityContrast] == 1;
  v12 = [(WFGlyphView *)self iconDrawer];
  [v12 setHighContrast:v11];

  v13 = [(WFGlyphView *)self iconDrawer];
  v14 = [MEMORY[0x277D79DF8] currentContextWithScale:0.0];
  [(WFGlyphView *)self glyphInsets];
  [v13 drawInContext:v14 inRect:{x + v18, y + v15, width - (v18 + v16), height - (v15 + v17)}];
}

- (WFGlyphView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = WFGlyphView;
  v3 = [(WFGlyphView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(WFGlyphView *)v3 setBackgroundColor:v4];

    [(WFGlyphView *)v3 setGlyphInsets:5.0, 5.0, 5.0, 5.0];
    [(WFGlyphView *)v3 setContentMode:3];
    v5 = objc_opt_new();
    iconDrawer = v3->_iconDrawer;
    v3->_iconDrawer = v5;

    [(WFWorkflowIconDrawer *)v3->_iconDrawer setDrawBackground:0];
    v7 = v3;
  }

  return v3;
}

@end