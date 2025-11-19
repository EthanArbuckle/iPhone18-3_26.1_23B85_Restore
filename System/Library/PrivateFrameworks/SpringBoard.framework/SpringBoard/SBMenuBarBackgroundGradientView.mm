@interface SBMenuBarBackgroundGradientView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (SBMenuBarBackgroundGradientView)initWithMenuBarContentIsLight:(BOOL)a3;
- (void)_setupVariableLayerProperties;
- (void)layoutSubviews;
- (void)setMenuBarContentIsLight:(BOOL)a3;
@end

@implementation SBMenuBarBackgroundGradientView

- (SBMenuBarBackgroundGradientView)initWithMenuBarContentIsLight:(BOOL)a3
{
  v3 = a3;
  v11.receiver = self;
  v11.super_class = SBMenuBarBackgroundGradientView;
  v4 = [(SBMenuBarBackgroundGradientView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_menuBarContentIsLight = v3;
    [(SBMenuBarBackgroundGradientView *)v4 _setupVariableLayerProperties];
    v6 = [(SBMenuBarBackgroundGradientView *)v5 layer];
    v7 = [[SBMenuBarBackgroundGradientViewGradientLayerView alloc] initWithMenuBarContentIsLight:v3];
    [(SBMenuBarBackgroundGradientView *)v5 setGradientView:v7];

    v8 = [(SBMenuBarBackgroundGradientView *)v5 gradientView];
    v9 = [v8 layer];
    [v6 setMask:v9];

    [v6 setAllowsHitTesting:0];
    [(SBMenuBarBackgroundGradientView *)v5 setUserInteractionEnabled:0];
  }

  return v5;
}

- (void)setMenuBarContentIsLight:(BOOL)a3
{
  if (self->_menuBarContentIsLight != a3)
  {
    v4 = a3;
    self->_menuBarContentIsLight = a3;
    [(SBMenuBarBackgroundGradientView *)self _setupVariableLayerProperties];
    v6 = [(SBMenuBarBackgroundGradientView *)self gradientView];
    [v6 setMenuBarContentIsLight:v4];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBMenuBarBackgroundGradientView;
  [(SBMenuBarBackgroundGradientView *)&v4 layoutSubviews];
  v3 = [(SBMenuBarBackgroundGradientView *)self gradientView];
  [(SBMenuBarBackgroundGradientView *)self bounds];
  [v3 setFrame:?];
}

- (void)_setupVariableLayerProperties
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA580]];
  [v3 setName:@"luminanceCurveMap"];
  if (self->_menuBarContentIsLight)
  {
    v4 = &unk_28336E868;
  }

  else
  {
    v4 = &unk_28336E880;
  }

  [v3 setValue:v4 forKey:*MEMORY[0x277CDA540]];
  v5 = [(SBMenuBarBackgroundGradientView *)self layer];
  v9[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v5 setFilters:v6];

  if (self->_menuBarContentIsLight)
  {
    v7 = MEMORY[0x277CDA5D8];
  }

  else
  {
    v7 = MEMORY[0x277CDA5E8];
  }

  v8 = [MEMORY[0x277CD9EA0] filterWithType:*v7];
  [v5 setCompositingFilter:v8];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"compositingFilter"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBMenuBarBackgroundGradientView;
    v5 = [(SBMenuBarBackgroundGradientView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end