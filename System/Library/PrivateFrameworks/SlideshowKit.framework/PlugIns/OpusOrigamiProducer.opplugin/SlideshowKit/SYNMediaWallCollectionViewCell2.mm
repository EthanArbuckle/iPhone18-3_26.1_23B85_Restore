@interface SYNMediaWallCollectionViewCell2
- (CGRect)_contentsRectForRegionOfInterestContainerBounds:(CGRect)bounds;
- (CGRect)imageContentsRect;
- (SYNMediaWallCollectionViewCell2)initWithFrame:(CGRect)frame;
- (void)animatePop;
- (void)blinkSelection;
- (void)dealloc;
- (void)prepareForReuse;
- (void)setAntialiasing:(BOOL)antialiasing;
- (void)setBadge:(id)badge;
- (void)setBorderColor:(id)color;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image animated:(BOOL)animated;
- (void)setIsFiltered:(BOOL)filtered;
- (void)setSelected:(BOOL)selected;
- (void)setSelectedBorderColor:(id)color;
- (void)setUseShadow:(BOOL)shadow;
- (void)updateImageContentsRect;
- (void)updateShadowPath;
- (void)updateVideoFooter;
@end

@implementation SYNMediaWallCollectionViewCell2

- (SYNMediaWallCollectionViewCell2)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  v22.receiver = self;
  v22.super_class = SYNMediaWallCollectionViewCell2;
  v4 = [(SYNMediaWallCollectionViewCell2 *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_mediaItem = 0;
    v4->_mediaWallViewController = 0;
    v4->_videoLabelView = 0;
    v4->_isFiltered = 0;
    v6 = [SYNMediaWallCollectionViewCellMainView2 alloc];
    [-[SYNMediaWallCollectionViewCell2 contentView](v5 "contentView")];
    v7 = [(SYNMediaWallCollectionViewCellMainView2 *)v6 initWithFrame:?];
    v5->_mainView = v7;
    [(SYNMediaWallCollectionViewCellMainView2 *)v7 setAutoresizingMask:18];
    [(SYNMediaWallCollectionViewCellMainView2 *)v5->_mainView setBackgroundColor:[UIColor colorWithWhite:0.200000003 alpha:1.0]];
    [(SYNMediaWallCollectionViewCellMainView2 *)v5->_mainView setOpaque:1];
    [-[SYNMediaWallCollectionViewCellMainView2 layer](v5->_mainView "layer")];
    [-[SYNMediaWallCollectionViewCellMainView2 layer](v5->_mainView "layer")];
    [-[SYNMediaWallCollectionViewCellMainView2 layer](v5->_mainView "layer")];
    userInterfaceIdiom = [+[UIDevice currentDevice](UIDevice userInterfaceIdiom];
    layer = [(SYNMediaWallCollectionViewCellMainView2 *)v5->_mainView layer];
    v10 = 2.0;
    if (userInterfaceIdiom == UIUserInterfaceIdiomPhone)
    {
      v10 = 1.0;
    }

    [layer setShadowRadius:v10];
    layer2 = [(SYNMediaWallCollectionViewCellMainView2 *)v5->_mainView layer];
    LODWORD(v12) = 1.0;
    [layer2 setShadowOpacity:v12];
    [(SYNMediaWallCollectionViewCell2 *)v5 bounds];
    [-[SYNMediaWallCollectionViewCellMainView2 layer](v5->_mainView "layer")];
    [-[SYNMediaWallCollectionViewCellMainView2 layer](v5->_mainView "layer")];
    [-[SYNMediaWallCollectionViewCellMainView2 layer](v5->_mainView "layer")];
    v13 = [UIImageView alloc];
    [(SYNMediaWallCollectionViewCellMainView2 *)v5->_mainView bounds];
    v14 = [v13 initWithFrame:?];
    v5->_imageView = v14;
    [(UIImageView *)v14 setAutoresizingMask:18];
    [(UIImageView *)v5->_imageView setClipsToBounds:1];
    [(UIImageView *)v5->_imageView setContentMode:2];
    [(UIImageView *)v5->_imageView setOpaque:1];
    [-[UIImageView layer](v5->_imageView "layer")];
    if ([+[UIDevice userInterfaceIdiom] currentDevice]
    {
      v15 = 18.0;
    }

    else
    {
      v15 = 12.0;
    }

    v16 = [[UIImageView alloc] initWithFrame:{4.0, 4.0, v15, v15}];
    v5->_badgeView = v16;
    [(UIImageView *)v16 setAutoresizingMask:36];
    [(UIImageView *)v5->_badgeView setClipsToBounds:1];
    [(UIImageView *)v5->_badgeView setContentMode:0];
    [(UIImageView *)v5->_badgeView setOpaque:0];
    [(UIImageView *)v5->_badgeView setAlpha:0.5];
    [-[UIImageView layer](v5->_badgeView "layer")];
    [(UIImageView *)v5->_badgeView setHidden:1];
    [-[SYNMediaWallCollectionViewCell2 contentView](v5 "contentView")];
    [(SYNMediaWallCollectionViewCellMainView2 *)v5->_mainView addSubview:v5->_imageView];
    [(SYNMediaWallCollectionViewCellMainView2 *)v5->_mainView addSubview:v5->_badgeView];
    userInterfaceIdiom2 = [+[UIDevice currentDevice](UIDevice userInterfaceIdiom];
    if (userInterfaceIdiom2)
    {
      v18 = 23.0;
    }

    else
    {
      v18 = 16.0;
    }

    if (userInterfaceIdiom2)
    {
      v19 = 22.0;
    }

    else
    {
      v19 = 15.0;
    }

    v20 = [[UIImageView alloc] initWithFrame:{round(width - v18 + -2.0), 2.0, v18, v19}];
    v5->_commentsView = v20;
    [(UIImageView *)v20 setAutoresizingMask:33];
    [(UIImageView *)v5->_commentsView setClipsToBounds:1];
    [(UIImageView *)v5->_commentsView setContentMode:0];
    [(UIImageView *)v5->_commentsView setOpaque:0];
    [-[UIImageView layer](v5->_commentsView "layer")];
    [(UIImageView *)v5->_commentsView setHidden:1];
    [-[SYNMediaWallCollectionViewCell2 contentView](v5 "contentView")];
    v5->_borderColor = 0;
  }

  return v5;
}

- (void)dealloc
{
  objc_storeWeak(&self->_mediaWallViewController, 0);

  v3.receiver = self;
  v3.super_class = SYNMediaWallCollectionViewCell2;
  [(SYNMediaWallCollectionViewCell2 *)&v3 dealloc];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SYNMediaWallCollectionViewCell2 *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = SYNMediaWallCollectionViewCell2;
  [(SYNMediaWallCollectionViewCell2 *)&v13 setBounds:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(SYNMediaWallCollectionViewCell2 *)self updateShadowPath];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SYNMediaWallCollectionViewCell2 *)self frame];
  v9 = v8;
  v11 = v10;
  v13.receiver = self;
  v13.super_class = SYNMediaWallCollectionViewCell2;
  [(SYNMediaWallCollectionViewCell2 *)&v13 setFrame:x, y, width, height];
  if (v9 != width || v11 != height)
  {
    [(SYNMediaWallCollectionViewCell2 *)self updateShadowPath];
  }
}

- (void)updateShadowPath
{
  [(SYNMediaWallCollectionViewCell2 *)self bounds];
  cGPath = [+[UIBezierPath bezierPathWithRect:](UIBezierPath CGPath];
  layer = [(SYNMediaWallCollectionViewCellMainView2 *)self->_mainView layer];

  [layer setShadowPath:cGPath];
}

- (void)setBorderColor:(id)color
{
  if (([(SYNMediaWallCollectionViewCell2 *)self isSelected]& 1) == 0)
  {
    layer = [(SYNMediaWallCollectionViewCellMainView2 *)self->_mainView layer];
    if (color)
    {
      [layer setBorderWidth:1.0];
      cGColor = [color CGColor];
    }

    else
    {
      [layer setBorderWidth:0.0];
      cGColor = 0;
    }

    [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
  }

  self->_borderColor = color;
}

- (void)setSelectedBorderColor:(id)color
{
  if ([(SYNMediaWallCollectionViewCell2 *)self isSelected])
  {
    layer = [(SYNMediaWallCollectionViewCellMainView2 *)self->_mainView layer];
    if (color)
    {
      [layer setBorderWidth:1.0];
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
      colorCopy = color;
    }

    else
    {
      [layer setBorderWidth:0.0];
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
      colorCopy = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    }

    [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
  }

  self->_selectedBorderColor = color;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SYNMediaWallCollectionViewCell2;
  [(SYNMediaWallCollectionViewCell2 *)&v4 prepareForReuse];
  [(SYNMediaWallCollectionViewCell2 *)self setMediaItem:0];
  [(SYNMediaWallCollectionViewCell2 *)self setIsFiltered:0];
  [(SYNMediaWallCollectionViewCell2 *)self setImage:0 animated:0];
  [(SYNMediaWallCollectionViewCell2 *)self setBadge:0];
  [(UIImageView *)self->_commentsView setHidden:1];
  videoLabelView = self->_videoLabelView;
  if (videoLabelView)
  {
    [(UIView *)videoLabelView removeFromSuperview];

    self->_videoLabelView = 0;
  }
}

- (void)setAntialiasing:(BOOL)antialiasing
{
  if (antialiasing)
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
  layer = [(UIImageView *)self->_imageView layer];

  [layer setEdgeAntialiasingMask:v4];
}

- (void)setUseShadow:(BOOL)shadow
{
  if (shadow)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  layer = [(SYNMediaWallCollectionViewCellMainView2 *)self->_mainView layer];
  *&v5 = v3;

  [layer setShadowOpacity:v5];
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  if (image)
  {
    if (animated)
    {
      v6 = [CABasicAnimation animationWithKeyPath:@"opacity"];
      [(CABasicAnimation *)v6 setDuration:0.150000006];
      [(CABasicAnimation *)v6 setFromValue:[NSNumber numberWithFloat:0.0]];
      LODWORD(v7) = 1.0;
      [(CABasicAnimation *)v6 setToValue:[NSNumber numberWithFloat:v7]];
      [(CABasicAnimation *)v6 setRemovedOnCompletion:1];
      [-[UIImageView layer](self->_imageView "layer")];
      layer = [(UIImageView *)self->_imageView layer];
      LODWORD(v9) = 1.0;
      [layer setOpacity:v9];
    }

    [(UIImageView *)self->_imageView setImage:image];
    [(SYNMediaWallCollectionViewCellMainView2 *)self->_mainView setBackgroundColor:+[UIColor clearColor]];
  }

  else
  {
    [(SYNMediaWallCollectionViewCellMainView2 *)self->_mainView setBackgroundColor:[UIColor colorWithWhite:0 alpha:animated, 0.200000003, 1.0]];
    [-[UIImageView layer](self->_imageView "layer")];
    [(UIImageView *)self->_imageView setImage:0];
  }

  [(SYNMediaWallCollectionViewCell2 *)self updateImageContentsRect];
}

- (void)setBadge:(id)badge
{
  [(UIImageView *)self->_badgeView setImage:?];
  badgeView = self->_badgeView;

  [(UIImageView *)badgeView setHidden:badge == 0];
}

- (void)setIsFiltered:(BOOL)filtered
{
  filteredCopy = filtered;
  contentView = [(SYNMediaWallCollectionViewCell2 *)self contentView];
  v6 = 0.200000003;
  if (!filteredCopy)
  {
    v6 = 1.0;
  }

  [contentView setAlpha:v6];
  self->_isFiltered = filteredCopy;
}

- (void)blinkSelection
{
  if ([(SYNMediaWallCollectionViewCell2 *)self isSelected])
  {
    if ([(SYNMediaWallCollectionViewCell2 *)self borderColor])
    {
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
    }

    else
    {
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
    }

    [+[NSRunLoop mainRunLoop](NSRunLoop runUntilDate:"runUntilDate:", [NSDate dateWithTimeIntervalSinceNow:0.100000001]];
    selectedBorderColor = self->_selectedBorderColor;
    p_mainView = &self->_mainView;
    layer = [(SYNMediaWallCollectionViewCellMainView2 *)self->_mainView layer];
    if (selectedBorderColor)
    {
      [layer setBorderWidth:2.0];
      [-[SYNMediaWallCollectionViewCellMainView2 layer](*p_mainView "layer")];
      v9 = self->_selectedBorderColor;
    }

    else
    {
      [layer setBorderWidth:0.0];
      [-[SYNMediaWallCollectionViewCellMainView2 layer](*p_mainView "layer")];
      v9 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    }

    cGColor = [(UIColor *)v9 CGColor];
  }

  else
  {
    v3 = self->_selectedBorderColor;
    layer2 = [(SYNMediaWallCollectionViewCellMainView2 *)self->_mainView layer];
    if (v3)
    {
      [layer2 setBorderWidth:2.0];
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
      v5 = self->_selectedBorderColor;
    }

    else
    {
      [layer2 setBorderWidth:0.0];
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
      v5 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    }

    [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
    [+[NSRunLoop mainRunLoop](NSRunLoop runUntilDate:"runUntilDate:", [NSDate dateWithTimeIntervalSinceNow:0.100000001]];
    if ([(SYNMediaWallCollectionViewCell2 *)self borderColor])
    {
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
    }

    else
    {
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
    }

    cGColor = [+[UIColor colorWithRed:green:blue:alpha:](UIColor CGColor:0.0];
    p_mainView = &self->_mainView;
  }

  [-[SYNMediaWallCollectionViewCellMainView2 layer](*p_mainView "layer")];
  v11 = +[NSRunLoop mainRunLoop];
  v12 = [NSDate dateWithTimeIntervalSinceNow:0.100000001];

  [(NSRunLoop *)v11 runUntilDate:v12];
}

- (void)animatePop
{
  v3 = [CABasicAnimation animationWithKeyPath:@"transform"];
  memset(&v8, 0, sizeof(v8));
  v4 = [-[SYNMediaWallCollectionViewCell2 contentView](self "contentView")];
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CATransform3DGetAffineTransform(&v8, &v7);
  memset(&v6, 0, sizeof(v6));
  *&v7.m11 = *&v8.a;
  *&v7.m13 = *&v8.c;
  *&v7.m21 = *&v8.tx;
  CGAffineTransformScale(&v6, &v7, 0.970000029, 0.970000029);
  [(CABasicAnimation *)v3 setDuration:0.100000001];
  v5 = v6;
  CATransform3DMakeAffineTransform(&v7, &v5);
  [(CABasicAnimation *)v3 setToValue:[NSValue valueWithCATransform3D:&v7]];
  [(CABasicAnimation *)v3 setRemovedOnCompletion:1];
  [(CABasicAnimation *)v3 setAutoreverses:1];
  [objc_msgSend(-[SYNMediaWallCollectionViewCell2 contentView](self "contentView")];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  borderColor = [(SYNMediaWallCollectionViewCell2 *)self borderColor];
  v6 = borderColor;
  if (!selectedCopy)
  {
    if (borderColor)
    {
      [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    p_mainView = &self->_mainView;
    [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
    goto LABEL_9;
  }

  p_mainView = &self->_mainView;
  layer = [(SYNMediaWallCollectionViewCellMainView2 *)self->_mainView layer];
  if (!v6)
  {
    [layer setBorderWidth:0.0];
    [-[SYNMediaWallCollectionViewCellMainView2 layer](*p_mainView "layer")];
LABEL_9:
    selectedBorderColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    goto LABEL_10;
  }

  [layer setBorderWidth:2.0];
  [-[SYNMediaWallCollectionViewCellMainView2 layer](*p_mainView "layer")];
  selectedBorderColor = self->_selectedBorderColor;
LABEL_10:
  [-[SYNMediaWallCollectionViewCellMainView2 layer](*p_mainView "layer")];
  v11.receiver = self;
  v11.super_class = SYNMediaWallCollectionViewCell2;
  [(SYNMediaWallCollectionViewCell2 *)&v11 setSelected:selectedCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (!highlighted)
  {
    [-[SYNMediaWallCollectionViewCellMainView2 layer](self->_mainView "layer")];
  }

  v5.receiver = self;
  v5.super_class = SYNMediaWallCollectionViewCell2;
  [(SYNMediaWallCollectionViewCell2 *)&v5 setHighlighted:highlightedCopy];
}

- (CGRect)_contentsRectForRegionOfInterestContainerBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  image = [(UIImageView *)self->_imageView image];
  v9 = 0.0;
  v10 = 1.0;
  if (!image)
  {
    goto LABEL_3;
  }

  v11 = image;
  v80.origin.x = CGRectZero.origin.x;
  v80.origin.y = CGRectZero.origin.y;
  v80.size.width = CGRectZero.size.width;
  v80.size.height = CGRectZero.size.height;
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  if (CGRectEqualToRect(v69, v80))
  {
    goto LABEL_3;
  }

  [(UIImage *)v11 size];
  v19 = v18;
  [(UIImage *)v11 size];
  v21 = v19 / v20;
  [(SYNMediaWallCollectionViewCell2 *)self bounds];
  v23 = v22;
  [(SYNMediaWallCollectionViewCell2 *)self bounds];
  v25 = v23 / v24;
  [(SYNMediaWallCollectionViewCell2 *)self bounds];
  if (v21 >= v25)
  {
    v28 = v21 * v27;
    [(SYNMediaWallCollectionViewCell2 *)self bounds];
    v30 = v36;
    [(SYNMediaWallCollectionViewCell2 *)self bounds];
    v38 = v37;
    [(SYNMediaWallCollectionViewCell2 *)self bounds];
    v35 = -(v39 - v21 * v38) * 0.5;
    v34 = 0.0;
  }

  else
  {
    v28 = v26;
    [(SYNMediaWallCollectionViewCell2 *)self bounds];
    v30 = v29 / v21;
    [(SYNMediaWallCollectionViewCell2 *)self bounds];
    v32 = v31 / v21;
    [(SYNMediaWallCollectionViewCell2 *)self bounds];
    v34 = (v32 - v33) * 0.5;
    v35 = 0.0;
  }

  v68 = v35;
  v40 = -(v35 - x * v28);
  v10 = 1.0;
  v41 = 1.0 - y - height;
  v42 = v34;
  v43 = -(v34 - v41 * v30);
  v65 = v30;
  v66 = v28;
  v44 = width * v28;
  v45 = height * v30;
  [(SYNMediaWallCollectionViewCell2 *)self bounds];
  v67 = v40;
  v81.origin.x = v40;
  v81.origin.y = v43;
  v81.size.width = v44;
  v81.size.height = v45;
  if (CGRectContainsRect(v70, v81))
  {
    v12 = 1.0;
    v13 = 0.0;
LABEL_11:
    v9 = 0.0;
    goto LABEL_5;
  }

  rect = v44;
  [(SYNMediaWallCollectionViewCell2 *)self bounds];
  v47 = v46;
  [(SYNMediaWallCollectionViewCell2 *)self bounds];
  v49 = v48;
  [(SYNMediaWallCollectionViewCell2 *)self bounds];
  v9 = 0.0;
  if (v68 <= 0.0)
  {
    if (v42 <= 0.0)
    {
LABEL_3:
      v12 = 1.0;
LABEL_4:
      v13 = 0.0;
      goto LABEL_5;
    }

    v56 = v42;
    v57 = -v42;
    v58 = v49 * 0.5;
    v10 = v51 / v65;
    [(SYNMediaWallCollectionViewCell2 *)self bounds];
    v13 = 0.0;
    v74.origin.x = 0.0;
    v74.origin.y = v57;
    v74.size.height = v56;
    v83.origin.x = v67;
    v83.origin.y = v43;
    v83.size.width = rect;
    v83.size.height = v45;
    v59 = CGRectIntersectsRect(v74, v83);
    v75.origin.x = v67;
    v75.origin.y = v43;
    v75.size.width = rect;
    v75.size.height = v45;
    v60 = v58 - CGRectGetMidY(v75);
    if (v60 < 0.0)
    {
      v60 = -v60;
    }

    if (v59)
    {
      if (v60 >= v56)
      {
        v12 = 1.0;
        goto LABEL_11;
      }

      v76.origin.x = v67;
      v76.origin.y = v43;
      v76.size.height = v45;
      v76.size.width = rect;
      v61 = v58 - CGRectGetMidY(v76);
      if (v61 < 0.0)
      {
        v61 = -v61;
      }

      v9 = (v56 - v61) / v65;
      v12 = 1.0;
    }

    else
    {
      v12 = 1.0;
      v9 = 1.0 - v10;
      if (v60 < v56)
      {
        v78.origin.x = v67;
        v78.origin.y = v43;
        v78.size.height = v45;
        v78.size.width = rect;
        v63 = v58 - CGRectGetMidY(v78);
        if (v63 < 0.0)
        {
          v63 = -v63;
        }

        v9 = v9 - (v56 - v63) / v65;
      }
    }
  }

  else
  {
    v52 = v47 * 0.5;
    v12 = v50 / v66;
    [(SYNMediaWallCollectionViewCell2 *)self bounds];
    v71.origin.y = 0.0;
    v71.origin.x = -v68;
    v71.size.width = v68;
    v82.origin.x = v40;
    v82.origin.y = v43;
    v82.size.width = rect;
    v82.size.height = v45;
    v53 = CGRectIntersectsRect(v71, v82);
    v72.origin.x = v40;
    v72.origin.y = v43;
    v72.size.width = rect;
    v72.size.height = v45;
    v54 = v52 - CGRectGetMidX(v72);
    if (v54 < 0.0)
    {
      v54 = -v54;
    }

    if (v53)
    {
      if (v54 >= v68)
      {
        goto LABEL_4;
      }

      v73.origin.x = v40;
      v73.origin.y = v43;
      v73.size.width = rect;
      v73.size.height = v45;
      v55 = v52 - CGRectGetMidX(v73);
      if (v55 < 0.0)
      {
        v55 = -v55;
      }

      v13 = (v68 - v55) / v66;
    }

    else
    {
      v13 = 1.0 - v12;
      if (v54 < v68)
      {
        v77.origin.x = v40;
        v77.origin.y = v43;
        v77.size.height = v45;
        v77.size.width = rect;
        v62 = v52 - CGRectGetMidX(v77);
        if (v62 < 0.0)
        {
          v62 = -v62;
        }

        v13 = v13 - (v68 - v62) / v66;
      }
    }
  }

LABEL_5:
  v14 = v13;
  v15 = v9;
  v16 = v12;
  v17 = v10;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)imageContentsRect
{
  layer = [(UIImageView *)self->_imageView layer];

  [layer contentsRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)updateImageContentsRect
{
  layer = [(UIImageView *)self->_imageView layer];

  [layer setContentsRect:{0.0, 0.0, 1.0, 1.0}];
}

- (void)updateVideoFooter
{
  if ([(MZMediaManagement *)self->_assetManagementDelegate isSupportedMovieForAssetAtPath:[(MCAsset *)self->_mediaItem path]])
  {
    [(MZMediaManagement *)self->_assetManagementDelegate stopTimeForAssetAtPath:[(MCAsset *)self->_mediaItem path]];
    v4 = v3;
    [(MZMediaManagement *)self->_assetManagementDelegate startTimeForAssetAtPath:[(MCAsset *)self->_mediaItem path]];
    v6 = v4 - v5;
    videoLabelView = self->_videoLabelView;
    if (videoLabelView)
    {
      v8 = [(UIView *)videoLabelView viewWithTag:1];
      if (v6 <= 0.0)
      {
        v10 = &stru_1AC858;
      }

      else
      {
        quot = div(v6, 60).quot;
        v10 = [NSString stringWithFormat:@"%02d:%02d", quot, HIDWORD(quot)];
      }

      [(UIView *)v8 setText:v10];
    }

    else
    {
      v12 = [UIView alloc];
      [(SYNMediaWallCollectionViewCell2 *)self bounds];
      v14 = v13 + -20.0;
      [(SYNMediaWallCollectionViewCell2 *)self bounds];
      self->_videoLabelView = [v12 initWithFrame:{0.0, v14}];
      if ([+[UIDevice userInterfaceIdiom] currentDevice]
      {
        [(UIView *)self->_videoLabelView setBackgroundColor:[UIColor colorWithWhite:0.0 alpha:0.400000006]];
        if (v6 > 0.0)
        {
          v15 = [UILabel alloc];
          [(UIView *)self->_videoLabelView bounds];
          v16 = [v15 initWithFrame:?];
          [v16 setAutoresizingMask:9];
          [v16 setTag:1];
          [v16 setTextAlignment:2];
          [v16 setTextColor:{+[UIColor whiteColor](UIColor, "whiteColor")}];
          v17 = div(v6, 60).quot;
          [v16 setText:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%02d:%02d", v17, HIDWORD(v17))}];
          [v16 setBackgroundColor:{+[UIColor clearColor](UIColor, "clearColor")}];
          [v16 setFont:{+[UIFont boldSystemFontOfSize:](UIFont, "boldSystemFontOfSize:", 11.0)}];
          [(UIView *)self->_videoLabelView addSubview:v16];

          [v16 sizeToFit];
          [(UIView *)self->_videoLabelView frame];
          v19 = v18;
          [v16 frame];
          v21 = v19 - v20 + -6.0;
          [(UIView *)self->_videoLabelView frame];
          v23 = v22;
          [v16 frame];
          v25 = (v23 - v24) * 0.5;
          [v16 frame];
          v27 = v26;
          [v16 frame];
          [v16 setFrame:{v21, v25, v27}];
        }
      }

      else
      {
        [(UIView *)self->_videoLabelView setBackgroundColor:+[UIColor clearColor]];
      }

      [(UIView *)self->_videoLabelView setAutoresizingMask:10];
      mainView = self->_mainView;
      v29 = self->_videoLabelView;

      [(SYNMediaWallCollectionViewCellMainView2 *)mainView addSubview:v29];
    }
  }

  else
  {
    v11 = self->_videoLabelView;
    if (v11)
    {
      [(UIView *)v11 removeFromSuperview];

      self->_videoLabelView = 0;
    }
  }
}

@end