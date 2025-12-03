@interface SBMenuBarBackgroundGradientView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (SBMenuBarBackgroundGradientView)initWithMenuBarContentIsLight:(BOOL)light;
- (void)_setupVariableLayerProperties;
- (void)layoutSubviews;
- (void)setMenuBarContentIsLight:(BOOL)light;
@end

@implementation SBMenuBarBackgroundGradientView

- (SBMenuBarBackgroundGradientView)initWithMenuBarContentIsLight:(BOOL)light
{
  lightCopy = light;
  v11.receiver = self;
  v11.super_class = SBMenuBarBackgroundGradientView;
  v4 = [(SBMenuBarBackgroundGradientView *)&v11 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_menuBarContentIsLight = lightCopy;
    [(SBMenuBarBackgroundGradientView *)v4 _setupVariableLayerProperties];
    layer = [(SBMenuBarBackgroundGradientView *)v5 layer];
    v7 = [[SBMenuBarBackgroundGradientViewGradientLayerView alloc] initWithMenuBarContentIsLight:lightCopy];
    [(SBMenuBarBackgroundGradientView *)v5 setGradientView:v7];

    gradientView = [(SBMenuBarBackgroundGradientView *)v5 gradientView];
    layer2 = [gradientView layer];
    [layer setMask:layer2];

    [layer setAllowsHitTesting:0];
    [(SBMenuBarBackgroundGradientView *)v5 setUserInteractionEnabled:0];
  }

  return v5;
}

- (void)setMenuBarContentIsLight:(BOOL)light
{
  if (self->_menuBarContentIsLight != light)
  {
    lightCopy = light;
    self->_menuBarContentIsLight = light;
    [(SBMenuBarBackgroundGradientView *)self _setupVariableLayerProperties];
    gradientView = [(SBMenuBarBackgroundGradientView *)self gradientView];
    [gradientView setMenuBarContentIsLight:lightCopy];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBMenuBarBackgroundGradientView;
  [(SBMenuBarBackgroundGradientView *)&v4 layoutSubviews];
  gradientView = [(SBMenuBarBackgroundGradientView *)self gradientView];
  [(SBMenuBarBackgroundGradientView *)self bounds];
  [gradientView setFrame:?];
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
  layer = [(SBMenuBarBackgroundGradientView *)self layer];
  v9[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [layer setFilters:v6];

  if (self->_menuBarContentIsLight)
  {
    v7 = MEMORY[0x277CDA5D8];
  }

  else
  {
    v7 = MEMORY[0x277CDA5E8];
  }

  v8 = [MEMORY[0x277CD9EA0] filterWithType:*v7];
  [layer setCompositingFilter:v8];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"compositingFilter"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBMenuBarBackgroundGradientView;
    v5 = [(SBMenuBarBackgroundGradientView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end