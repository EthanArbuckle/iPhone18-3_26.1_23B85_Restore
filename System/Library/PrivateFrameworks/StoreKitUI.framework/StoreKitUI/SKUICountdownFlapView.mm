@interface SKUICountdownFlapView
- (CATransform3D)_transformForAngle:(SEL)a3 isTop:(double)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUICountdownFlapView)initWithPosition:(int64_t)a3 flapTopColor:(id)a4 flapBottomColor:(id)a5;
- (id)_newBackgroundImageForTop:(int)a3;
- (id)_newLabel;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
- (void)setString:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation SKUICountdownFlapView

- (SKUICountdownFlapView)initWithPosition:(int64_t)a3 flapTopColor:(id)a4 flapBottomColor:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICountdownFlapView initWithPosition:flapTopColor:flapBottomColor:];
  }

  v32.receiver = self;
  v32.super_class = SKUICountdownFlapView;
  v11 = [(SKUICountdownFlapView *)&v32 init];
  v12 = v11;
  if (v11)
  {
    v11->_factor = 0.0;
    v11->_position = a3;
    objc_storeStrong(&v11->_flapTopColor, a4);
    objc_storeStrong(&v12->_flapBottomColor, a5);
    v13 = [(SKUICountdownFlapView *)v12 _newLabel];
    labelTop = v12->_labelTop;
    v12->_labelTop = v13;

    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundViewTop = v12->_backgroundViewTop;
    v12->_backgroundViewTop = v15;

    [(SKUICountdownFlapView *)v12 addSubview:v12->_backgroundViewTop];
    [(UIView *)v12->_backgroundViewTop addSubview:v12->_labelTop];
    [(UIView *)v12->_backgroundViewTop setClipsToBounds:1];
    v17 = [(SKUICountdownFlapView *)v12 _newLabel];
    labelBot = v12->_labelBot;
    v12->_labelBot = v17;

    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundViewBot = v12->_backgroundViewBot;
    v12->_backgroundViewBot = v19;

    [(SKUICountdownFlapView *)v12 addSubview:v12->_backgroundViewBot];
    [(UIView *)v12->_backgroundViewBot addSubview:v12->_labelBot];
    [(UIView *)v12->_backgroundViewBot setClipsToBounds:1];
    v21 = [(SKUICountdownFlapView *)v12 _newLabel];
    labelTransitionTop = v12->_labelTransitionTop;
    v12->_labelTransitionTop = v21;

    v23 = objc_alloc_init(MEMORY[0x277D755E8]);
    backgroundViewTransitionTop = v12->_backgroundViewTransitionTop;
    v12->_backgroundViewTransitionTop = v23;

    [(UIImageView *)v12->_backgroundViewTransitionTop addSubview:v12->_labelTransitionTop];
    [(UIImageView *)v12->_backgroundViewTransitionTop setHidden:1];
    [(UIImageView *)v12->_backgroundViewTransitionTop setClipsToBounds:1];
    v25 = [(UIImageView *)v12->_backgroundViewTransitionTop layer];
    [v25 setZPosition:100.0];

    [(SKUICountdownFlapView *)v12 addSubview:v12->_backgroundViewTransitionTop];
    v26 = [(SKUICountdownFlapView *)v12 _newLabel];
    labelTransitionBot = v12->_labelTransitionBot;
    v12->_labelTransitionBot = v26;

    v28 = objc_alloc_init(MEMORY[0x277D755E8]);
    backgroundViewTransitionBot = v12->_backgroundViewTransitionBot;
    v12->_backgroundViewTransitionBot = v28;

    [(UIImageView *)v12->_backgroundViewTransitionBot addSubview:v12->_labelTransitionBot];
    [(UIImageView *)v12->_backgroundViewTransitionBot setHidden:1];
    [(UIImageView *)v12->_backgroundViewTransitionBot setClipsToBounds:1];
    v30 = [(UIImageView *)v12->_backgroundViewTransitionBot layer];
    [v30 setZPosition:100.0];

    [(SKUICountdownFlapView *)v12 addSubview:v12->_backgroundViewTransitionBot];
  }

  return v12;
}

- (void)layoutSubviews
{
  [(SKUICountdownFlapView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  position = self->_position;
  factor = self->_factor;
  v13 = 0.0;
  *&v6 = factor + factor;
  *&v6 = roundf(*&v6);
  v14 = *&v6;
  v15 = -*&v6;
  if (position == 2)
  {
    v13 = v15;
  }

  if (position)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  v17 = v3 * 0.5;
  v18 = [MEMORY[0x277D759A0] mainScreen];
  [v18 scale];
  *&v19 = factor * v19;
  v20 = roundf(*&v19);
  v21 = [MEMORY[0x277D759A0] mainScreen];
  [v21 scale];
  v23 = v17 - v20 / v22;

  [(UIView *)self->_backgroundViewTop setFrame:v5, v7, v9, v23];
  v24 = v5 + v16;
  [(UILabel *)self->_labelTop setFrame:v5 + v16, v7, v9, v10];
  v25 = self->_factor;
  v26 = [MEMORY[0x277D759A0] mainScreen];
  [v26 scale];
  *&v27 = v25 * v27;
  v28 = roundf(*&v27);
  v29 = [MEMORY[0x277D759A0] mainScreen];
  [v29 scale];
  v31 = v17 - v28 / v30;

  v32 = self->_factor;
  v33 = [MEMORY[0x277D759A0] mainScreen];
  [v33 scale];
  *&v34 = v32 * v34;
  v35 = roundf(*&v34);
  v36 = [MEMORY[0x277D759A0] mainScreen];
  [v36 scale];
  v38 = v17 + v35 / v37;

  [(UIView *)self->_backgroundViewBot setFrame:v5, v38, v9, v31];
  v39 = self->_factor;
  v40 = [MEMORY[0x277D759A0] mainScreen];
  [v40 scale];
  *&v41 = v39 * v41;
  v42 = roundf(*&v41);
  v43 = [MEMORY[0x277D759A0] mainScreen];
  [v43 scale];
  v45 = v7 - (v17 + v42 / v44);

  [(UILabel *)self->_labelBot setFrame:v24, v45, v9, v10];
  v46 = self->_factor;
  v47 = [MEMORY[0x277D759A0] mainScreen];
  [v47 scale];
  *&v48 = v46 * v48;
  v49 = roundf(*&v48);
  v50 = [MEMORY[0x277D759A0] mainScreen];
  [v50 scale];
  v52 = v17 - v49 / v51;

  [(UIImageView *)self->_backgroundViewTransitionTop setFrame:v5, v7, v9, v52];
  [(UILabel *)self->_labelTransitionTop setFrame:v24, v7, v9, v10];
  v53 = self->_factor;
  v54 = [MEMORY[0x277D759A0] mainScreen];
  [v54 scale];
  *&v55 = v53 * v55;
  v56 = roundf(*&v55);
  v57 = [MEMORY[0x277D759A0] mainScreen];
  [v57 scale];
  v59 = v17 - v56 / v58;

  v60 = self->_factor;
  v61 = [MEMORY[0x277D759A0] mainScreen];
  [v61 scale];
  *&v62 = v60 * v62;
  v63 = roundf(*&v62);
  v64 = [MEMORY[0x277D759A0] mainScreen];
  [v64 scale];
  v66 = v17 + v63 / v65;

  [(UIImageView *)self->_backgroundViewTransitionBot setFrame:v5, v66, v9, v59];
  v67 = self->_factor;
  v68 = [MEMORY[0x277D759A0] mainScreen];
  [v68 scale];
  *&v69 = v67 * v69;
  v70 = roundf(*&v69);
  v71 = [MEMORY[0x277D759A0] mainScreen];
  [v71 scale];
  v73 = v7 - (v17 + v70 / v72);

  labelTransitionBot = self->_labelTransitionBot;

  [(UILabel *)labelTransitionBot setFrame:v24, v73, v9, v10];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = roundf(width);
  position = self->_position;
  switch(position)
  {
    case 0:
      goto LABEL_4;
    case 3:
      v6 = 4.0;
      goto LABEL_6;
    case 2:
LABEL_4:
      v6 = 2.0;
LABEL_6:
      v4 = v4 + v4 / 14.0 * v6;
      break;
  }

  v7 = v4;
  v8 = roundf(v7);
  height = a3.height;
  v10 = roundf(height);
  result.height = v10;
  result.width = v8;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  width = a3.size.width;
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SKUICountdownFlapView;
  [(SKUICountdownFlapView *)&v25 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  factor = self->_factor;
  position = self->_position;
  switch(position)
  {
    case 0:
      goto LABEL_4;
    case 3:
      width = width * 14.0 / 18.0;
      break;
    case 2:
LABEL_4:
      width = width * 14.0 * 0.0625;
      break;
  }

  self->_factor = width / 14.0;
  if (width / 14.0 != factor && width / 14.0 != 0.0)
  {
    backgroundViewTransitionTop = self->_backgroundViewTransitionTop;
    v8 = [(SKUICountdownFlapView *)self _newBackgroundImageForTop:1];
    [(UIImageView *)backgroundViewTransitionTop setImage:v8];

    backgroundViewTransitionBot = self->_backgroundViewTransitionBot;
    v10 = [(SKUICountdownFlapView *)self _newBackgroundImageForTop:0];
    [(UIImageView *)backgroundViewTransitionBot setImage:v10];

    v11 = [(SKUICountdownFlapView *)self _newBackgroundImageForTop:0xFFFFFFFFLL];
    [(SKUICountdownFlapView *)self setImage:v11];

    v12 = self->_factor * 24.0;
    v13 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:roundf(v12)];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    labelBot = self->_labelBot;
    v26[0] = self->_labelTop;
    v26[1] = labelBot;
    labelTransitionBot = self->_labelTransitionBot;
    v26[2] = self->_labelTransitionTop;
    v26[3] = labelTransitionBot;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:{4, 0}];
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v21 + 1) + 8 * i) setFont:v13];
        }

        v18 = [v16 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v18);
    }

    [(SKUICountdownFlapView *)self setNeedsLayout];
  }
}

- (void)setString:(id)a3
{
  v5 = a3;
  string = self->_string;
  if (!string)
  {
    objc_storeStrong(&self->_string, a3);
    [(UILabel *)self->_labelTop setText:self->_string];
    [(UILabel *)self->_labelBot setText:self->_string];
    string = self->_string;
  }

  if (([v5 isEqualToString:string] & 1) == 0)
  {
    v7 = self->_string;
    objc_storeStrong(&self->_string, a3);
    v8 = [(UIImageView *)self->_backgroundViewTransitionTop layer];
    [v8 removeAllAnimations];

    v9 = [(UIImageView *)self->_backgroundViewTransitionBot layer];
    [v9 removeAllAnimations];

    [(UILabel *)self->_labelTop setText:self->_string];
    [(UILabel *)self->_labelBot setText:v7];
    [(UILabel *)self->_labelTransitionTop setText:v7];
    [(UILabel *)self->_labelTransitionBot setText:self->_string];
    [(UIImageView *)self->_backgroundViewTransitionTop setHidden:0];
    [(UIImageView *)self->_backgroundViewTransitionBot setHidden:1];
    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != 11; ++i)
    {
      v13 = MEMORY[0x277CCAE60];
      [(SKUICountdownFlapView *)self _transformForAngle:1 isTop:(i / 10.0) * 3.14159265 * 0.5];
      v14 = [v13 valueWithCATransform3D:v19];
      [v10 addObject:v14];

      *&v15 = i / 10.0;
      v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
      [v11 addObject:v16];
    }

    v17 = objc_alloc_init(MEMORY[0x277CD9EC8]);
    [v17 setKeyPath:@"transform"];
    [v17 setValues:v10];
    [v17 setKeyTimes:v11];
    [v17 setRemovedOnCompletion:0];
    [v17 setFillMode:*MEMORY[0x277CDA238]];
    [v17 setDuration:0.200000003];
    [v17 setDelegate:self];
    v18 = [(UIImageView *)self->_backgroundViewTransitionTop layer];
    [v18 addAnimation:v17 forKey:@"top"];
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->_textColor != v5)
  {
    v14 = v5;
    objc_storeStrong(&self->_textColor, a3);
    labelTop = self->_labelTop;
    if (self->_textColor)
    {
      [(UILabel *)self->_labelTop setTextColor:?];
    }

    else
    {
      v7 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)labelTop setTextColor:v7];
    }

    labelBot = self->_labelBot;
    if (self->_textColor)
    {
      [(UILabel *)self->_labelBot setTextColor:?];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)labelBot setTextColor:v9];
    }

    labelTransitionTop = self->_labelTransitionTop;
    if (self->_textColor)
    {
      [(UILabel *)self->_labelTransitionTop setTextColor:?];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)labelTransitionTop setTextColor:v11];
    }

    labelTransitionBot = self->_labelTransitionBot;
    if (self->_textColor)
    {
      [(UILabel *)self->_labelTransitionBot setTextColor:?];
    }

    else
    {
      v13 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)labelTransitionBot setTextColor:v13];
    }

    v5 = v14;
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  v6 = [(UIImageView *)self->_backgroundViewTransitionTop layer];
  v7 = [v6 animationForKey:@"top"];

  if (v7 == v5)
  {
    [(UIImageView *)self->_backgroundViewTransitionTop setHidden:1];
    [(UIImageView *)self->_backgroundViewTransitionBot setHidden:0];
    v8 = [MEMORY[0x277CBEB18] array];
    v9 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != 11; ++i)
    {
      v11 = MEMORY[0x277CCAE60];
      [(SKUICountdownFlapView *)self _transformForAngle:0 isTop:(1.0 - (i / 10.0)) * 3.14159265 * 0.5];
      v12 = [v11 valueWithCATransform3D:&v17];
      [v8 addObject:v12];

      *&v13 = i / 10.0;
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
      [v9 addObject:v14];
    }

    v15 = objc_alloc_init(MEMORY[0x277CD9EC8]);
    [v15 setKeyPath:@"transform"];
    [v15 setValues:v8];
    [v15 setKeyTimes:v9];
    [v15 setRemovedOnCompletion:0];
    [v15 setFillMode:*MEMORY[0x277CDA238]];
    [v15 setDuration:0.200000003];
    [v15 setDelegate:self];
    v16 = [(UIImageView *)self->_backgroundViewTransitionBot layer];
    [v16 addAnimation:v15 forKey:@"bot"];
  }

  else
  {
    [(UILabel *)self->_labelBot setText:self->_string];
    [(UIImageView *)self->_backgroundViewTransitionTop setHidden:1];
    [(UIImageView *)self->_backgroundViewTransitionBot setHidden:1];
  }
}

- (id)_newLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = v3;
  if (self->_textColor)
  {
    [v3 setTextColor:?];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
    [v4 setTextColor:v5];
  }

  v6 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v6];

  [v4 setTextAlignment:1];
  return v4;
}

- (id)_newBackgroundImageForTop:(int)a3
{
  v57 = *MEMORY[0x277D85DE8];
  [(SKUICountdownFlapView *)self frame];
  v7 = v6;
  v8 = v5;
  if (a3 == 1)
  {
    factor = self->_factor;
    v24 = [MEMORY[0x277D759A0] mainScreen];
    [v24 scale];
    *&v25 = factor * v25;
    v26 = roundf(*&v25);
    v27 = [MEMORY[0x277D759A0] mainScreen];
    [v27 scale];
    v15 = v8 * 0.5 - v26 / v28;
  }

  else
  {
    if (!a3)
    {
      v9 = self->_factor;
      v10 = [MEMORY[0x277D759A0] mainScreen];
      [v10 scale];
      *&v11 = v9 * v11;
      v12 = roundf(*&v11);
      v13 = [MEMORY[0x277D759A0] mainScreen];
      [v13 scale];
      v15 = v8 * 0.5 - v12 / v14;

      v16 = self->_factor;
      v17 = [MEMORY[0x277D759A0] mainScreen];
      [v17 scale];
      *&v18 = v16 * v18;
      v19 = roundf(*&v18);
      v20 = [MEMORY[0x277D759A0] mainScreen];
      [v20 scale];
      v22 = v8 * -0.5 - v19 / v21;

      goto LABEL_7;
    }

    v15 = v5;
  }

  v22 = 0.0;
LABEL_7:
  v29 = [MEMORY[0x277D759A0] mainScreen];
  [v29 scale];
  v31 = v30;
  v58.width = v7;
  v58.height = v15;
  UIGraphicsBeginImageContextWithOptions(v58, 0, v31);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextBeginPath(CurrentContext);
  CGContextMoveToPoint(CurrentContext, v7 * 0.5 + 0.0, v22);
  v33 = v7 + 0.0;
  if ((self->_position & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v34 = self->_factor * 5.0;
    v35 = roundf(v34);
    CGContextAddArc(CurrentContext, v33 - v35, v22 + v35, v35, 4.71238898, 6.28318531, 0);
    v36 = self->_factor * 5.0;
    v37 = roundf(v36);
    CGContextAddArc(CurrentContext, v33 - v37, v8 + v22 - v37, v37, 0.0, 1.57079633, 0);
  }

  else
  {
    CGContextAddLineToPoint(CurrentContext, v33, v22);
    CGContextAddLineToPoint(CurrentContext, v33, v8 + v22);
  }

  position = self->_position;
  if (position == 3 || position == 0)
  {
    v40 = self->_factor * 5.0;
    v41 = roundf(v40);
    CGContextAddArc(CurrentContext, v41 + 0.0, v8 + v22 - v41, v41, 1.57079633, 3.14159265, 0);
    v42 = self->_factor * 5.0;
    v43 = roundf(v42);
    CGContextAddArc(CurrentContext, v43 + 0.0, v22 + v43, v43, 3.14159265, 4.71238898, 0);
  }

  else
  {
    CGContextAddLineToPoint(CurrentContext, 0.0, v8 + v22);
    CGContextAddLineToPoint(CurrentContext, 0.0, v22);
  }

  CGContextClosePath(CurrentContext);
  CGContextClip(CurrentContext);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *locations = xmmword_215F3F0A0;
  flapTopColor = self->_flapTopColor;
  v46 = flapTopColor;
  if (!flapTopColor)
  {
    v46 = [MEMORY[0x277D75348] blackColor];
  }

  v47 = CGColorRetain([v46 CGColor]);
  if (!flapTopColor)
  {
  }

  flapBottomColor = self->_flapBottomColor;
  v49 = flapBottomColor;
  if (!flapBottomColor)
  {
    v49 = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:1.0];
  }

  v50 = CGColorRetain([v49 CGColor]);
  if (!flapBottomColor)
  {
  }

  v55[0] = v47;
  v55[1] = v50;
  v51 = CFArrayCreate(0, v55, 2, MEMORY[0x277CBF128]);
  v52 = CGGradientCreateWithColors(DeviceRGB, v51, locations);
  v60.y = v8 + v22;
  v59.x = 0.0;
  v60.x = 0.0;
  v59.y = v22;
  CGContextDrawLinearGradient(CurrentContext, v52, v59, v60, 0);
  CGColorRelease(v47);
  CGColorRelease(v50);
  CGGradientRelease(v52);
  CFRelease(v51);
  CGColorSpaceRelease(DeviceRGB);
  v53 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v53;
}

- (CATransform3D)_transformForAngle:(SEL)a3 isTop:(double)a4
{
  [(SKUICountdownFlapView *)self frame];
  v10 = v9;
  v12 = v11;
  if (a5)
  {
    factor = self->_factor;
    v14 = [MEMORY[0x277D759A0] mainScreen];
    [v14 scale];
    *&v15 = factor * v15;
    v16 = roundf(*&v15);
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 scale];
    v19 = v12 * 0.25 - v16 / v18 * 0.25;
    v20 = v10;
  }

  else
  {
    v20 = v9 * 3.0;
    v21 = self->_factor;
    v14 = [MEMORY[0x277D759A0] mainScreen];
    [v14 scale];
    *&v22 = v21 * v22;
    v23 = roundf(*&v22);
    v17 = [MEMORY[0x277D759A0] mainScreen];
    [v17 scale];
    v19 = v12 * 3.0 * 0.25 + v23 / v24 * 3.0 * 0.25;
  }

  v25 = MEMORY[0x277CD9DE8];
  v26 = v20 * 0.25;
  v27 = v12 * 0.5;
  v28 = *(MEMORY[0x277CD9DE8] + 64);
  v29 = *(MEMORY[0x277CD9DE8] + 80);
  v30 = v10 * 0.5;
  *&retstr->m31 = v28;
  *&retstr->m33 = v29;
  v31 = v25[6];
  v32 = v25[7];
  *&retstr->m41 = v31;
  *&retstr->m43 = v32;
  v33 = *v25;
  v34 = v25[1];
  *&retstr->m11 = *v25;
  *&retstr->m13 = v34;
  v35 = v25[2];
  v36 = v25[3];
  *&retstr->m21 = v35;
  *&retstr->m23 = v36;
  *&v55.m31 = v28;
  *&v55.m33 = v29;
  *&v55.m41 = v31;
  *&v55.m43 = v32;
  *&v55.m11 = v33;
  *&v55.m13 = v34;
  *&v55.m21 = v35;
  *&v55.m23 = v36;
  CATransform3DTranslate(retstr, &v55, v30 - v26, v27 - v19, 0.0);
  v37 = *&retstr->m33;
  *&v54.m31 = *&retstr->m31;
  *&v54.m33 = v37;
  v38 = *&retstr->m43;
  *&v54.m41 = *&retstr->m41;
  *&v54.m43 = v38;
  v39 = *&retstr->m13;
  *&v54.m11 = *&retstr->m11;
  *&v54.m13 = v39;
  v40 = *&retstr->m23;
  *&v54.m21 = *&retstr->m21;
  *&v54.m23 = v40;
  CATransform3DRotate(&v55, &v54, a4, 1.0, 0.0, 0.0);
  v41 = *&v55.m33;
  *&retstr->m31 = *&v55.m31;
  *&retstr->m33 = v41;
  v42 = *&v55.m43;
  *&retstr->m41 = *&v55.m41;
  *&retstr->m43 = v42;
  v43 = *&v55.m13;
  *&retstr->m11 = *&v55.m11;
  *&retstr->m13 = v43;
  v44 = *&v55.m23;
  *&retstr->m21 = *&v55.m21;
  *&retstr->m23 = v44;
  v45 = *&retstr->m33;
  *&v54.m31 = *&retstr->m31;
  *&v54.m33 = v45;
  v46 = *&retstr->m43;
  *&v54.m41 = *&retstr->m41;
  *&v54.m43 = v46;
  v47 = *&retstr->m13;
  *&v54.m11 = *&retstr->m11;
  *&v54.m13 = v47;
  v48 = *&retstr->m23;
  *&v54.m21 = *&retstr->m21;
  *&v54.m23 = v48;
  result = CATransform3DTranslate(&v55, &v54, v26 - v30, v19 - v27, 0.0);
  v50 = *&v55.m33;
  *&retstr->m31 = *&v55.m31;
  *&retstr->m33 = v50;
  v51 = *&v55.m43;
  *&retstr->m41 = *&v55.m41;
  *&retstr->m43 = v51;
  v52 = *&v55.m13;
  *&retstr->m11 = *&v55.m11;
  *&retstr->m13 = v52;
  v53 = *&v55.m23;
  *&retstr->m21 = *&v55.m21;
  *&retstr->m23 = v53;
  return result;
}

- (void)initWithPosition:flapTopColor:flapBottomColor:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICountdownFlapView initWithPosition:flapTopColor:flapBottomColor:]";
}

@end