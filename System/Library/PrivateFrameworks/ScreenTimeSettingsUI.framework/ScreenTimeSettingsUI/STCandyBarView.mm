@interface STCandyBarView
- (CGSize)intrinsicContentSize;
- (STCandyBarView)initWithVibrancy:(BOOL)a3;
- (id)capImageWithHeight:(double)a3 leadingLineCap:(int)a4 trailingLineCap:(int)a5;
- (void)layoutSubviews;
- (void)setUsageItems:(id)a3;
- (void)setUsageItems:(id)a3 animated:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
- (void)updateSectionViewImages;
@end

@implementation STCandyBarView

- (STCandyBarView)initWithVibrancy:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = STCandyBarView;
  result = [(STCandyBarView *)&v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  result->_useVibrancy = a3;
  return result;
}

- (id)capImageWithHeight:(double)a3 leadingLineCap:(int)a4 trailingLineCap:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  if (capImageWithHeight_leadingLineCap_trailingLineCap__onceToken != -1)
  {
    [STCandyBarView capImageWithHeight:leadingLineCap:trailingLineCap:];
  }

  v9 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[STCandyBarView semanticContentAttribute](self, "semanticContentAttribute")}];
  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v14 = [v10 stringWithFormat:@"%@-%@-%@", v11, v12, v13];

  v15 = [capImageWithHeight_leadingLineCap_trailingLineCap__capImages objectForKey:v14];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v17 = v9 == 1;
    v18 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{a3 + a3, a3}];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__STCandyBarView_capImageWithHeight_leadingLineCap_trailingLineCap___block_invoke_2;
    v23[3] = &__block_descriptor_73_e40_v16__0__UIGraphicsImageRendererContext_8l;
    *&v23[4] = a3;
    *&v23[5] = a3 + a3;
    *&v23[6] = a3;
    *&v23[7] = a3 * 0.5;
    v26 = v17;
    v24 = v5;
    v25 = v6;
    v19 = [v18 imageWithActions:v23];
    v20 = [v19 imageWithRenderingMode:2];

    v21 = [v20 resizableImageWithCapInsets:1 resizingMode:{0.0, a3 * 0.5, 0.0, a3 * 0.5}];

    [capImageWithHeight_leadingLineCap_trailingLineCap__capImages setObject:v21 forKey:v14];
    v16 = v21;
  }

  return v16;
}

uint64_t __68__STCandyBarView_capImageWithHeight_leadingLineCap_trailingLineCap___block_invoke()
{
  v0 = objc_opt_new();
  v1 = capImageWithHeight_leadingLineCap_trailingLineCap__capImages;
  capImageWithHeight_leadingLineCap_trailingLineCap__capImages = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __68__STCandyBarView_capImageWithHeight_leadingLineCap_trailingLineCap___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  CGContextSetLineWidth(v3, *(a1 + 32));
  v4 = [MEMORY[0x277D75348] blackColor];
  CGContextSetStrokeColorWithColor(v3, [v4 CGColor]);

  v5 = *(a1 + 40) * 0.5;
  v6 = *(a1 + 56);
  CGContextBeginPath(v3);
  if (*(a1 + 72))
  {
    v7 = 64;
  }

  else
  {
    v7 = 68;
  }

  CGContextSetLineCap(v3, *(a1 + v7));
  CGContextMoveToPoint(v3, v5 - v6, *(a1 + 48) * 0.5);
  CGContextAddLineToPoint(v3, v5, *(a1 + 48) * 0.5);
  CGContextStrokePath(v3);
  CGContextBeginPath(v3);
  if (*(a1 + 72))
  {
    v8 = 68;
  }

  else
  {
    v8 = 64;
  }

  CGContextSetLineCap(v3, *(a1 + v8));
  CGContextMoveToPoint(v3, v5, *(a1 + 48) * 0.5);
  CGContextAddLineToPoint(v3, v5 + v6, *(a1 + 48) * 0.5);

  CGContextStrokePath(v3);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = STCandyBarView;
  [(STCandyBarView *)&v3 layoutSubviews];
  [(STCandyBarView *)self updateSectionViewImages];
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  v3 = 6.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)updateConstraints
{
  v24 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = STCandyBarView;
  [(STCandyBarView *)&v22 updateConstraints];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(STCandyBarView *)self usageItems];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) totalUsage];
        [v9 doubleValue];
        v7 = v7 + v10;
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  if (v7 < 1.0)
  {
    v7 = 1.0;
  }

  v11 = [(STCandyBarView *)self viewItems];
  v12 = [(STCandyBarView *)self usageItems];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __35__STCandyBarView_updateConstraints__block_invoke;
  v14[3] = &unk_279B7CEB0;
  v15 = v11;
  v16 = self;
  v17 = v7;
  v13 = v11;
  [v12 enumerateObjectsUsingBlock:v14];
}

void __35__STCandyBarView_updateConstraints__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v5 widthConstraint];

  if (v6)
  {
    v7 = [v5 widthConstraint];
    [v7 setActive:0];

    v8 = [v5 sectionView];
    v9 = [v8 widthAnchor];
    v10 = [*(a1 + 40) widthAnchor];
    v11 = [v18 totalUsage];
    [v11 doubleValue];
    v13 = *(a1 + 48);
    if (v13 < 1.0)
    {
      v13 = 1.0;
    }

    v14 = [v9 constraintEqualToAnchor:v10 multiplier:v12 / v13];
    [v5 setWidthConstraint:v14];

    v15 = [v5 widthConstraint];
    LODWORD(v16) = 1144750080;
    [v15 setPriority:v16];

    v17 = [v5 widthConstraint];
    [v17 setActive:1];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = STCandyBarView;
  [(STCandyBarView *)&v19 traitCollectionDidChange:v4];
  if ([(STCandyBarView *)self useVibrancy])
  {
    if (!v4 || (v5 = [v4 userInterfaceStyle], -[STCandyBarView traitCollection](self, "traitCollection"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceStyle"), v6, v5 != v7))
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [(STCandyBarView *)self viewItems];
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          v12 = 0;
          do
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v15 + 1) + 8 * v12) sectionView];
            v14 = [v13 tintColor];
            [STUsageColors updateVibrancyStylingForView:v13 withUsageColor:v14];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)updateSectionViewImages
{
  v3 = [(STCandyBarView *)self usageItems];
  v4 = [(STCandyBarView *)self viewItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__STCandyBarView_updateSectionViewImages__block_invoke;
  v7[3] = &unk_279B7CED8;
  v8 = v4;
  v9 = v3;
  v10 = self;
  v5 = v3;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __41__STCandyBarView_updateSectionViewImages__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = [*(a1 + 32) objectAtIndexedSubscript:?];
  v5 = [v16 sectionView];
  if ([*(a1 + 40) count] - 1 == a3)
  {
    v6 = [*(a1 + 40) count];
    v7 = *(a1 + 48);
    [v7 frame];
    v9 = v8;
    v10 = v7;
    if (v6 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v14 = 1;
  }

  else
  {
    v12 = *(a1 + 48);
    [v12 frame];
    v9 = v13;
    v10 = v12;
    if (a3)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v14 = 2;
  }

  v15 = [v10 capImageWithHeight:v11 leadingLineCap:v14 trailingLineCap:v9];
  [v5 setImage:v15];
}

- (void)setUsageItems:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSArray *)self->_usageItems count];
  if (v5 == [v4 count])
  {
    v6 = [(STCandyBarView *)self viewItems];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __32__STCandyBarView_setUsageItems___block_invoke;
    v25[3] = &unk_279B7CF00;
    v26 = v6;
    v27 = self;
    v7 = v6;
    [v4 enumerateObjectsUsingBlock:v25];
    [(STCandyBarView *)self setNeedsUpdateConstraints];
    v8 = v26;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [(STCandyBarView *)self viewItems];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v21 + 1) + 8 * v13) sectionView];
          [v14 removeFromSuperview];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v11);
    }

    v15 = objc_opt_new();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __32__STCandyBarView_setUsageItems___block_invoke_2;
    v18[3] = &unk_279B7CED8;
    v18[4] = self;
    v19 = v15;
    v20 = v4;
    v7 = v15;
    [v20 enumerateObjectsUsingBlock:v18];
    [(STCandyBarView *)self updateSectionViewImages];
    [(STCandyBarView *)self setNeedsUpdateConstraints];
    [(STCandyBarView *)self setViewItems:v7];

    v8 = v19;
  }

  v16 = [v4 copy];
  usageItems = self->_usageItems;
  self->_usageItems = v16;
}

void __32__STCandyBarView_setUsageItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v9 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 color];

  v8 = [v9 sectionView];
  [v8 setTintColor:v7];
  if ([*(a1 + 40) useVibrancy])
  {
    [STUsageColors updateVibrancyStylingForView:v8 withUsageColor:v7];
  }
}

void __32__STCandyBarView_setUsageItems___block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v28 = objc_opt_new();
  v6 = [v5 color];

  v7 = [v28 sectionView];
  [v7 setTintColor:v6];
  if ([a1[4] useVibrancy])
  {
    [STUsageColors updateVibrancyStylingForView:v7 withUsageColor:v6];
  }

  [a1[4] addSubview:v7];
  v8 = [v7 centerYAnchor];
  v9 = [a1[4] centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [v7 heightAnchor];
  v12 = [a1[4] heightAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [a1[5] lastObject];
  v15 = [v7 leadingAnchor];
  if (v14)
  {
    v16 = [v14 sectionView];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:2.0];
    [v18 setActive:1];
  }

  else
  {
    v16 = [a1[4] leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v17 setActive:1];
  }

  if ([a1[6] count] - 1 == a3)
  {
    v19 = [v7 trailingAnchor];
    v20 = [a1[4] trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];
  }

  else
  {
    v22 = [v28 sectionView];
    v23 = [v22 widthAnchor];
    v24 = [a1[4] widthAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [v28 setWidthConstraint:v25];

    v26 = [v28 widthConstraint];
    LODWORD(v27) = 1144750080;
    [v26 setPriority:v27];

    v19 = [v28 widthConstraint];
    [v19 setActive:1];
  }

  [a1[5] addObject:v28];
}

- (void)setUsageItems:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v9 = v6;
  if (a4)
  {
    v7 = [(STCandyBarView *)self usageItems];
    v8 = [v7 count];

    [(STCandyBarView *)self setUsageItems:v9];
    if (v8)
    {
      [(STCandyBarView *)self layoutIfNeeded];
      [(STCandyBarView *)self updateConstraintsIfNeeded];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __41__STCandyBarView_setUsageItems_animated___block_invoke;
      v10[3] = &unk_279B7C998;
      v10[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:0 delay:v10 usingSpringWithDamping:&__block_literal_global_41 initialSpringVelocity:0.6 options:0.0 animations:0.9 completion:0.0];
    }
  }

  else
  {
    [(STCandyBarView *)self setUsageItems:v6];
  }
}

@end