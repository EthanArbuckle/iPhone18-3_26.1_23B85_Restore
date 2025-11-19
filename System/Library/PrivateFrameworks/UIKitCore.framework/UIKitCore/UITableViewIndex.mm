@interface UITableViewIndex
+ (id)idiomToVisualStyleClassMap;
+ (id)visualStyleForIdiom:(uint64_t)a1;
+ (id)visualStyleForTableViewIndex:(id)a3;
+ (void)makeTableViewIndex:(id *)a3 containerView:(id *)a4 forTraits:(id)a5;
+ (void)registerVisualStyle:(Class)a3 forIdiom:(int64_t)a4;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (BOOL)_updateSectionForTouch:(id)a3 withEvent:(id)a4;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)canBecomeFocused;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGRect)_effectiveBounds;
- (CGRect)_visibleBoundsForRect:(CGRect)a3 stride:(double *)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)selectedSectionTitle;
- (UIEdgeInsets)drawingInsets;
- (UIFont)font;
- (UITableView)tableView;
- (UITableViewIndex)initWithFrame:(CGRect)a3;
- (double)_minLineSpacingForIdiom:(int64_t)a3;
- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4;
- (id)_displayTitles;
- (id)_dotImage;
- (id)_externalDotImage;
- (int64_t)_idiom;
- (int64_t)_indexForEntryAtPoint:(CGPoint)a3;
- (void)_cacheAndMeasureTitles;
- (void)_handleTouches:(id)a3 withEvent:(id)a4;
- (void)_horizontalSizeClassDidChange;
- (void)_legibilityWeightOrPreferredContentSizeTraitsDidChange;
- (void)_setIdiom:(int64_t)a3;
- (void)_setupAXHUDGestureIfNecessary;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)setDrawingInsets:(UIEdgeInsets)a3;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setIndexBackgroundColor:(id)a3;
- (void)setIndexColor:(id)a3;
- (void)setIndexTrackingBackgroundColor:(id)a3;
- (void)setTitles:(id)a3;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UITableViewIndex

- (int64_t)_idiom
{
  if (self->_idiom != -1)
  {
    return self->_idiom;
  }

  v3 = [(UIView *)self window];
  v4 = [v3 _screen];
  v5 = [v4 _userInterfaceIdiom];

  return v5;
}

- (void)_setIdiom:(int64_t)a3
{
  self->_idiom = a3;
  v4 = [objc_opt_class() visualStyleForTableViewIndex:self];
  visualStyle = self->_visualStyle;
  self->_visualStyle = v4;

  if (self->_titles)
  {
    [(UITableViewIndex *)self _cacheAndMeasureTitles];
  }

  [(UIView *)self setNeedsDisplay];
}

- (double)_minLineSpacingForIdiom:(int64_t)a3
{
  v3 = [(UITableViewIndex *)self visualStyle];
  [v3 minLineSpacing];
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

  v11 = [v3 lastObject];
  v12 = [v11 isEqualToString:@"{search}"];

  v13 = [v3 objectAtIndex:0];
  v14 = [v13 isEqualToString:@"#"];

  v15 = [v3 lastObject];
  v16 = [v15 isEqualToString:@"#"];

  v17 = [v3 count];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = v18;
  if (v10)
  {
    [v18 addObject:@"{search}"];
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
    v29 = [v19 lastObject];
    v30 = [v29 isEqual:@"•"];

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
  v2 = self;
  v50 = *MEMORY[0x1E69E9840];
  entries = self->_entries;
  if (entries)
  {
    self->_entries = 0;
  }

  [(UITableViewIndex *)v2 _minLineSpacingForIdiom:[(UITableViewIndex *)v2 _idiom]];
  v5 = v4;
  v6 = [(UITableViewIndex *)v2 drawingInsetsMask];
  [(UITableViewIndex *)v2 _effectiveBounds];
  v8 = v7;
  v37 = 568;
  if (v5 <= floor(v7 / [(NSArray *)v2->_titles count]))
  {
    if (v6)
    {
      goto LABEL_10;
    }

    [(UITableViewIndex *)v2 drawingInsets];
    if (v5 >= floor((v8 - v10) / [(NSArray *)v2->_titles count]))
    {
      goto LABEL_10;
    }

    v9 = [(UITableViewIndex *)v2 drawingInsetsMask]| 1;
    goto LABEL_9;
  }

  if (v6)
  {
    v9 = [(UITableViewIndex *)v2 drawingInsetsMask]& 0xFFFFFFFFFFFFFFFELL;
LABEL_9:
    [(UITableViewIndex *)v2 setDrawingInsetsMask:v9, 568];
  }

LABEL_10:
  v11 = [(UITableViewIndex *)v2 _displayTitles];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = v11;
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
        v24 = _UIImageWithName(v23);
LABEL_20:
        v25 = v24;
        [(_UITableViewIndexEntry *)v22 setImage:v24];

        v26 = [(_UITableViewIndexEntry *)v22 image];
        [v26 size];
        [(_UITableViewIndexEntry *)v22 setBounds:v18, v19, v27, v28];

        [(_UITableViewIndexEntry *)v22 bounds];
        [(_UITableViewIndexEntry *)v22 setTypeBounds:?];
        goto LABEL_21;
      }

      if ([v21 isEqualToString:@"•"])
      {
        v24 = [(UITableViewIndex *)v2 _dotImage];
        goto LABEL_20;
      }

      if ([v21 isEqualToString:@"{appclip}"])
      {
        v24 = [UIImage _systemImageNamed:@"appclip"];
        goto LABEL_20;
      }

      v47[0] = v41;
      v29 = [(UITableViewIndex *)v2 font];
      v47[1] = v40;
      v48[0] = v29;
      v48[1] = v39;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
      v30 = v17;
      v32 = v31 = v2;

      v33 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v21 attributes:v32];
      v34 = CTLineCreateWithAttributedString(v33);
      [(_UITableViewIndexEntry *)v22 setLine:v34];

      BoundsWithOptions = CTLineGetBoundsWithOptions(v34, 0x10uLL);
      [(_UITableViewIndexEntry *)v22 setBounds:BoundsWithOptions.origin.x, BoundsWithOptions.origin.y, BoundsWithOptions.size.width, BoundsWithOptions.size.height];
      v52 = CTLineGetBoundsWithOptions(v34, 8uLL);
      [(_UITableViewIndexEntry *)v22 setTypeBounds:v52.origin.x, v52.origin.y, v52.size.width, v52.size.height];

      v13 = v42;
      v2 = v31;
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

  v36 = *(&v2->super.super.super.super.isa + v38);
  *(&v2->super.super.super.super.isa + v38) = v12;
}

+ (void)makeTableViewIndex:(id *)a3 containerView:(id *)a4 forTraits:(id)a5
{
  v17 = a5;
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"UITableViewIndex.m" lineNumber:269 description:{@"Invalid parameter not satisfying: %@", @"index != nil"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"UITableViewIndex.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

LABEL_3:
  v9 = [a1 alloc];
  v10 = [v9 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v11 = +[UITableViewIndex visualStyleForIdiom:](a1, [v17 userInterfaceIdiom]);
  if (objc_opt_respondsToSelector())
  {
    v12 = [v11 containerViewForTableViewIndex:v10];
  }

  else
  {
    v12 = 0;
  }

  v13 = v10;
  *a3 = v10;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  *a4 = v14;
}

+ (id)visualStyleForIdiom:(uint64_t)a1
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

- (UITableViewIndex)initWithFrame:(CGRect)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = UITableViewIndex;
  v3 = [(UIControl *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v4 selector:sel__largeContentViewerEnabledStatusDidChange_ name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
          v21 = [(UITableViewIndex *)self visualStyle];
          [v21 lineSpacing];
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
    v29 = [(UITableViewIndex *)self visualStyle];
    [v29 indexWidth];
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

- (void)setTitles:(id)a3
{
  if (self->_titles != a3)
  {
    v4 = [a3 copy];
    titles = self->_titles;
    self->_titles = v4;

    v6 = *MEMORY[0x1E695F060];
    self->_cachedSize = *MEMORY[0x1E695F060];
    self->_cachedSizeToFit = v6;
    [(UITableViewIndex *)self _cacheAndMeasureTitles];

    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setDrawingInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_drawingInsets.top), vceqq_f64(v4, *&self->_drawingInsets.bottom)))) & 1) == 0)
  {
    self->_drawingInsets = a3;
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
  v11 = [(UITableViewIndex *)self drawingInsetsMask];
  if ((v11 & 8) == 0)
  {
    v10 = 0.0;
  }

  if ((v11 & 4) == 0)
  {
    v8 = 0.0;
  }

  if ((v11 & 2) == 0)
  {
    v6 = 0.0;
  }

  if ((v11 & 1) == 0)
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

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(UITableViewIndex *)self visualStyle];
  [v5 setFont:v4];

  font = self->_font;
  if (font != v4)
  {

    [(UIView *)self setNeedsDisplay];
  }
}

- (UIFont)font
{
  v2 = [(UITableViewIndex *)self visualStyle];
  v3 = [v2 font];

  return v3;
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

- (CGRect)_visibleBoundsForRect:(CGRect)a3 stride:(double *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_entries count])
  {
    v10 = [(UITableViewIndex *)self visualStyle];
    [v10 lineSpacing];
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
    if (a4)
    {
      *a4 = v12;
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

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"contents"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITableViewIndex;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)_legibilityWeightOrPreferredContentSizeTraitsDidChange
{
  v3 = [(UITableViewIndex *)self visualStyle];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UITableViewIndex *)self visualStyle];
    [v5 legibilityWeightOrPreferredContentSizeUpdated];
  }

  [(UITableViewIndex *)self _cacheAndMeasureTitles];
}

- (void)_horizontalSizeClassDidChange
{
  v2 = *MEMORY[0x1E695F060];
  self->_cachedSizeToFit = *MEMORY[0x1E695F060];
  self->_cachedSize = v2;
  v3 = [(UITableViewIndex *)self tableView];
  [v3 _updateIndexFrame];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UITableViewIndex *)self visualStyle];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v66 = [(UITableViewIndex *)self visualStyle];
    [v66 drawRect:{x, y, width, height}];

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
    v62 = [(UIView *)self traitCollection];
    if ([v62 userInterfaceIdiom] == 3)
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
  v29 = [(UITableViewIndex *)self indexColor];

  if (v29)
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
  v32 = [(UITableViewIndex *)self visualStyle];
  v33 = objc_opt_respondsToSelector();

  v34 = [(UITableViewIndex *)self visualStyle];
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
        v45 = [(UITableViewIndex *)self visualStyle];
        [v45 willDrawEntryAtIndex:i indexBounds:v19 entryBounds:v30 context:v22 originalColor:{v24, v26, v28, v39, v41, *&v67, v44}];
      }

      v46 = [v37 image];

      if (v46)
      {
        v47 = [v37 image];
        v48 = [v47 imageWithTintColor:v30 renderingMode:1];

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
        v55 = [v37 line];

        if (v55)
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
          v60 = [v37 line];
          CTLineDraw(v60, v19);

          CGContextRestoreGState(v19);
          v28 = v59 - v24;
        }
      }

      if (v35)
      {
        v61 = [(UITableViewIndex *)self visualStyle];
        [v61 didDrawEntryAtIndex:i indexBounds:v19 entryBounds:v30 context:v22 originalColor:{v24, v26, v28, v39, v41, *&v67, v44}];
      }

      v24 = v24 + v28 + v69;
    }
  }
}

- (BOOL)_updateSectionForTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(UITableViewIndex *)self _effectiveBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 locationInView:self];
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
  v25 = [(UITableViewIndex *)self visualStyle];
  v26 = objc_opt_respondsToSelector();

  if (v26)
  {
    v27 = [(UITableViewIndex *)self visualStyle];
    [v27 selectedSectionDidChange:self->_selectedSection];
  }

  return 1;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITableViewIndex *)self visualStyle];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(UITableViewIndex *)self visualStyle];
    [v10 trackingDidBegin];
  }

  [(UITableViewIndex *)self _updateSectionForTouch:v6 withEvent:v7];
  [(UIView *)self setNeedsDisplay];

  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  if ([(UITableViewIndex *)self _updateSectionForTouch:a3 withEvent:v6])
  {
    [(UIControl *)self _sendActionsForEvents:4096 withEvent:v6];
  }

  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITableViewIndex *)self visualStyle];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(UITableViewIndex *)self visualStyle];
    [v10 trackingDidEnd];
  }

  [(UITableViewIndex *)self _updateSectionForTouch:v7 withEvent:v6];
  self->_selectedSection = 0x7FFFFFFFFFFFFFFFLL;
  self->_pastTop = 0;
  self->_pastBottom = 0;
  [(UIView *)self setNeedsDisplay];
  v11.receiver = self;
  v11.super_class = UITableViewIndex;
  [(UIControl *)&v11 endTrackingWithTouch:v7 withEvent:v6];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(UITableViewIndex *)self visualStyle];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UITableViewIndex *)self visualStyle];
    [v7 trackingDidEnd];
  }

  self->_selectedSection = 0x7FFFFFFFFFFFFFFFLL;
  self->_pastTop = 0;
  self->_pastBottom = 0;
  [(UIView *)self setNeedsDisplay];
  v8.receiver = self;
  v8.super_class = UITableViewIndex;
  [(UIControl *)&v8 cancelTrackingWithEvent:v4];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = UITableViewIndex;
  v6 = a4;
  v7 = a3;
  [(UIControl *)&v8 touchesBegan:v7 withEvent:v6];
  [(UITableViewIndex *)self _handleTouches:v7 withEvent:v6, v8.receiver, v8.super_class];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = UITableViewIndex;
  v6 = a4;
  v7 = a3;
  [(UIControl *)&v8 touchesMoved:v7 withEvent:v6];
  [(UITableViewIndex *)self _handleTouches:v7 withEvent:v6, v8.receiver, v8.super_class];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = UITableViewIndex;
  v6 = a4;
  [(UIControl *)&v7 touchesEnded:a3 withEvent:v6];
  [(UITableViewIndex *)self _handleTouches:0 withEvent:v6, v7.receiver, v7.super_class];
}

- (void)_handleTouches:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v8 = [v5 _firstTouchForView:self];
  [v8 locationInView:self];
  v6 = [(UITableViewIndex *)self _indexForEntryAtPoint:?];
  v7 = [(UITableViewIndex *)self visualStyle];
  [v7 handleTouch:v8 withEvent:v5 touchedEntryIndex:v6];
}

- (void)setIndexColor:(id)a3
{
  v5 = a3;
  if (self->_indexColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_indexColor, a3);
    [(UIView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)setIndexTrackingBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_indexTrackingBackgroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_indexTrackingBackgroundColor, a3);
    v6 = [(UIControl *)self isTracking];
    v5 = v7;
    if (v6)
    {
      [(UIView *)self setNeedsDisplay];
      v5 = v7;
    }
  }
}

- (void)setIndexBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_indexBackgroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_indexBackgroundColor, a3);
    v6 = [(UIControl *)self isTracking];
    v5 = v7;
    if (!v6)
    {
      [(UIView *)self setNeedsDisplay];
      v5 = v7;
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
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
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
  v3 = [(UIView *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 3)
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UITableViewIndex;
    v4 = [(UIControl *)&v6 canBecomeFocused];
  }

  return v4;
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
      v3 = [(UIView *)self traitCollection];
      v4 = [v3 _isLargeContentViewerEnabled];

      if (v4)
      {
        v5 = [[UIAccessibilityHUDGestureManager alloc] initWithView:self delegate:self];
        axHUDGestureManager = self->_axHUDGestureManager;
        self->_axHUDGestureManager = v5;
      }
    }
  }
}

- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4
{
  v5 = [(UITableViewIndex *)self _indexForEntryAtPoint:a3, a4.x, a4.y];
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

- (int64_t)_indexForEntryAtPoint:(CGPoint)a3
{
  y = a3.y;
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

+ (void)registerVisualStyle:(Class)a3 forIdiom:(int64_t)a4
{
  if (([(objc_class *)a3 conformsToProtocol:&unk_1F00F2F18]& 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = NSStringFromClass(a3);
    [v9 handleFailureInMethod:a2 object:a1 file:@"UITableViewIndex.m" lineNumber:900 description:{@"visualStyle of type %@ does not conform to UITableViewIndexVisualStyle.", v10}];
  }

  v11 = +[UITableViewIndex idiomToVisualStyleClassMap];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v11 setObject:a3 forKey:v8];
}

+ (id)visualStyleForTableViewIndex:(id)a3
{
  v4 = a3;
  v5 = [v4 _coreIdiom];
  if (v5 == -1)
  {
    v6 = [v4 traitCollection];
    v5 = [v6 userInterfaceIdiom];
  }

  v7 = [objc_alloc(+[UITableViewIndex visualStyleForIdiom:](a1 v5))];

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