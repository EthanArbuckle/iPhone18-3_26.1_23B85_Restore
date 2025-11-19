@interface SBTopAffordanceDotView
+ (CAColorMatrix)darkDefaultColorMatrix;
+ (CAColorMatrix)darkHighlightedColorMatrix;
+ (CAColorMatrix)lightHighlightedColorMatrix;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CAColorMatrix)_effectiveColorMatrix;
- (SBTopAffordanceDotView)initWithFrame:(CGRect)a3;
- (id)_makeBackdropLayerFilters;
- (void)_updateBackdropLayerFilters;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SBTopAffordanceDotView

+ (CAColorMatrix)lightHighlightedColorMatrix
{
  *&retstr->var12 = 0u;
  *&retstr->var16 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var0 = 0u;
  retstr->var18 = 0.75;
  return result;
}

+ (CAColorMatrix)darkDefaultColorMatrix
{
  *&retstr->var0 = xmmword_21F8A68B0;
  *&retstr->var4 = xmmword_21F8A68C0;
  *&retstr->var8 = xmmword_21F8A68D0;
  *&retstr->var12 = xmmword_21F8A68E0;
  *&retstr->var16 = *&byte_21F8A6860[64];
  return result;
}

+ (CAColorMatrix)darkHighlightedColorMatrix
{
  *&retstr->var0 = xmmword_21F8A68F0;
  *&retstr->var4 = xmmword_21F8A6900;
  *&retstr->var8 = xmmword_21F8A6910;
  *&retstr->var12 = xmmword_21F8A6920;
  *&retstr->var16 = *&byte_21F8A6860[64];
  return result;
}

- (SBTopAffordanceDotView)initWithFrame:(CGRect)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SBTopAffordanceDotView;
  v3 = [(SBTopAffordanceDotView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBTopAffordanceDotView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(SBTopAffordanceDotView *)v4 _backdropLayer];
    [v5 setAllowsInPlaceFiltering:1];
    [v5 setCornerCurve:*MEMORY[0x277CDA130]];
    [v5 setCornerRadius:2.5];
    v6 = [(SBTopAffordanceDotView *)v4 _makeBackdropLayerFilters];
    [v5 setFilters:v6];

    v7 = [(SBTopAffordanceDotView *)v4 widthAnchor];
    v8 = [v7 constraintEqualToConstant:5.0];
    v15[0] = v8;
    v9 = [(SBTopAffordanceDotView *)v4 heightAnchor];
    v10 = [(SBTopAffordanceDotView *)v4 widthAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v15[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    [(SBTopAffordanceDotView *)v4 addConstraints:v12];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(SBTopAffordanceDotView *)self _updateBackdropLayerFilters];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBTopAffordanceDotView;
    v5 = [(SBTopAffordanceDotView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (CAColorMatrix)_effectiveColorMatrix
{
  v5 = [(SBTopAffordanceDotView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 != 2)
  {
    if (self->_highlighted)
    {
      result = objc_opt_class();
      if (result)
      {
        result = [(CAColorMatrix *)result lightHighlightedColorMatrix];
        goto LABEL_13;
      }
    }

    else
    {
      result = objc_opt_class();
      if (result)
      {
        result = [(CAColorMatrix *)result lightDefaultColorMatrix];
        goto LABEL_13;
      }
    }

LABEL_12:
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    goto LABEL_13;
  }

  if (!self->_highlighted)
  {
    result = objc_opt_class();
    if (result)
    {
      result = [(CAColorMatrix *)result darkDefaultColorMatrix];
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  result = objc_opt_class();
  if (!result)
  {
    goto LABEL_12;
  }

  result = [(CAColorMatrix *)result darkHighlightedColorMatrix];
LABEL_13:
  *&retstr->var8 = v10;
  *&retstr->var12 = v11;
  *&retstr->var16 = v12;
  *&retstr->var0 = v8;
  *&retstr->var4 = v9;
  return result;
}

- (id)_makeBackdropLayerFilters
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
  [v3 setName:@"colorMatrix"];
  v4 = MEMORY[0x277CCAE60];
  [(SBTopAffordanceDotView *)self _effectiveColorMatrix];
  v5 = [v4 valueWithCAColorMatrix:&v8];
  [v3 setValue:v5 forKey:*MEMORY[0x277CDA440]];

  v9[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  return v6;
}

- (void)_updateBackdropLayerFilters
{
  v3 = [(SBTopAffordanceDotView *)self _backdropLayer];
  v4 = MEMORY[0x277CCAE60];
  [(SBTopAffordanceDotView *)self _effectiveColorMatrix];
  v5 = [v4 valueWithCAColorMatrix:&v6];
  [v3 setValue:v5 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];
}

@end