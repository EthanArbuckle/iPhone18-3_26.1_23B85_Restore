@interface PUPlayheadView
- (PUPlayheadView)initWithFrame:(CGRect)frame;
- (void)_updateLineColor;
- (void)layoutSubviews;
- (void)setPreferredHighlightColor:(id)color;
- (void)tintColorDidChange;
@end

@implementation PUPlayheadView

- (void)_updateLineColor
{
  preferredHighlightColor = [(PUPlayheadView *)self preferredHighlightColor];
  if (preferredHighlightColor)
  {
    goto LABEL_2;
  }

  v5 = +[PUInterfaceManager currentTheme];
  playheadColor = [v5 playheadColor];

  v4 = playheadColor;
  if (!playheadColor)
  {
    preferredHighlightColor = [(PUPlayheadView *)self tintColor];
LABEL_2:
    v4 = preferredHighlightColor;
  }

  v7 = v4;
  [(UIView *)self->_line setBackgroundColor:v4];
}

- (void)setPreferredHighlightColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_preferredHighlightColor != colorCopy)
  {
    v7 = colorCopy;
    colorCopy = [colorCopy isEqual:?];
    v6 = v7;
    if ((colorCopy & 1) == 0)
    {
      objc_storeStrong(&self->_preferredHighlightColor, color);
      colorCopy = [(PUPlayheadView *)self _updateLineColor];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](colorCopy, v6);
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
  traitCollection = [(PUPlayheadView *)self traitCollection];
  [traitCollection displayScale];
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

- (PUPlayheadView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = PUPlayheadView;
  v3 = [(PUPlayheadView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    layer = [(UIView *)v3->_line layer];
    [layer setCornerRadius:1.0];

    [(PUPlayheadView *)v3 addSubview:v3->_line];
    v13 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    outline = v3->_outline;
    v3->_outline = v13;

    layer2 = [(UIView *)v3->_outline layer];
    [layer2 setBorderWidth:1.0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v3->_outline setBackgroundColor:clearColor];

    playheadOutlineColor = [v4 playheadOutlineColor];
    cGColor = [playheadOutlineColor CGColor];
    layer3 = [(UIView *)v3->_outline layer];
    [layer3 setBorderColor:cGColor];

    layer4 = [(UIView *)v3->_outline layer];
    [layer4 setCornerRadius:2.0];

    [(PUPlayheadView *)v3 addSubview:v3->_outline];
    [(PUPlayheadView *)v3 _updateLineColor];
    playheadBackgroundColor = [v4 playheadBackgroundColor];
    [(PUPlayheadView *)v3 setBackgroundColor:playheadBackgroundColor];

    [(PUPlayheadView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

@end