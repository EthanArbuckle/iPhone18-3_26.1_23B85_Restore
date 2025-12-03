@interface BKDisplayAnnotationRectangleStyle
- (void)applyToLayer:(id)layer forContent:(id)content;
@end

@implementation BKDisplayAnnotationRectangleStyle

- (void)applyToLayer:(id)layer forContent:(id)content
{
  layerCopy = layer;
  contentCopy = content;
  v7 = objc_opt_class();
  v19 = layerCopy;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v19;
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

  Mutable = CGPathCreateMutable();
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v15;
  v21.size.height = v17;
  CGPathAddRect(Mutable, 0, v21);
  [v9 setBounds:{0.0, 0.0, v15, v17}];
  [v9 setPath:Mutable];

  CFRelease(Mutable);
}

@end