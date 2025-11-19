@interface TVRatingBadgeView
+ (id)ratingBadgeViewWithValue:(double)a3 layout:(id)a4 existingBadgeView:(id)a5;
- (CGSize)_starSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TVRatingBadgeView)initWithFrame:(CGRect)a3;
- (double)_circleRadius;
- (double)_interitemSpacing;
- (double)_starHeight;
- (id)_halfStarImage;
- (id)_ratingStyle;
- (id)_starImage;
- (id)_tintColor;
- (void)drawRect:(CGRect)a3;
- (void)setRatingValue:(double)a3;
@end

@implementation TVRatingBadgeView

+ (id)ratingBadgeViewWithValue:(double)a3 layout:(id)a4 existingBadgeView:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }

  v10 = v9;
  [v9 setRatingBadgeLayout:v7];
  [v10 setRatingValue:a3];
  [v10 setNeedsDisplay];

  return v10;
}

- (TVRatingBadgeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TVRatingBadgeView;
  v3 = [(TVRatingBadgeView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(TVRatingBadgeView *)v3 setBackgroundColor:v4];

    [(TVRatingBadgeView *)v3 setOpaque:0];
  }

  return v3;
}

- (void)setRatingValue:(double)a3
{
  if (self->_ratingValue != a3)
  {
    self->_ratingValue = a3;
    [(TVRatingBadgeView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(TVRatingBadgeView *)self _starImage:a3.origin.x];
  [(TVViewLayout *)self->_ratingBadgeLayout padding];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(TVRatingBadgeView *)self _interitemSpacing];
  v14 = v13;
  v15 = [(TVRatingBadgeView *)self effectiveUserInterfaceLayoutDirection];
  if (v4)
  {
    v16 = [(TVRatingBadgeView *)self _halfStarImage];
    v17 = [(TVRatingBadgeView *)self _tintColor];
    v18 = [v4 _flatImageWithColor:v17];

    v19 = [(TVRatingBadgeView *)self _tintColor];
    v20 = [v19 colorWithAlphaComponent:0.3];
    v21 = [v4 _flatImageWithColor:v20];

    v22 = [(TVRatingBadgeView *)self _tintColor];
    v23 = [v16 _flatImageWithColor:v22];

    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2020000000;
    *&v70[3] = v8;
    ratingValue = self->_ratingValue;
    [(TVRatingBadgeView *)self _starSize];
    v26 = v25;
    v28 = v27;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __30__TVRatingBadgeView_drawRect___block_invoke;
    v56[3] = &unk_279D6FE10;
    v29 = v21;
    v57 = v29;
    v62 = round(ratingValue * 10.0) * 0.5;
    v30 = v18;
    v58 = v30;
    v31 = v23;
    v60 = self;
    v61 = v70;
    v63 = v6;
    v64 = v8;
    v65 = v10;
    v66 = v12;
    v67 = v26;
    v68 = v28;
    v59 = v31;
    v69 = v14;
    v32 = MEMORY[0x26D6AFBB0](v56);
    if (v15 == 1)
    {
      v33 = 5;
      do
      {
        v32[2](v32, v33--);
      }

      while (v33);
    }

    else
    {
      for (i = 1; i != 6; ++i)
      {
        v32[2](v32, i);
      }
    }

    _Block_object_dispose(v70, 8);
  }

  else
  {
    v34 = [(TVRatingBadgeLayout *)self->_ratingBadgeLayout fillColor];
    v35 = [v34 CGColor];

    v36 = [(TVRatingBadgeView *)self _tintColor];
    v37 = [v36 CGColor];

    if (v15 == 1)
    {
      v38 = v37;
    }

    else
    {
      v38 = v35;
    }

    if (v15 == 1)
    {
      v39 = v35;
    }

    else
    {
      v39 = v37;
    }

    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(CurrentContext, v8, v10);
    v41 = round(self->_ratingValue * 10.0) * 0.5;
    [(TVRatingBadgeView *)self _circleRadius];
    v43 = v42;
    v44 = v42 + v42;
    UIRectGetCenter();
    v46 = v45;
    v48 = v47;
    Mutable = CGPathCreateMutable();
    CGPathAddArc(Mutable, 0, v46, v48, v43, 4.71238898, 1.57079633, 1);
    v50 = CGPathCreateMutable();
    CGPathAddArc(v50, 0, v46, v48, v43, 4.71238898, 1.57079633, 0);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __30__TVRatingBadgeView_drawRect___block_invoke_2;
    v55[3] = &unk_279D6FE38;
    *&v55[5] = v41;
    v55[6] = CurrentContext;
    v55[7] = Mutable;
    v55[8] = v50;
    v55[9] = v35;
    v55[10] = v38;
    v55[11] = v39;
    v55[13] = 0;
    v55[14] = 0;
    v55[12] = v37;
    *&v55[15] = v44;
    *&v55[16] = v44;
    v55[4] = self;
    v51 = MEMORY[0x26D6AFBB0](v55);
    if (v15 == 1)
    {
      v52 = 5;
      do
      {
        v51[2](v51, v52--);
      }

      while (v52);
    }

    else
    {
      for (j = 1; j != 6; ++j)
      {
        v51[2](v51, j);
      }
    }

    CGPathRelease(Mutable);
    CGPathRelease(v50);
  }
}

void __30__TVRatingBadgeView_drawRect___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  v10 = v4;
  if (v5 >= a2)
  {
    v7 = 40;
  }

  else
  {
    if (v5 <= (a2 - 1) || v5 >= a2)
    {
      goto LABEL_10;
    }

    v7 = 48;
  }

  v8 = *(a1 + v7);

  v10 = v8;
LABEL_10:
  v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v10];
  [v9 setFrame:{*(*(*(a1 + 64) + 8) + 24), *(a1 + 80), *(a1 + 112), *(a1 + 120)}];
  [*(a1 + 56) addSubview:v9];
  *(*(*(a1 + 64) + 8) + 24) = *(a1 + 112) + *(a1 + 128) + *(*(*(a1 + 64) + 8) + 24);
}

void __30__TVRatingBadgeView_drawRect___block_invoke_2(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  if (v3 >= a2)
  {
    v6 = (a1 + 48);
    CGContextAddPath(*(a1 + 48), *(a1 + 56));
    v9 = 72;
  }

  else
  {
    v5 = (a2 - 1);
    v6 = (a1 + 48);
    CGContextAddPath(*(a1 + 48), *(a1 + 56));
    v7 = *(a1 + 48);
    if (v3 <= v5 || v3 >= v4)
    {
      v9 = 96;
      goto LABEL_10;
    }

    CGContextSetFillColorWithColor(v7, *(a1 + 80));
    CGContextDrawPath(*(a1 + 48), kCGPathFill);
    v9 = 88;
  }

  v7 = *v6;
LABEL_10:
  CGContextAddPath(v7, *(a1 + 64));
  CGContextSetFillColorWithColor(*(a1 + 48), *(a1 + v9));
  CGContextDrawPath(*(a1 + 48), kCGPathFill);
  v10 = *(a1 + 48);
  Width = CGRectGetWidth(*(a1 + 104));
  [*(a1 + 32) _interitemSpacing];
  v13 = Width + v12;

  CGContextTranslateCTM(v10, v13, 0.0);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(TVRatingBadgeView *)self _starImage:a3.width];
  [(TVViewLayout *)self->_ratingBadgeLayout padding];
  v6 = v5;
  v8 = v7;
  v11 = v9 + v10;
  if (v4)
  {
    [(TVRatingBadgeView *)self _starSize];
    v13 = v11 + v12;
    [(TVRatingBadgeView *)self _starSize];
  }

  else
  {
    [(TVRatingBadgeView *)self _circleRadius];
    v13 = v11 + v15 * 2.0;
    [(TVRatingBadgeView *)self _circleRadius];
    v14 = v16 + v16;
  }

  v17 = v6 + v8 + v14 * 5.0;
  [(TVRatingBadgeView *)self _interitemSpacing];
  v19 = v17 + v18 * 4.0;

  v20 = v19;
  v21 = v13;
  result.height = v21;
  result.width = v20;
  return result;
}

- (id)_tintColor
{
  v3 = [(TVRatingBadgeView *)self traitCollection];
  v4 = v3;
  if (v3 && [v3 userInterfaceStyle] == 2 && (-[TVViewLayout darkTintColor](self->_ratingBadgeLayout, "darkTintColor"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(TVViewLayout *)self->_ratingBadgeLayout darkTintColor];
  }

  else
  {
    v6 = [(TVViewLayout *)self->_ratingBadgeLayout tintColor];
  }

  v7 = v6;

  return v7;
}

- (double)_interitemSpacing
{
  v3 = [(TVRatingBadgeView *)self traitCollection];
  [(TVRatingBadgeLayout *)self->_ratingBadgeLayout interitemSpacing];
  v5 = v4;
  if (v3)
  {
    v6 = [v3 preferredContentSizeCategory];
    if ([TVMLUtilities isAXSmallEnabled:v6])
    {
      [(TVRatingBadgeLayout *)self->_ratingBadgeLayout interitemSpacingAXSmall];
      v8 = v7;

      if (v8 > 0.0)
      {
        [(TVRatingBadgeLayout *)self->_ratingBadgeLayout interitemSpacingAXSmall];
LABEL_9:
        v5 = v9;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v10 = [v3 preferredContentSizeCategory];
    if (![TVMLUtilities isAXLargeEnabled:v10])
    {

      goto LABEL_11;
    }

    [(TVRatingBadgeLayout *)self->_ratingBadgeLayout interitemSpacingAXLarge];
    v12 = v11;

    if (v12 > 0.0)
    {
      [(TVRatingBadgeLayout *)self->_ratingBadgeLayout interitemSpacingAXLarge];
      goto LABEL_9;
    }
  }

LABEL_11:

  return v5;
}

- (id)_ratingStyle
{
  v3 = [(TVRatingBadgeView *)self traitCollection];
  v4 = [(TVRatingBadgeLayout *)self->_ratingBadgeLayout ratingStyle];
  if (v3)
  {
    v5 = [v3 preferredContentSizeCategory];
    if ([TVMLUtilities isAXSmallEnabled:v5])
    {
      v6 = [(TVRatingBadgeLayout *)self->_ratingBadgeLayout ratingStyleAXSmall];

      if (v6)
      {
        v7 = [(TVRatingBadgeLayout *)self->_ratingBadgeLayout ratingStyleAXSmall];
        goto LABEL_9;
      }
    }

    else
    {
    }

    v8 = [v3 preferredContentSizeCategory];
    if (![TVMLUtilities isAXLargeEnabled:v8])
    {
LABEL_10:

      goto LABEL_11;
    }

    v9 = [(TVRatingBadgeLayout *)self->_ratingBadgeLayout ratingStyleAXLarge];

    if (!v9)
    {
      goto LABEL_11;
    }

    v7 = [(TVRatingBadgeLayout *)self->_ratingBadgeLayout ratingStyleAXLarge];
LABEL_9:
    v8 = v4;
    v4 = v7;
    goto LABEL_10;
  }

LABEL_11:

  return v4;
}

- (CGSize)_starSize
{
  v3 = [(TVRatingBadgeView *)self _starImage];
  [v3 size];
  v5 = v4;
  [(TVRatingBadgeView *)self _starHeight];
  v7 = v5 * v6;
  v8 = [(TVRatingBadgeView *)self _starImage];
  [v8 size];
  v10 = v7 / v9;

  v11 = v10;
  v12 = ceilf(v11);
  [(TVRatingBadgeView *)self _starHeight];
  v14 = v13;
  v15 = v12;
  result.height = v14;
  result.width = v15;
  return result;
}

- (double)_starHeight
{
  if (_starHeight_onceToken != -1)
  {
    [TVRatingBadgeView _starHeight];
  }

  v3 = [(TVRatingBadgeView *)self _ratingStyle];
  if ([v3 isEqualToString:@"star-hollow-l"] && self->_ratingValue > 0.0)
  {
    v4 = @"star-l";
  }

  else
  {
    v4 = [(TVRatingBadgeView *)self _ratingStyle];
  }

  v5 = v4;

  v6 = [_starHeight_sStarStyleMap objectForKeyedSubscript:v5];
  [v6 floatValue];
  v8 = v7;

  return v8;
}

void __32__TVRatingBadgeView__starHeight__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"star-s";
  v2[1] = @"star-m";
  v3[0] = &unk_287E48078;
  v3[1] = &unk_287E48090;
  v2[2] = @"star-l";
  v2[3] = @"star-hollow-l";
  v3[2] = &unk_287E480A8;
  v3[3] = &unk_287E480A8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = _starHeight_sStarStyleMap;
  _starHeight_sStarStyleMap = v0;
}

- (id)_starImage
{
  v3 = [(TVRatingBadgeView *)self _ratingStyle];
  if ([v3 isEqualToString:@"star-hollow-l"] && self->_ratingValue > 0.0)
  {
    v4 = @"star-l";
  }

  else
  {
    v4 = [(TVRatingBadgeView *)self _ratingStyle];
  }

  v5 = v4;

  if (([(__CFString *)v5 isEqualToString:@"star-hollow-l"]& 1) != 0)
  {
    v6 = @"star_hollow_mask";
  }

  else if ([(__CFString *)v5 isEqualToString:@"circle"])
  {
    v6 = 0;
  }

  else
  {
    v6 = @"star_mask";
  }

  v7 = MEMORY[0x277D755B8];
  v8 = +[TVMLUtilities TVMLKitBundle];
  v9 = [v7 imageNamed:v6 inBundle:v8];

  return v9;
}

- (id)_halfStarImage
{
  v3 = MEMORY[0x277D755B8];
  v4 = +[TVMLUtilities TVMLKitBundle];
  v5 = [v3 imageNamed:@"star_half_mask" inBundle:v4];

  if (v5 && [(TVRatingBadgeView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = [v5 CGImage];
    [v5 scale];
    v8 = [v6 imageWithCGImage:v7 scale:4 orientation:?];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

- (double)_circleRadius
{
  if (_circleRadius_onceToken != -1)
  {
    [TVRatingBadgeView _circleRadius];
  }

  v3 = _circleRadius_sCircleRadiusMap;
  v4 = [(TVRatingBadgeView *)self _ratingStyle];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = v5;
  v7 = &unk_287E480C0;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  [v8 floatValue];
  v10 = v9;

  return v10;
}

void __34__TVRatingBadgeView__circleRadius__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"circle";
  v3[0] = &unk_287E480C0;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = _circleRadius_sCircleRadiusMap;
  _circleRadius_sCircleRadiusMap = v0;
}

@end