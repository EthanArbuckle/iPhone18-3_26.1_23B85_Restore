@interface SBMenuBarBackgroundGradientViewGradientLayerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (SBMenuBarBackgroundGradientViewGradientLayerView)initWithMenuBarContentIsLight:(BOOL)light;
- (void)_setupVariableLayerProperties;
- (void)setMenuBarContentIsLight:(BOOL)light;
@end

@implementation SBMenuBarBackgroundGradientViewGradientLayerView

- (SBMenuBarBackgroundGradientViewGradientLayerView)initWithMenuBarContentIsLight:(BOOL)light
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBMenuBarBackgroundGradientViewGradientLayerView;
  v4 = [(SBMenuBarBackgroundGradientViewGradientLayerView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_menuBarContentIsLight = light;
    layer = [(SBMenuBarBackgroundGradientViewGradientLayerView *)v4 layer];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    v13[0] = [v7 cgColor];
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v13[1] = [v8 cgColor];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    [layer setColors:v9];

    layer2 = [(SBMenuBarBackgroundGradientViewGradientLayerView *)v5 layer];
    [layer2 setAnchorPoint:{0.0, 0.0}];

    [(SBMenuBarBackgroundGradientViewGradientLayerView *)v5 _setupVariableLayerProperties];
  }

  return v5;
}

- (void)setMenuBarContentIsLight:(BOOL)light
{
  if (self->_menuBarContentIsLight != light)
  {
    self->_menuBarContentIsLight = light;
    [(SBMenuBarBackgroundGradientViewGradientLayerView *)self _setupVariableLayerProperties];
  }
}

- (void)_setupVariableLayerProperties
{
  v9[1] = *MEMORY[0x277D85DE8];
  layer = [(SBMenuBarBackgroundGradientViewGradientLayerView *)self layer];
  if (self->_menuBarContentIsLight)
  {
    LODWORD(v5) = 1057805147;
    v4 = 0.0;
  }

  else
  {
    LODWORD(v4) = 1050253722;
    LODWORD(v5) = 1053944709;
  }

  LODWORD(v6) = 1.0;
  v7 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v4 :0.0 :v5 :v6];
  v9[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [layer setInterpolations:v8];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"interpolations"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"layer.interpolations"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBMenuBarBackgroundGradientViewGradientLayerView;
    v5 = [(SBMenuBarBackgroundGradientViewGradientLayerView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end