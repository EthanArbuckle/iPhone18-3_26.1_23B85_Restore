@interface WFGlyphView
- (BOOL)outline;
- (UIColor)glyphColor;
- (UIEdgeInsets)glyphInsets;
- (WFGlyphView)initWithFrame:(CGRect)frame;
- (unsigned)glyphCharacter;
- (void)drawRect:(CGRect)rect;
- (void)setGlyphCharacter:(unsigned __int16)character;
- (void)setGlyphColor:(id)color;
- (void)setOutline:(BOOL)outline;
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

- (void)setGlyphColor:(id)color
{
  colorCopy = color;
  glyphColor = [(WFGlyphView *)self glyphColor];
  v5 = [glyphColor isEqual:colorCopy];

  if ((v5 & 1) == 0)
  {
    v6 = [objc_alloc(MEMORY[0x277D79E20]) initWithPlatformColor:colorCopy];
    iconDrawer = [(WFGlyphView *)self iconDrawer];
    [iconDrawer setGlyphColor:v6];

    [(WFGlyphView *)self setNeedsDisplay];
  }
}

- (UIColor)glyphColor
{
  iconDrawer = [(WFGlyphView *)self iconDrawer];
  glyphColor = [iconDrawer glyphColor];
  uIColor = [glyphColor UIColor];

  return uIColor;
}

- (void)setGlyphCharacter:(unsigned __int16)character
{
  characterCopy = character;
  if ([(WFGlyphView *)self glyphCharacter]!= character)
  {
    iconDrawer = [(WFGlyphView *)self iconDrawer];
    [iconDrawer setGlyphCharacter:characterCopy];

    [(WFGlyphView *)self setNeedsDisplay];
  }
}

- (unsigned)glyphCharacter
{
  iconDrawer = [(WFGlyphView *)self iconDrawer];
  glyphCharacter = [iconDrawer glyphCharacter];

  return glyphCharacter;
}

- (void)setOutline:(BOOL)outline
{
  outlineCopy = outline;
  iconDrawer = [(WFGlyphView *)self iconDrawer];
  [iconDrawer setOutline:outlineCopy];
}

- (BOOL)outline
{
  iconDrawer = [(WFGlyphView *)self iconDrawer];
  outline = [iconDrawer outline];

  return outline;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19.receiver = self;
  v19.super_class = WFGlyphView;
  [(WFGlyphView *)&v19 drawRect:?];
  traitCollection = [(WFGlyphView *)self traitCollection];
  v9 = [traitCollection userInterfaceStyle] == 2;
  iconDrawer = [(WFGlyphView *)self iconDrawer];
  [iconDrawer setDark:v9];

  v11 = [traitCollection accessibilityContrast] == 1;
  iconDrawer2 = [(WFGlyphView *)self iconDrawer];
  [iconDrawer2 setHighContrast:v11];

  iconDrawer3 = [(WFGlyphView *)self iconDrawer];
  v14 = [MEMORY[0x277D79DF8] currentContextWithScale:0.0];
  [(WFGlyphView *)self glyphInsets];
  [iconDrawer3 drawInContext:v14 inRect:{x + v18, y + v15, width - (v18 + v16), height - (v15 + v17)}];
}

- (WFGlyphView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = WFGlyphView;
  v3 = [(WFGlyphView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WFGlyphView *)v3 setBackgroundColor:clearColor];

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