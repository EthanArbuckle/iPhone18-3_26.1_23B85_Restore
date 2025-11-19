@interface SBMenuBarBackgroundGradientViewGradientLayerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (SBMenuBarBackgroundGradientViewGradientLayerView)initWithMenuBarContentIsLight:(BOOL)a3;
- (void)_setupVariableLayerProperties;
- (void)setMenuBarContentIsLight:(BOOL)a3;
@end

@implementation SBMenuBarBackgroundGradientViewGradientLayerView

- (SBMenuBarBackgroundGradientViewGradientLayerView)initWithMenuBarContentIsLight:(BOOL)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBMenuBarBackgroundGradientViewGradientLayerView;
  v4 = [(SBMenuBarBackgroundGradientViewGradientLayerView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_menuBarContentIsLight = a3;
    v6 = [(SBMenuBarBackgroundGradientViewGradientLayerView *)v4 layer];
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
    v13[0] = [v7 cgColor];
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
    v13[1] = [v8 cgColor];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    [v6 setColors:v9];

    v10 = [(SBMenuBarBackgroundGradientViewGradientLayerView *)v5 layer];
    [v10 setAnchorPoint:{0.0, 0.0}];

    [(SBMenuBarBackgroundGradientViewGradientLayerView *)v5 _setupVariableLayerProperties];
  }

  return v5;
}

- (void)setMenuBarContentIsLight:(BOOL)a3
{
  if (self->_menuBarContentIsLight != a3)
  {
    self->_menuBarContentIsLight = a3;
    [(SBMenuBarBackgroundGradientViewGradientLayerView *)self _setupVariableLayerProperties];
  }
}

- (void)_setupVariableLayerProperties
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(SBMenuBarBackgroundGradientViewGradientLayerView *)self layer];
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
  [v3 setInterpolations:v8];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"interpolations"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"layer.interpolations"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBMenuBarBackgroundGradientViewGradientLayerView;
    v5 = [(SBMenuBarBackgroundGradientViewGradientLayerView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end