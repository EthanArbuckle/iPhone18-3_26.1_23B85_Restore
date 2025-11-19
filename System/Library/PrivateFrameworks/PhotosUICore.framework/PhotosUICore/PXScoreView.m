@interface PXScoreView
- (PXScoreView)init;
- (PXScoreView)initWithColorScale:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setScore:(double)a3;
@end

@implementation PXScoreView

- (void)setScore:(double)a3
{
  if (a3 >= 0.0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.2f", *&a3];
    p_label = &self->_label;
    [(UILabel *)self->_label setText:v6];
  }

  else
  {
    p_label = &self->_label;
    [(UILabel *)self->_label setText:@"-"];
  }

  colorScale = self->_colorScale;
  if (colorScale <= 2)
  {
    if (colorScale != 1)
    {
      if (colorScale != 2)
      {
        return;
      }

      v8 = MEMORY[0x1E69DC888];
      v9 = a3 * -2.0 + 1.5;
      v10 = a3 * 2.0 + -0.5;
      goto LABEL_20;
    }

    v8 = MEMORY[0x1E69DC888];
    if (a3 >= 0.5)
    {
      v9 = 1.0 - a3;
      v13 = 0.75;
      v10 = a3;
LABEL_21:
      v17 = [v8 colorWithRed:v9 green:v10 blue:0.1 alpha:v13];
      [(PXScoreView *)self setBackgroundColor:?];
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (colorScale == 3)
  {
    v8 = MEMORY[0x1E69DC888];
    if (a3 < 0.0)
    {
LABEL_16:
      v17 = [v8 redColor];
      v14 = [v17 colorWithAlphaComponent:0.75];
      [(PXScoreView *)self setBackgroundColor:v14];

      goto LABEL_22;
    }

    v15 = 1.5;
    v16 = -2.0;
LABEL_19:
    v9 = v15 + a3 * v16;
    v10 = 1.0;
LABEL_20:
    v13 = 0.75;
    goto LABEL_21;
  }

  if (colorScale != 4)
  {
    return;
  }

  v8 = MEMORY[0x1E69DC888];
  if (a3 >= 0.0)
  {
    v15 = 1.0;
    v16 = -0.5;
    goto LABEL_19;
  }

  v11 = [MEMORY[0x1E69DC888] redColor];
  v12 = [v11 colorWithAlphaComponent:0.75];
  [(PXScoreView *)self setBackgroundColor:v12];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.0f", *&a3];
  [(UILabel *)*p_label setText:?];
LABEL_22:
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PXScoreView;
  [(PXScoreView *)&v5 layoutSubviews];
  label = self->_label;
  [(PXScoreView *)self bounds];
  [(UILabel *)label setFrame:?];
  v4 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:8.0];
  [(UILabel *)self->_label setFont:v4];
}

- (PXScoreView)initWithColorScale:(unint64_t)a3
{
  result = [(PXScoreView *)self init];
  if (result)
  {
    result->_colorScale = a3;
  }

  return result;
}

- (PXScoreView)init
{
  v10.receiver = self;
  v10.super_class = PXScoreView;
  v2 = [(PXScoreView *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v4 = [v3 colorWithAlphaComponent:0.5];
    [(PXScoreView *)v2 setBackgroundColor:v4];

    v5 = [(PXScoreView *)v2 layer];
    [v5 setCornerRadius:3.0];

    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v2->_label;
    v2->_label = v6;

    v8 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v2->_label setTextColor:v8];

    [(UILabel *)v2->_label setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v2->_label setTextAlignment:1];
    [(PXScoreView *)v2 addSubview:v2->_label];
  }

  return v2;
}

@end