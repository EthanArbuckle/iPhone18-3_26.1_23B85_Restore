@interface STBarView
- (BOOL)isDarkened;
- (STBarView)initWithDataPoint:(id)point useVibrancy:(BOOL)vibrancy;
- (void)setColor:(id)color;
- (void)setDarkened:(BOOL)darkened;
- (void)setDataPoint:(id)point;
- (void)setUpSectionHeightConstraints;
- (void)setUpSections;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation STBarView

- (STBarView)initWithDataPoint:(id)point useVibrancy:(BOOL)vibrancy
{
  pointCopy = point;
  v20.receiver = self;
  v20.super_class = STBarView;
  v8 = [(STBarView *)&v20 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    v8->_useVibrancy = vibrancy;
    objc_storeStrong(&v8->_dataPoint, point);
    [(STBarView *)v9 setUpSections];
    v10 = objc_opt_new();
    darkenedView = v9->_darkenedView;
    v9->_darkenedView = v10;

    [(UIView *)v9->_darkenedView setTranslatesAutoresizingMaskIntoConstraints:0];
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(UIView *)v9->_darkenedView setBackgroundColor:systemBlackColor];

    [(UIView *)v9->_darkenedView setAlpha:0.15];
    [(UIView *)v9->_darkenedView setHidden:1];
    [(STBarView *)v9 addSubview:v9->_darkenedView];
    v13 = _NSDictionaryOfVariableBindings(&cfstr_Darkenedview.isa, v9->_darkenedView, 0);
    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_darkenedView]|" options:0 metrics:0 views:v13];
    v15 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[_darkenedView]|" options:0 metrics:0 views:v13];
    v16 = MEMORY[0x277CCAAD0];
    v17 = [v14 arrayByAddingObjectsFromArray:v15];
    [v16 activateConstraints:v17];

    [(STBarView *)v9 _setContinuousCornerRadius:2.0];
    layer = [(STBarView *)v9 layer];
    [layer setMaskedCorners:3];

    [(STBarView *)v9 setClipsToBounds:1];
  }

  return v9;
}

- (void)traitCollectionDidChange:(id)change
{
  v21 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v19.receiver = self;
  v19.super_class = STBarView;
  [(STBarView *)&v19 traitCollectionDidChange:changeCopy];
  if ([(STBarView *)self useVibrancy])
  {
    if (!changeCopy || (v5 = [changeCopy userInterfaceStyle], -[STBarView traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceStyle"), v6, v5 != v7))
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      sectionViews = [(STBarView *)self sectionViews];
      v9 = [sectionViews countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(sectionViews);
            }

            v13 = *(*(&v15 + 1) + 8 * i);
            backgroundColor = [v13 backgroundColor];
            [STUsageColors updateVibrancyStylingForView:v13 withUsageColor:backgroundColor];
          }

          v10 = [sectionViews countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)setDataPoint:(id)point
{
  pointCopy = point;
  dataPoint = self->_dataPoint;
  if (dataPoint != pointCopy)
  {
    v11 = pointCopy;
    segments = [(STUsageReportGraphDataPoint *)dataPoint segments];
    v8 = [segments count];
    segments2 = [(STUsageReportGraphDataPoint *)v11 segments];
    v10 = [segments2 count];

    objc_storeStrong(&self->_dataPoint, point);
    if (v8 == v10)
    {
      dataPoint = [(STBarView *)self setUpSectionHeightConstraints];
    }

    else
    {
      dataPoint = [(STBarView *)self setUpSections];
    }

    pointCopy = v11;
  }

  MEMORY[0x2821F96F8](dataPoint, pointCopy);
}

- (void)setColor:(id)color
{
  colorCopy = color;
  color = self->_color;
  if (color != colorCopy && ([(UIColor *)color isEqual:colorCopy]& 1) == 0)
  {
    v6 = [(UIColor *)colorCopy copy];
    v7 = self->_color;
    self->_color = v6;

    dataPoint = [(STBarView *)self dataPoint];
    segments = [dataPoint segments];

    sectionViews = [(STBarView *)self sectionViews];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __22__STBarView_setColor___block_invoke;
    v12[3] = &unk_279B7CE18;
    v13 = colorCopy;
    v14 = segments;
    selfCopy = self;
    v11 = segments;
    [sectionViews enumerateObjectsUsingBlock:v12];
  }
}

void __22__STBarView_setColor___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    v6 = [v7 color];
  }

  [v8 setBackgroundColor:v6];
  if ([*(a1 + 48) useVibrancy])
  {
    [STUsageColors updateVibrancyStylingForView:v8 withUsageColor:v6];
  }
}

- (BOOL)isDarkened
{
  darkenedView = [(STBarView *)self darkenedView];
  isHidden = [darkenedView isHidden];

  return isHidden ^ 1;
}

- (void)setDarkened:(BOOL)darkened
{
  darkenedCopy = darkened;
  darkenedView = [(STBarView *)self darkenedView];
  v6 = darkenedView;
  if (darkenedCopy)
  {
    [(STBarView *)self bringSubviewToFront:darkenedView];
    darkenedView = v6;
  }

  [darkenedView setHidden:!darkenedCopy];
}

- (void)setUpSections
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  sectionViews = [(STBarView *)self sectionViews];
  v4 = [sectionViews countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v4)
  {
    v5 = *v37;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(sectionViews);
        }

        [*(*(&v36 + 1) + 8 * v6++) removeFromSuperview];
      }

      while (v4 != v6);
      v4 = [sectionViews countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v4);
  }

  dataPoint = [(STBarView *)self dataPoint];
  segments = [dataPoint segments];

  v9 = [segments count];
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v9];
  if (v9)
  {
    v11 = v9 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
  heightAnchor = [(STBarView *)self heightAnchor];
  color = [(STBarView *)self color];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __26__STBarView_setUpSections__block_invoke;
  v22[3] = &unk_279B7CE40;
  v15 = color;
  v23 = v15;
  selfCopy = self;
  v28 = &v30;
  v29 = v9;
  v16 = heightAnchor;
  v25 = v16;
  v17 = v12;
  v26 = v17;
  v18 = v10;
  v27 = v18;
  [segments enumerateObjectsUsingBlock:v22];
  topAnchor = [v31[5] topAnchor];
  topAnchor2 = [(STBarView *)self topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v21 setActive:1];

  [(STBarView *)self setSectionViews:v18];
  [(STBarView *)self setSectionHeightConstraints:v17];

  _Block_object_dispose(&v30, 8);
}

void __26__STBarView_setUpSections__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v31 = a2;
  v5 = objc_opt_new();
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [v31 color];
  }

  v8 = v7;
  [v5 setBackgroundColor:v7];
  if ([*(a1 + 40) useVibrancy])
  {
    [STUsageColors updateVibrancyStylingForView:v5 withUsageColor:v8];
  }

  [*(a1 + 40) addSubview:v5];
  v9 = [v5 leadingAnchor];
  v10 = [*(a1 + 40) leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [v5 trailingAnchor];
  v13 = [*(a1 + 40) trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = *(*(*(a1 + 72) + 8) + 40);
  v16 = [v5 bottomAnchor];
  if (v15)
  {
    [*(*(*(a1 + 72) + 8) + 40) topAnchor];
  }

  else
  {
    [*(a1 + 40) bottomAnchor];
  }
  v17 = ;
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  if (*(a1 + 80) - 1 > a3)
  {
    [v31 amountAsPercentageOfDataPointTotal];
    v20 = v19;
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23 = v21;
    v24 = v5;
    v25 = [v24 heightAnchor];
    v26 = [v25 constraintEqualToAnchor:v23 multiplier:v20];

    LODWORD(v27) = 1144750080;
    [v26 setPriority:v27];
    [v26 setActive:1];
    [v22 addObject:v26];
  }

  [*(a1 + 64) addObject:v5];
  v28 = *(*(a1 + 72) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v5;
  v30 = v5;
}

- (void)setUpSectionHeightConstraints
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  sectionHeightConstraints = [(STBarView *)self sectionHeightConstraints];
  v4 = [sectionHeightConstraints countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(sectionHeightConstraints);
        }

        [*(*(&v29 + 1) + 8 * v7++) setActive:0];
      }

      while (v5 != v7);
      v5 = [sectionHeightConstraints countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  dataPoint = [(STBarView *)self dataPoint];
  segments = [dataPoint segments];

  v10 = [segments count];
  sectionViews = [(STBarView *)self sectionViews];
  heightAnchor = [(STBarView *)self heightAnchor];
  color = [(STBarView *)self color];
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __42__STBarView_setUpSectionHeightConstraints__block_invoke;
  v22 = &unk_279B7CE68;
  v23 = sectionViews;
  v24 = color;
  selfCopy = self;
  v26 = heightAnchor;
  v27 = v14;
  v28 = v10;
  v15 = v14;
  v16 = heightAnchor;
  v17 = color;
  v18 = sectionViews;
  [segments enumerateObjectsUsingBlock:&v19];
  [(STBarView *)self setSectionHeightConstraints:v15, v19, v20, v21, v22];
}

void __42__STBarView_setUpSectionHeightConstraints__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v17 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [v17 color];
  }

  v8 = v7;
  [v5 setBackgroundColor:v7];
  if ([*(a1 + 48) useVibrancy])
  {
    [STUsageColors updateVibrancyStylingForView:v5 withUsageColor:v8];
  }

  if (*(a1 + 72) - 1 > a3)
  {
    [v17 amountAsPercentageOfDataPointTotal];
    v10 = v9;
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = v11;
    v14 = [v5 heightAnchor];
    v15 = [v14 constraintEqualToAnchor:v13 multiplier:v10];

    LODWORD(v16) = 1144750080;
    [v15 setPriority:v16];
    [v15 setActive:1];
    [v12 addObject:v15];
  }
}

@end