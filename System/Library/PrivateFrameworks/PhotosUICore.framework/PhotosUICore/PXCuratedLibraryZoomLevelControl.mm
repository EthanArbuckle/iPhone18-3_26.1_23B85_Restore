@interface PXCuratedLibraryZoomLevelControl
+ (id)_allPotentialZoomLevelIdentifiers;
+ (id)_enabledZoomLevelIdentifiersForViewModel:(id)a3;
+ (id)_zoomLevelIdentifiersForViewModel:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXCuratedLibraryZoomLevelControl)initWithCoder:(id)a3;
- (PXCuratedLibraryZoomLevelControl)initWithFrame:(CGRect)a3;
- (PXCuratedLibraryZoomLevelControl)initWithViewModel:(id)a3 styleGuide:(id)a4;
- (PXCuratedLibraryZoomLevelControlDelegate)delegate;
- (int64_t)zoomLevelDisplayedBeforeZoomLevel:(int64_t)a3;
- (void)_handleSegmentedControlAction:(id)a3;
- (void)_updateSegmentedControl;
- (void)_updateSegmentedControlEnabled;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setEnabledZoomLevelIdentifiers:(id)a3;
- (void)setSelectedZoomLevel:(int64_t)a3;
- (void)setShrinkLevel:(int64_t)a3;
@end

@implementation PXCuratedLibraryZoomLevelControl

+ (id)_allPotentialZoomLevelIdentifiers
{
  v2 = +[PXCuratedLibrarySettings sharedInstance];
  v3 = [v2 enableTabBarAccessoryControls];

  if (v3)
  {
    return &unk_1F190FC28;
  }

  else
  {
    return &unk_1F190FC40;
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PXCuratedLibraryZoomLevelControl;
  [(PXCuratedLibraryZoomLevelControl *)&v15 layoutSubviews];
  [(PXUpdater *)self->_updater updateIfNeeded];
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  v4 = [v3 enableTabBarAccessoryControls];

  [(PXCuratedLibraryZoomLevelControl *)self bounds];
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if (v4)
  {
    [(PXCuratedLibraryZoomLevelSegmentedControl *)self->_segmentedControl setBounds:v5, v6, v7, v8];
    [(PXCuratedLibraryZoomLevelControl *)self bounds];
    PXRectGetCenter();
  }

  for (i = 0; ; ++i)
  {
    [(PXCuratedLibraryZoomLevelControl *)self setShrinkLevel:i];
    v16.origin.x = v9;
    v16.origin.y = v10;
    v16.size.width = v11;
    v16.size.height = v12;
    if (CGRectGetWidth(v16) - self->_intrinsicSize.width >= 0.0 || i == 14)
    {
      [(UIVisualEffectView *)self->_backgroundEffectView setBounds:v9, v10, v11, v12];
      PXRectGetCenter();
    }
  }
}

- (void)_updateSegmentedControl
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  v4 = [v3 enableTabBarAccessoryControls];

  if (v4)
  {
    v5 = [(PXCuratedLibraryZoomLevelControl *)self zoomLevelIdentifiers];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __59__PXCuratedLibraryZoomLevelControl__updateSegmentedControl__block_invoke;
    v51[3] = &unk_1E773F4C8;
    v51[4] = self;
    [v5 enumerateObjectsUsingBlock:v51];
    [(PXCuratedLibraryZoomLevelSegmentedControl *)self->_segmentedControl setAdjustsForContentSizeCategory:1];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXCuratedLibraryZoomLevelControl selectedZoomLevel](self, "selectedZoomLevel")}];
    v7 = [v5 indexOfObject:v6];

    if ((v7 & 0x8000000000000000) != 0 || v7 >= [(PXCuratedLibraryZoomLevelSegmentedControl *)self->_segmentedControl numberOfSegments])
    {
      PXAssertGetLog();
    }

    [(PXCuratedLibraryZoomLevelSegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:v7];
    goto LABEL_27;
  }

  v8 = [(PXCuratedLibraryZoomLevelControl *)self shrinkLevel];
  v9 = v8;
  if (v8 > 1)
  {
    if (v8 == 2 || v8 == 3)
    {
      v10 = MEMORY[0x1E69DDD78];
      goto LABEL_14;
    }

    if (v8 == 4)
    {
      v10 = MEMORY[0x1E69DDD28];
LABEL_14:
      v11 = *v10;
      v12 = 1;
      goto LABEL_15;
    }

LABEL_28:
    v11 = *MEMORY[0x1E69DDD28];
    v13 = 13.0 - (v9 - 4);
    v12 = 1;
    goto LABEL_16;
  }

  if (v8 > 1)
  {
    goto LABEL_28;
  }

  v11 = *MEMORY[0x1E69DDD78];
  v12 = 0;
LABEL_15:
  v13 = -1.0;
LABEL_16:
  v14 = [(PXCuratedLibraryZoomLevelControl *)self viewModel];
  v15 = [v14 configuration];
  v16 = [v15 secondaryToolbarStyle];

  if (v16 == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  v44 = v17;
  v18 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:v11 maxContentSizeCategory:*MEMORY[0x1E69DDC58] withSymbolicTraits:2];
  v19 = v18;
  v46 = v11;
  if (v13 > 0.0)
  {
    v20 = [v18 fontWithSize:v13];

    v19 = v20;
  }

  v21 = [(PXCuratedLibraryZoomLevelControl *)self styleGuide];
  v22 = [(PXCuratedLibraryZoomLevelControl *)self viewModel];
  v23 = [v21 zoomLevelControlTextColorOverLegibilityGradient:{objc_msgSend(v22, "secondaryToolbarLegibilityGradientIsVisible")}];

  v24 = [MEMORY[0x1E69DC888] systemWhiteColor];
  v25 = [v23 colorWithAlphaComponent:0.3];
  segmentedControl = self->_segmentedControl;
  v28 = *MEMORY[0x1E69DB650];
  v56[0] = *MEMORY[0x1E69DB648];
  v27 = v56[0];
  v56[1] = v28;
  v57[0] = v19;
  v57[1] = v23;
  v45 = v23;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
  [(PXCuratedLibraryZoomLevelSegmentedControl *)segmentedControl setTitleTextAttributes:v29 forState:0];

  v30 = self->_segmentedControl;
  v54[0] = v27;
  v54[1] = v28;
  v55[0] = v19;
  v55[1] = v24;
  v47 = v24;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];
  [(PXCuratedLibraryZoomLevelSegmentedControl *)v30 setTitleTextAttributes:v31 forState:4];

  v32 = self->_segmentedControl;
  v52[0] = v27;
  v52[1] = v28;
  v53[0] = v19;
  v53[1] = v25;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  [(PXCuratedLibraryZoomLevelSegmentedControl *)v32 setTitleTextAttributes:v33 forState:2];

  v34 = *(MEMORY[0x1E69DDCE0] + 16);
  *&self->_padding.top = *MEMORY[0x1E69DDCE0];
  *&self->_padding.bottom = v34;
  v35 = [(PXCuratedLibraryZoomLevelControl *)self styleGuide];
  [v35 lateralMargin];
  v37 = v36 < 20.0;
  v38 = 14.0;
  if (!v37)
  {
    v38 = 16.0;
  }

  self->_padding.right = v38;
  self->_padding.left = v38;

  self->_minimumInterTextSpacing = 16.0;
  self->_intrinsicSize = *MEMORY[0x1E695F060];
  v39 = [(PXCuratedLibraryZoomLevelControl *)self zoomLevelIdentifiers];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __59__PXCuratedLibraryZoomLevelControl__updateSegmentedControl__block_invoke_219;
  v48[3] = &unk_1E77311C8;
  v50 = v44;
  v48[4] = self;
  v40 = v19;
  v49 = v40;
  [v39 enumerateObjectsUsingBlock:v48];
  v41.f64[0] = self->_padding.left + self->_padding.right - self->_minimumInterTextSpacing;
  v41.f64[1] = self->_padding.top + self->_padding.bottom;
  self->_intrinsicSize = vaddq_f64(self->_intrinsicSize, v41);
  v42 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXCuratedLibraryZoomLevelControl selectedZoomLevel](self, "selectedZoomLevel")}];
  v43 = [v39 indexOfObject:v42];

  if ((v43 & 0x8000000000000000) != 0 || v43 >= [(PXCuratedLibraryZoomLevelSegmentedControl *)self->_segmentedControl numberOfSegments])
  {
    PXAssertGetLog();
  }

  [(PXCuratedLibraryZoomLevelSegmentedControl *)self->_segmentedControl setSelectedSegmentIndex:v43];
  v5 = v46;

LABEL_27:
}

void __59__PXCuratedLibraryZoomLevelControl__updateSegmentedControl__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = PXCuratedLibraryZoomLevelLocalizedTitle([a2 unsignedIntegerValue], 1);
  [*(*(a1 + 32) + 488) setTitle:v5 forSegmentAtIndex:a3];
}

- (PXCuratedLibraryZoomLevelControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PXViewModelObservationContext_37550 == a5)
  {
    v19 = v9;
    if ((a4 & 0x2004) == 0)
    {
      goto LABEL_14;
    }

    v10 = [(PXCuratedLibraryZoomLevelControl *)self viewModel];
    if ([v10 zoomLevelTransitionPhase])
    {
      v11 = [(PXCuratedLibraryZoomLevelControl *)self viewModel];
      v12 = [v11 zoomLevelTransitionPhase];

      if (v12 != 2)
      {
LABEL_14:
        if ((a4 & 0x10000) != 0)
        {
          v14 = objc_opt_class();
          v15 = [(PXCuratedLibraryZoomLevelControl *)self viewModel];
          v16 = [v14 _enabledZoomLevelIdentifiersForViewModel:v15];
          [(PXCuratedLibraryZoomLevelControl *)self setEnabledZoomLevelIdentifiers:v16];
        }

        v9 = v19;
        if ((a4 & 0x400000000) != 0)
        {
          goto LABEL_4;
        }

        goto LABEL_5;
      }
    }

    else
    {
    }

    v13 = [(PXCuratedLibraryZoomLevelControl *)self viewModel];
    -[PXCuratedLibraryZoomLevelControl setSelectedZoomLevel:](self, "setSelectedZoomLevel:", [v13 zoomLevel]);

    goto LABEL_14;
  }

  if (PXCuratedLibraryStyleGuideObservationContext != a5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryZoomLevelControl.m" lineNumber:390 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((a4 & 4) != 0)
  {
LABEL_4:
    v18 = v9;
    [(PXCuratedLibraryZoomLevelControl *)self _invalidateSegmentedControl];
    v9 = v18;
  }

LABEL_5:
}

- (void)_handleSegmentedControlAction:(id)a3
{
  v4 = [(PXCuratedLibraryZoomLevelControl *)self zoomLevelIdentifiers];
  v5 = [v4 objectAtIndexedSubscript:{-[PXCuratedLibraryZoomLevelSegmentedControl selectedSegmentIndex](self->_segmentedControl, "selectedSegmentIndex")}];
  v6 = [v5 integerValue];

  if (v6 == [(PXCuratedLibraryZoomLevelControl *)self selectedZoomLevel])
  {
    if ([(PXCuratedLibraryZoomLevelSegmentedControl *)self->_segmentedControl lastTouchRemainedOnSelectedSegment])
    {
      v7 = [(PXCuratedLibraryZoomLevelControl *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v10 = [(PXCuratedLibraryZoomLevelControl *)self delegate];
        [v10 zoomLevelControl:self didTapOnAlreadySelectedZoomLevel:v6];
      }
    }
  }

  else
  {
    v9 = [(PXCuratedLibraryZoomLevelControl *)self viewModel];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__PXCuratedLibraryZoomLevelControl__handleSegmentedControlAction___block_invoke;
    v11[3] = &__block_descriptor_40_e43_v16__0___PXMutablePhotosLibraryViewModel__8l;
    v11[4] = v6;
    [v9 performChanges:v11];
  }
}

- (void)_updateSegmentedControlEnabled
{
  v9 = [(PXCuratedLibraryZoomLevelControl *)self zoomLevelIdentifiers];
  v3 = [(PXCuratedLibraryZoomLevelControl *)self enabledZoomLevelIdentifiers];
  v4 = [v9 count];
  if (v4 >= 1)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [v9 objectAtIndexedSubscript:i];
      v8 = [v3 containsObject:v7];

      [(PXCuratedLibraryZoomLevelSegmentedControl *)self->_segmentedControl setEnabled:v8 forSegmentAtIndex:i];
    }
  }
}

void __59__PXCuratedLibraryZoomLevelControl__updateSegmentedControl__block_invoke_219(uint64_t a1, void *a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = PXCuratedLibraryZoomLevelLocalizedTitle([a2 unsignedIntegerValue], *(a1 + 48));
  [*(*(a1 + 32) + 488) setTitle:v5 forSegmentAtIndex:a3];
  v6 = *(a1 + 40);
  v15 = *MEMORY[0x1E69DB648];
  v16[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v5 sizeWithAttributes:v7];
  v9 = v8;
  v11 = v10;

  v12 = ceil(v9);
  v13 = (*(*(a1 + 32) + 448) + 16 * a3);
  *v13 = v12;
  v13[1] = v11;
  *(*(a1 + 32) + 464) = v12 + *(*(a1 + 32) + 456) + *(*(a1 + 32) + 464);
  v14 = *(*(a1 + 32) + 472);
  if (v14 < v11)
  {
    v14 = v11;
  }

  *(*(a1 + 32) + 472) = v14;
}

- (int64_t)zoomLevelDisplayedBeforeZoomLevel:(int64_t)a3
{
  v4 = [(PXCuratedLibraryZoomLevelControl *)self zoomLevelIdentifiers];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 indexOfObject:v5];

  if ((v6 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v8 = 0;
  }

  else
  {
    v7 = [v4 objectAtIndexedSubscript:?];
    v8 = [v7 integerValue];
  }

  return v8;
}

- (void)setSelectedZoomLevel:(int64_t)a3
{
  if (self->_selectedZoomLevel != a3)
  {
    self->_selectedZoomLevel = a3;
    [(PXCuratedLibraryZoomLevelControl *)self _invalidateSegmentedControl];
  }
}

- (void)setEnabledZoomLevelIdentifiers:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_enabledZoomLevelIdentifiers != v4)
  {
    v11 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v11;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v11 copy];
      enabledZoomLevelIdentifiers = self->_enabledZoomLevelIdentifiers;
      self->_enabledZoomLevelIdentifiers = v7;

      v9 = +[PXCuratedLibrarySettings sharedInstance];
      v10 = [v9 enableTabBarAccessoryControls];

      if (v10)
      {
        [(PXCuratedLibraryZoomLevelControl *)self _updateSegmentedControlEnabled];
      }

      else
      {
        [(PXCuratedLibraryZoomLevelControl *)self _invalidateSegmentedControl];
      }

      v5 = v11;
    }
  }
}

- (void)setShrinkLevel:(int64_t)a3
{
  v5 = +[PXCuratedLibrarySettings sharedInstance];
  v6 = [v5 enableTabBarAccessoryControls];

  if ((v6 & 1) == 0 && self->_shrinkLevel != a3)
  {
    self->_shrinkLevel = a3;

    [(PXCuratedLibraryZoomLevelControl *)self _updateSegmentedControl];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = +[PXCuratedLibrarySettings sharedInstance];
  v7 = [v6 enableTabBarAccessoryControls];

  if (v7)
  {
    [(PXCuratedLibraryZoomLevelSegmentedControl *)self->_segmentedControl sizeThatFits:width, height];
  }

  else
  {
    [(PXUpdater *)self->_updater updateIfNeeded];
    v8 = self->_intrinsicSize.width;
    v9 = self->_intrinsicSize.height;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)dealloc
{
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  v4 = [v3 enableTabBarAccessoryControls];

  if ((v4 & 1) == 0)
  {
    free(self->_textSizes);
  }

  v5.receiver = self;
  v5.super_class = PXCuratedLibraryZoomLevelControl;
  [(PXCuratedLibraryZoomLevelControl *)&v5 dealloc];
}

- (PXCuratedLibraryZoomLevelControl)initWithViewModel:(id)a3 styleGuide:(id)a4
{
  v7 = a3;
  v8 = a4;
  v41.receiver = self;
  v41.super_class = PXCuratedLibraryZoomLevelControl;
  v9 = [(PXCuratedLibraryZoomLevelControl *)&v41 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v9)
  {
    v10 = +[PXCuratedLibrarySettings sharedInstance];
    v11 = [v10 enableTabBarAccessoryControls];

    if ((v11 & 1) == 0)
    {
      v12 = objc_alloc(MEMORY[0x1E69DD298]);
      v13 = [MEMORY[0x1E69DC730] effectWithStyle:1202];
      v14 = [v12 initWithEffect:v13];
      backgroundEffectView = v9->_backgroundEffectView;
      v9->_backgroundEffectView = v14;

      v16 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      v17 = [(UIVisualEffectView *)v9->_backgroundEffectView contentView];
      [v17 setBackgroundColor:v16];

      [(PXCuratedLibraryZoomLevelControl *)v9 addSubview:v9->_backgroundEffectView];
      v18 = [objc_opt_class() _allPotentialZoomLevelIdentifiers];
      v9->_textSizes = malloc_type_calloc([v18 count], 0x10uLL, 0x1000040451B5BE8uLL);
    }

    v9->_selectedZoomLevel = [v7 zoomLevel];
    v19 = [objc_opt_class() _zoomLevelIdentifiersForViewModel:v7];
    zoomLevelIdentifiers = v9->_zoomLevelIdentifiers;
    v9->_zoomLevelIdentifiers = v19;

    v21 = [objc_opt_class() _enabledZoomLevelIdentifiersForViewModel:v7];
    enabledZoomLevelIdentifiers = v9->_enabledZoomLevelIdentifiers;
    v9->_enabledZoomLevelIdentifiers = v21;

    v23 = objc_alloc_init(PXCuratedLibraryZoomLevelSegmentedControl);
    segmentedControl = v9->_segmentedControl;
    v9->_segmentedControl = v23;

    [(PXCuratedLibraryZoomLevelSegmentedControl *)v9->_segmentedControl addTarget:v9 action:sel__handleSegmentedControlAction_ forControlEvents:0x2000];
    v25 = [(NSArray *)v9->_zoomLevelIdentifiers count];
    if (v25 >= 1)
    {
      v26 = v25;
      for (i = 0; i != v26; ++i)
      {
        [(PXCuratedLibraryZoomLevelSegmentedControl *)v9->_segmentedControl insertSegmentWithTitle:&stru_1F1741150 atIndex:i animated:0];
      }
    }

    v28 = +[PXCuratedLibrarySettings sharedInstance];
    v29 = [v28 enableTabBarAccessoryControls];

    if (v29)
    {
      [(PXCuratedLibraryZoomLevelSegmentedControl *)v9->_segmentedControl _setUseGlass:1];
    }

    [(PXCuratedLibraryZoomLevelControl *)v9 addSubview:v9->_segmentedControl];
    objc_storeStrong(&v9->_viewModel, a3);
    [(PXCuratedLibraryViewModel *)v9->_viewModel registerChangeObserver:v9 context:PXViewModelObservationContext_37550];
    v30 = +[PXCuratedLibrarySettings sharedInstance];
    v31 = [v30 enableTabBarAccessoryControls];

    if ((v31 & 1) == 0)
    {
      objc_storeStrong(&v9->_styleGuide, a4);
      [(PXCuratedLibraryStyleGuide *)v9->_styleGuide registerChangeObserver:v9 context:PXCuratedLibraryStyleGuideObservationContext];
    }

    v32 = [[off_1E7721940 alloc] initWithTarget:v9 needsUpdateSelector:sel_setNeedsLayout];
    updater = v9->_updater;
    v9->_updater = v32;

    [(PXUpdater *)v9->_updater addUpdateSelector:sel__updateSegmentedControl needsUpdate:1];
    v34 = [MEMORY[0x1E696AD88] defaultCenter];
    [v34 addObserver:v9 selector:sel__handleContentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v35 = +[PXCuratedLibrarySettings sharedInstance];
    v36 = [v35 enableTabBarAccessoryControls];

    if ((v36 & 1) == 0)
    {
      v37 = [(PXCuratedLibraryZoomLevelControl *)v9 layer];
      [v37 setAllowsGroupOpacity:0];
    }

    v38 = +[PXCuratedLibrarySettings sharedInstance];
    v39 = [v38 enableTabBarAccessoryControls];

    if (v39)
    {
      [(PXCuratedLibraryZoomLevelControl *)v9 _updateSegmentedControlEnabled];
    }
  }

  return v9;
}

- (PXCuratedLibraryZoomLevelControl)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryZoomLevelControl.m" lineNumber:60 description:{@"%s is not available as initializer", "-[PXCuratedLibraryZoomLevelControl initWithFrame:]"}];

  abort();
}

- (PXCuratedLibraryZoomLevelControl)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryZoomLevelControl.m" lineNumber:56 description:{@"%s is not available as initializer", "-[PXCuratedLibraryZoomLevelControl initWithCoder:]"}];

  abort();
}

+ (id)_enabledZoomLevelIdentifiersForViewModel:(id)a3
{
  v4 = a3;
  v5 = [v4 allowedActions];
  v6 = [v5 containsObject:@"PXCuratedLibraryActionNavigateToYearsMonthsOrDays"];

  if (v6)
  {
    v7 = [a1 _zoomLevelIdentifiersForViewModel:v4];
  }

  else
  {
    v8 = [v4 configuration];

    v9 = [v8 isZoomLevelEnabled:4];
    v10 = MEMORY[0x1E695E0F0];
    if (v9)
    {
      v10 = &unk_1F190FC58;
    }

    v7 = v10;
    v4 = v8;
  }

  return v7;
}

+ (id)_zoomLevelIdentifiersForViewModel:(id)a3
{
  v4 = [a3 configuration];
  [a1 _allPotentialZoomLevelIdentifiers];
  objc_claimAutoreleasedReturnValue();
  v5 = v4;
  PXFilter();
}

uint64_t __70__PXCuratedLibraryZoomLevelControl__zoomLevelIdentifiersForViewModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);

  return [v4 isZoomLevelEnabled:v3];
}

@end