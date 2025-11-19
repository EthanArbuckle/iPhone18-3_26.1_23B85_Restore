@interface PUPlayheadView
- (PUPlayheadView)initWithFrame:(CGRect)a3;
- (void)_updateLineColor;
- (void)layoutSubviews;
- (void)setPreferredHighlightColor:(id)a3;
- (void)tintColorDidChange;
@end

@implementation PUPlayheadView

- (void)_updateLineColor
{
  v3 = [(PUPlayheadView *)self preferredHighlightColor];
  if (v3)
  {
    goto LABEL_2;
  }

  v5 = +[PUInterfaceManager currentTheme];
  v6 = [v5 playheadColor];

  v4 = v6;
  if (!v6)
  {
    v3 = [(PUPlayheadView *)self tintColor];
LABEL_2:
    v4 = v3;
  }

  v7 = v4;
  [(UIView *)self->_line setBackgroundColor:v4];
}

- (void)setPreferredHighlightColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_preferredHighlightColor != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_preferredHighlightColor, a3);
      v5 = [(PUPlayheadView *)self _updateLineColor];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = PUPlayheadView;
  [(PUPlayheadView *)&v24 layoutSubviews];
  [(PUPlayheadView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PUPlayheadView *)self traitCollection];
  [v11 displayScale];
  v13 = v12;

  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v14 = (CGRectGetWidth(v25) + -2.0) * 0.5;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v15 = CGRectGetMinY(v26) + 1.0;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  v16 = round(v13 * (v15 + CGRectGetHeight(v27) + -2.0)) / v13;
  v17 = round(v13 * v14) / v13;
  v18 = round(v13 * v15) / v13;
  [(UIView *)self->_line setFrame:v17, v18, round(v13 * (v14 + 2.0)) / v13 - v17, v16 - v18];
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  v19 = (CGRectGetWidth(v28) + -4.0) * 0.5;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  MinY = CGRectGetMinY(v29);
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  v21 = round(v13 * (MinY + CGRectGetHeight(v30))) / v13;
  v22 = round(v13 * v19) / v13;
  v23 = round(v13 * MinY) / v13;
  [(UIView *)self->_outline setFrame:v22, v23, round(v13 * (v19 + 4.0)) / v13 - v22, v21 - v23];
  [(PUPlayheadView *)self _updateLineColor];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = PUPlayheadView;
  [(PUPlayheadView *)&v3 tintColorDidChange];
  [(PUPlayheadView *)self _updateLineColor];
}

- (PUPlayheadView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = PUPlayheadView;
  v3 = [(PUPlayheadView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[PUInterfaceManager currentTheme];
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    line = v3->_line;
    v3->_line = v10;

    v12 = [(UIView *)v3->_line layer];
    [v12 setCornerRadius:1.0];

    [(PUPlayheadView *)v3 addSubview:v3->_line];
    v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    outline = v3->_outline;
    v3->_outline = v13;

    v15 = [(UIView *)v3->_outline layer];
    [v15 setBorderWidth:1.0];

    v16 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v3->_outline setBackgroundColor:v16];

    v17 = [v4 playheadOutlineColor];
    v18 = [v17 CGColor];
    v19 = [(UIView *)v3->_outline layer];
    [v19 setBorderColor:v18];

    v20 = [(UIView *)v3->_outline layer];
    [v20 setCornerRadius:2.0];

    [(PUPlayheadView *)v3 addSubview:v3->_outline];
    [(PUPlayheadView *)v3 _updateLineColor];
    v21 = [v4 playheadBackgroundColor];
    [(PUPlayheadView *)v3 setBackgroundColor:v21];

    [(PUPlayheadView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

@end