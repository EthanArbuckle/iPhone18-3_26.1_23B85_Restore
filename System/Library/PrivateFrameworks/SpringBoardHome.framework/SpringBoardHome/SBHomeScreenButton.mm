@interface SBHomeScreenButton
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (UIEdgeInsets)backgroundInsets;
- (id)_initWithFrame:(CGRect)a3 backgroundView:(id)a4 material:(int64_t)a5 wantsGlass:(BOOL)a6 wantsRimHighlight:(BOOL)a7;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
@end

@implementation SBHomeScreenButton

- (id)_initWithFrame:(CGRect)a3 backgroundView:(id)a4 material:(int64_t)a5 wantsGlass:(BOOL)a6 wantsRimHighlight:(BOOL)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v27[3] = *MEMORY[0x1E69E9840];
  v16 = a4;
  v26.receiver = self;
  v26.super_class = SBHomeScreenButton;
  v17 = [(SBHomeScreenButton *)&v26 initWithFrame:x, y, width, height];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_backgroundView, a4);
    v18->_material = a5;
    v18->_wantsGlass = a6;
    v18->_wantsRimHighlight = a7;
    v19 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979848]];
    [v19 setName:@"highlightBrightness"];
    [v19 setValue:&unk_1F3DB2AA8 forKey:@"inputAmount"];
    v20 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
    [v20 setName:@"highlightSaturation"];
    [v20 setValue:&unk_1F3DB2AB8 forKey:@"inputAmount"];
    v21 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    [v21 setName:@"enabledMultiplyColor"];
    v22 = [MEMORY[0x1E69DC888] whiteColor];
    [v21 setValue:objc_msgSend(v22 forKeyPath:{"CGColor"), @"inputColor"}];

    v23 = [(SBHomeScreenButton *)v18 layer];
    v27[0] = v19;
    v27[1] = v20;
    v27[2] = v21;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
    [v23 setFilters:v24];
  }

  return v18;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = SBHomeScreenButton;
  [(SBHomeScreenButton *)&v14 layoutSubviews];
  materialView = self->_materialView;
  if (!materialView)
  {
    wantsGlass = self->_wantsGlass;
    if (wantsGlass)
    {
      if (self->_material == 3)
      {
        wantsGlass = 0;
LABEL_8:
        [(SBHomeScreenMaterialView *)self->_materialView setUserInteractionEnabled:wantsGlass];
        v13 = self->_materialView;
        [(SBHomeScreenButton *)self backgroundInsets];
        [(SBHomeScreenMaterialView *)v13 setBackgroundInsets:?];
        [(SBHomeScreenMaterialView *)self->_materialView setLegibilitySettings:self->_legibilitySettings];
        [(SBHomeScreenButton *)self addSubview:self->_materialView];
        materialView = self->_materialView;
        goto LABEL_9;
      }

      v10 = [SBHomeScreenMaterialView alloc];
      material = self->_material;
      v7 = [(SBHomeScreenButton *)self defaultContentImage];
      v9 = [(SBHomeScreenMaterialView *)v10 initWithFrame:material material:v7 foregroundImage:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    else
    {
      v5 = [SBHomeScreenMaterialView alloc];
      backgroundView = self->_backgroundView;
      v7 = [(SBHomeScreenButton *)self defaultContentImage];
      v8 = [(SBHomeScreenButton *)self wantsRimHighlight];
      v9 = [(SBHomeScreenMaterialView *)v5 initWithFrame:backgroundView backgroundView:v7 foregroundImage:v8 wantsRimHighlight:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    v12 = self->_materialView;
    self->_materialView = v9;

    goto LABEL_8;
  }

LABEL_9:
  [(SBHomeScreenButton *)self bounds];
  [(SBHomeScreenMaterialView *)materialView setFrame:?];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHomeScreenButton *)self isHighlighted];
  v13.receiver = self;
  v13.super_class = SBHomeScreenButton;
  [(SBHomeScreenButton *)&v13 setHighlighted:v3];
  if (v5 != v3)
  {
    v6 = [(SBHomeScreenButton *)self layer];
    v7 = v6;
    if (v3)
    {
      [v6 setValue:&unk_1F3DB2AC8 forKeyPath:@"filters.highlightBrightness.inputAmount"];
      v8 = [(SBHomeScreenButton *)self traitCollection];
      v9 = [v8 userInterfaceStyle];

      if (v9 == 2)
      {
        [v7 setValue:&unk_1F3DB2AD8 forKeyPath:@"filters.highlightSaturation.inputAmount"];
      }
    }

    else
    {
      v10 = MEMORY[0x1E69DD250];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __37__SBHomeScreenButton_setHighlighted___block_invoke;
      v11[3] = &unk_1E8088C90;
      v12 = v6;
      [v10 animateWithDuration:2 delay:v11 options:0 animations:0.3 completion:0.0];
    }
  }
}

uint64_t __37__SBHomeScreenButton_setHighlighted___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setValue:&unk_1F3DB2AA8 forKeyPath:@"filters.highlightBrightness.inputAmount"];
  v2 = *(a1 + 32);

  return [v2 setValue:&unk_1F3DB2AB8 forKeyPath:@"filters.highlightSaturation.inputAmount"];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHomeScreenButton *)self isEnabled];
  v15.receiver = self;
  v15.super_class = SBHomeScreenButton;
  [(SBHomeScreenButton *)&v15 setEnabled:v3];
  if (v5 != v3)
  {
    v6 = [(SBHomeScreenButton *)self layer];
    v7 = 0.5;
    if (v3)
    {
      v7 = 1.0;
    }

    v8 = [MEMORY[0x1E69DC888] colorWithWhite:v7 alpha:?];
    v9 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__SBHomeScreenButton_setEnabled___block_invoke;
    v12[3] = &unk_1E8088F18;
    v13 = v6;
    v14 = v8;
    v10 = v8;
    v11 = v6;
    [v9 animateWithDuration:2 delay:v12 options:0 animations:0.3 completion:0.0];
  }
}

uint64_t __33__SBHomeScreenButton_setEnabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) CGColor];

  return [v1 setValue:v2 forKeyPath:@"filters.enabledMultiplyColor.inputColor"];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.highlightBrightness.inputAmount"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"filters.highlightSaturation.inputAmount") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"filters.enabledMultiplyColor.inputColor"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBHomeScreenButton;
    v5 = [(SBHomeScreenButton *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (UIEdgeInsets)backgroundInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (self->_legibilitySettings != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBHomeScreenMaterialView *)self->_materialView setLegibilitySettings:self->_legibilitySettings];
    v5 = v6;
  }
}

@end