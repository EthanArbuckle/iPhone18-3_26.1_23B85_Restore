@interface _UIPopoverViewArtworkLoader
+ (id)backgroundSelectorForBackgroundStyle:(int64_t)style;
- (BOOL)modern;
- (CGRect)contentRectForRect:(CGRect)rect inImageOfSize:(CGSize)size;
- (CGRect)contentsCenterForRect:(CGRect)rect inImageOfSize:(CGSize)size;
- (_UIPopoverViewArtworkLoader)initWithBackgroundStyle:(int64_t)style;
- (double)arrowHeight;
- (double)arrowTopGradientEnd;
- (double)bottomEndCapHeight;
- (double)capCornerRadius;
- (double)clampArrowBase;
- (double)noArrowTopGradientEnd;
- (double)shortArtArrowTopGradientEnd;
- (double)shortArtNoArrowTopGradientEnd;
- (double)shortArtRightArrowBase;
- (double)sideArrowStart;
- (double)topArrowStart;
- (id)_bottomArrowLeftEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_bottomArrowPinnedViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_bottomArrowRightEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_bottomArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_rightArrowBottomEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_rightArrowPinnedBottomViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_rightArrowPinnedTopViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_rightArrowTopEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_rightArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_shortBottomArrowLeftEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_shortBottomArrowPinnedViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_shortBottomArrowRightEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_shortBottomArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_shortRightArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_shortTopArrowLeftEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_shortTopArrowPinnedViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_shortTopArrowRightEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_shortTopArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_templateImageForDirection:(id)direction shortArtwork:(BOOL)artwork traitCollection:(id)collection rimShadow:(BOOL)shadow;
- (id)_topArrowLeftEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_topArrowPinnedViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_topArrowRightEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)_topArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow;
- (id)viewWithContentsImage:(id)image rect:(CGRect)rect center:(CGRect)center antialiasingMask:(unsigned int)mask directionSelector:(id)selector;
@end

@implementation _UIPopoverViewArtworkLoader

- (_UIPopoverViewArtworkLoader)initWithBackgroundStyle:(int64_t)style
{
  v9.receiver = self;
  v9.super_class = _UIPopoverViewArtworkLoader;
  v4 = [(_UIPopoverViewArtworkLoader *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_backgroundStyle = style;
    v6 = [objc_opt_class() backgroundSelectorForBackgroundStyle:style];
    backgroundSelector = v5->_backgroundSelector;
    v5->_backgroundSelector = v6;
  }

  return v5;
}

+ (id)backgroundSelectorForBackgroundStyle:(int64_t)style
{
  if (style > 5)
  {
    if ((style - 6) < 2)
    {
      return @"BlurMask";
    }

    if (style == 8)
    {
      return @"Gray";
    }

    if (style == 100)
    {
      return @"BlurMask";
    }

    return @"Blue";
  }

  if (style <= 2)
  {
    if (style == 1)
    {
      return @"Clear";
    }

    if (style == 2)
    {
      return @"Cream";
    }

    return @"Blue";
  }

  if (style == 3)
  {
    return @"Black";
  }

  if (style == 4)
  {
    return @"Share";
  }

  return @"ShareBlack";
}

- (BOOL)modern
{
  backgroundStyle = self->_backgroundStyle;
  v3 = backgroundStyle - 6;
  v4 = backgroundStyle == 100;
  return v3 < 2 || v4;
}

- (id)_templateImageForDirection:(id)direction shortArtwork:(BOOL)artwork traitCollection:(id)collection rimShadow:(BOOL)shadow
{
  directionCopy = direction;
  collectionCopy = collection;
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (shadow)
  {
    if (artwork)
    {
      directionCopy = [v12 initWithFormat:@"_UIPopoverViewShortRimShadowArrow%@.png", directionCopy, v17];
    }

    else
    {
      directionCopy = [v12 initWithFormat:@"_UIPopoverViewRimShadowArrow%@.png", directionCopy, v17];
    }
  }

  else if (artwork)
  {
    directionCopy = [v12 initWithFormat:@"_UIPopoverViewShort%@BackgroundArrow%@.png", self->_backgroundSelector, directionCopy];
  }

  else
  {
    directionCopy = [v12 initWithFormat:@"_UIPopoverView%@BackgroundArrow%@.png", self->_backgroundSelector, directionCopy];
  }

  v14 = directionCopy;
  v15 = _UIImageWithNameAndTraitCollection(directionCopy, collectionCopy);

  return v15;
}

- (CGRect)contentRectForRect:(CGRect)rect inImageOfSize:(CGSize)size
{
  v4 = rect.origin.x / size.width;
  v5 = rect.origin.y / size.height;
  v6 = rect.size.width / size.width;
  v7 = rect.size.height / size.height;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)contentsCenterForRect:(CGRect)rect inImageOfSize:(CGSize)size
{
  v4 = rect.size.width + -1.0;
  v5 = rect.size.height + -1.0;
  v6 = (rect.origin.x + 0.5) / size.width;
  v7 = rect.origin.y + 0.5;
  v8 = v4 / size.width;
  if (v4 == 0.0)
  {
    v9 = 0.00000011920929;
  }

  else
  {
    v9 = v8;
  }

  if (v5 == 0.0)
  {
    v10 = 0.00000011920929;
  }

  else
  {
    v10 = v5 / size.height;
  }

  v11 = v7 / size.height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v11;
  result.origin.x = v6;
  return result;
}

- (id)viewWithContentsImage:(id)image rect:(CGRect)rect center:(CGRect)center antialiasingMask:(unsigned int)mask directionSelector:(id)selector
{
  v7 = *&mask;
  height = center.size.height;
  width = center.size.width;
  y = center.origin.y;
  x = center.origin.x;
  v11 = rect.size.height;
  v12 = rect.size.width;
  v13 = rect.origin.y;
  v14 = rect.origin.x;
  selectorCopy = selector;
  imageCopy = image;
  v18 = [_UIPopoverViewBackgroundComponentView alloc];
  [imageCopy size];
  v20 = v19;
  [imageCopy size];
  v22 = [(UIView *)v18 initWithFrame:0.0, 0.0, v20, v21];
  [(UIView *)v22 setOpaque:0];
  layer = [(UIView *)v22 layer];
  [layer setContents:{objc_msgSend(imageCopy, "CGImage")}];

  layer2 = [(UIView *)v22 layer];
  [layer2 setContentsRect:{v14, v13, v12, v11}];

  layer3 = [(UIView *)v22 layer];
  [layer3 setContentsCenter:{x, y, width, height}];

  layer4 = [(UIView *)v22 layer];
  [imageCopy scale];
  v28 = v27;

  [layer4 setContentsScale:v28];
  layer5 = [(UIView *)v22 layer];
  [layer5 setEdgeAntialiasingMask:v7];

  [(_UIPopoverViewBackgroundComponentView *)v22 setDirectionSelector:selectorCopy];

  return v22;
}

- (double)arrowHeight
{
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  result = 18.0;
  if (modern)
  {
    return 13.0;
  }

  return result;
}

- (double)topArrowStart
{
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  result = 10.0;
  if (modern)
  {
    return 25.0;
  }

  return result;
}

- (double)sideArrowStart
{
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  result = 24.0;
  if (modern)
  {
    return 25.0;
  }

  return result;
}

- (double)clampArrowBase
{
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  result = 44.0;
  if (modern)
  {
    return 32.0;
  }

  return result;
}

- (double)arrowTopGradientEnd
{
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  result = 42.0;
  if (modern)
  {
    return 25.0;
  }

  return result;
}

- (double)noArrowTopGradientEnd
{
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  result = 24.0;
  if (modern)
  {
    return 25.0;
  }

  return result;
}

- (double)capCornerRadius
{
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  result = 8.0;
  if (modern)
  {
    return 16.0;
  }

  return result;
}

- (double)bottomEndCapHeight
{
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  result = 10.0;
  if (modern)
  {
    return 16.0;
  }

  return result;
}

- (double)shortArtNoArrowTopGradientEnd
{
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  result = 28.0;
  if (modern)
  {
    return 25.0;
  }

  return result;
}

- (double)shortArtArrowTopGradientEnd
{
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  result = 46.0;
  if (modern)
  {
    return 25.0;
  }

  return result;
}

- (double)shortArtRightArrowBase
{
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  result = 33.0;
  if (!modern)
  {
    return 22.0;
  }

  return result;
}

- (id)_topArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Up" shortArtwork:0 traitCollection:collection rimShadow:shadow];
  [(_UIPopoverViewArtworkLoader *)self topArrowStart];
  v7 = v6;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v9 = v8;
  [v5 size];
  v11 = v10;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:v7 inImageOfSize:0.0, v9, v11, v12, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(_UIPopoverViewArtworkLoader *)self arrowTopGradientEnd];
  v23 = v22;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v25 = v24;
  [v5 size];
  v27 = v26;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v29 = v28;
  [(_UIPopoverViewArtworkLoader *)self arrowTopGradientEnd];
  v31 = v27 - (v29 + v30);
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v33 = v32;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:0.0 inImageOfSize:v23, v25, v31, v33, v34];
  v39 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:3 center:@"Up" antialiasingMask:v15 directionSelector:v17, v19, v21, v35, v36, v37, v38];
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v41 = v40;
  [v5 size];
  [v39 setFrame:{0.0, 0.0, v41, v42}];

  return v39;
}

- (id)_topArrowPinnedViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"UpRight" shortArtwork:0 traitCollection:collection rimShadow:shadow];
  [v5 size];
  v7 = v6;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v9 = v7 - v8;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v11 = v10;
  [v5 size];
  v13 = v12;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:v9 inImageOfSize:0.0, v11, v13, v14, v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(_UIPopoverViewArtworkLoader *)self arrowTopGradientEnd];
  v25 = v24;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v27 = v26;
  [v5 size];
  v29 = v28;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v31 = v30;
  [(_UIPopoverViewArtworkLoader *)self arrowTopGradientEnd];
  v33 = v29 - (v31 + v32);
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v35 = v34;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:0.0 inImageOfSize:v25, v27, v33, v35, v36];
  v41 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:1 center:@"UpRight" antialiasingMask:v17 directionSelector:v19, v21, v23, v37, v38, v39, v40];
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v43 = v42;
  [v5 size];
  [v41 setFrame:{0.0, 0.0, v43, v44}];

  return v41;
}

- (id)_topArrowLeftEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Up" shortArtwork:0 traitCollection:collection rimShadow:shadow];
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v7 = v6;
  [v5 size];
  v9 = v8;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:0.0 inImageOfSize:0.0, v7, v9, v10, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v21 = v20;
  [(_UIPopoverViewArtworkLoader *)self arrowTopGradientEnd];
  v23 = v22;
  [v5 size];
  v25 = v24;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v27 = v26;
  [(_UIPopoverViewArtworkLoader *)self arrowTopGradientEnd];
  v29 = v25 - (v27 + v28);
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v31 = v30;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:v21 inImageOfSize:v23, 1.0, v29, v31, v32];
  v37 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:2 center:@"Up" antialiasingMask:v13 directionSelector:v15, v17, v19, v33, v34, v35, v36];
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v39 = v38;
  [v5 size];
  [v37 setFrame:{0.0, 0.0, v39, v40}];

  return v37;
}

- (id)_topArrowRightEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  collectionCopy = collection;
  if ([(_UIPopoverViewArtworkLoader *)self modern])
  {
    v7 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Up" shortArtwork:0 traitCollection:collectionCopy rimShadow:shadowCopy];

    [v7 size];
    v9 = v8;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v11 = v9 - v10;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v13 = v12;
    [v7 size];
    v15 = v14;
    [v7 size];
    [(_UIPopoverViewArtworkLoader *)self contentRectForRect:v11 inImageOfSize:0.0, v13, v15, v16, v17];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(_UIPopoverViewArtworkLoader *)self arrowTopGradientEnd];
    v27 = v26;
    [v7 size];
    v29 = v28;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v31 = v30;
    [(_UIPopoverViewArtworkLoader *)self arrowTopGradientEnd];
    v33 = v29 - (v31 + v32);
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v35 = v34;
    [v7 size];
    [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:0.0 inImageOfSize:v27, 1.0, v33, v35, v36];
    v41 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v7 rect:1 center:@"Up" antialiasingMask:v19 directionSelector:v21, v23, v25, v37, v38, v39, v40];
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v43 = v42;
    [v7 size];
    [v41 setFrame:{0.0, 0.0, v43, v44}];
  }

  else
  {
    v41 = [(_UIPopoverViewArtworkLoader *)self _topArrowLeftEndCapViewForTraitCollection:collectionCopy withRimShadow:shadowCopy];

    CATransform3DMakeScale(&v46, -1.0, 1.0, 1.0);
    CATransform3DGetAffineTransform(&v47, &v46);
    *&v46.m11 = *&v47.a;
    *&v46.m13 = *&v47.c;
    *&v46.m21 = *&v47.tx;
    [v41 setTransform:&v46];
  }

  return v41;
}

- (id)_rightArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Side" shortArtwork:0 traitCollection:collection rimShadow:shadow];
  [(_UIPopoverViewArtworkLoader *)self sideArrowStart];
  v7 = v6;
  [v5 size];
  v9 = v8;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v11 = v10;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:0.0 inImageOfSize:v7, v9, v11, v12, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v23 = v22;
  [v5 size];
  v25 = v24;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v27 = v26;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v29 = v27 + v28;
  [(_UIPopoverViewArtworkLoader *)self arrowHeight];
  v31 = v25 - (v29 + v30);
  [v5 size];
  v33 = v32;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:v23 inImageOfSize:1.0, v31, 1.0, v33, v34];
  v39 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:10 center:@"Side" antialiasingMask:v15 directionSelector:v17, v19, v21, v35, v36, v37, v38];
  [v5 size];
  v41 = v40;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  [v39 setFrame:{0.0, 0.0, v41, v42}];

  return v39;
}

- (id)_rightArrowPinnedTopViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"SideTop" shortArtwork:0 traitCollection:collection rimShadow:shadow];
  [v5 size];
  v7 = v6;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v9 = v8;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:0.0 inImageOfSize:0.0, v7, v9, v10, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v21 = v20;
  [v5 size];
  v23 = v22;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v25 = v24;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v27 = v25 + v26;
  [(_UIPopoverViewArtworkLoader *)self arrowHeight];
  v29 = v23 - (v27 + v28);
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v31 = v30;
  [v5 size];
  v33 = v32;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:v21 inImageOfSize:0.0, v29, v31, v33, v34];
  v39 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:4 center:@"SideTop" antialiasingMask:v13 directionSelector:v15, v17, v19, v35, v36, v37, v38];
  [v5 size];
  v41 = v40;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  [v39 setFrame:{0.0, 0.0, v41, v42}];

  return v39;
}

- (id)_rightArrowPinnedBottomViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"SideBottom" shortArtwork:0 traitCollection:collection rimShadow:shadow];
  [v5 size];
  v7 = v6;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v9 = v7 - v8;
  [v5 size];
  v11 = v10;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v13 = v12;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:0.0 inImageOfSize:v9, v11, v13, v14, v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v25 = v24;
  [v5 size];
  v27 = v26;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v29 = v28;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v31 = v29 + v30;
  [(_UIPopoverViewArtworkLoader *)self arrowHeight];
  v33 = v27 - (v31 + v32);
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v35 = v34;
  [v5 size];
  v37 = v36;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:v25 inImageOfSize:0.0, v33, v35, v37, v38];
  v43 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:8 center:@"SideBottom" antialiasingMask:v17 directionSelector:v19, v21, v23, v39, v40, v41, v42];
  [v5 size];
  v45 = v44;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  [v43 setFrame:{0.0, 0.0, v45, v46}];

  return v43;
}

- (id)_rightArrowTopEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Side" shortArtwork:0 traitCollection:collection rimShadow:shadow];
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  [v5 size];
  v8 = v7;
  if (modern)
  {
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v10 = v9;
    [v5 size];
    [(_UIPopoverViewArtworkLoader *)self contentRectForRect:0.0 inImageOfSize:0.0, v8, v10, v11, v12];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v22 = v21;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v24 = v23;
    [v5 size];
    v26 = v25;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v28 = v27;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v30 = v28 + v29;
    [(_UIPopoverViewArtworkLoader *)self arrowHeight];
    v32 = v26 - (v30 + v31);
    [v5 size];
    v34 = v33;
    [(_UIPopoverViewArtworkLoader *)self noArrowTopGradientEnd];
    v36 = v35;
  }

  else
  {
    [v5 size];
    v24 = 24.0;
    [(_UIPopoverViewArtworkLoader *)self contentRectForRect:0.0 inImageOfSize:0.0, v8, 24.0, v37, v38];
    v14 = v39;
    v16 = v40;
    v18 = v41;
    v20 = v42;
    [v5 size];
    v32 = v43 + -34.0;
    [v5 size];
    v34 = v44;
    v22 = 8.0;
    v36 = 24.0;
  }

  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:v22 inImageOfSize:v24, v32, 1.0, v34, v36];
  v49 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:4 center:@"Side" antialiasingMask:v14 directionSelector:v16, v18, v20, v45, v46, v47, v48];
  [v5 size];
  v51 = v50;
  [(_UIPopoverViewArtworkLoader *)self sideArrowStart];
  v53 = v52;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  [v49 setFrame:{0.0, 0.0, v51, v53 - v54}];

  return v49;
}

- (id)_rightArrowBottomEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Side" shortArtwork:0 traitCollection:collection rimShadow:shadow];
  [v5 size];
  v7 = v6;
  [(_UIPopoverViewArtworkLoader *)self bottomEndCapHeight];
  v9 = v7 - v8;
  [v5 size];
  v11 = v10;
  [(_UIPopoverViewArtworkLoader *)self bottomEndCapHeight];
  v13 = v12;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:0.0 inImageOfSize:v9, v11, v13, v14, v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v25 = v24;
  [v5 size];
  v27 = v26;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v29 = v28;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v31 = v29 + v30;
  [(_UIPopoverViewArtworkLoader *)self arrowHeight];
  v33 = v27 - (v31 + v32);
  [v5 size];
  v35 = v34;
  [(_UIPopoverViewArtworkLoader *)self sideArrowStart];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:v25 inImageOfSize:0.0, v33, 1.0, v35, v36];
  v41 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:8 center:@"Side" antialiasingMask:v17 directionSelector:v19, v21, v23, v37, v38, v39, v40];
  [v5 size];
  v43 = v42;
  [v5 size];
  v45 = v44;
  [(_UIPopoverViewArtworkLoader *)self sideArrowStart];
  v47 = v46;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  [v41 setFrame:{0.0, 0.0, v43, v45 - (v47 + v48)}];

  return v41;
}

- (id)_bottomArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Down" shortArtwork:0 traitCollection:collection rimShadow:shadow];
  [(_UIPopoverViewArtworkLoader *)self topArrowStart];
  v7 = v6;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v9 = v8;
  [v5 size];
  v11 = v10;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:v7 inImageOfSize:0.0, v9, v11, v12, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(_UIPopoverViewArtworkLoader *)self noArrowTopGradientEnd];
  v23 = v22;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v25 = v24;
  [v5 size];
  v27 = v26;
  [(_UIPopoverViewArtworkLoader *)self arrowHeight];
  v29 = v28;
  [(_UIPopoverViewArtworkLoader *)self noArrowTopGradientEnd];
  v31 = v29 + v30;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v33 = v27 - (v31 + v32);
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v35 = v34;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:0.0 inImageOfSize:v23, v25, v33, v35, v36];
  v41 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:12 center:@"Down" antialiasingMask:v15 directionSelector:v17, v19, v21, v37, v38, v39, v40];
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v43 = v42;
  [v5 size];
  [v41 setFrame:{0.0, 0.0, v43, v44}];

  return v41;
}

- (id)_bottomArrowPinnedViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"DownRight" shortArtwork:0 traitCollection:collection rimShadow:shadow];
  [v5 size];
  v7 = v6;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v9 = v7 - v8;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v11 = v10;
  [v5 size];
  v13 = v12;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:v9 inImageOfSize:0.0, v11, v13, v14, v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(_UIPopoverViewArtworkLoader *)self noArrowTopGradientEnd];
  v25 = v24;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v27 = v26;
  [v5 size];
  v29 = v28;
  [(_UIPopoverViewArtworkLoader *)self noArrowTopGradientEnd];
  v31 = v30;
  [(_UIPopoverViewArtworkLoader *)self arrowHeight];
  v33 = v31 + v32;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v35 = v29 - (v33 + v34);
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v37 = v36;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:0.0 inImageOfSize:v25, v27, v35, v37, v38];
  v43 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:1 center:@"DownRight" antialiasingMask:v17 directionSelector:v19, v21, v23, v39, v40, v41, v42];
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v45 = v44;
  [v5 size];
  [v43 setFrame:{0.0, 0.0, v45, v46}];

  return v43;
}

- (id)_bottomArrowLeftEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Down" shortArtwork:0 traitCollection:collection rimShadow:shadow];
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v7 = v6;
  [v5 size];
  v9 = v8;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:0.0 inImageOfSize:0.0, v7, v9, v10, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v21 = v20;
  [(_UIPopoverViewArtworkLoader *)self noArrowTopGradientEnd];
  v23 = v22;
  [v5 size];
  v25 = v24;
  [(_UIPopoverViewArtworkLoader *)self arrowHeight];
  v27 = v26;
  [(_UIPopoverViewArtworkLoader *)self noArrowTopGradientEnd];
  v29 = v27 + v28;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v31 = v25 - (v29 + v30);
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v33 = v32;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:v21 inImageOfSize:v23, 1.0, v31, v33, v34];
  v39 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:1 center:@"Down" antialiasingMask:v13 directionSelector:v15, v17, v19, v35, v36, v37, v38];
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v41 = v40;
  [v5 size];
  [v39 setFrame:{0.0, 0.0, v41, v42}];

  return v39;
}

- (id)_bottomArrowRightEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  collectionCopy = collection;
  if ([(_UIPopoverViewArtworkLoader *)self modern])
  {
    v7 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Down" shortArtwork:0 traitCollection:collectionCopy rimShadow:shadowCopy];

    [v7 size];
    v9 = v8;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v11 = v9 - v10;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v13 = v12;
    [v7 size];
    v15 = v14;
    [v7 size];
    [(_UIPopoverViewArtworkLoader *)self contentRectForRect:v11 inImageOfSize:0.0, v13, v15, v16, v17];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(_UIPopoverViewArtworkLoader *)self noArrowTopGradientEnd];
    v27 = v26;
    [v7 size];
    v29 = v28;
    [(_UIPopoverViewArtworkLoader *)self arrowHeight];
    v31 = v30;
    [(_UIPopoverViewArtworkLoader *)self noArrowTopGradientEnd];
    v33 = v31 + v32;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v35 = v29 - (v33 + v34);
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v37 = v36;
    [v7 size];
    [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:0.0 inImageOfSize:v27, 1.0, v35, v37, v38];
    v43 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v7 rect:2 center:@"Down" antialiasingMask:v19 directionSelector:v21, v23, v25, v39, v40, v41, v42];
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v45 = v44;
    [v7 size];
    [v43 setFrame:{0.0, 0.0, v45, v46}];
  }

  else
  {
    v43 = [(_UIPopoverViewArtworkLoader *)self _bottomArrowLeftEndCapViewForTraitCollection:collectionCopy withRimShadow:shadowCopy];

    CATransform3DMakeScale(&v48, -1.0, 1.0, 1.0);
    CATransform3DGetAffineTransform(&v49, &v48);
    *&v48.m11 = *&v49.a;
    *&v48.m13 = *&v49.c;
    *&v48.m21 = *&v49.tx;
    [v43 setTransform:&v48];
  }

  return v43;
}

- (id)_shortTopArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Up" shortArtwork:1 traitCollection:collection rimShadow:shadow];
  [(_UIPopoverViewArtworkLoader *)self topArrowStart];
  v7 = v6;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v9 = v8;
  [v5 size];
  v11 = v10;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:v7 inImageOfSize:0.0, v9, v11, v12, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(_UIPopoverViewArtworkLoader *)self shortArtArrowTopGradientEnd];
  v23 = v22;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v25 = v24;
  [v5 size];
  v27 = v26;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v29 = v28;
  [(_UIPopoverViewArtworkLoader *)self shortArtArrowTopGradientEnd];
  v31 = v27 - (v29 + v30);
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v33 = v32;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:0.0 inImageOfSize:v23, v25, v31, v33, v34];
  v39 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:3 center:@"Up" antialiasingMask:v15 directionSelector:v17, v19, v21, v35, v36, v37, v38];
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v41 = v40;
  [v5 size];
  [v39 setFrame:{0.0, 0.0, v41, v42}];

  return v39;
}

- (id)_shortTopArrowPinnedViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"UpRight" shortArtwork:1 traitCollection:collection rimShadow:shadow];
  [v5 size];
  v7 = v6;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v9 = v7 - v8;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v11 = v10;
  [v5 size];
  v13 = v12;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:v9 inImageOfSize:0.0, v11, v13, v14, v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(_UIPopoverViewArtworkLoader *)self shortArtArrowTopGradientEnd];
  v25 = v24;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v27 = v26;
  [v5 size];
  v29 = v28;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v31 = v30;
  [(_UIPopoverViewArtworkLoader *)self shortArtArrowTopGradientEnd];
  v33 = v29 - (v31 + v32);
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v35 = v34;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:0.0 inImageOfSize:v25, v27, v33, v35, v36];
  v41 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:1 center:@"UpRight" antialiasingMask:v17 directionSelector:v19, v21, v23, v37, v38, v39, v40];
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v43 = v42;
  [v5 size];
  [v41 setFrame:{0.0, 0.0, v43, v44}];

  return v41;
}

- (id)_shortTopArrowLeftEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Up" shortArtwork:1 traitCollection:collection rimShadow:shadow];
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v7 = v6;
  [v5 size];
  v9 = v8;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:0.0 inImageOfSize:0.0, v7, v9, v10, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v21 = v20 + -1.0;
  [(_UIPopoverViewArtworkLoader *)self shortArtArrowTopGradientEnd];
  v23 = v22;
  [v5 size];
  v25 = v24;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v27 = v26;
  [(_UIPopoverViewArtworkLoader *)self shortArtArrowTopGradientEnd];
  v29 = v25 - (v27 + v28);
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v31 = v30;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:v21 inImageOfSize:v23, 1.0, v29, v31, v32];
  v37 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:2 center:@"Up" antialiasingMask:v13 directionSelector:v15, v17, v19, v33, v34, v35, v36];
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v39 = v38;
  [v5 size];
  [v37 setFrame:{0.0, 0.0, v39, v40}];

  return v37;
}

- (id)_shortTopArrowRightEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v4 = [(_UIPopoverViewArtworkLoader *)self _shortTopArrowLeftEndCapViewForTraitCollection:collection withRimShadow:shadow];
  CATransform3DMakeScale(&v6, -1.0, 1.0, 1.0);
  CATransform3DGetAffineTransform(&v7, &v6);
  *&v6.m11 = *&v7.a;
  *&v6.m13 = *&v7.c;
  *&v6.m21 = *&v7.tx;
  [v4 setTransform:&v6];

  return v4;
}

- (id)_shortRightArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Side" shortArtwork:1 traitCollection:collection rimShadow:shadow];
  [v5 size];
  v7 = v6;
  [v5 size];
  v9 = v8;
  [v5 size];
  v10 = 0.0;
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:0.0 inImageOfSize:0.0, v7, v9, v11, v12];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  modern = [(_UIPopoverViewArtworkLoader *)self modern];
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v23 = v22;
  [v5 size];
  v25 = v24;
  if (modern)
  {
    v26 = v23 / v24;
    [v5 size];
    v28 = v27;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v30 = v28 - v29;
    [(_UIPopoverViewArtworkLoader *)self shortArtRightArrowBase];
    v32 = v30 - v31;
    [v5 size];
    v33 = 1.0;
    v35 = v32 / v34;
  }

  else
  {
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v37 = v36;
    [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
    v39 = v37 + v38;
    [(_UIPopoverViewArtworkLoader *)self shortArtRightArrowBase];
    v41 = v25 - (v39 + v40);
    [v5 size];
    v43 = v42;
    [v5 size];
    [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:v23 inImageOfSize:0.0, v41, v43, v44, v45];
    v26 = v46;
    v10 = v47;
    v35 = v48;
    v33 = v49;
  }

  v50 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:0 center:@"Side" antialiasingMask:v14 directionSelector:v16, v18, v20, v26, v10, v35, v33];
  [v5 size];
  v52 = v51;
  [v5 size];
  [v50 setFrame:{0.0, 0.0, v52, v53}];

  return v50;
}

- (id)_shortBottomArrowViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Down" shortArtwork:1 traitCollection:collection rimShadow:shadow];
  [(_UIPopoverViewArtworkLoader *)self topArrowStart];
  v7 = v6;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v9 = v8;
  [v5 size];
  v11 = v10;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:v7 inImageOfSize:0.0, v9, v11, v12, v13];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(_UIPopoverViewArtworkLoader *)self shortArtNoArrowTopGradientEnd];
  v23 = v22;
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v25 = v24;
  [v5 size];
  v27 = v26;
  [(_UIPopoverViewArtworkLoader *)self arrowHeight];
  v29 = v28;
  [(_UIPopoverViewArtworkLoader *)self shortArtNoArrowTopGradientEnd];
  v31 = v29 + v30;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v33 = v27 - (v31 + v32);
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v35 = v34;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:0.0 inImageOfSize:v23, v25, v33, v35, v36];
  v41 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:3 center:@"Down" antialiasingMask:v15 directionSelector:v17, v19, v21, v37, v38, v39, v40];
  [(_UIPopoverViewArtworkLoader *)self arrowBase];
  v43 = v42;
  [v5 size];
  [v41 setFrame:{0.0, 0.0, v43, v44}];

  return v41;
}

- (id)_shortBottomArrowPinnedViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"DownRight" shortArtwork:1 traitCollection:collection rimShadow:shadow];
  [v5 size];
  v7 = v6;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v9 = v7 - v8;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v11 = v10;
  [v5 size];
  v13 = v12;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:v9 inImageOfSize:0.0, v11, v13, v14, v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(_UIPopoverViewArtworkLoader *)self shortArtNoArrowTopGradientEnd];
  v25 = v24;
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v27 = v26;
  [v5 size];
  v29 = v28;
  [(_UIPopoverViewArtworkLoader *)self shortArtNoArrowTopGradientEnd];
  v31 = v30;
  [(_UIPopoverViewArtworkLoader *)self arrowHeight];
  v33 = v31 + v32;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v35 = v29 - (v33 + v34);
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v37 = v36;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:0.0 inImageOfSize:v25, v27, v35, v37, v38];
  v43 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:1 center:@"DownRight" antialiasingMask:v17 directionSelector:v19, v21, v23, v39, v40, v41, v42];
  [(_UIPopoverViewArtworkLoader *)self clampArrowBase];
  v45 = v44;
  [v5 size];
  [v43 setFrame:{0.0, 0.0, v45, v46}];

  return v43;
}

- (id)_shortBottomArrowLeftEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v5 = [(_UIPopoverViewArtworkLoader *)self _templateImageForDirection:@"Down" shortArtwork:1 traitCollection:collection rimShadow:shadow];
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v7 = v6;
  [v5 size];
  v9 = v8;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentRectForRect:0.0 inImageOfSize:0.0, v7, v9, v10, v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v21 = v20;
  [(_UIPopoverViewArtworkLoader *)self shortArtNoArrowTopGradientEnd];
  v23 = v22;
  [v5 size];
  v25 = v24;
  [(_UIPopoverViewArtworkLoader *)self arrowHeight];
  v27 = v26;
  [(_UIPopoverViewArtworkLoader *)self shortArtNoArrowTopGradientEnd];
  v29 = v27 + v28;
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v31 = v25 - (v29 + v30);
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v33 = v32;
  [v5 size];
  [(_UIPopoverViewArtworkLoader *)self contentsCenterForRect:v21 inImageOfSize:v23, 1.0, v31, v33, v34];
  v39 = [(_UIPopoverViewArtworkLoader *)self viewWithContentsImage:v5 rect:2 center:@"Down" antialiasingMask:v13 directionSelector:v15, v17, v19, v35, v36, v37, v38];
  [(_UIPopoverViewArtworkLoader *)self capCornerRadius];
  v41 = v40;
  [v5 size];
  [v39 setFrame:{0.0, 0.0, v41, v42}];

  return v39;
}

- (id)_shortBottomArrowRightEndCapViewForTraitCollection:(id)collection withRimShadow:(BOOL)shadow
{
  v4 = [(_UIPopoverViewArtworkLoader *)self _shortBottomArrowLeftEndCapViewForTraitCollection:collection withRimShadow:shadow];
  CATransform3DMakeScale(&v6, -1.0, 1.0, 1.0);
  CATransform3DGetAffineTransform(&v7, &v6);
  *&v6.m11 = *&v7.a;
  *&v6.m13 = *&v7.c;
  *&v6.m21 = *&v7.tx;
  [v4 setTransform:&v6];

  return v4;
}

@end