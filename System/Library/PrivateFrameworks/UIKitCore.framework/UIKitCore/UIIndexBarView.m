@interface UIIndexBarView
+ (id)_visualStyleForIdiom:(uint64_t)a1;
+ (id)visualStyleForIndexBarView:(id)a3;
+ (void)makeIndexBarView:(id *)a3 containerView:(id *)a4 forTraits:(id)a5;
+ (void)registerVisualStyle:(Class)a3 forIdiom:(int64_t)a4;
- (BOOL)_defaultCanBecomeFocused;
- (BOOL)_didSelectEntry:(id)a3 atIndex:(int64_t)a4 location:(CGPoint)a5;
- (BOOL)_selectEntry:(id)a3 atIndex:(int64_t)a4;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)canBecomeFocused;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGPoint)trackingStartLocationInWindow;
- (CGRect)effectiveBounds;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)indexColor;
- (UIEdgeInsets)drawingInsets;
- (UIIndexBarView)initWithFrame:(CGRect)a3;
- (UIIndexBarViewDelegate)delegate;
- (double)displayHighlightedIndex;
- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4;
- (id)backgroundColor;
- (void)_handleTouches:(id)a3 withEvent:(id)a4;
- (void)_horizontalSizeClassDidChange;
- (void)_legibilityWeightOrPreferredContentSizeTraitsDidChange;
- (void)_setupAXHUDGestureIfNecessary;
- (void)_updateBackgroundColor;
- (void)_updateDisplayEntries;
- (void)_userInteractionStarted;
- (void)_userInteractionStopped;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)resetDeflection:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setDeflection:(double)a3;
- (void)setDisplayEntries:(id)a3;
- (void)setDrawingInsets:(UIEdgeInsets)a3;
- (void)setEntries:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightStyle:(int64_t)a3;
- (void)setHighlightedIndex:(double)a3;
- (void)setIndexColor:(id)a3;
- (void)setTrackingBackgroundColor:(id)a3;
- (void)setVisualStyle:(id)a3;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

  v4 = [(UIIndexBarView *)self visualStyle];
  [v4 minLineHeight];
  v6 = v5;

  if (v6 <= 0.0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v40 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        v41 = [(UIIndexBarView *)self visualStyle];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v41;
        _os_log_fault_impl(&dword_188A29000, v40, OS_LOG_TYPE_FAULT, "UIIndexBarView visual style returned line height <= 0.0. Index bar view: %@; Visual style: %@", buf, 0x16u);
      }
    }

    else
    {
      v12 = *(__UILogGetCategoryCachedImpl("Assert", &_updateDisplayEntries___s_category) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = [(UIIndexBarView *)self visualStyle];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "UIIndexBarView visual style returned line height <= 0.0. Index bar view: %@; Visual style: %@", buf, 0x16u);
      }
    }

    [(UIIndexBarView *)self setDisplayEntries:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v7 = [(UIIndexBarView *)self drawingInsetsMask];
    [(UIIndexBarView *)self effectiveBounds];
    v9 = v8;
    v10 = vcvtmd_u64_f64(v8 / v6);
    if ([(NSArray *)self->_entries count]<= v10)
    {
      if ((v7 & 1) == 0)
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

    else if (v7)
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
      v18 = [(UIIndexBarView *)self visualStyle];
      [v18 lineSpacing];
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
      v55 = self;
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
        v23 = [MEMORY[0x1E695DF70] array];
        v24 = self->_entries;
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __39__UIIndexBarView__updateDisplayEntries__block_invoke_2;
        v49[3] = &unk_1E712A578;
        v25 = v23;
        v50 = v25;
        v51 = buf;
        [(NSArray *)v24 enumerateObjectsUsingBlock:v49];
        v26 = [MEMORY[0x1E695DF70] array];
        v27 = self->_entries;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __39__UIIndexBarView__updateDisplayEntries__block_invoke_3;
        v46[3] = &unk_1E712A578;
        v28 = v26;
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
  v11 = [(UIIndexBarView *)self drawingInsetsMask];
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

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UIIndexBarView;
  [(UIView *)&v4 tintColorDidChange];
  if (!self->_indexColor && (*&self->_visualStyleImplements & 0x2000) != 0)
  {
    v3 = [(UIIndexBarView *)self visualStyle];
    [v3 indexColorUpdated];
  }
}

- (void)layoutSubviews
{
  if ((*&self->_visualStyleImplements & 0x40) != 0)
  {
    v2 = [(UIIndexBarView *)self visualStyle];
    [v2 layoutSubviews];
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
  v3 = [(UIControl *)self isTracking];
  v4 = 12;
  if (v3)
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
    v3 = indexColor;
  }

  else
  {
    v3 = [(UIView *)self _inheritedInteractionTintColor];
  }

  return v3;
}

+ (void)makeIndexBarView:(id *)a3 containerView:(id *)a4 forTraits:(id)a5
{
  v16 = a5;
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"UIIndexBarView.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"index != nil"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"UIIndexBarView.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"view != nil"}];

LABEL_3:
  v9 = objc_alloc_init(a1);
  v10 = +[UIIndexBarView _visualStyleForIdiom:](a1, [v16 userInterfaceIdiom]);
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 containerViewForIndexBar:v9];
  }

  else
  {
    v11 = 0;
  }

  v12 = v9;
  *a3 = v9;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  *a4 = v13;
}

+ (id)_visualStyleForIdiom:(uint64_t)a1
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

- (UIIndexBarView)initWithFrame:(CGRect)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = UIIndexBarView;
  v3 = [(UIControl *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:v3 selector:sel__largeContentViewerEnabledStatusDidChange_ name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];

  v19[0] = 0x1EFE32440;
  v19[1] = 0x1EFE324A0;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v13 = [(UIView *)v3 _registerForTraitTokenChanges:v12 withTarget:v3 action:sel__legibilityWeightOrPreferredContentSizeTraitsDidChange];

  v18 = 0x1EFE323F8;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v15 = [(UIView *)v3 _registerForTraitTokenChanges:v14 withTarget:v3 action:sel__horizontalSizeClassDidChange];

  return v3;
}

- (void)setVisualStyle:(id)a3
{
  objc_storeStrong(&self->_visualStyle, a3);
  v5 = a3;
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

- (void)setEntries:(id)a3
{
  v5 = a3;
  if (self->_entries != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_entries, a3);
    self->_cachedDisplayHighlightedIndex = -1.0;
    if (*&self->_visualStyleImplements)
    {
      v6 = [(UIIndexBarView *)self visualStyle];
      [v6 entriesUpdated];
    }

    [(UIIndexBarView *)self _updateDisplayEntries];
    v5 = v7;
  }
}

- (void)setDisplayEntries:(id)a3
{
  v5 = a3;
  if (self->_displayEntries != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_displayEntries, a3);
    v5 = v7;
    self->_cachedDisplayHighlightedIndex = -1.0;
    if ((*&self->_visualStyleImplements & 2) != 0)
    {
      v6 = [(UIIndexBarView *)self visualStyle];
      [v6 displayEntriesUpdated];

      v5 = v7;
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
        v15 = [(UIIndexBarView *)self visualStyle];
        [v15 sizeUpdated];
      }

      [(UIIndexBarView *)self _updateDisplayEntries];
    }
  }
}

- (void)setHighlightedIndex:(double)a3
{
  if (self->_highlightedIndex != a3)
  {
    self->_highlightedIndex = a3;
    self->_cachedDisplayHighlightedIndex = -1.0;
    if ((*&self->_visualStyleImplements & 8) != 0)
    {
      v4 = [(UIIndexBarView *)self visualStyle];
      [v4 highlightedIndexUpdated];
    }
  }
}

- (void)setDeflection:(double)a3
{
  if (self->_deflection != a3)
  {
    self->_deflection = a3;
    if ((*&self->_visualStyleImplements & 0x10) != 0)
    {
      v4 = [(UIIndexBarView *)self visualStyle];
      [v4 deflectionUpdated];
    }
  }
}

- (void)resetDeflection:(BOOL)a3
{
  self->_deflection = 0.0;
  if ((*&self->_visualStyleImplements & 0x20) != 0)
  {
    v4 = a3;
    v5 = [(UIIndexBarView *)self visualStyle];
    [v5 deflectionReset:v4];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UIIndexBarView *)self visualStyle];
  [v5 sizeThatFits:{width, height}];
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
  v2 = [(UIIndexBarView *)self visualStyle];
  v3 = [v2 canBecomeFocused];

  return v3;
}

- (BOOL)_defaultCanBecomeFocused
{
  v3.receiver = self;
  v3.super_class = UIIndexBarView;
  return [(UIControl *)&v3 canBecomeFocused];
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
    [(UIIndexBarView *)self _updateDisplayEntries];
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ((*&self->_visualStyleImplements & 0x80) != 0)
  {
    v7 = [(UIIndexBarView *)self visualStyle];
    [v7 drawRect:{x, y, width, height}];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIIndexBarView;
    [(UIView *)&v8 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  }
}

- (void)_legibilityWeightOrPreferredContentSizeTraitsDidChange
{
  if ((*&self->_visualStyleImplements & 0x4000) != 0)
  {
    v3 = [(UIIndexBarView *)self visualStyle];
    [v3 legibilityWeightOrPreferredContentSizeUpdated];
  }

  [(UIIndexBarView *)self _updateDisplayEntries];
}

- (void)_horizontalSizeClassDidChange
{
  if ((*&self->_visualStyleImplements & 4) != 0)
  {
    v3 = [(UIIndexBarView *)self visualStyle];
    [v3 sizeUpdated];
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

  v4 = [(UIIndexBarView *)self entries];
  v5 = [v4 count];
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
      v15 = [v14 entryIndex];

      v16 = self->_highlightedIndex;
      if (v16 <= v15)
      {
        if (v16 < v15)
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
    v20 = [v19 entryIndex];

    v21 = [(NSArray *)self->_displayEntries objectAtIndexedSubscript:v9];
    v22 = [v21 entryIndex];

    cachedDisplayHighlightedIndex = (self->_highlightedIndex - v20) / (v22 - v20) + v12;
  }

  self->_cachedDisplayHighlightedIndex = cachedDisplayHighlightedIndex;
  return cachedDisplayHighlightedIndex;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIView *)self window];
  [v6 locationInView:v8];
  self->_trackingStartLocationInWindow.x = v9;
  self->_trackingStartLocationInWindow.y = v10;

  visualStyleImplements = self->_visualStyleImplements;
  if ((visualStyleImplements & 0x100) != 0)
  {
    v12 = [(UIIndexBarView *)self visualStyle];
    [v12 trackingDidBegin];

    visualStyleImplements = self->_visualStyleImplements;
  }

  if ((visualStyleImplements & 0x800) != 0 && [(NSArray *)self->_entries count])
  {
    v13 = [(UIIndexBarView *)self visualStyle];
    [v13 updateSectionForTouch:v6 withEvent:v7];

    v14 = [(UIIndexBarView *)self visualStyle];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(UIIndexBarView *)self visualStyle];
      [v16 setExpanded:1];
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

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  visualStyleImplements = self->_visualStyleImplements;
  if ((*&visualStyleImplements & 0x800) != 0)
  {
    if ((*&visualStyleImplements & 0x200) == 0 || (-[UIView window](self, "window"), v9 = objc_claimAutoreleasedReturnValue(), [v6 locationInView:v9], v11 = v10, v13 = v12, v9, -[UIIndexBarVisualStyle trackingChangeHysteresis](self->_visualStyle, "trackingChangeHysteresis"), fabs(sqrt((self->_trackingStartLocationInWindow.x - v11) * (self->_trackingStartLocationInWindow.x - v11) + (self->_trackingStartLocationInWindow.y - v13) * (self->_trackingStartLocationInWindow.y - v13))) > v14))
    {
      v15 = [(UIIndexBarView *)self visualStyle];
      v16 = [v15 updateSectionForTouch:v6 withEvent:v7];

      if (v16)
      {
        [(UIControl *)self _sendActionsForEvents:4096 withEvent:v7];
      }
    }
  }

  return (*&visualStyleImplements >> 11) & 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  visualStyleImplements = self->_visualStyleImplements;
  if ((visualStyleImplements & 0x400) != 0)
  {
    v9 = [(UIIndexBarView *)self visualStyle];
    [v9 trackingDidEnd];

    visualStyleImplements = self->_visualStyleImplements;
  }

  if ((visualStyleImplements & 0x800) != 0)
  {
    if ((visualStyleImplements & 0x200) == 0 || (-[UIView window](self, "window"), v10 = objc_claimAutoreleasedReturnValue(), [v6 locationInView:v10], v12 = v11, v14 = v13, v10, -[UIIndexBarVisualStyle trackingChangeHysteresis](self->_visualStyle, "trackingChangeHysteresis"), fabs(sqrt((self->_trackingStartLocationInWindow.x - v12) * (self->_trackingStartLocationInWindow.x - v12) + (self->_trackingStartLocationInWindow.y - v14) * (self->_trackingStartLocationInWindow.y - v14))) > v15))
    {
      v16 = [(UIIndexBarView *)self visualStyle];
      [v16 updateSectionForTouch:v6 withEvent:v7];
    }

    v17 = [(UIIndexBarView *)self visualStyle];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [(UIIndexBarView *)self visualStyle];
      [v19 setExpanded:0];
    }

    [(UIIndexBarView *)self _updateBackgroundColor];
  }

  v20.receiver = self;
  v20.super_class = UIIndexBarView;
  [(UIControl *)&v20 endTrackingWithTouch:v6 withEvent:v7];
  [(UIIndexBarView *)self _userInteractionStopped];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4 = a3;
  visualStyleImplements = self->_visualStyleImplements;
  if ((visualStyleImplements & 0x400) != 0)
  {
    v6 = [(UIIndexBarView *)self visualStyle];
    [v6 trackingDidEnd];

    visualStyleImplements = self->_visualStyleImplements;
  }

  if ((visualStyleImplements & 0x800) != 0)
  {
    v7 = [(UIIndexBarView *)self visualStyle];
    [v7 updateSectionForTouch:0 withEvent:v4];

    [(UIIndexBarView *)self _updateBackgroundColor];
  }

  v8.receiver = self;
  v8.super_class = UIIndexBarView;
  [(UIControl *)&v8 cancelTrackingWithEvent:v4];
  [(UIIndexBarView *)self _userInteractionStopped];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIIndexBarView;
  v6 = a4;
  v7 = a3;
  [(UIControl *)&v8 touchesBegan:v7 withEvent:v6];
  [(UIIndexBarView *)self _handleTouches:v7 withEvent:v6, v8.receiver, v8.super_class];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIIndexBarView;
  v6 = a4;
  v7 = a3;
  [(UIControl *)&v8 touchesMoved:v7 withEvent:v6];
  [(UIIndexBarView *)self _handleTouches:v7 withEvent:v6, v8.receiver, v8.super_class];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIIndexBarView;
  v6 = a4;
  [(UIControl *)&v7 touchesEnded:a3 withEvent:v6];
  [(UIIndexBarView *)self _handleTouches:0 withEvent:v6, v7.receiver, v7.super_class];
}

- (void)_handleTouches:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    v17 = [v6 _firstTouchForView:self];
    [v17 locationInView:self];
    v9 = v8;
    v11 = v10;
    v12 = [(UIIndexBarView *)self visualStyle];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [(UIIndexBarView *)self visualStyle];
      v15 = [v14 _indexForEntryAtPoint:{v9, v11}];
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v16 = [(UIIndexBarView *)self visualStyle];
    [v16 handleTouch:v17 withEvent:v7 touchedEntryIndex:v15];

    v7 = v16;
  }

  else
  {
    v17 = [(UIIndexBarView *)self visualStyle];
    [v17 handleTouch:0 withEvent:v7 touchedEntryIndex:0x7FFFFFFFFFFFFFFFLL];
  }
}

+ (void)registerVisualStyle:(Class)a3 forIdiom:(int64_t)a4
{
  if (!__IdiomsToVisualStyles)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = __IdiomsToVisualStyles;
    __IdiomsToVisualStyles = v8;
  }

  if (([(objc_class *)a3 conformsToProtocol:&unk_1F00F8540]& 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromClass(a3);
    [v11 handleFailureInMethod:a2 object:a1 file:@"UIIndexBarView.m" lineNumber:659 description:{@"visualStyle of type %@ does not conform to UIIndexBarVisualStyle.", v12}];
  }

  v10 = __IdiomsToVisualStyles;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v10 setObject:a3 forKey:v13];
}

+ (id)visualStyleForIndexBarView:(id)a3
{
  v4 = a3;
  v5 = [v4 traitCollection];
  v6 = +[UIIndexBarView _visualStyleForIdiom:](a1, [v5 userInterfaceIdiom]);

  v7 = [[v6 alloc] initWithView:v4];

  return v7;
}

- (void)setHighlightStyle:(int64_t)a3
{
  if (self->_highlightStyle != a3)
  {
    self->_highlightStyle = a3;
    if ((*&self->_visualStyleImplements & 0x1000) != 0)
    {
      v4 = [(UIIndexBarView *)self visualStyle];
      [v4 highlightStyleUpdated];
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

- (void)setIndexColor:(id)a3
{
  v5 = a3;
  if (self->_indexColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_indexColor, a3);
    v5 = v7;
    if ((*&self->_visualStyleImplements & 0x2000) != 0)
    {
      v6 = [(UIIndexBarView *)self visualStyle];
      [v6 indexColorUpdated];

      v5 = v7;
    }
  }
}

- (void)setTrackingBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_trackingBackgroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_trackingBackgroundColor, a3);
    v6 = [(UIControl *)self isTracking];
    v5 = v7;
    if (v6)
    {
      [(UIIndexBarView *)self _updateBackgroundColor];
      v5 = v7;
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_nonTrackingBackgroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_nonTrackingBackgroundColor, a3);
    v6 = [(UIControl *)self isTracking];
    v5 = v7;
    if (!v6)
    {
      [(UIIndexBarView *)self _updateBackgroundColor];
      v5 = v7;
    }
  }
}

- (void)_userInteractionStarted
{
  v3 = [(UIIndexBarView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIIndexBarView *)self delegate];
    [v5 userInteractionStartedWithIndexBarView:self];
  }

  selectionFeedbackGenerator = self->_selectionFeedbackGenerator;

  [(UISelectionFeedbackGenerator *)selectionFeedbackGenerator userInteractionStarted];
}

- (void)_userInteractionStopped
{
  v3 = [(UIIndexBarView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIIndexBarView *)self delegate];
    [v5 userInteractionStoppedWithIndexBarView:self];
  }

  selectionFeedbackGenerator = self->_selectionFeedbackGenerator;

  [(UISelectionFeedbackGenerator *)selectionFeedbackGenerator userInteractionEnded];
}

- (BOOL)_didSelectEntry:(id)a3 atIndex:(int64_t)a4 location:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = [(UIIndexBarView *)self _selectEntry:a3 atIndex:a4];
  if (v8)
  {
    [(UISelectionFeedbackGenerator *)self->_selectionFeedbackGenerator selectionChangedAtLocation:x, y];
  }

  return v8;
}

- (BOOL)_selectEntry:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIIndexBarView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UIIndexBarView *)self delegate];
    v10 = [v9 indexBarView:self didSelectEntry:v6 atIndex:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_accessibilityHUDGestureManager:(id)a3 HUDItemForPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(UIIndexBarView *)self visualStyle];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) != 0 && (-[UIIndexBarView visualStyle](self, "visualStyle"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 _accessibility_indexForEntryAtPoint:{x, y}], v9, v10 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = [(UIIndexBarView *)self entries];
    v13 = [v12 objectAtIndex:v10];

    v14 = [UIAccessibilityHUDItem alloc];
    v15 = [v13 title];
    v16 = [v13 image];
    v11 = [(UIAccessibilityHUDItem *)v14 initWithTitle:v15 image:v16 imageInsets:0.0, 0.0, 0.0, 0.0];
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