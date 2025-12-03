@interface UITableViewIndex
+ (id)idiomToVisualStyleClassMap;
+ (id)visualStyleForIdiom:(uint64_t)idiom;
+ (id)visualStyleForTableViewIndex:(id)index;
+ (void)makeTableViewIndex:(id *)index containerView:(id *)view forTraits:(id)traits;
+ (void)registerVisualStyle:(Class)style forIdiom:(int64_t)idiom;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_updateSectionForTouch:(id)touch withEvent:(id)event;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)canBecomeFocused;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (CGRect)_effectiveBounds;
- (CGRect)_visibleBoundsForRect:(CGRect)rect stride:(double *)stride;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)selectedSectionTitle;
- (UIEdgeInsets)drawingInsets;
- (UIFont)font;
- (UITableView)tableView;
- (UITableViewIndex)initWithFrame:(CGRect)frame;
- (double)_minLineSpacingForIdiom:(int64_t)idiom;
- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point;
- (id)_displayTitles;
- (id)_dotImage;
- (id)_externalDotImage;
- (int64_t)_idiom;
- (int64_t)_indexForEntryAtPoint:(CGPoint)point;
- (void)_cacheAndMeasureTitles;
- (void)_handleTouches:(id)touches withEvent:(id)event;
- (void)_horizontalSizeClassDidChange;
- (void)_legibilityWeightOrPreferredContentSizeTraitsDidChange;
- (void)_setIdiom:(int64_t)idiom;
- (void)_setupAXHUDGestureIfNecessary;
- (void)cancelTrackingWithEvent:(id)event;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)rect;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)setDrawingInsets:(UIEdgeInsets)insets;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setIndexBackgroundColor:(id)color;
- (void)setIndexColor:(id)color;
- (void)setIndexTrackingBackgroundColor:(id)color;
- (void)setTitles:(id)titles;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UITableViewIndex

- (int64_t)_idiom
{
  if (self->_idiom != -1)
  {
    return self->_idiom;
  }

  window = [(UIView *)self window];
  _screen = [window _screen];
  _userInterfaceIdiom = [_screen _userInterfaceIdiom];

  return _userInterfaceIdiom;
}

- (void)_setIdiom:(int64_t)idiom
{
  self->_idiom = idiom;
  v4 = [objc_opt_class() visualStyleForTableViewIndex:self];
  visualStyle = self->_visualStyle;
  self->_visualStyle = v4;

  if (self->_titles)
  {
    [(UITableViewIndex *)self _cacheAndMeasureTitles];
  }

  [(UIView *)self setNeedsDisplay];
}

- (double)_minLineSpacingForIdiom:(int64_t)idiom
{
  visualStyle = [(UITableViewIndex *)self visualStyle];
  [visualStyle minLineSpacing];
  v5 = v4;

  return v5;
}

- (id)_displayTitles
{
  v3 = [(NSArray *)self->_titles mutableCopy];
  if (![v3 count])
  {
    v31 = MEMORY[0x1E695E0F0];
    goto LABEL_18;
  }

  [(UITableViewIndex *)self _effectiveBounds];
  v5 = v4;
  v6 = floor(v4 / [v3 count]);
  [(UITableViewIndex *)self _minLineSpacingForIdiom:[(UITableViewIndex *)self _idiom]];
  if (v7 <= v6)
  {
    v19 = v3;
    goto LABEL_17;
  }

  v8 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_578];
  [v3 removeObjectsAtIndexes:v8];

  v33 = [(UITableViewIndex *)self maximumNumberOfTitlesWithoutTruncationForHeight:v5];
  v9 = [v3 objectAtIndex:0];
  v10 = [v9 isEqualToString:@"{search}"];

  lastObject = [v3 lastObject];
  v12 = [lastObject isEqualToString:@"{search}"];

  v13 = [v3 objectAtIndex:0];
  v14 = [v13 isEqualToString:@"#"];

  lastObject2 = [v3 lastObject];
  v16 = [lastObject2 isEqualToString:@"#"];

  v17 = [v3 count];
  array = [MEMORY[0x1E695DF70] array];
  v19 = array;
  if (v10)
  {
    [array addObject:@"{search}"];
  }

  v20 = (v14 | v16) + (v10 | v12);
  if (v14)
  {
    [v19 addObject:@"#"];
  }

  v21 = (v10 | v14) & 1;
  v22 = (v10 | v14) & 1;
  v23 = v17 + ~v20;
  v24 = v23;
  for (i = v21; i < v24; i = (v24 / ((v26 / 2) & ~((v26 + (v26 >> 63)) >> 63))) + i)
  {
    v27 = [v3 objectAtIndex:llroundf(i)];
    [v19 addObject:v27];

    [v19 addObject:@"•"];
    v26 = v33 - v20 + ((v33 - v20) & 1) - 1;
  }

  v28 = [v3 objectAtIndex:v23 + v22];
  if ([v19 containsObject:v28])
  {
    lastObject3 = [v19 lastObject];
    v30 = [lastObject3 isEqual:@"•"];

    if (!v30)
    {
      if (!v12)
      {
        goto LABEL_12;
      }

LABEL_24:
      [v19 addObject:@"{search}"];
      if (!v16)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    [v19 removeLastObject];
    if (v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
    [v19 addObject:v28];
    if (v12)
    {
      goto LABEL_24;
    }
  }

LABEL_12:
  if (v16)
  {
LABEL_13:
    [v19 addObject:@"#"];
  }

LABEL_14:

LABEL_17:
  v3 = v19;
  v31 = v3;
LABEL_18:

  return v31;
}

- (void)_cacheAndMeasureTitles
{
  selfCopy = self;
  v50 = *MEMORY[0x1E69E9840];
  entries = self->_entries;
  if (entries)
  {
    self->_entries = 0;
  }

  [(UITableViewIndex *)selfCopy _minLineSpacingForIdiom:[(UITableViewIndex *)selfCopy _idiom]];
  v5 = v4;
  drawingInsetsMask = [(UITableViewIndex *)selfCopy drawingInsetsMask];
  [(UITableViewIndex *)selfCopy _effectiveBounds];
  v8 = v7;
  v37 = 568;
  if (v5 <= floor(v7 / [(NSArray *)selfCopy->_titles count]))
  {
    if (drawingInsetsMask)
    {
      goto LABEL_10;
    }

    [(UITableViewIndex *)selfCopy drawingInsets];
    if (v5 >= floor((v8 - v10) / [(NSArray *)selfCopy->_titles count]))
    {
      goto LABEL_10;
    }

    v9 = [(UITableViewIndex *)selfCopy drawingInsetsMask]| 1;
    goto LABEL_9;
  }

  if (drawingInsetsMask)
  {
    v9 = [(UITableViewIndex *)selfCopy drawingInsetsMask]& 0xFFFFFFFFFFFFFFFELL;
LABEL_9:
    [(UITableViewIndex *)selfCopy setDrawingInsetsMask:v9, 568];
  }

LABEL_10:
  _displayTitles = [(UITableViewIndex *)selfCopy _displayTitles];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_displayTitles, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = _displayTitles;
  v14 = [v13 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = v14;
  v16 = *v44;
  v17 = @"{search}";
  v41 = *off_1E70EC918;
  v18 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);
  v39 = *MEMORY[0x1E695E4D0];
  v40 = *MEMORY[0x1E69659E0];
  v42 = v13;
  do
  {
    v20 = 0;
    do
    {
      if (*v44 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v43 + 1) + 8 * v20);
      v22 = objc_alloc_init(_UITableViewIndexEntry);
      if ([v21 isEqualToString:@"#"])
      {
        v23 = @"UISectionListPoundSign";
        goto LABEL_19;
      }

      if ([v21 isEqualToString:v17])
      {
        v23 = @"UITableViewIndexSearchGlyph";
LABEL_19:
        _dotImage = _UIImageWithName(v23);
LABEL_20:
        v25 = _dotImage;
        [(_UITableViewIndexEntry *)v22 setImage:_dotImage];

        image = [(_UITableViewIndexEntry *)v22 image];
        [image size];
        [(_UITableViewIndexEntry *)v22 setBounds:v18, v19, v27, v28];

        [(_UITableViewIndexEntry *)v22 bounds];
        [(_UITableViewIndexEntry *)v22 setTypeBounds:?];
        goto LABEL_21;
      }

      if ([v21 isEqualToString:@"•"])
      {
        _dotImage = [(UITableViewIndex *)selfCopy _dotImage];
        goto LABEL_20;
      }

      if ([v21 isEqualToString:@"{appclip}"])
      {
        _dotImage = [UIImage _systemImageNamed:@"appclip"];
        goto LABEL_20;
      }

      v47[0] = v41;
      font = [(UITableViewIndex *)selfCopy font];
      v47[1] = v40;
      v48[0] = font;
      v48[1] = v39;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
      v30 = v17;
      v32 = v31 = selfCopy;

      v33 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v21 attributes:v32];
      v34 = CTLineCreateWithAttributedString(v33);
      [(_UITableViewIndexEntry *)v22 setLine:v34];

      BoundsWithOptions = CTLineGetBoundsWithOptions(v34, 0x10uLL);
      [(_UITableViewIndexEntry *)v22 setBounds:BoundsWithOptions.origin.x, BoundsWithOptions.origin.y, BoundsWithOptions.size.width, BoundsWithOptions.size.height];
      v52 = CTLineGetBoundsWithOptions(v34, 8uLL);
      [(_UITableViewIndexEntry *)v22 setTypeBounds:v52.origin.x, v52.origin.y, v52.size.width, v52.size.height];

      v13 = v42;
      selfCopy = v31;
      v17 = v30;
LABEL_21:
      [v12 addObject:v22];

      ++v20;
    }

    while (v15 != v20);
    v35 = [v13 countByEnumeratingWithState:&v43 objects:v49 count:16];
    v15 = v35;
  }

  while (v35);
LABEL_29:

  v36 = *(&selfCopy->super.super.super.super.isa + v38);
  *(&selfCopy->super.super.super.super.isa + v38) = v12;
}

+ (void)makeTableViewIndex:(id *)index containerView:(id *)view forTraits:(id)traits
{
  traitsCopy = traits;
  if (index)
  {
    if (view)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewIndex.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"index != nil"}];

    if (view)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UITableViewIndex.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

LABEL_3:
  v9 = [self alloc];
  v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v11 = +[UITableViewIndex visualStyleForIdiom:](self, [traitsCopy userInterfaceIdiom]);
  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 containerViewForTableViewIndex:v10];
  }

  else
  {
    v12 = 0;
  }

  v13 = v10;
  *index = v10;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  *view = v14;
}

+ (id)visualStyleForIdiom:(uint64_t)idiom
{
  objc_opt_self();
  v3 = +[UITableViewIndex idiomToVisualStyleClassMap];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v5 = objc_opt_class();
  }

  return v5;
}

- (UITableViewIndex)initWithFrame:(CGRect)frame
{
  v19[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = UITableViewIndex;
  v3 = [(UIControl *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_idiom = -1;
    v5 = [objc_opt_class() visualStyleForTableViewIndex:v3];
    visualStyle = v4->_visualStyle;
    v4->_visualStyle = v5;

    [(UIView *)v4 setOpaque:0];
    [(UIControl *)v4 setRequiresDisplayOnTracking:1];
    [(UIView *)v4 setNeedsDisplayOnBoundsChange:1];
    [(UIView *)v4 setDeliversTouchesForGesturesToSuperview:0];
    [(UIView *)v4 setExclusiveTouch:1];
    v4->_selectedSection = 0x7FFFFFFFFFFFFFFFLL;
    v7 = *MEMORY[0x1E695F060];
    v4->_cachedSize = *MEMORY[0x1E695F060];
    v4->_cachedSizeToFit = v7;
    v4->_drawingInsetsMask = 15;
    v19[0] = 0x1EFE32398;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v9 = [(UIView *)v4 _registerForTraitTokenChanges:v8 withTarget:v4 action:sel__setupAXHUDGestureIfNecessary];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__largeContentViewerEnabledStatusDidChange_ name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];

    v18[0] = 0x1EFE32440;
    v18[1] = 0x1EFE324A0;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v12 = [(UIView *)v4 _registerForTraitTokenChanges:v11 withTarget:v4 action:sel__legibilityWeightOrPreferredContentSizeTraitsDidChange];

    v17 = 0x1EFE323F8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v14 = [(UIView *)v4 _registerForTraitTokenChanges:v13 withTarget:v4 action:sel__horizontalSizeClassDidChange];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v38 = *MEMORY[0x1E69E9840];
  p_cachedSize = &self->_cachedSize;
  v7 = self->_cachedSize.width;
  v8 = self->_cachedSize.height;
  v9 = v7 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8);
  if (v9 || (self->_cachedSizeToFit.width == width ? (v10 = self->_cachedSizeToFit.height == height) : (v10 = 0), !v10))
  {
    [(UITableViewIndex *)self _cacheAndMeasureTitles];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = self->_entries;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      v15 = 0.0;
      v16 = 0.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          [v18 bounds];
          v20 = v19;
          visualStyle = [(UITableViewIndex *)self visualStyle];
          [visualStyle lineSpacing];
          v23 = v22;

          [v18 bounds];
          if (v24 > v16)
          {
            [v18 bounds];
            v16 = v25;
          }

          v15 = v15 + v20 + v23 + v23;
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
    }

    v26 = fmax((height - v15) * 0.5, 0.0);
    self->_bottomPadding = v26;
    self->_topPadding = v26;
    UICeilToViewScale(self);
    v28 = v27;
    visualStyle2 = [(UITableViewIndex *)self visualStyle];
    [visualStyle2 indexWidth];
    v31 = fmax(v28, v30);

    if (v31 > width)
    {
      v32 = width;
    }

    else
    {
      v32 = v31;
    }

    p_cachedSize->width = v32;
    p_cachedSize->height = height;
    self->_cachedSizeToFit.width = width;
    self->_cachedSizeToFit.height = height;
    v7 = p_cachedSize->width;
    v8 = p_cachedSize->height;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setTitles:(id)titles
{
  if (self->_titles != titles)
  {
    v4 = [titles copy];
    titles = self->_titles;
    self->_titles = v4;

    v6 = *MEMORY[0x1E695F060];
    self->_cachedSize = *MEMORY[0x1E695F060];
    self->_cachedSizeToFit = v6;
    [(UITableViewIndex *)self _cacheAndMeasureTitles];

    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v16.receiver = self;
  v16.super_class = UITableViewIndex;
  [(UIView *)&v16 frame];
  v18.origin.x = v8;
  v18.origin.y = v9;
  v11 = v10;
  v13 = v12;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.size.width = v11;
  v18.size.height = v13;
  if (!CGRectEqualToRect(v17, v18))
  {
    v15.receiver = self;
    v15.super_class = UITableViewIndex;
    [(UIView *)&v15 setFrame:x, y, width, height];
    if (width != v11 || height != v13)
    {
      [(UITableViewIndex *)self _cacheAndMeasureTitles];
    }
  }
}

- (void)setDrawingInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_drawingInsets.top), vceqq_f64(v4, *&self->_drawingInsets.bottom)))) & 1) == 0)
  {
    self->_drawingInsets = insets;
    [(UITableViewIndex *)self _cacheAndMeasureTitles];
  }
}

- (CGRect)_effectiveBounds
{
  [(UITableViewIndex *)self drawingInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  drawingInsetsMask = [(UITableViewIndex *)self drawingInsetsMask];
  if ((drawingInsetsMask & 8) == 0)
  {
    v10 = 0.0;
  }

  if ((drawingInsetsMask & 4) == 0)
  {
    v8 = 0.0;
  }

  if ((drawingInsetsMask & 2) == 0)
  {
    v6 = 0.0;
  }

  if ((drawingInsetsMask & 1) == 0)
  {
    v4 = 0.0;
  }

  [(UIView *)self bounds];
  v13 = v6 + v12;
  v15 = v4 + v14;
  v17 = v16 - (v6 + v10);
  v19 = v18 - (v4 + v8);
  result.size.height = v19;
  result.size.width = v17;
  result.origin.y = v15;
  result.origin.x = v13;
  return result;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  visualStyle = [(UITableViewIndex *)self visualStyle];
  [visualStyle setFont:fontCopy];

  font = self->_font;
  if (font != fontCopy)
  {

    [(UIView *)self setNeedsDisplay];
  }
}

- (UIFont)font
{
  visualStyle = [(UITableViewIndex *)self visualStyle];
  font = [visualStyle font];

  return font;
}

- (NSString)selectedSectionTitle
{
  if (self->_selectedSection == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_titles objectAtIndex:v2];
  }

  return v4;
}

- (CGRect)_visibleBoundsForRect:(CGRect)rect stride:(double *)stride
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_entries count])
  {
    visualStyle = [(UITableViewIndex *)self visualStyle];
    [visualStyle lineSpacing];
    v12 = v11;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = self->_entries;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      v17 = 0.0;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v30 + 1) + 8 * i) typeBounds];
          UIRoundToViewScale(self);
          v17 = v17 + v19;
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    else
    {
      v17 = 0.0;
    }

    v22 = v17 + v12 * ([(NSArray *)self->_entries count]- 1);
    v23 = [(NSArray *)self->_entries objectAtIndexedSubscript:[(NSArray *)self->_entries count]- 1];
    [v23 typeBounds];
    v21 = v22 - v24;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    CGRectGetMinY(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    CGRectGetHeight(v37);
    UIRoundToViewScale(self);
    v20 = v25;
    if (stride)
    {
      *stride = v12;
    }
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    v20 = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
  }

  v26 = x;
  v27 = v20;
  v28 = width;
  v29 = v21;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"contents"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITableViewIndex;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)_legibilityWeightOrPreferredContentSizeTraitsDidChange
{
  visualStyle = [(UITableViewIndex *)self visualStyle];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    visualStyle2 = [(UITableViewIndex *)self visualStyle];
    [visualStyle2 legibilityWeightOrPreferredContentSizeUpdated];
  }

  [(UITableViewIndex *)self _cacheAndMeasureTitles];
}

- (void)_horizontalSizeClassDidChange
{
  v2 = *MEMORY[0x1E695F060];
  self->_cachedSizeToFit = *MEMORY[0x1E695F060];
  self->_cachedSize = v2;
  tableView = [(UITableViewIndex *)self tableView];
  [tableView _updateIndexFrame];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  visualStyle = [(UITableViewIndex *)self visualStyle];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    visualStyle2 = [(UITableViewIndex *)self visualStyle];
    [visualStyle2 drawRect:{x, y, width, height}];

    return;
  }

  [(UITableViewIndex *)self _effectiveBounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  if ([(UIControl *)self isTracking]&& (indexTrackingBackgroundColor = self->_indexTrackingBackgroundColor) != 0 || (indexTrackingBackgroundColor = self->_indexBackgroundColor) != 0)
  {
    [(UIColor *)indexTrackingBackgroundColor set];
  }

  else
  {
    traitCollection = [(UIView *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] == 3)
    {

      goto LABEL_13;
    }

    v63 = dyld_program_sdk_at_least();

    if (v63)
    {
      goto LABEL_13;
    }

    v64 = [UIColor colorWithWhite:1.0 alpha:0.9];
    [v64 set];
  }

  v71.origin.x = v11;
  v71.origin.y = v13;
  v71.size.width = v15;
  v71.size.height = v17;
  CGContextFillRect(v19, v71);
LABEL_13:
  v69 = 0.0;
  [(UITableViewIndex *)self _visibleBoundsForRect:&v69 stride:v11, v13, v15, v17];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  indexColor = [(UITableViewIndex *)self indexColor];

  if (indexColor)
  {
    [(UITableViewIndex *)self indexColor];
  }

  else
  {
    [(UIView *)self _inheritedInteractionTintColor];
  }
  v30 = ;
  [v30 set];
  v31 = [(NSArray *)self->_entries count];
  visualStyle3 = [(UITableViewIndex *)self visualStyle];
  v33 = objc_opt_respondsToSelector();

  visualStyle4 = [(UITableViewIndex *)self visualStyle];
  v35 = objc_opt_respondsToSelector();

  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      v37 = [(NSArray *)self->_entries objectAtIndexedSubscript:i, *&v65];
      [v37 bounds];
      v39 = v38;
      v41 = v40;
      v67 = v42;
      v44 = v43;
      if (v33)
      {
        visualStyle5 = [(UITableViewIndex *)self visualStyle];
        [visualStyle5 willDrawEntryAtIndex:i indexBounds:v19 entryBounds:v30 context:v22 originalColor:{v24, v26, v28, v39, v41, *&v67, v44}];
      }

      image = [v37 image];

      if (image)
      {
        image2 = [v37 image];
        v48 = [image2 imageWithTintColor:v30 renderingMode:1];

        v72.origin.x = v22;
        v72.origin.y = v24;
        v72.size.width = v26;
        v72.size.height = v28;
        CGRectGetMinX(v72);
        v49 = v39;
        v73.origin.x = v22;
        v73.origin.y = v24;
        v73.size.width = v26;
        v73.size.height = v28;
        CGRectGetWidth(v73);
        UIRoundToViewScale(self);
        v51 = v50;
        v74.origin.x = v22;
        v74.origin.y = v24;
        v74.size.width = v26;
        v74.size.height = v28;
        CGRectGetMinY(v74);
        UIRoundToViewScale(self);
        v53 = v52;
        v54 = v51;
        v39 = v49;
        [v48 drawAtPoint:0 blendMode:v54 alpha:{v53, 1.0}];

        v28 = v44;
      }

      else
      {
        line = [v37 line];

        if (line)
        {
          CGContextSaveGState(v19);
          v75.origin.x = v22;
          v75.origin.y = v24;
          v75.size.width = v26;
          v75.size.height = v28;
          CGRectGetMinX(v75);
          v65 = v39;
          v76.origin.x = v22;
          v76.origin.y = v24;
          v76.size.width = v26;
          v76.size.height = v28;
          CGRectGetWidth(v76);
          UIRoundToViewScale(self);
          v57 = v56;
          v77.origin.x = v22;
          v77.origin.y = v24;
          v77.size.width = v26;
          v77.size.height = v28;
          CGRectGetMinY(v77);
          [v37 typeBounds];
          UIRoundToViewScale(self);
          v59 = v58;
          v68.b = 0.0;
          v68.c = 0.0;
          v68.a = 1.0;
          v68.d = -1.0;
          v68.tx = v57;
          v68.ty = v58;
          v39 = v65;
          CGContextSetTextMatrix(v19, &v68);
          line2 = [v37 line];
          CTLineDraw(line2, v19);

          CGContextRestoreGState(v19);
          v28 = v59 - v24;
        }
      }

      if (v35)
      {
        visualStyle6 = [(UITableViewIndex *)self visualStyle];
        [visualStyle6 didDrawEntryAtIndex:i indexBounds:v19 entryBounds:v30 context:v22 originalColor:{v24, v26, v28, v39, v41, *&v67, v44}];
      }

      v24 = v24 + v28 + v69;
    }
  }
}

- (BOOL)_updateSectionForTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  [(UITableViewIndex *)self _effectiveBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [touchCopy locationInView:self];
  v15 = v14;
  v17 = v16;

  v18 = [(UITableViewIndex *)self _indexForEntryAtPoint:v15, v17];
  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  MinY = CGRectGetMinY(v28);
  if (v17 >= MinY)
  {
    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    MaxY = CGRectGetMaxY(v29);
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    if (v17 > MaxY)
    {
      v20 = 1;
    }

    else
    {
      v21 = v18;
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v21 == self->_selectedSection)
  {
    v23 = v17 < MinY;
    if (self->_pastTop == v23 && self->_pastBottom == v20)
    {
      return 0;
    }
  }

  else
  {
    LOBYTE(v23) = v17 < MinY;
  }

  self->_selectedSection = v21;
  self->_pastTop = v23;
  self->_pastBottom = v20;
  visualStyle = [(UITableViewIndex *)self visualStyle];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    visualStyle2 = [(UITableViewIndex *)self visualStyle];
    [visualStyle2 selectedSectionDidChange:self->_selectedSection];
  }

  return 1;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  visualStyle = [(UITableViewIndex *)self visualStyle];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    visualStyle2 = [(UITableViewIndex *)self visualStyle];
    [visualStyle2 trackingDidBegin];
  }

  [(UITableViewIndex *)self _updateSectionForTouch:touchCopy withEvent:eventCopy];
  [(UIView *)self setNeedsDisplay];

  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  if ([(UITableViewIndex *)self _updateSectionForTouch:touch withEvent:eventCopy])
  {
    [(UIControl *)self _sendActionsForEvents:4096 withEvent:eventCopy];
  }

  return 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  visualStyle = [(UITableViewIndex *)self visualStyle];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    visualStyle2 = [(UITableViewIndex *)self visualStyle];
    [visualStyle2 trackingDidEnd];
  }

  [(UITableViewIndex *)self _updateSectionForTouch:touchCopy withEvent:eventCopy];
  self->_selectedSection = 0x7FFFFFFFFFFFFFFFLL;
  self->_pastTop = 0;
  self->_pastBottom = 0;
  [(UIView *)self setNeedsDisplay];
  v11.receiver = self;
  v11.super_class = UITableViewIndex;
  [(UIControl *)&v11 endTrackingWithTouch:touchCopy withEvent:eventCopy];
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  visualStyle = [(UITableViewIndex *)self visualStyle];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    visualStyle2 = [(UITableViewIndex *)self visualStyle];
    [visualStyle2 trackingDidEnd];
  }

  self->_selectedSection = 0x7FFFFFFFFFFFFFFFLL;
  self->_pastTop = 0;
  self->_pastBottom = 0;
  [(UIView *)self setNeedsDisplay];
  v8.receiver = self;
  v8.super_class = UITableViewIndex;
  [(UIControl *)&v8 cancelTrackingWithEvent:eventCopy];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = UITableViewIndex;
  eventCopy = event;
  beganCopy = began;
  [(UIControl *)&v8 touchesBegan:beganCopy withEvent:eventCopy];
  [(UITableViewIndex *)self _handleTouches:beganCopy withEvent:eventCopy, v8.receiver, v8.super_class];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = UITableViewIndex;
  eventCopy = event;
  movedCopy = moved;
  [(UIControl *)&v8 touchesMoved:movedCopy withEvent:eventCopy];
  [(UITableViewIndex *)self _handleTouches:movedCopy withEvent:eventCopy, v8.receiver, v8.super_class];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = UITableViewIndex;
  eventCopy = event;
  [(UIControl *)&v7 touchesEnded:ended withEvent:eventCopy];
  [(UITableViewIndex *)self _handleTouches:0 withEvent:eventCopy, v7.receiver, v7.super_class];
}

- (void)_handleTouches:(id)touches withEvent:(id)event
{
  eventCopy = event;
  v8 = [eventCopy _firstTouchForView:self];
  [v8 locationInView:self];
  v6 = [(UITableViewIndex *)self _indexForEntryAtPoint:?];
  visualStyle = [(UITableViewIndex *)self visualStyle];
  [visualStyle handleTouch:v8 withEvent:eventCopy touchedEntryIndex:v6];
}

- (void)setIndexColor:(id)color
{
  colorCopy = color;
  if (self->_indexColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_indexColor, color);
    [(UIView *)self setNeedsDisplay];
    colorCopy = v6;
  }
}

- (void)setIndexTrackingBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_indexTrackingBackgroundColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_indexTrackingBackgroundColor, color);
    isTracking = [(UIControl *)self isTracking];
    colorCopy = v7;
    if (isTracking)
    {
      [(UIView *)self setNeedsDisplay];
      colorCopy = v7;
    }
  }
}

- (void)setIndexBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_indexBackgroundColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_indexBackgroundColor, color);
    isTracking = [(UIControl *)self isTracking];
    colorCopy = v7;
    if (!isTracking)
    {
      [(UIView *)self setNeedsDisplay];
      colorCopy = v7;
    }
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = UITableViewIndex;
  [(UIView *)&v3 tintColorDidChange];
  [(UIView *)self setNeedsDisplay];
}

- (id)_dotImage
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    [(UITableViewIndex *)self _externalDotImage];
  }

  else
  {
    _UIImageWithName(@"UITableViewIndexDot");
  }
  v5 = ;

  return v5;
}

- (id)_externalDotImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__UITableViewIndex__externalDotImage__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (_MergedGlobals_15_8 != -1)
  {
    dispatch_once(&_MergedGlobals_15_8, block);
  }

  return qword_1ED49C0A8;
}

void __37__UITableViewIndex__externalDotImage__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _currentScreenScale];
  _UIGraphicsBeginImageContextWithOptions(0, 0, 4.0, 4.0, v1);
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = 4.0;
  v7.size.height = 4.0;
  CGContextFillEllipseInRect(v3, v7);
  v4 = _UIGraphicsGetImageFromCurrentImageContext(0);
  v5 = qword_1ED49C0A8;
  qword_1ED49C0A8 = v4;

  UIGraphicsEndImageContext();
}

- (BOOL)canBecomeFocused
{
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3)
  {
    canBecomeFocused = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UITableViewIndex;
    canBecomeFocused = [(UIControl *)&v6 canBecomeFocused];
  }

  return canBecomeFocused;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = UITableViewIndex;
  [(UIView *)&v3 didMoveToWindow];
  [(UITableViewIndex *)self _setupAXHUDGestureIfNecessary];
}

- (void)_setupAXHUDGestureIfNecessary
{
  if (!self->_axHUDGestureManager)
  {
    if (dyld_program_sdk_at_least())
    {
      traitCollection = [(UIView *)self traitCollection];
      _isLargeContentViewerEnabled = [traitCollection _isLargeContentViewerEnabled];

      if (_isLargeContentViewerEnabled)
      {
        v5 = [[UIAccessibilityHUDGestureManager alloc] initWithView:self delegate:self];
        axHUDGestureManager = self->_axHUDGestureManager;
        self->_axHUDGestureManager = v5;
      }
    }
  }
}

- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point
{
  v5 = [(UITableViewIndex *)self _indexForEntryAtPoint:manager, point.x, point.y];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [UIAccessibilityHUDItem alloc];
    v9 = [(NSArray *)self->_titles objectAtIndex:v7];
    v6 = [(UIAccessibilityHUDItem *)v8 initWithTitle:v9 image:0 imageInsets:0.0, 0.0, 0.0, 0.0];
  }

  return v6;
}

- (int64_t)_indexForEntryAtPoint:(CGPoint)point
{
  y = point.y;
  [(UITableViewIndex *)self _effectiveBounds];
  x = v14.origin.x;
  v6 = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if (y < CGRectGetMinY(v14))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v15.origin.x = x;
  v15.origin.y = v6;
  v15.size.width = width;
  v15.size.height = height;
  if (y > CGRectGetMaxY(v15))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = [(NSArray *)self->_titles count];
  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  [(UITableViewIndex *)self _visibleBoundsForRect:0 stride:x, v6, width, height];
  v11 = v16.origin.y;
  v12 = CGRectGetHeight(v16);
  if (v10 - 1 >= (((y - v11) / (v12 / v10)) & ~(((y - v11) / (v12 / v10)) >> 63)))
  {
    return ((y - v11) / (v12 / v10)) & ~(((y - v11) / (v12 / v10)) >> 63);
  }

  else
  {
    return v10 - 1;
  }
}

+ (id)idiomToVisualStyleClassMap
{
  objc_opt_self();
  if (qword_1ED49C0B0 != -1)
  {
    dispatch_once(&qword_1ED49C0B0, &__block_literal_global_144);
  }

  v0 = qword_1ED49C0B8;

  return v0;
}

void __46__UITableViewIndex_idiomToVisualStyleClassMap__block_invoke()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1EFE333E8;
  v4[0] = objc_opt_class();
  v3[1] = &unk_1EFE33400;
  v4[1] = objc_opt_class();
  v3[2] = &unk_1EFE33418;
  v4[2] = objc_opt_class();
  v3[3] = &unk_1EFE33430;
  v4[3] = objc_opt_class();
  v3[4] = &unk_1EFE33448;
  v4[4] = objc_opt_class();
  v3[5] = &unk_1EFE33460;
  v4[5] = objc_opt_class();
  v3[6] = &unk_1EFE33478;
  v4[6] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = [v0 mutableCopy];
  v2 = qword_1ED49C0B8;
  qword_1ED49C0B8 = v1;
}

+ (void)registerVisualStyle:(Class)style forIdiom:(int64_t)idiom
{
  if (([(objc_class *)style conformsToProtocol:&unk_1F00F2F18]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = NSStringFromClass(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewIndex.m" lineNumber:900 description:{@"visualStyle of type %@ does not conform to UITableViewIndexVisualStyle.", v10}];
  }

  v11 = +[UITableViewIndex idiomToVisualStyleClassMap];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  [v11 setObject:style forKey:v8];
}

+ (id)visualStyleForTableViewIndex:(id)index
{
  indexCopy = index;
  _coreIdiom = [indexCopy _coreIdiom];
  if (_coreIdiom == -1)
  {
    traitCollection = [indexCopy traitCollection];
    _coreIdiom = [traitCollection userInterfaceIdiom];
  }

  v7 = [objc_alloc(+[UITableViewIndex visualStyleForIdiom:](self _coreIdiom))];

  return v7;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (UIEdgeInsets)drawingInsets
{
  top = self->_drawingInsets.top;
  left = self->_drawingInsets.left;
  bottom = self->_drawingInsets.bottom;
  right = self->_drawingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end