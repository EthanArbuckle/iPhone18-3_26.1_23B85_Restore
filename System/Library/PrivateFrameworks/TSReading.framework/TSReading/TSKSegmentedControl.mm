@interface TSKSegmentedControl
- (TSKSegmentedControl)initWithItems:(id)a3 style:(int)a4;
- (TSKSegmentedControl)initWithItems:(id)a3 style:(int)a4 target:(id)a5 action:(SEL)a6;
- (UIColor)selectedTintColor;
- (id)p_backgroundImageForButton:(id)a3 item:(id)a4 fillColor:(id)a5;
- (id)p_fullBleedBackgroundImageForButton:(id)a3 item:(id)a4 fillColor:(id)a5;
- (id)p_losengeBackgroundImageForButton:(id)a3 item:(id)a4 fillColor:(id)a5;
- (int64_t)tagForSegment:(unint64_t)a3;
- (unint64_t)segmentWithTag:(int64_t)a3;
- (void)dealloc;
- (void)p_setButtonAttributedTitle:(id)a3 color:(id)a4 forState:(unint64_t)a5 button:(id)a6;
- (void)p_setSelectedTintColor:(id)a3;
- (void)p_updateSegmentProperties;
- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 forSegment:(unint64_t)a5;
- (void)setEnabled:(BOOL)a3 forSegment:(unint64_t)a4;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3 forSegment:(unint64_t)a4;
- (void)setSegmentedControlStyle:(int)a3;
- (void)setSelectedSegmentIndices:(id)a3;
- (void)setSelectedTintColor:(id)a3;
- (void)setTag:(int64_t)a3 forSegment:(unint64_t)a4;
- (void)setTitle:(id)a3 forSegment:(unint64_t)a4;
- (void)sizeToFit;
- (void)sizeToFitWidth:(float)a3;
- (void)tappedSegment:(id)a3;
@end

@implementation TSKSegmentedControl

- (TSKSegmentedControl)initWithItems:(id)a3 style:(int)a4
{
  v4 = *&a4;
  v11.receiver = self;
  v11.super_class = TSKSegmentedControl;
  v6 = [(TSKSegmentedControl *)&v11 initWithFrame:0.0, 0.0, 0.0, 44.0];
  if (v6)
  {
    v6->mItems = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:a3];
    v6->mButtonSegments = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
    [(TSKSegmentedControl *)v6 setAllowsMultipleSelection:0];
    [(TSKSegmentedControl *)v6 setAllowsEmptySelection:0];
    v6->mLastPressedSegmentIndex = -1;
    v7 = [a3 count];
    if (v7)
    {
      v8 = v7;
      do
      {
        --v8;
        v9 = [MEMORY[0x277D75220] buttonWithType:0];
        [v9 addTarget:v6 action:sel_tappedSegment_ forControlEvents:64];
        [v9 setAdjustsImageWhenHighlighted:0];
        [(TSKSegmentedControl *)v6 addSubview:v9];
        [(NSMutableArray *)v6->mButtonSegments addObject:v9];
      }

      while (v8);
    }

    [(TSKSegmentedControl *)v6 sizeToFit];
    [(TSKSegmentedControl *)v6 p_setSegmentedControlStyle:v4];
    [(TSKSegmentedControl *)v6 p_updateSegmentProperties];
    -[TSKSegmentedControl setSelectedSegmentIndices:](v6, "setSelectedSegmentIndices:", [MEMORY[0x277CCAA78] indexSet]);
  }

  return v6;
}

- (TSKSegmentedControl)initWithItems:(id)a3 style:(int)a4 target:(id)a5 action:(SEL)a6
{
  v8 = [(TSKSegmentedControl *)self initWithItems:a3 style:*&a4];
  v9 = v8;
  if (a6 && v8)
  {
    [(TSKSegmentedControl *)v8 addTarget:a5 action:a6 forControlEvents:64];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKSegmentedControl;
  [(TSKSegmentedControl *)&v3 dealloc];
}

- (void)p_setSelectedTintColor:(id)a3
{
  v5 = a3;

  self->mSelectedTintColor = a3;
}

- (void)setSelectedTintColor:(id)a3
{
  [(TSKSegmentedControl *)self p_setSelectedTintColor:a3];

  [(TSKSegmentedControl *)self p_updateSegmentProperties];
}

- (UIColor)selectedTintColor
{
  mSelectedTintColor = self->mSelectedTintColor;
  if (mSelectedTintColor)
  {
    v4 = mSelectedTintColor;

    return v4;
  }

  else
  {

    return [(TSKSegmentedControl *)self tintColor];
  }
}

- (void)setSegmentedControlStyle:(int)a3
{
  [(TSKSegmentedControl *)self p_setSegmentedControlStyle:*&a3];

  [(TSKSegmentedControl *)self p_updateSegmentProperties];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = TSKSegmentedControl;
  [(TSKSegmentedControl *)&v22 setFrame:a3.origin.x, a3.origin.y];
  v6 = floor(width / [(TSKSegmentedControl *)self numberOfSegments]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mButtonSegments = self->mButtonSegments;
  v8 = [(NSMutableArray *)mButtonSegments countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(mButtonSegments);
        }

        [*(*(&v18 + 1) + 8 * i) setFrame:{v11, 0.0, v6, height}];
        v11 = v6 + v11;
      }

      v9 = [(NSMutableArray *)mButtonSegments countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }

  v13 = width - v6 * [(TSKSegmentedControl *)self numberOfSegments];
  v14 = [(TSKSegmentedControl *)self numberOfSegments];
  if (v13 > 0.0)
  {
    v15 = v14 - 1;
    do
    {
      v16 = [(NSMutableArray *)self->mButtonSegments objectAtIndex:v15];
      [v16 frame];
      v13 = v13 + -1.0;
      [v16 setFrame:v13 + v17];
      --v15;
    }

    while (v13 > 0.0);
  }

  [(TSKSegmentedControl *)self p_updateSegmentProperties];
}

- (void)sizeToFit
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mButtonSegments = self->mButtonSegments;
  v4 = [(NSMutableArray *)mButtonSegments countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(mButtonSegments);
        }

        [objc_msgSend(*(*(&v11 + 1) + 8 * i) imageForState:{0), "size"}];
        v7 = v7 + v9;
      }

      v5 = [(NSMutableArray *)mButtonSegments countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
    *&v10 = v7;
  }

  else
  {
    v10 = 0.0;
  }

  [(TSKSegmentedControl *)self sizeToFitWidth:v10];
}

- (void)sizeToFitWidth:(float)a3
{
  [(TSKSegmentedControl *)self frame];

  [(TSKSegmentedControl *)self setFrame:?];
}

- (void)setTitle:(id)a3 forSegment:(unint64_t)a4
{
  if ([(TSKSegmentedControl *)self numberOfSegments]> a4)
  {
    [(NSMutableArray *)self->mItems replaceObjectAtIndex:a4 withObject:a3];
  }

  [(TSKSegmentedControl *)self p_updateSegmentProperties];
}

- (void)setEnabled:(BOOL)a3 forSegment:(unint64_t)a4
{
  v5 = a3;
  if ([(TSKSegmentedControl *)self numberOfSegments]> a4)
  {
    v7 = [(NSMutableArray *)self->mButtonSegments objectAtIndex:a4];

    [v7 setEnabled:v5];
  }
}

- (void)setImage:(id)a3 forSegment:(unint64_t)a4
{
  if ([(TSKSegmentedControl *)self numberOfSegments]> a4)
  {
    [(NSMutableArray *)self->mItems replaceObjectAtIndex:a4 withObject:a3];
  }

  [(TSKSegmentedControl *)self p_updateSegmentProperties];
}

- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4 forSegment:(unint64_t)a5
{
  if ([(TSKSegmentedControl *)self numberOfSegments]> a5)
  {
    [-[NSMutableArray objectAtIndex:](self->mButtonSegments objectAtIndex:{a5), "setBackgroundImage:forState:", a3, a4}];
    if (!a4)
    {
      [(NSMutableArray *)self->mItems objectAtIndex:a5];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        mItems = self->mItems;

        [(NSMutableArray *)mItems replaceObjectAtIndex:a5 withObject:a3];
      }
    }
  }
}

- (void)setTag:(int64_t)a3 forSegment:(unint64_t)a4
{
  if ([(TSKSegmentedControl *)self numberOfSegments]> a4)
  {
    v7 = [(NSMutableArray *)self->mButtonSegments objectAtIndex:a4];

    [v7 setTag:a3];
  }
}

- (int64_t)tagForSegment:(unint64_t)a3
{
  if ([(TSKSegmentedControl *)self numberOfSegments]<= a3)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->mButtonSegments objectAtIndex:a3];

  return [v5 tag];
}

- (unint64_t)segmentWithTag:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mButtonSegments = self->mButtonSegments;
  v5 = [(NSMutableArray *)mButtonSegments countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  v10 = v7;
  v7 += v6;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(mButtonSegments);
    }

    if ([*(*(&v12 + 1) + 8 * v9) tag] == a3)
    {
      return v10;
    }

    ++v10;
    if (v6 == ++v9)
    {
      v6 = [(NSMutableArray *)mButtonSegments countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

- (id)p_fullBleedBackgroundImageForButton:(id)a3 item:(id)a4 fillColor:(id)a5
{
  v10.width = 3.0;
  v10.height = 3.0;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = 3.0;
  v11.size.height = 3.0;
  CGContextClearRect(CurrentContext, v11);
  CGContextSetFillColorWithColor(CurrentContext, [a5 CGColor]);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = 3.0;
  v12.size.height = 3.0;
  CGContextFillRect(CurrentContext, v12);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return [(UIImage *)ImageFromCurrentImageContext resizableImageWithCapInsets:1.0, 1.0, 1.0, 1.0];
}

- (id)p_losengeBackgroundImageForButton:(id)a3 item:(id)a4 fillColor:(id)a5
{
  objc_opt_class();
  if (TSUDynamicCast())
  {
    [a3 bounds];
    [a3 contentRectForBounds:?];
    [a3 imageRectForContentRect:?];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  objc_opt_class();
  if (TSUDynamicCast())
  {
    [a3 bounds];
    [a3 contentRectForBounds:?];
    [a3 titleRectForContentRect:?];
    v8 = v9;
  }

  [a3 bounds];
  [a3 backgroundRectForBounds:?];
  width = v17.size.width;
  height = v17.size.height;
  if (CGRectIsEmpty(v17))
  {
    return 0;
  }

  v16.width = width;
  v16.height = height;
  UIGraphicsBeginImageContextWithOptions(v16, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = width;
  v18.size.height = height;
  CGContextClearRect(CurrentContext, v18);
  CGContextSetFillColorWithColor(CurrentContext, [a5 CGColor]);
  v14 = fmax(v8 + 15.0, 38.0);
  CGContextAddPath(CurrentContext, [objc_msgSend(MEMORY[0x277D75208] bezierPathWithRoundedRect:width * 0.5 - v14 * 0.5 cornerRadius:{height * 0.5 + -19.0, v14, 38.0, 19.0), "CGPath"}]);
  CGContextFillPath(CurrentContext);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

- (id)p_backgroundImageForButton:(id)a3 item:(id)a4 fillColor:(id)a5
{
  if ([(TSKSegmentedControl *)self segmentedControlStyle]== 1)
  {

    return [(TSKSegmentedControl *)self p_losengeBackgroundImageForButton:a3 item:a4 fillColor:a5];
  }

  else
  {

    return [(TSKSegmentedControl *)self p_fullBleedBackgroundImageForButton:a3 item:a4 fillColor:a5];
  }
}

- (void)p_setButtonAttributedTitle:(id)a3 color:(id)a4 forState:(unint64_t)a5 button:(id)a6
{
  v14[2] = *MEMORY[0x277D85DE8];
  mFont = self->mFont;
  if (!mFont)
  {
    mFont = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  }

  v11 = *MEMORY[0x277D740C0];
  v13[0] = *MEMORY[0x277D740A8];
  v13[1] = v11;
  v14[0] = mFont;
  v14[1] = a4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [a6 setAttributedTitle:objc_msgSend(objc_alloc(MEMORY[0x277CCA898]) forState:{"initWithString:attributes:", a3, v12), a5}];
}

- (void)p_updateSegmentProperties
{
  if ([(TSKSegmentedControl *)self numberOfSegments])
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
    v20 = [(TSKSegmentedControl *)self tintColor];
    v19 = [-[TSKSegmentedControl tintColor](self "tintColor")];
    v21 = [(TSKSegmentedControl *)self selectedTintColor];
    v4 = [-[TSKSegmentedControl tintColor](self "tintColor")];
    v5 = [(UIColor *)[(TSKSegmentedControl *)self selectedTintColor] colorWithAlphaComponent:0.5];
    if ([(TSKSegmentedControl *)self numberOfSegments])
    {
      v6 = 0;
      do
      {
        v7 = [(NSMutableArray *)self->mButtonSegments objectAtIndex:v6];
        [v7 setTintColor:{-[TSKSegmentedControl tintColor](self, "tintColor")}];
        objc_opt_class();
        [(NSMutableArray *)self->mItems objectAtIndex:v6];
        v8 = TSUDynamicCast();
        if (v8)
        {
          v9 = v8;
          [v8 size];
          v11 = v10;
          [v9 size];
          height = v22.height;
          v22.width = v11;
          UIGraphicsBeginImageContextWithOptions(v22, 0, 0.0);
          CurrentContext = UIGraphicsGetCurrentContext();
          CGContextTranslateCTM(CurrentContext, 0.0, height);
          CGContextScaleCTM(CurrentContext, 1.0, -1.0);
          v14 = [v9 CGImage];
          v23.origin.x = 0.0;
          v23.origin.y = 0.0;
          v23.size.width = v11;
          v23.size.height = height;
          CGContextClipToMask(CurrentContext, v23, v14);
          CGContextSetFillColorWithColor(CurrentContext, [-[TSKSegmentedControl tintColor](self "tintColor")]);
          v24.origin.x = 0.0;
          v24.origin.y = 0.0;
          v24.size.width = v11;
          v24.size.height = height;
          CGContextClearRect(CurrentContext, v24);
          v25.origin.x = 0.0;
          v25.origin.y = 0.0;
          v25.size.width = v11;
          v25.size.height = height;
          CGContextFillRect(CurrentContext, v25);
          ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
          CGContextSetFillColorWithColor(CurrentContext, [objc_msgSend(MEMORY[0x277D75348] "whiteColor")]);
          v26.origin.x = 0.0;
          v26.origin.y = 0.0;
          v26.size.width = v11;
          v26.size.height = height;
          CGContextClearRect(CurrentContext, v26);
          v27.origin.x = 0.0;
          v27.origin.y = 0.0;
          v27.size.width = v11;
          v27.size.height = height;
          CGContextFillRect(CurrentContext, v27);
          v16 = UIGraphicsGetImageFromCurrentImageContext();
          UIGraphicsEndImageContext();
          [v7 setImage:ImageFromCurrentImageContext forState:0];
          [v7 setImage:v16 forState:4];
          [v7 setImage:v16 forState:5];
        }

        objc_opt_class();
        [(NSMutableArray *)self->mItems objectAtIndex:v6];
        v17 = TSUDynamicCast();
        if (v17)
        {
          v18 = v17;
          [(TSKSegmentedControl *)self p_setButtonAttributedTitle:v17 color:v20 forState:0 button:v7];
          [(TSKSegmentedControl *)self p_setButtonAttributedTitle:v18 color:v3 forState:4 button:v7];
          [(TSKSegmentedControl *)self p_setButtonAttributedTitle:v18 color:v3 forState:5 button:v7];
          [(TSKSegmentedControl *)self p_setButtonAttributedTitle:v18 color:v19 forState:2 button:v7];
        }

        [v7 setBackgroundImage:0 forState:0];
        [v7 setBackgroundImage:-[TSKSegmentedControl p_backgroundImageForButton:item:fillColor:](self forState:{"p_backgroundImageForButton:item:fillColor:", v7, -[NSMutableArray objectAtIndex:](self->mItems, "objectAtIndex:", v6), v21), 4}];
        [v7 setBackgroundImage:-[TSKSegmentedControl p_backgroundImageForButton:item:fillColor:](self forState:{"p_backgroundImageForButton:item:fillColor:", v7, -[NSMutableArray objectAtIndex:](self->mItems, "objectAtIndex:", v6), v4), 1}];
        [v7 setBackgroundImage:-[TSKSegmentedControl p_backgroundImageForButton:item:fillColor:](self forState:{"p_backgroundImageForButton:item:fillColor:", v7, -[NSMutableArray objectAtIndex:](self->mItems, "objectAtIndex:", v6++), v5), 5}];
      }

      while (v6 < [(TSKSegmentedControl *)self numberOfSegments]);
    }
  }
}

- (void)setSelectedSegmentIndices:(id)a3
{
  if (![(NSIndexSet *)self->mSelectedSegmentIndices isEqualToIndexSet:?])
  {

    self->mSelectedSegmentIndices = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:a3];
    v5 = [(NSMutableArray *)self->mButtonSegments count];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [(NSMutableArray *)self->mButtonSegments objectAtIndex:i];
        [MEMORY[0x277D75D18] transitionWithView:0.2 duration:? options:? animations:? completion:?];
      }
    }
  }
}

uint64_t __49__TSKSegmentedControl_setSelectedSegmentIndices___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = [*(a1[5] + 472) containsIndex:a1[6]];

  return [v1 setSelected:v2];
}

- (void)tappedSegment:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  self->mLastPressedSegmentIndex = [(NSMutableArray *)self->mButtonSegments indexOfObject:a3];
  if ([(TSKSegmentedControl *)self allowsMultipleSelection])
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexSet:{-[TSKSegmentedControl selectedSegmentIndices](self, "selectedSegmentIndices")}];
    v5 = [v4 containsIndex:self->mLastPressedSegmentIndex];
    mLastPressedSegmentIndex = self->mLastPressedSegmentIndex;
    if (v5)
    {
      [v4 removeIndex:mLastPressedSegmentIndex];
      if (-[TSKSegmentedControl allowsEmptySelection](self, "allowsEmptySelection") || [v4 count])
      {
        goto LABEL_7;
      }

      mLastPressedSegmentIndex = self->mLastPressedSegmentIndex;
    }

    [v4 addIndex:mLastPressedSegmentIndex];
LABEL_7:
    [(TSKSegmentedControl *)self setSelectedSegmentIndices:v4];

    goto LABEL_14;
  }

  if (![(TSKSegmentedControl *)self allowsEmptySelection])
  {
    v8 = MEMORY[0x277CCAA78];
    goto LABEL_12;
  }

  v7 = [(NSIndexSet *)[(TSKSegmentedControl *)self selectedSegmentIndices] containsIndex:self->mLastPressedSegmentIndex];
  v8 = MEMORY[0x277CCAA78];
  if (!v7)
  {
LABEL_12:
    v9 = [v8 indexSetWithIndex:self->mLastPressedSegmentIndex];
    goto LABEL_13;
  }

  v9 = [MEMORY[0x277CCAA78] indexSet];
LABEL_13:
  [(TSKSegmentedControl *)self setSelectedSegmentIndices:v9];
LABEL_14:
  v10 = self;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [(TSKSegmentedControl *)self allTargets];
  v34 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v34)
  {
    v33 = *v45;
    do
    {
      v11 = 0;
      do
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v11;
        v12 = *(*(&v44 + 1) + 8 * v11);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v13 = [(TSKSegmentedControl *)self actionsForTarget:v12 forControlEvent:4096];
        v14 = [v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v41;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v41 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v40 + 1) + 8 * i);
              v19 = NSSelectorFromString(v18);
              if (objc_opt_respondsToSelector())
              {
                [v12 performSelector:v19 withObject:self];
              }

              else
              {
                v20 = [MEMORY[0x277D6C290] currentHandler];
                v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKSegmentedControl tappedSegment:]"];
                [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKSegmentedControl.m"), 513, @"%@ does not respond to selector %@", v12, v18}];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v15);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v22 = [(TSKSegmentedControl *)self actionsForTarget:v12 forControlEvent:64];
        v23 = [v22 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v37;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v37 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v36 + 1) + 8 * j);
              v28 = NSSelectorFromString(v27);
              if (objc_opt_respondsToSelector())
              {
                [v12 performSelector:v28 withObject:self];
              }

              else
              {
                v29 = [MEMORY[0x277D6C290] currentHandler];
                v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKSegmentedControl tappedSegment:]"];
                [v29 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKSegmentedControl.m"), 522, @"%@ does not respond to selector %@", v12, v27}];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v24);
        }

        v11 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v34);
  }

  v31 = self;
}

@end