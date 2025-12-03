@interface BKDisplayAnnotationPointerStyle
- (void)applyToLayer:(id)layer forContent:(id)content;
@end

@implementation BKDisplayAnnotationPointerStyle

- (void)applyToLayer:(id)layer forContent:(id)content
{
  layerCopy = layer;
  contentCopy = content;
  v7 = objc_opt_class();
  v21 = layerCopy;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v21;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = objc_opt_class();
  v11 = contentCopy;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [v13 shapeSize];
  v15 = v14;
  v17 = v16;

  v18 = tan(0.392699082);
  v19 = v18 * v17 / (v18 + 1.0);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 0.0, 0.0);
  CGPathAddLineToPoint(Mutable, 0, 0.0, v17 + 0.0);
  CGPathAddLineToPoint(Mutable, 0, v19 + 0.0, v17 + 0.0 - v19);
  CGPathAddLineToPoint(Mutable, 0, v17 + 0.0 - v19, v17 + 0.0 - v19);
  CGPathAddLineToPoint(Mutable, 0, 0.0, 0.0);
  CGPathCloseSubpath(Mutable);
  [v9 setBounds:{0.0, 0.0, v15, v17}];
  [v9 setPath:Mutable];
  [v21 bk_setBackgroundColorRed:1.0 green:1.0 blue:1.0 alpha:0.649999976];
  [v21 bk_setForegroundColorRed:0.0 green:0.0 blue:0.0 alpha:0.5];

  CFRelease(Mutable);
}

@end