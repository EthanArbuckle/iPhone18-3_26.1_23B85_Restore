@interface UIIndexBarView
+ (id)_visualStyleForIdiom:(uint64_t)idiom;
+ (id)visualStyleForIndexBarView:(id)view;
+ (void)makeIndexBarView:(id *)view containerView:(id *)containerView forTraits:(id)traits;
+ (void)registerVisualStyle:(Class)style forIdiom:(int64_t)idiom;
- (BOOL)_defaultCanBecomeFocused;
- (BOOL)_didSelectEntry:(id)entry atIndex:(int64_t)index location:(CGPoint)location;
- (BOOL)_selectEntry:(id)entry atIndex:(int64_t)index;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)canBecomeFocused;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (CGPoint)trackingStartLocationInWindow;
- (CGRect)effectiveBounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIColor)indexColor;
- (UIEdgeInsets)drawingInsets;
- (UIIndexBarView)initWithFrame:(CGRect)frame;
- (UIIndexBarViewDelegate)delegate;
- (double)displayHighlightedIndex;
- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point;
- (id)backgroundColor;
- (void)_handleTouches:(id)touches withEvent:(id)event;
- (void)_horizontalSizeClassDidChange;
- (void)_legibilityWeightOrPreferredContentSizeTraitsDidChange;
- (void)_setupAXHUDGestureIfNecessary;
- (void)_updateBackgroundColor;
- (void)_updateDisplayEntries;
- (void)_userInteractionStarted;
- (void)_userInteractionStopped;
- (void)cancelTrackingWithEvent:(id)event;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)rect;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)resetDeflection:(BOOL)deflection;
- (void)setBackgroundColor:(id)color;
- (void)setDeflection:(double)deflection;
- (void)setDisplayEntries:(id)entries;
- (void)setDrawingInsets:(UIEdgeInsets)insets;
- (void)setEntries:(id)entries;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightStyle:(int64_t)style;
- (void)setHighlightedIndex:(double)index;
- (void)setIndexColor:(id)color;
- (void)setTrackingBackgroundColor:(id)color;
- (void)setVisualStyle:(id)style;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UIIndexBarView

- (void)_updateDisplayEntries
{
  v69 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)self->_entries count]|| ([(UIIndexBarView *)self effectiveBounds], CGRectIsEmpty(v71)))
  {
LABEL_3:
    v3 = MEMORY[0x1E695E0F0];

    [(UIIndexBarView *)self setDisplayEntries:v3];
    return;
  }

  visualStyle = [(UIIndexBarView *)self visualStyle];
  [visualStyle minLineHeight];
  v6 = v5;

  if (v6 <= 0.0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v40 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        visualStyle2 = [(UIIndexBarView *)self visualStyle];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = visualStyle2;
        _os_log_fault_impl(&dword_188A29000, v40, OS_LOG_TYPE_FAULT, "UIIndexBarView visual style returned line height <= 0.0. Index bar view: %@; Visual style: %@", buf, 0x16u);
      }
    }

    else
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &_updateDisplayEntries___s_category) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        visualStyle3 = [(UIIndexBarView *)self visualStyle];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = visualStyle3;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "UIIndexBarView visual style returned line height <= 0.0. Index bar view: %@; Visual style: %@", buf, 0x16u);
      }
    }

    [(UIIndexBarView *)self setDisplayEntries:MEMORY[0x1E695E0F0]];
  }

  else
  {
    drawingInsetsMask = [(UIIndexBarView *)self drawingInsetsMask];
    [(UIIndexBarView *)self effectiveBounds];
    v9 = v8;
    v10 = vcvtmd_u64_f64(v8 / v6);
    if ([(NSArray *)self->_entries count]<= v10)
    {
      if ((drawingInsetsMask & 1) == 0)
      {
        [(UIIndexBarView *)self drawingInsets];
        v9 = v9 - v15;
        v16 = vcvtmd_u64_f64(v9 / v6);
        if ([(NSArray *)self->_entries count]<= v16)
        {
          [(UIIndexBarView *)self setDrawingInsetsMask:[(UIIndexBarView *)self drawingInsetsMask]| 1];
          v10 = v16;
        }
      }
    }

    else if (drawingInsetsMask)
    {
      [(UIIndexBarView *)self setDrawingInsetsMask:[(UIIndexBarView *)self drawingInsetsMask]& 0xFFFFFFFFFFFFFFFELL];
      [(UIIndexBarView *)self drawingInsets];
      v9 = v9 + v11;
      v10 = vcvtmd_u64_f64(v9 / v6);
    }

    if (v10 > [(NSArray *)self->_entries count])
    {
      v10 = [(NSArray *)self->_entries count];
    }

    if (!v10)
    {
      goto LABEL_3;
    }

    v17 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      visualStyle4 = [(UIIndexBarView *)self visualStyle];
      [visualStyle4 lineSpacing];
      v20 = v19;

      v62[3] = 0.0;
      v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];

      v60[0] = 0;
      v60[1] = v60;
      v60[2] = 0x2020000000;
      v60[3] = 0;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v53 = __39__UIIndexBarView__updateDisplayEntries__block_invoke;
      v54 = &unk_1E712A550;
      selfCopy = self;
      v57 = v60;
      v17 = v21;
      v56 = v17;
      v58 = &v61;
      v59 = v20;
      if (v10 >= [(NSArray *)self->_entries count])
      {
        entries = self->_entries;
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __39__UIIndexBarView__updateDisplayEntries__block_invoke_6;
        v43[3] = &__block_descriptor_40_e32_v32__0__UIIndexBarEntry_8Q16_B24lu32l8;
        v43[4] = v52;
        [(NSArray *)entries enumerateObjectsUsingBlock:v43];
      }

      else
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3010000000;
        v66 = "";
        v67 = 0;
        v68 = 0;
        v22 = [(NSArray *)self->_entries count];
        v67 = 0;
        v68 = v22;
        array = [MEMORY[0x1E695DF70] array];
        v24 = self->_entries;
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __39__UIIndexBarView__updateDisplayEntries__block_invoke_2;
        v49[3] = &unk_1E712A578;
        v25 = array;
        v50 = v25;
        v51 = buf;
        [(NSArray *)v24 enumerateObjectsUsingBlock:v49];
        array2 = [MEMORY[0x1E695DF70] array];
        v27 = self->_entries;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __39__UIIndexBarView__updateDisplayEntries__block_invoke_3;
        v46[3] = &unk_1E712A578;
        v28 = array2;
        v47 = v28;
        v48 = buf;
        [(NSArray *)v27 enumerateObjectsWithOptions:2 usingBlock:v46];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __39__UIIndexBarView__updateDisplayEntries__block_invoke_4;
        v45[3] = &__block_descriptor_40_e32_v32__0__UIIndexBarEntry_8Q16_B24lu32l8;
        v45[4] = v52;
        [v25 enumerateObjectsUsingBlock:v45];
        v29 = [v25 count];
        v30 = [v28 count];
        v31 = v10 - (v29 + v30) + ((v10 - (v29 + v30)) & 1) - 1;
        if (v31 > 0)
        {
          v33 = *(*&buf[8] + 32);
          v32 = *(*&buf[8] + 40);
          v34 = v33;
          if (v33 < (v33 + v32))
          {
            v35 = v32 / v31;
            v36 = 1;
            do
            {
              v37 = vcvtmd_s64_f64(v34);
              if (v36)
              {
                [UIIndexBarEntry entryForDotInView:self];
              }

              else
              {
                [(NSArray *)self->_entries objectAtIndexedSubscript:v37];
              }
              v38 = ;
              v53(v52, v38, v37);

              v36 ^= 1u;
              v34 = v35 + v34;
            }

            while (v34 < (*(*&buf[8] + 40) + *(*&buf[8] + 32)));
          }
        }

        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __39__UIIndexBarView__updateDisplayEntries__block_invoke_5;
        v44[3] = &unk_1E712A5C0;
        v44[4] = self;
        v44[5] = v52;
        [v28 enumerateObjectsWithOptions:2 usingBlock:v44];

        _Block_object_dispose(buf, 8);
      }

      v62[3] = v62[3] - v20;

      _Block_object_dispose(v60, 8);
      objc_autoreleasePoolPop(context);
      if (!--v10)
      {
        break;
      }

      if (v62[3] <= v9)
      {
        goto LABEL_35;
      }
    }

    [v17 removeAllObjects];
LABEL_35:
    [(UIIndexBarView *)self setDisplayEntries:v17];
    _Block_object_dispose(&v61, 8);
  }
}

- (CGRect)effectiveBounds
{
  [(UIIndexBarView *)self drawingInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  drawingInsetsMask = [(UIIndexBarView *)self drawingInsetsMask];
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

void __39__UIIndexBarView__updateDisplayEntries__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 visualStyle];
  v11 = [v7 displayEntryFromEntry:v6];

  [v11 setEntryIndex:a3];
  ++*(*(*(a1 + 48) + 8) + 24);
  [v11 setDisplayEntryIndex:?];
  v8 = [*(a1 + 32) visualStyle];
  [v8 renderingHeightForDisplayEntry:v11];

  UIRoundToViewScale(*(a1 + 32));
  v10 = v9;
  [*(a1 + 40) addObject:v11];
  *(*(*(a1 + 56) + 8) + 24) = v10 + *(a1 + 64) + *(*(*(a1 + 56) + 8) + 24);
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = UIIndexBarView;
  [(UIView *)&v3 didMoveToWindow];
  [(UIIndexBarView *)self _setupAXHUDGestureIfNecessary];
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

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UIIndexBarView;
  [(UIView *)&v4 tintColorDidChange];
  if (!self->_indexColor && (*&self->_visualStyleImplements & 0x2000) != 0)
  {
    visualStyle = [(UIIndexBarView *)self visualStyle];
    [visualStyle indexColorUpdated];
  }
}

- (void)layoutSubviews
{
  if ((*&self->_visualStyleImplements & 0x40) != 0)
  {
    visualStyle = [(UIIndexBarView *)self visualStyle];
    [visualStyle layoutSubviews];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = UIIndexBarView;
    [(UIView *)&v3 layoutSubviews];
  }
}

- (id)backgroundColor
{
  isTracking = [(UIControl *)self isTracking];
  v4 = 12;
  if (isTracking)
  {
    v4 = 11;
  }

  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___UIIndexBarView__drawingInsetsMask[v4]);

  return v5;
}

- (UIColor)indexColor
{
  indexColor = self->_indexColor;
  if (indexColor)
  {
    _inheritedInteractionTintColor = indexColor;
  }

  else
  {
    _inheritedInteractionTintColor = [(UIView *)self _inheritedInteractionTintColor];
  }

  return _inheritedInteractionTintColor;
}

+ (void)makeIndexBarView:(id *)view containerView:(id *)containerView forTraits:(id)traits
{
  traitsCopy = traits;
  if (view)
  {
    if (containerView)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIIndexBarView.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"index != nil"}];

    if (containerView)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIIndexBarView.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

LABEL_3:
  v9 = objc_alloc_init(self);
  v10 = +[UIIndexBarView _visualStyleForIdiom:](self, [traitsCopy userInterfaceIdiom]);
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 containerViewForIndexBar:v9];
  }

  else
  {
    v11 = 0;
  }

  v12 = v9;
  *view = v9;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  *containerView = v13;
}

+ (id)_visualStyleForIdiom:(uint64_t)idiom
{
  objc_opt_self();
  v3 = __IdiomsToVisualStyles;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v5 = objc_opt_class();
  }

  return v5;
}

- (UIIndexBarView)initWithFrame:(CGRect)frame
{
  v20[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = UIIndexBarView;
  v3 = [(UIControl *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [objc_opt_class() visualStyleForIndexBarView:v3];
  [(UIIndexBarView *)v3 setVisualStyle:v4];

  v3->_drawingInsetsMask = 15;
  if (!v3->_selectionFeedbackGenerator)
  {
    v5 = +[_UISelectionFeedbackGeneratorConfiguration strongConfiguration];
    v6 = [v5 tweakedConfigurationForClass:objc_opt_class() usage:@"indexRetarget"];

    v7 = [(UIFeedbackGenerator *)[UISelectionFeedbackGenerator alloc] initWithConfiguration:v6 view:v3];
    selectionFeedbackGenerator = v3->_selectionFeedbackGenerator;
    v3->_selectionFeedbackGenerator = v7;
  }

  v20[0] = 0x1EFE32398;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v10 = [(UIView *)v3 _registerForTraitTokenChanges:v9 withTarget:v3 action:sel__setupAXHUDGestureIfNecessary];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v3 selector:sel__largeContentViewerEnabledStatusDidChange_ name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];

  v19[0] = 0x1EFE32440;
  v19[1] = 0x1EFE324A0;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v13 = [(UIView *)v3 _registerForTraitTokenChanges:v12 withTarget:v3 action:sel__legibilityWeightOrPreferredContentSizeTraitsDidChange];

  v18 = 0x1EFE323F8;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v15 = [(UIView *)v3 _registerForTraitTokenChanges:v14 withTarget:v3 action:sel__horizontalSizeClassDidChange];

  return v3;
}

- (void)setVisualStyle:(id)style
{
  objc_storeStrong(&self->_visualStyle, style);
  styleCopy = style;
  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xFFFD | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xFFFB | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xFFF7 | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 16;
  }

  else
  {
    v9 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xFFEF | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 32;
  }

  else
  {
    v10 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xFFDF | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 64;
  }

  else
  {
    v11 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xFFBF | v11;
  if (objc_opt_respondsToSelector())
  {
    v12 = 128;
  }

  else
  {
    v12 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xFF7F | v12;
  if (objc_opt_respondsToSelector())
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xFEFF | v13;
  if (objc_opt_respondsToSelector())
  {
    v14 = 512;
  }

  else
  {
    v14 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xFDFF | v14;
  if (objc_opt_respondsToSelector())
  {
    v15 = 1024;
  }

  else
  {
    v15 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xFBFF | v15;
  if (objc_opt_respondsToSelector())
  {
    v16 = 2048;
  }

  else
  {
    v16 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xF7FF | v16;
  if (objc_opt_respondsToSelector())
  {
    v17 = 4096;
  }

  else
  {
    v17 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xEFFF | v17;
  if (objc_opt_respondsToSelector())
  {
    v18 = 0x2000;
  }

  else
  {
    v18 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xDFFF | v18;
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = 0x4000;
  }

  else
  {
    v20 = 0;
  }

  *&self->_visualStyleImplements = *&self->_visualStyleImplements & 0xBFFF | v20;
}

- (void)setEntries:(id)entries
{
  entriesCopy = entries;
  if (self->_entries != entriesCopy)
  {
    v7 = entriesCopy;
    objc_storeStrong(&self->_entries, entries);
    self->_cachedDisplayHighlightedIndex = -1.0;
    if (*&self->_visualStyleImplements)
    {
      visualStyle = [(UIIndexBarView *)self visualStyle];
      [visualStyle entriesUpdated];
    }

    [(UIIndexBarView *)self _updateDisplayEntries];
    entriesCopy = v7;
  }
}

- (void)setDisplayEntries:(id)entries
{
  entriesCopy = entries;
  if (self->_displayEntries != entriesCopy)
  {
    v7 = entriesCopy;
    objc_storeStrong(&self->_displayEntries, entries);
    entriesCopy = v7;
    self->_cachedDisplayHighlightedIndex = -1.0;
    if ((*&self->_visualStyleImplements & 2) != 0)
    {
      visualStyle = [(UIIndexBarView *)self visualStyle];
      [visualStyle displayEntriesUpdated];

      entriesCopy = v7;
    }
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17.receiver = self;
  v17.super_class = UIIndexBarView;
  [(UIView *)&v17 frame];
  v19.origin.x = v8;
  v19.origin.y = v9;
  v11 = v10;
  v13 = v12;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v19.size.width = v11;
  v19.size.height = v13;
  if (!CGRectEqualToRect(v18, v19))
  {
    v16.receiver = self;
    v16.super_class = UIIndexBarView;
    [(UIView *)&v16 setFrame:x, y, width, height];
    if (width != v11 || height != v13)
    {
      if ((*&self->_visualStyleImplements & 4) != 0)
      {
        visualStyle = [(UIIndexBarView *)self visualStyle];
        [visualStyle sizeUpdated];
      }

      [(UIIndexBarView *)self _updateDisplayEntries];
    }
  }
}

- (void)setHighlightedIndex:(double)index
{
  if (self->_highlightedIndex != index)
  {
    self->_highlightedIndex = index;
    self->_cachedDisplayHighlightedIndex = -1.0;
    if ((*&self->_visualStyleImplements & 8) != 0)
    {
      visualStyle = [(UIIndexBarView *)self visualStyle];
      [visualStyle highlightedIndexUpdated];
    }
  }
}

- (void)setDeflection:(double)deflection
{
  if (self->_deflection != deflection)
  {
    self->_deflection = deflection;
    if ((*&self->_visualStyleImplements & 0x10) != 0)
    {
      visualStyle = [(UIIndexBarView *)self visualStyle];
      [visualStyle deflectionUpdated];
    }
  }
}

- (void)resetDeflection:(BOOL)deflection
{
  self->_deflection = 0.0;
  if ((*&self->_visualStyleImplements & 0x20) != 0)
  {
    deflectionCopy = deflection;
    visualStyle = [(UIIndexBarView *)self visualStyle];
    [visualStyle deflectionReset:deflectionCopy];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  visualStyle = [(UIIndexBarView *)self visualStyle];
  [visualStyle sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)canBecomeFocused
{
  visualStyle = [(UIIndexBarView *)self visualStyle];
  canBecomeFocused = [visualStyle canBecomeFocused];

  return canBecomeFocused;
}

- (BOOL)_defaultCanBecomeFocused
{
  v3.receiver = self;
  v3.super_class = UIIndexBarView;
  return [(UIControl *)&v3 canBecomeFocused];
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
    [(UIIndexBarView *)self _updateDisplayEntries];
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ((*&self->_visualStyleImplements & 0x80) != 0)
  {
    visualStyle = [(UIIndexBarView *)self visualStyle];
    [visualStyle drawRect:{x, y, width, height}];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIIndexBarView;
    [(UIView *)&v8 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  }
}

- (void)_legibilityWeightOrPreferredContentSizeTraitsDidChange
{
  if ((*&self->_visualStyleImplements & 0x4000) != 0)
  {
    visualStyle = [(UIIndexBarView *)self visualStyle];
    [visualStyle legibilityWeightOrPreferredContentSizeUpdated];
  }

  [(UIIndexBarView *)self _updateDisplayEntries];
}

- (void)_horizontalSizeClassDidChange
{
  if ((*&self->_visualStyleImplements & 4) != 0)
  {
    visualStyle = [(UIIndexBarView *)self visualStyle];
    [visualStyle sizeUpdated];
  }
}

void __39__UIIndexBarView__updateDisplayEntries__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  [*(a1 + 32) addObject:v6];
  ++*(*(*(a1 + 40) + 8) + 32);
  --*(*(*(a1 + 40) + 8) + 40);
  if (([v6 hasPoundTitle] & 1) == 0 && (!objc_msgSend(v6, "type") || objc_msgSend(v6, "type") == 1))
  {
    *a4 = 1;
  }
}

void __39__UIIndexBarView__updateDisplayEntries__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  [*(a1 + 32) addObject:v6];
  --*(*(*(a1 + 40) + 8) + 40);
  if (([v6 hasPoundTitle] & 1) == 0 && (!objc_msgSend(v6, "type") || objc_msgSend(v6, "type") == 1))
  {
    *a4 = 1;
  }
}

void __39__UIIndexBarView__updateDisplayEntries__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 472);
  v6 = a2;
  (*(v4 + 16))(v4, v6, [v5 count] + ~a3);
}

- (double)displayHighlightedIndex
{
  cachedDisplayHighlightedIndex = -1.0;
  if (![(NSArray *)self->_displayEntries count])
  {
    return cachedDisplayHighlightedIndex;
  }

  [(UIIndexBarView *)self effectiveBounds];
  if (CGRectIsEmpty(v23))
  {
    return cachedDisplayHighlightedIndex;
  }

  cachedDisplayHighlightedIndex = self->_cachedDisplayHighlightedIndex;
  if (cachedDisplayHighlightedIndex != -1.0)
  {
    return cachedDisplayHighlightedIndex;
  }

  entries = [(UIIndexBarView *)self entries];
  v5 = [entries count];
  if (v5 == [(NSArray *)self->_displayEntries count]|| ((highlightedIndex = self->_highlightedIndex, highlightedIndex != -1.0) ? (v7 = highlightedIndex == -2.0) : (v7 = 1), v7))
  {

    return self->_highlightedIndex;
  }

  if (highlightedIndex == -3.0)
  {
    return self->_highlightedIndex;
  }

  v9 = [(NSArray *)self->_displayEntries count]- 1;
  v10 = self->_highlightedIndex;
  v11 = [(NSArray *)self->_entries count];
  if (v9 < 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = llround(v10 * v9 / (v11 - 1));
    do
    {
      v14 = [(NSArray *)self->_displayEntries objectAtIndexedSubscript:v13];
      entryIndex = [v14 entryIndex];

      v16 = self->_highlightedIndex;
      if (v16 <= entryIndex)
      {
        if (v16 < entryIndex)
        {
          v17 = v13 - 1;
          v9 = v13;
          v13 = v12;
        }

        else
        {
          v17 = v13;
          v9 = v13;
        }
      }

      else
      {
        v17 = v13 + 1;
      }

      v12 = v13;
      v18 = v9 - v13;
      v13 = v17;
    }

    while (v18 > 1);
  }

  if (v12 == v9)
  {
    cachedDisplayHighlightedIndex = v9;
  }

  else
  {
    v19 = [(NSArray *)self->_displayEntries objectAtIndexedSubscript:v12];
    entryIndex2 = [v19 entryIndex];

    v21 = [(NSArray *)self->_displayEntries objectAtIndexedSubscript:v9];
    entryIndex3 = [v21 entryIndex];

    cachedDisplayHighlightedIndex = (self->_highlightedIndex - entryIndex2) / (entryIndex3 - entryIndex2) + v12;
  }

  self->_cachedDisplayHighlightedIndex = cachedDisplayHighlightedIndex;
  return cachedDisplayHighlightedIndex;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  window = [(UIView *)self window];
  [touchCopy locationInView:window];
  self->_trackingStartLocationInWindow.x = v9;
  self->_trackingStartLocationInWindow.y = v10;

  visualStyleImplements = self->_visualStyleImplements;
  if ((visualStyleImplements & 0x100) != 0)
  {
    visualStyle = [(UIIndexBarView *)self visualStyle];
    [visualStyle trackingDidBegin];

    visualStyleImplements = self->_visualStyleImplements;
  }

  if ((visualStyleImplements & 0x800) != 0 && [(NSArray *)self->_entries count])
  {
    visualStyle2 = [(UIIndexBarView *)self visualStyle];
    [visualStyle2 updateSectionForTouch:touchCopy withEvent:eventCopy];

    visualStyle3 = [(UIIndexBarView *)self visualStyle];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      visualStyle4 = [(UIIndexBarView *)self visualStyle];
      [visualStyle4 setExpanded:1];
    }

    [(UIIndexBarView *)self _updateBackgroundColor];
    [(UIIndexBarView *)self _userInteractionStarted];
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  visualStyleImplements = self->_visualStyleImplements;
  if ((*&visualStyleImplements & 0x800) != 0)
  {
    if ((*&visualStyleImplements & 0x200) == 0 || (-[UIView window](self, "window"), v9 = objc_claimAutoreleasedReturnValue(), [touchCopy locationInView:v9], v11 = v10, v13 = v12, v9, -[UIIndexBarVisualStyle trackingChangeHysteresis](self->_visualStyle, "trackingChangeHysteresis"), fabs(sqrt((self->_trackingStartLocationInWindow.x - v11) * (self->_trackingStartLocationInWindow.x - v11) + (self->_trackingStartLocationInWindow.y - v13) * (self->_trackingStartLocationInWindow.y - v13))) > v14))
    {
      visualStyle = [(UIIndexBarView *)self visualStyle];
      v16 = [visualStyle updateSectionForTouch:touchCopy withEvent:eventCopy];

      if (v16)
      {
        [(UIControl *)self _sendActionsForEvents:4096 withEvent:eventCopy];
      }
    }
  }

  return (*&visualStyleImplements >> 11) & 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  visualStyleImplements = self->_visualStyleImplements;
  if ((visualStyleImplements & 0x400) != 0)
  {
    visualStyle = [(UIIndexBarView *)self visualStyle];
    [visualStyle trackingDidEnd];

    visualStyleImplements = self->_visualStyleImplements;
  }

  if ((visualStyleImplements & 0x800) != 0)
  {
    if ((visualStyleImplements & 0x200) == 0 || (-[UIView window](self, "window"), v10 = objc_claimAutoreleasedReturnValue(), [touchCopy locationInView:v10], v12 = v11, v14 = v13, v10, -[UIIndexBarVisualStyle trackingChangeHysteresis](self->_visualStyle, "trackingChangeHysteresis"), fabs(sqrt((self->_trackingStartLocationInWindow.x - v12) * (self->_trackingStartLocationInWindow.x - v12) + (self->_trackingStartLocationInWindow.y - v14) * (self->_trackingStartLocationInWindow.y - v14))) > v15))
    {
      visualStyle2 = [(UIIndexBarView *)self visualStyle];
      [visualStyle2 updateSectionForTouch:touchCopy withEvent:eventCopy];
    }

    visualStyle3 = [(UIIndexBarView *)self visualStyle];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      visualStyle4 = [(UIIndexBarView *)self visualStyle];
      [visualStyle4 setExpanded:0];
    }

    [(UIIndexBarView *)self _updateBackgroundColor];
  }

  v20.receiver = self;
  v20.super_class = UIIndexBarView;
  [(UIControl *)&v20 endTrackingWithTouch:touchCopy withEvent:eventCopy];
  [(UIIndexBarView *)self _userInteractionStopped];
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  visualStyleImplements = self->_visualStyleImplements;
  if ((visualStyleImplements & 0x400) != 0)
  {
    visualStyle = [(UIIndexBarView *)self visualStyle];
    [visualStyle trackingDidEnd];

    visualStyleImplements = self->_visualStyleImplements;
  }

  if ((visualStyleImplements & 0x800) != 0)
  {
    visualStyle2 = [(UIIndexBarView *)self visualStyle];
    [visualStyle2 updateSectionForTouch:0 withEvent:eventCopy];

    [(UIIndexBarView *)self _updateBackgroundColor];
  }

  v8.receiver = self;
  v8.super_class = UIIndexBarView;
  [(UIControl *)&v8 cancelTrackingWithEvent:eventCopy];
  [(UIIndexBarView *)self _userInteractionStopped];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = UIIndexBarView;
  eventCopy = event;
  beganCopy = began;
  [(UIControl *)&v8 touchesBegan:beganCopy withEvent:eventCopy];
  [(UIIndexBarView *)self _handleTouches:beganCopy withEvent:eventCopy, v8.receiver, v8.super_class];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = UIIndexBarView;
  eventCopy = event;
  movedCopy = moved;
  [(UIControl *)&v8 touchesMoved:movedCopy withEvent:eventCopy];
  [(UIIndexBarView *)self _handleTouches:movedCopy withEvent:eventCopy, v8.receiver, v8.super_class];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = UIIndexBarView;
  eventCopy = event;
  [(UIControl *)&v7 touchesEnded:ended withEvent:eventCopy];
  [(UIIndexBarView *)self _handleTouches:0 withEvent:eventCopy, v7.receiver, v7.super_class];
}

- (void)_handleTouches:(id)touches withEvent:(id)event
{
  eventCopy = event;
  v7 = eventCopy;
  if (touches)
  {
    visualStyle4 = [eventCopy _firstTouchForView:self];
    [visualStyle4 locationInView:self];
    v9 = v8;
    v11 = v10;
    visualStyle = [(UIIndexBarView *)self visualStyle];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      visualStyle2 = [(UIIndexBarView *)self visualStyle];
      v15 = [visualStyle2 _indexForEntryAtPoint:{v9, v11}];
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    visualStyle3 = [(UIIndexBarView *)self visualStyle];
    [visualStyle3 handleTouch:visualStyle4 withEvent:v7 touchedEntryIndex:v15];

    v7 = visualStyle3;
  }

  else
  {
    visualStyle4 = [(UIIndexBarView *)self visualStyle];
    [visualStyle4 handleTouch:0 withEvent:v7 touchedEntryIndex:0x7FFFFFFFFFFFFFFFLL];
  }
}

+ (void)registerVisualStyle:(Class)style forIdiom:(int64_t)idiom
{
  if (!__IdiomsToVisualStyles)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = __IdiomsToVisualStyles;
    __IdiomsToVisualStyles = dictionary;
  }

  if (([(objc_class *)style conformsToProtocol:&unk_1F00F8540]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromClass(style);
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIIndexBarView.m" lineNumber:659 description:{@"visualStyle of type %@ does not conform to UIIndexBarVisualStyle.", v12}];
  }

  v10 = __IdiomsToVisualStyles;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  [v10 setObject:style forKey:v13];
}

+ (id)visualStyleForIndexBarView:(id)view
{
  viewCopy = view;
  traitCollection = [viewCopy traitCollection];
  v6 = +[UIIndexBarView _visualStyleForIdiom:](self, [traitCollection userInterfaceIdiom]);

  v7 = [[v6 alloc] initWithView:viewCopy];

  return v7;
}

- (void)setHighlightStyle:(int64_t)style
{
  if (self->_highlightStyle != style)
  {
    self->_highlightStyle = style;
    if ((*&self->_visualStyleImplements & 0x1000) != 0)
    {
      visualStyle = [(UIIndexBarView *)self visualStyle];
      [visualStyle highlightStyleUpdated];
    }
  }
}

- (void)_updateBackgroundColor
{
  if ([(UIControl *)self isTracking])
  {
    [(UIView *)&v4 setBackgroundColor:self->_trackingBackgroundColor, v3.receiver, v3.super_class, self, UIIndexBarView];
  }

  else
  {
    [(UIView *)&v3 setBackgroundColor:self->_nonTrackingBackgroundColor, self, UIIndexBarView, v4.receiver, v4.super_class];
  }
}

- (void)setIndexColor:(id)color
{
  colorCopy = color;
  if (self->_indexColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_indexColor, color);
    colorCopy = v7;
    if ((*&self->_visualStyleImplements & 0x2000) != 0)
    {
      visualStyle = [(UIIndexBarView *)self visualStyle];
      [visualStyle indexColorUpdated];

      colorCopy = v7;
    }
  }
}

- (void)setTrackingBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_trackingBackgroundColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_trackingBackgroundColor, color);
    isTracking = [(UIControl *)self isTracking];
    colorCopy = v7;
    if (isTracking)
    {
      [(UIIndexBarView *)self _updateBackgroundColor];
      colorCopy = v7;
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_nonTrackingBackgroundColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_nonTrackingBackgroundColor, color);
    isTracking = [(UIControl *)self isTracking];
    colorCopy = v7;
    if (!isTracking)
    {
      [(UIIndexBarView *)self _updateBackgroundColor];
      colorCopy = v7;
    }
  }
}

- (void)_userInteractionStarted
{
  delegate = [(UIIndexBarView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(UIIndexBarView *)self delegate];
    [delegate2 userInteractionStartedWithIndexBarView:self];
  }

  selectionFeedbackGenerator = self->_selectionFeedbackGenerator;

  [(UISelectionFeedbackGenerator *)selectionFeedbackGenerator userInteractionStarted];
}

- (void)_userInteractionStopped
{
  delegate = [(UIIndexBarView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(UIIndexBarView *)self delegate];
    [delegate2 userInteractionStoppedWithIndexBarView:self];
  }

  selectionFeedbackGenerator = self->_selectionFeedbackGenerator;

  [(UISelectionFeedbackGenerator *)selectionFeedbackGenerator userInteractionEnded];
}

- (BOOL)_didSelectEntry:(id)entry atIndex:(int64_t)index location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v8 = [(UIIndexBarView *)self _selectEntry:entry atIndex:index];
  if (v8)
  {
    [(UISelectionFeedbackGenerator *)self->_selectionFeedbackGenerator selectionChangedAtLocation:x, y];
  }

  return v8;
}

- (BOOL)_selectEntry:(id)entry atIndex:(int64_t)index
{
  entryCopy = entry;
  delegate = [(UIIndexBarView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(UIIndexBarView *)self delegate];
    v10 = [delegate2 indexBarView:self didSelectEntry:entryCopy atIndex:index];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_accessibilityHUDGestureManager:(id)manager HUDItemForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  visualStyle = [(UIIndexBarView *)self visualStyle];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) != 0 && (-[UIIndexBarView visualStyle](self, "visualStyle"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 _accessibility_indexForEntryAtPoint:{x, y}], v9, v10 != 0x7FFFFFFFFFFFFFFFLL))
  {
    entries = [(UIIndexBarView *)self entries];
    v13 = [entries objectAtIndex:v10];

    v14 = [UIAccessibilityHUDItem alloc];
    title = [v13 title];
    image = [v13 image];
    v11 = [(UIAccessibilityHUDItem *)v14 initWithTitle:title image:image imageInsets:0.0, 0.0, 0.0, 0.0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (UIIndexBarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)trackingStartLocationInWindow
{
  x = self->_trackingStartLocationInWindow.x;
  y = self->_trackingStartLocationInWindow.y;
  result.y = y;
  result.x = x;
  return result;
}

@end