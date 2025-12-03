@interface SBTopAffordanceDotView
+ (CAColorMatrix)darkDefaultColorMatrix;
+ (CAColorMatrix)darkHighlightedColorMatrix;
+ (CAColorMatrix)lightHighlightedColorMatrix;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CAColorMatrix)_effectiveColorMatrix;
- (SBTopAffordanceDotView)initWithFrame:(CGRect)frame;
- (id)_makeBackdropLayerFilters;
- (void)_updateBackdropLayerFilters;
- (void)setHighlighted:(BOOL)highlighted;
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

- (SBTopAffordanceDotView)initWithFrame:(CGRect)frame
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SBTopAffordanceDotView;
  v3 = [(SBTopAffordanceDotView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBTopAffordanceDotView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    _backdropLayer = [(SBTopAffordanceDotView *)v4 _backdropLayer];
    [_backdropLayer setAllowsInPlaceFiltering:1];
    [_backdropLayer setCornerCurve:*MEMORY[0x277CDA130]];
    [_backdropLayer setCornerRadius:2.5];
    _makeBackdropLayerFilters = [(SBTopAffordanceDotView *)v4 _makeBackdropLayerFilters];
    [_backdropLayer setFilters:_makeBackdropLayerFilters];

    widthAnchor = [(SBTopAffordanceDotView *)v4 widthAnchor];
    v8 = [widthAnchor constraintEqualToConstant:5.0];
    v15[0] = v8;
    heightAnchor = [(SBTopAffordanceDotView *)v4 heightAnchor];
    widthAnchor2 = [(SBTopAffordanceDotView *)v4 widthAnchor];
    v11 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v15[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    [(SBTopAffordanceDotView *)v4 addConstraints:v12];
  }

  return v4;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(SBTopAffordanceDotView *)self _updateBackdropLayerFilters];
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.colorMatrix.inputColorMatrix"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBTopAffordanceDotView;
    v5 = [(SBTopAffordanceDotView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (CAColorMatrix)_effectiveColorMatrix
{
  traitCollection = [(SBTopAffordanceDotView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != 2)
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
  _backdropLayer = [(SBTopAffordanceDotView *)self _backdropLayer];
  v4 = MEMORY[0x277CCAE60];
  [(SBTopAffordanceDotView *)self _effectiveColorMatrix];
  v5 = [v4 valueWithCAColorMatrix:&v6];
  [_backdropLayer setValue:v5 forKeyPath:@"filters.colorMatrix.inputColorMatrix"];
}

@end