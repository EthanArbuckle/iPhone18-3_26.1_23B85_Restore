@interface SBHLibraryDismissalView
- (SBHLibraryDismissalView)initWithFrame:(CGRect)a3;
- (id)layer;
- (void)layoutSubviews;
- (void)setBrightness:(double)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
@end

@implementation SBHLibraryDismissalView

- (SBHLibraryDismissalView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SBHLibraryDismissalView;
  v3 = [(SBHLibraryDismissalView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SBHLibraryDismissalView *)v3 layer];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.18];
    [v5 setFillColor:{objc_msgSend(v6, "CGColor")}];
    [v5 setFillRule:*MEMORY[0x1E69797F8]];
  }

  return v4;
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius, v3, v4, v5, v6))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;

    [(SBHLibraryDismissalView *)self setNeedsLayout];
  }
}

- (void)setBrightness:(double)a3
{
  if (self->_brightness != a3)
  {
    self->_brightness = a3;
    IsOne = BSFloatIsOne();
    v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0 - a3 + (1.0 - (1.0 - a3)) * 0.18];
    v6 = [(SBHLibraryDismissalView *)self layer];
    if (IsOne)
    {
      v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"fillColor"];
      v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [v7 setTimingFunction:v8];

      [v7 setFromValue:{objc_msgSend(v6, "fillColor")}];
      [v7 setFillMode:*MEMORY[0x1E69797E8]];
      [v7 setDuration:0.3];
      [v6 setFillColor:{objc_msgSend(v9, "CGColor")}];
      [v6 addAnimation:v7 forKey:0];
    }

    else
    {
      [v6 setFillColor:{objc_msgSend(v9, "CGColor")}];
    }
  }
}

- (id)layer
{
  v4.receiver = self;
  v4.super_class = SBHLibraryDismissalView;
  v2 = [(SBHLibraryDismissalView *)&v4 layer];

  return v2;
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = SBHLibraryDismissalView;
  [(SBHLibraryDismissalView *)&v37 layoutSubviews];
  [(SBHLibraryDismissalView *)self bounds];
  v4 = v3;
  continuousCornerRadius = self->_iconImageInfo.continuousCornerRadius;
  v6 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:? cornerRadius:?];
  v7 = [MEMORY[0x1E69DC728] bezierPath];
  UIRectCenteredRect();
  rect_16 = continuousCornerRadius / 6.0;
  rect_24 = v38.size.width;
  x = v38.origin.x;
  rect = v38.origin.x;
  v38.origin.y = v4 * 0.3 * 0.1 + v10;
  y = v38.origin.y;
  height = v38.size.height;
  v39 = CGRectInset(v38, continuousCornerRadius / 6.0, continuousCornerRadius / 6.0);
  v12 = v39.origin.x;
  v13 = v39.origin.y;
  width = v39.size.width;
  v15 = v39.size.height;
  v16 = atan(v39.size.height / (fmax(v39.size.width, 2.22507386e-308) * 0.5));
  rect_8 = 1.57079633 - v16;
  v36 = v16 + 1.57079633;
  v40.origin.x = v12;
  v40.origin.y = v13;
  v40.size.width = width;
  v40.size.height = v15;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = rect_24;
  v41.size.height = height;
  [v7 moveToPoint:{MinX, CGRectGetMinY(v41)}];
  v42.origin.x = v12;
  v42.origin.y = v13;
  v42.size.width = width;
  v42.size.height = v15;
  MaxX = CGRectGetMaxX(v42);
  v43.origin.x = rect;
  v43.origin.y = y;
  v43.size.width = rect_24;
  v43.size.height = height;
  [v7 addLineToPoint:{MaxX, CGRectGetMinY(v43)}];
  v44.origin.x = v12;
  v44.origin.y = v13;
  v44.size.width = width;
  v44.size.height = v15;
  v19 = CGRectGetMaxX(v44);
  v45.origin.x = v12;
  v45.origin.y = v13;
  v45.size.width = width;
  v45.size.height = v15;
  [v7 addArcWithCenter:1 radius:v19 startAngle:CGRectGetMinY(v45) endAngle:rect_16 clockwise:?];
  [v7 currentPoint];
  v21 = v20;
  v46.origin.x = v12;
  v46.origin.y = v13;
  v46.size.width = width;
  v46.size.height = v15;
  v22 = v21 - CGRectGetWidth(v46) * 0.5;
  [v7 currentPoint];
  v24 = v23;
  v47.origin.x = v12;
  v47.origin.y = v13;
  v47.size.width = width;
  v47.size.height = v15;
  [v7 addLineToPoint:{v22, v24 + CGRectGetHeight(v47)}];
  v48.origin.x = v12;
  v48.origin.y = v13;
  v48.size.width = width;
  v48.size.height = v15;
  MidX = CGRectGetMidX(v48);
  v49.origin.x = v12;
  v49.origin.y = v13;
  v49.size.width = width;
  v49.size.height = v15;
  [v7 addArcWithCenter:1 radius:MidX startAngle:CGRectGetMaxY(v49) endAngle:rect_16 clockwise:{rect_8, v36}];
  [v7 currentPoint];
  v27 = v26;
  v50.origin.x = v12;
  v50.origin.y = v13;
  v50.size.width = width;
  v50.size.height = v15;
  v28 = v27 - CGRectGetWidth(v50) * 0.5;
  [v7 currentPoint];
  v30 = v29;
  v51.origin.x = v12;
  v51.origin.y = v13;
  v51.size.width = width;
  v51.size.height = v15;
  [v7 addLineToPoint:{v28, v30 - CGRectGetHeight(v51)}];
  [v7 addArcWithCenter:1 radius:v12 startAngle:v13 endAngle:rect_16 clockwise:{v36, 4.71238898}];
  [v6 appendPath:v7];
  v31 = [(SBHLibraryDismissalView *)self layer];
  [v31 setPath:{objc_msgSend(v6, "CGPath")}];
}

@end