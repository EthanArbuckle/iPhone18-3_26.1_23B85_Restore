@interface TSKSegmentedControl
- (TSKSegmentedControl)initWithItems:(id)items style:(int)style;
- (TSKSegmentedControl)initWithItems:(id)items style:(int)style target:(id)target action:(SEL)action;
- (UIColor)selectedTintColor;
- (id)p_backgroundImageForButton:(id)button item:(id)item fillColor:(id)color;
- (id)p_fullBleedBackgroundImageForButton:(id)button item:(id)item fillColor:(id)color;
- (id)p_losengeBackgroundImageForButton:(id)button item:(id)item fillColor:(id)color;
- (int64_t)tagForSegment:(unint64_t)segment;
- (unint64_t)segmentWithTag:(int64_t)tag;
- (void)dealloc;
- (void)p_setButtonAttributedTitle:(id)title color:(id)color forState:(unint64_t)state button:(id)button;
- (void)p_setSelectedTintColor:(id)color;
- (void)p_updateSegmentProperties;
- (void)setBackgroundImage:(id)image forState:(unint64_t)state forSegment:(unint64_t)segment;
- (void)setEnabled:(BOOL)enabled forSegment:(unint64_t)segment;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image forSegment:(unint64_t)segment;
- (void)setSegmentedControlStyle:(int)style;
- (void)setSelectedSegmentIndices:(id)indices;
- (void)setSelectedTintColor:(id)color;
- (void)setTag:(int64_t)tag forSegment:(unint64_t)segment;
- (void)setTitle:(id)title forSegment:(unint64_t)segment;
- (void)sizeToFit;
- (void)sizeToFitWidth:(float)width;
- (void)tappedSegment:(id)segment;
@end

@implementation TSKSegmentedControl

- (TSKSegmentedControl)initWithItems:(id)items style:(int)style
{
  v4 = *&style;
  v11.receiver = self;
  v11.super_class = TSKSegmentedControl;
  v6 = [(TSKSegmentedControl *)&v11 initWithFrame:0.0, 0.0, 0.0, 44.0];
  if (v6)
  {
    v6->mItems = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:items];
    v6->mButtonSegments = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(items, "count")}];
    [(TSKSegmentedControl *)v6 setAllowsMultipleSelection:0];
    [(TSKSegmentedControl *)v6 setAllowsEmptySelection:0];
    v6->mLastPressedSegmentIndex = -1;
    v7 = [items count];
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

- (TSKSegmentedControl)initWithItems:(id)items style:(int)style target:(id)target action:(SEL)action
{
  v8 = [(TSKSegmentedControl *)self initWithItems:items style:*&style];
  v9 = v8;
  if (action && v8)
  {
    [(TSKSegmentedControl *)v8 addTarget:target action:action forControlEvents:64];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKSegmentedControl;
  [(TSKSegmentedControl *)&v3 dealloc];
}

- (void)p_setSelectedTintColor:(id)color
{
  colorCopy = color;

  self->mSelectedTintColor = color;
}

- (void)setSelectedTintColor:(id)color
{
  [(TSKSegmentedControl *)self p_setSelectedTintColor:color];

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

- (void)setSegmentedControlStyle:(int)style
{
  [(TSKSegmentedControl *)self p_setSegmentedControlStyle:*&style];

  [(TSKSegmentedControl *)self p_updateSegmentProperties];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = TSKSegmentedControl;
  [(TSKSegmentedControl *)&v22 setFrame:frame.origin.x, frame.origin.y];
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
  numberOfSegments = [(TSKSegmentedControl *)self numberOfSegments];
  if (v13 > 0.0)
  {
    v15 = numberOfSegments - 1;
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

- (void)sizeToFitWidth:(float)width
{
  [(TSKSegmentedControl *)self frame];

  [(TSKSegmentedControl *)self setFrame:?];
}

- (void)setTitle:(id)title forSegment:(unint64_t)segment
{
  if ([(TSKSegmentedControl *)self numberOfSegments]> segment)
  {
    [(NSMutableArray *)self->mItems replaceObjectAtIndex:segment withObject:title];
  }

  [(TSKSegmentedControl *)self p_updateSegmentProperties];
}

- (void)setEnabled:(BOOL)enabled forSegment:(unint64_t)segment
{
  enabledCopy = enabled;
  if ([(TSKSegmentedControl *)self numberOfSegments]> segment)
  {
    v7 = [(NSMutableArray *)self->mButtonSegments objectAtIndex:segment];

    [v7 setEnabled:enabledCopy];
  }
}

- (void)setImage:(id)image forSegment:(unint64_t)segment
{
  if ([(TSKSegmentedControl *)self numberOfSegments]> segment)
  {
    [(NSMutableArray *)self->mItems replaceObjectAtIndex:segment withObject:image];
  }

  [(TSKSegmentedControl *)self p_updateSegmentProperties];
}

- (void)setBackgroundImage:(id)image forState:(unint64_t)state forSegment:(unint64_t)segment
{
  if ([(TSKSegmentedControl *)self numberOfSegments]> segment)
  {
    [-[NSMutableArray objectAtIndex:](self->mButtonSegments objectAtIndex:{segment), "setBackgroundImage:forState:", image, state}];
    if (!state)
    {
      [(NSMutableArray *)self->mItems objectAtIndex:segment];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        mItems = self->mItems;

        [(NSMutableArray *)mItems replaceObjectAtIndex:segment withObject:image];
      }
    }
  }
}

- (void)setTag:(int64_t)tag forSegment:(unint64_t)segment
{
  if ([(TSKSegmentedControl *)self numberOfSegments]> segment)
  {
    v7 = [(NSMutableArray *)self->mButtonSegments objectAtIndex:segment];

    [v7 setTag:tag];
  }
}

- (int64_t)tagForSegment:(unint64_t)segment
{
  if ([(TSKSegmentedControl *)self numberOfSegments]<= segment)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->mButtonSegments objectAtIndex:segment];

  return [v5 tag];
}

- (unint64_t)segmentWithTag:(int64_t)tag
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

    if ([*(*(&v12 + 1) + 8 * v9) tag] == tag)
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

- (id)p_fullBleedBackgroundImageForButton:(id)button item:(id)item fillColor:(id)color
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
  CGContextSetFillColorWithColor(CurrentContext, [color CGColor]);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = 3.0;
  v12.size.height = 3.0;
  CGContextFillRect(CurrentContext, v12);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return [(UIImage *)ImageFromCurrentImageContext resizableImageWithCapInsets:1.0, 1.0, 1.0, 1.0];
}

- (id)p_losengeBackgroundImageForButton:(id)button item:(id)item fillColor:(id)color
{
  objc_opt_class();
  if (TSUDynamicCast())
  {
    [button bounds];
    [button contentRectForBounds:?];
    [button imageRectForContentRect:?];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  objc_opt_class();
  if (TSUDynamicCast())
  {
    [button bounds];
    [button contentRectForBounds:?];
    [button titleRectForContentRect:?];
    v8 = v9;
  }

  [button bounds];
  [button backgroundRectForBounds:?];
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
  CGContextSetFillColorWithColor(CurrentContext, [color CGColor]);
  v14 = fmax(v8 + 15.0, 38.0);
  CGContextAddPath(CurrentContext, [objc_msgSend(MEMORY[0x277D75208] bezierPathWithRoundedRect:width * 0.5 - v14 * 0.5 cornerRadius:{height * 0.5 + -19.0, v14, 38.0, 19.0), "CGPath"}]);
  CGContextFillPath(CurrentContext);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

- (id)p_backgroundImageForButton:(id)button item:(id)item fillColor:(id)color
{
  if ([(TSKSegmentedControl *)self segmentedControlStyle]== 1)
  {

    return [(TSKSegmentedControl *)self p_losengeBackgroundImageForButton:button item:item fillColor:color];
  }

  else
  {

    return [(TSKSegmentedControl *)self p_fullBleedBackgroundImageForButton:button item:item fillColor:color];
  }
}

- (void)p_setButtonAttributedTitle:(id)title color:(id)color forState:(unint64_t)state button:(id)button
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
  v14[1] = color;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [button setAttributedTitle:objc_msgSend(objc_alloc(MEMORY[0x277CCA898]) forState:{"initWithString:attributes:", title, v12), state}];
}

- (void)p_updateSegmentProperties
{
  if ([(TSKSegmentedControl *)self numberOfSegments])
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    tintColor = [(TSKSegmentedControl *)self tintColor];
    v19 = [-[TSKSegmentedControl tintColor](self "tintColor")];
    selectedTintColor = [(TSKSegmentedControl *)self selectedTintColor];
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
          cGImage = [v9 CGImage];
          v23.origin.x = 0.0;
          v23.origin.y = 0.0;
          v23.size.width = v11;
          v23.size.height = height;
          CGContextClipToMask(CurrentContext, v23, cGImage);
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
          [(TSKSegmentedControl *)self p_setButtonAttributedTitle:v17 color:tintColor forState:0 button:v7];
          [(TSKSegmentedControl *)self p_setButtonAttributedTitle:v18 color:whiteColor forState:4 button:v7];
          [(TSKSegmentedControl *)self p_setButtonAttributedTitle:v18 color:whiteColor forState:5 button:v7];
          [(TSKSegmentedControl *)self p_setButtonAttributedTitle:v18 color:v19 forState:2 button:v7];
        }

        [v7 setBackgroundImage:0 forState:0];
        [v7 setBackgroundImage:-[TSKSegmentedControl p_backgroundImageForButton:item:fillColor:](self forState:{"p_backgroundImageForButton:item:fillColor:", v7, -[NSMutableArray objectAtIndex:](self->mItems, "objectAtIndex:", v6), selectedTintColor), 4}];
        [v7 setBackgroundImage:-[TSKSegmentedControl p_backgroundImageForButton:item:fillColor:](self forState:{"p_backgroundImageForButton:item:fillColor:", v7, -[NSMutableArray objectAtIndex:](self->mItems, "objectAtIndex:", v6), v4), 1}];
        [v7 setBackgroundImage:-[TSKSegmentedControl p_backgroundImageForButton:item:fillColor:](self forState:{"p_backgroundImageForButton:item:fillColor:", v7, -[NSMutableArray objectAtIndex:](self->mItems, "objectAtIndex:", v6++), v5), 5}];
      }

      while (v6 < [(TSKSegmentedControl *)self numberOfSegments]);
    }
  }
}

- (void)setSelectedSegmentIndices:(id)indices
{
  if (![(NSIndexSet *)self->mSelectedSegmentIndices isEqualToIndexSet:?])
  {

    self->mSelectedSegmentIndices = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:indices];
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

- (void)tappedSegment:(id)segment
{
  v51 = *MEMORY[0x277D85DE8];
  self->mLastPressedSegmentIndex = [(NSMutableArray *)self->mButtonSegments indexOfObject:segment];
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
    indexSet = [v8 indexSetWithIndex:self->mLastPressedSegmentIndex];
    goto LABEL_13;
  }

  indexSet = [MEMORY[0x277CCAA78] indexSet];
LABEL_13:
  [(TSKSegmentedControl *)self setSelectedSegmentIndices:indexSet];
LABEL_14:
  selfCopy = self;
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
                currentHandler = [MEMORY[0x277D6C290] currentHandler];
                v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKSegmentedControl tappedSegment:]"];
                [currentHandler handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKSegmentedControl.m"), 513, @"%@ does not respond to selector %@", v12, v18}];
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
                currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
                v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKSegmentedControl tappedSegment:]"];
                [currentHandler2 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKSegmentedControl.m"), 522, @"%@ does not respond to selector %@", v12, v27}];
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

  selfCopy2 = self;
}

@end