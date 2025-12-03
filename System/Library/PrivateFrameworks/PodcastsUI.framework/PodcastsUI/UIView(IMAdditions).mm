@interface UIView(IMAdditions)
- (BOOL)isHorizontallyCompact;
- (BOOL)isHorizontallyRegular;
- (BOOL)isHorizontallySpecified;
- (BOOL)isVerticallyCompact;
- (BOOL)isVerticallyRegular;
- (BOOL)isVerticallySpecified;
- (BOOL)isViewSizeFullScreenInWindow:()IMAdditions ignoreInWindowCheck:;
- (double)adjustRectCenter:()IMAdditions fromView:;
- (id)ancestorOfClass:()IMAdditions;
- (id)debugingBorderColor;
- (id)findFirstResponder;
- (id)imageSnapshot;
- (id)snapshot_cg;
- (id)subviewOfClass:()IMAdditions;
- (void)attachPopUpAnimation;
- (void)debugHighlightView;
- (void)debugHighlightViewBlue;
- (void)debugHighlightViewWithColor:()IMAdditions width:;
- (void)printResponderChain;
- (void)setDebugingBorderColor:()IMAdditions;
- (void)setRoundedCorners:()IMAdditions radius:;
@end

@implementation UIView(IMAdditions)

- (void)debugHighlightView
{
  redColor = [MEMORY[0x277D75348] redColor];
  [self debugHighlightViewWithColor:redColor width:2.0];
}

- (void)debugHighlightViewBlue
{
  blueColor = [MEMORY[0x277D75348] blueColor];
  [self debugHighlightViewWithColor:blueColor width:2.0];
}

- (void)debugHighlightViewWithColor:()IMAdditions width:
{
  v7 = a3;
  v8 = a3;
  cGColor = [v8 CGColor];
  layer = [self layer];
  [layer setBorderColor:cGColor];

  layer2 = [self layer];
  [layer2 setBorderWidth:a4];

  layer3 = [self layer];
  [layer3 setCornerRadius:4.0];

  v16 = [v8 colorWithAlphaComponent:0.3];

  v13 = v16;
  cGColor2 = [v16 CGColor];
  layer4 = [self layer];
  [layer4 setBackgroundColor:cGColor2];
}

- (id)snapshot_cg
{
  [self bounds];
  v3 = vcvtd_n_u64_f64(v2, 2uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  [self bounds];
  v6 = v5;
  [self bounds];
  v8 = CGBitmapContextCreate(0, v6, v7, 8uLL, v3, DeviceRGB, 0x4001u);
  layer = [self layer];
  [layer renderInContext:v8];

  Image = CGBitmapContextCreateImage(v8);
  v11 = [MEMORY[0x277D755B8] imageWithCGImage:Image];
  CGImageRelease(Image);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v8);

  return v11;
}

- (id)imageSnapshot
{
  [self bounds];
  if (v2 <= 0.0 || ([self bounds], v3 <= 0.0))
  {
    mEMORY[0x277D3DA90] = [MEMORY[0x277D3DA90] sharedLogger];
    [mEMORY[0x277D3DA90] logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Extensions/UIKit/UIView+IMAdditions.m" lineNumber:66 format:{@"Snapshotting a CGSizeZero view: %@", self}];

    v11 = 0;
  }

  else
  {
    [self bounds];
    v5 = v4;
    v7 = v6;
    isOpaque = [self isOpaque];
    v15.width = v5;
    v15.height = v7;
    IMGraphicsBeginImageContextWithOptions(v15, isOpaque, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    layer = [self layer];
    [layer renderInContext:CurrentContext];

    v11 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v11;
}

- (id)subviewOfClass:()IMAdditions
{
  v28 = *MEMORY[0x277D85DE8];
  [self subviews];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v22 + 1) + 8 * v8);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v9;

    if (v10)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_9:
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * i) subviewOfClass:{a3, v18}];
        if (v16)
        {
          v10 = v16;
          goto LABEL_21;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_21:

LABEL_22:

  return v10;
}

- (id)ancestorOfClass:()IMAdditions
{
  superview = [self superview];
  if (superview)
  {
    v2 = superview;
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      superview2 = [v2 superview];

      v2 = superview2;
      if (!superview2)
      {
        goto LABEL_5;
      }
    }

    v4 = v2;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

  return v4;
}

- (id)findFirstResponder
{
  v15 = *MEMORY[0x277D85DE8];
  if ([self isFirstResponder])
  {
    selfCopy = self;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    subviews = [self subviews];
    v4 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(subviews);
          }

          findFirstResponder = [*(*(&v10 + 1) + 8 * i) findFirstResponder];
          if (findFirstResponder)
          {
            selfCopy = findFirstResponder;

            goto LABEL_13;
          }
        }

        v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_13:

  return selfCopy;
}

- (void)printResponderChain
{
  selfCopy = self;
  if (selfCopy)
  {
    v2 = selfCopy;
    v3 = 1;
    do
    {
      v4 = [v2 description];
      v5 = [v4 cStringUsingEncoding:30];

      printf("%lu. %s\n", v3++, v5);
      nextResponder = [v2 nextResponder];

      v2 = nextResponder;
    }

    while (nextResponder);
  }
}

- (void)setRoundedCorners:()IMAdditions radius:
{
  [self bounds];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MaxX = CGRectGetMaxX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MinY = CGRectGetMinY(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  MidY = CGRectGetMidY(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MaxY = CGRectGetMaxY(v31);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, MinX, MidY);
  if (a4)
  {
    v16 = a2;
  }

  else
  {
    v16 = 0.0;
  }

  CGPathAddArcToPoint(Mutable, 0, MinX, MinY, MidX, MinY, v16);
  if ((a4 & 2) != 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = 0.0;
  }

  CGPathAddArcToPoint(Mutable, 0, MaxX, MinY, MaxX, MidY, v17);
  if ((a4 & 8) != 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0.0;
  }

  CGPathAddArcToPoint(Mutable, 0, MaxX, MaxY, MidX, MaxY, v18);
  if ((a4 & 4) != 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0.0;
  }

  CGPathAddArcToPoint(Mutable, 0, MinX, MaxY, MinX, MidY, v19);
  CGPathCloseSubpath(Mutable);
  v24 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [v24 setPath:Mutable];
  layer = [self layer];
  [layer setMask:0];

  layer2 = [self layer];
  [layer2 setMask:v24];

  CFRelease(Mutable);
}

- (void)attachPopUpAnimation
{
  v2 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
  memset(&v23, 0, sizeof(v23));
  CATransform3DMakeScale(&v23, 0.5, 0.5, 1.0);
  memset(&v22, 0, sizeof(v22));
  CATransform3DMakeScale(&v22, 1.2, 1.2, 1.0);
  memset(&v21, 0, sizeof(v21));
  CATransform3DMakeScale(&v21, 0.9, 0.9, 1.0);
  memset(&v20, 0, sizeof(v20));
  CATransform3DMakeScale(&v20, 1.0, 1.0, 1.0);
  v3 = MEMORY[0x277CBEA60];
  v19 = v23;
  v4 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v19];
  v19 = v22;
  v5 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v19];
  v19 = v21;
  v6 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v19];
  v19 = v20;
  v7 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v19];
  v8 = [v3 arrayWithObjects:{v4, v5, v6, v7, 0}];

  [v2 setValues:v8];
  v9 = MEMORY[0x277CBEA60];
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  LODWORD(v11) = 0.5;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  LODWORD(v13) = *"fff?";
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  LODWORD(v15) = 1.0;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v17 = [v9 arrayWithObjects:{v10, v12, v14, v16, 0}];

  [v2 setKeyTimes:v17];
  [v2 setFillMode:*MEMORY[0x277CDA238]];
  [v2 setRemovedOnCompletion:0];
  [v2 setDuration:0.2];
  layer = [self layer];
  [layer addAnimation:v2 forKey:@"popup"];
}

- (id)debugingBorderColor
{
  v1 = MEMORY[0x277D75348];
  layer = [self layer];
  v3 = [v1 colorWithCGColor:{objc_msgSend(layer, "borderColor")}];

  return v3;
}

- (void)setDebugingBorderColor:()IMAdditions
{
  v5 = a3;
  cGColor = [a3 CGColor];
  layer = [self layer];
  [layer setBorderColor:cGColor];

  if (a3)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  layer2 = [self layer];
  [layer2 setBorderWidth:v8];
}

- (BOOL)isViewSizeFullScreenInWindow:()IMAdditions ignoreInWindowCheck:
{
  v6 = a3;
  [self bounds];
  v10 = v9;
  v12 = v11;
  if (v6)
  {
    v13 = v7;
    v14 = v8;
    window = [self window];

    if (window)
    {
      [self convertRect:v6 toView:{v13, v14, v10, v12}];
      [v6 convertRect:0 toWindow:?];
      v10 = v16;
      v12 = v17;
    }

    screen = [v6 screen];
  }

  else
  {
    screen = [MEMORY[0x277D759A0] mainScreen];
  }

  v19 = screen;
  [screen bounds];
  v21 = v20;
  v23 = v22;

  v24 = v12 == v23 && v10 == v21;
  if (v24 || (a4 & 1) != 0)
  {
    if (v24)
    {
      v26 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    window2 = [self window];

    if (window2)
    {
      v26 = 0;
      goto LABEL_18;
    }
  }

  v26 = v10 == v23 && v12 == v21;
LABEL_18:

  return v26;
}

- (double)adjustRectCenter:()IMAdditions fromView:
{
  v12 = a7;
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MidY = CGRectGetMidY(v26);
  [self convertPoint:v12 fromView:{MidX, MidY}];
  v16 = v15;
  v18 = v17;

  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;

  *&result = CGRectOffset(*&v19, v16 - MidX, v18 - MidY);
  return result;
}

- (BOOL)isHorizontallySpecified
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection horizontalSizeClass] != 0;

  return v2;
}

- (BOOL)isHorizontallyCompact
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection horizontalSizeClass] == 1;

  return v2;
}

- (BOOL)isHorizontallyRegular
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection horizontalSizeClass] == 2;

  return v2;
}

- (BOOL)isVerticallySpecified
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection verticalSizeClass] != 0;

  return v2;
}

- (BOOL)isVerticallyCompact
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection verticalSizeClass] == 1;

  return v2;
}

- (BOOL)isVerticallyRegular
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection verticalSizeClass] == 2;

  return v2;
}

@end