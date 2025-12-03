@interface PXScoreView
- (PXScoreView)init;
- (PXScoreView)initWithColorScale:(unint64_t)scale;
- (void)layoutSubviews;
- (void)setScore:(double)score;
@end

@implementation PXScoreView

- (void)setScore:(double)score
{
  if (score >= 0.0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.2f", *&score];
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
      v9 = score * -2.0 + 1.5;
      scoreCopy = score * 2.0 + -0.5;
      goto LABEL_20;
    }

    v8 = MEMORY[0x1E69DC888];
    if (score >= 0.5)
    {
      v9 = 1.0 - score;
      v13 = 0.75;
      scoreCopy = score;
LABEL_21:
      redColor = [v8 colorWithRed:v9 green:scoreCopy blue:0.1 alpha:v13];
      [(PXScoreView *)self setBackgroundColor:?];
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (colorScale == 3)
  {
    v8 = MEMORY[0x1E69DC888];
    if (score < 0.0)
    {
LABEL_16:
      redColor = [v8 redColor];
      v14 = [redColor colorWithAlphaComponent:0.75];
      [(PXScoreView *)self setBackgroundColor:v14];

      goto LABEL_22;
    }

    v15 = 1.5;
    v16 = -2.0;
LABEL_19:
    v9 = v15 + score * v16;
    scoreCopy = 1.0;
LABEL_20:
    v13 = 0.75;
    goto LABEL_21;
  }

  if (colorScale != 4)
  {
    return;
  }

  v8 = MEMORY[0x1E69DC888];
  if (score >= 0.0)
  {
    v15 = 1.0;
    v16 = -0.5;
    goto LABEL_19;
  }

  redColor2 = [MEMORY[0x1E69DC888] redColor];
  v12 = [redColor2 colorWithAlphaComponent:0.75];
  [(PXScoreView *)self setBackgroundColor:v12];

  redColor = [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.0f", *&score];
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

- (PXScoreView)initWithColorScale:(unint64_t)scale
{
  result = [(PXScoreView *)self init];
  if (result)
  {
    result->_colorScale = scale;
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
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v4 = [systemBackgroundColor colorWithAlphaComponent:0.5];
    [(PXScoreView *)v2 setBackgroundColor:v4];

    layer = [(PXScoreView *)v2 layer];
    [layer setCornerRadius:3.0];

    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v2->_label;
    v2->_label = v6;

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v2->_label setTextColor:labelColor];

    [(UILabel *)v2->_label setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v2->_label setTextAlignment:1];
    [(PXScoreView *)v2 addSubview:v2->_label];
  }

  return v2;
}

@end