@interface UIView(TSAAdditions)
- (uint64_t)p_translateToView:()TSAAdditions above:siblingView:shouldScale:;
- (void)childAtPoint:()TSAAdditions;
@end

@implementation UIView(TSAAdditions)

- (uint64_t)p_translateToView:()TSAAdditions above:siblingView:shouldScale:
{
  [self center];
  [objc_msgSend(self "superview")];
  [self setCenter:?];
  if (a6)
  {
    [objc_msgSend(self "superview")];
    v14 = v13;
    v16 = v15;
    if (self)
    {
      [self transform];
    }

    else
    {
      memset(&v18, 0, sizeof(v18));
    }

    CGAffineTransformScale(&v19, &v18, v14, v16);
    v18 = v19;
    [self setTransform:&v18];
  }

  if (!a5)
  {
    return [a3 addSubview:self];
  }

  if (a4)
  {
    return [a3 insertSubview:self aboveSubview:a5];
  }

  return [a3 insertSubview:self belowSubview:a5];
}

- (void)childAtPoint:()TSAAdditions
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subviews = [self subviews];
  v6 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(subviews);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    [v10 frame];
    v18.x = a2;
    v18.y = a3;
    if (CGRectContainsPoint(v19, v18))
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end