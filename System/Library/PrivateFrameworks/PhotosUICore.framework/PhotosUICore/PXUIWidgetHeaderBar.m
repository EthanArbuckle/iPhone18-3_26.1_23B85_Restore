@interface PXUIWidgetHeaderBar
- (double)viewHeight;
- (id)createView;
- (void)setDisclosureTitle:(id)a3;
- (void)setSpec:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateView;
@end

@implementation PXUIWidgetHeaderBar

- (void)setSpec:(id)a3
{
  v4 = a3;
  v5 = [(PXWidgetBar *)self spec];
  v7.receiver = self;
  v7.super_class = PXUIWidgetHeaderBar;
  [(PXWidgetBar *)&v7 setSpec:v4];
  if (v5 != v4 && ([v4 isEqual:v5] & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __31__PXUIWidgetHeaderBar_setSpec___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXWidgetBar *)self performChanges:v6];
  }
}

uint64_t __31__PXUIWidgetHeaderBar_setSpec___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateView];
  v2 = *(a1 + 32);

  return [v2 invalidateViewHeight];
}

- (void)setDisclosureTitle:(id)a3
{
  v4 = a3;
  v5 = [(PXWidgetBar *)self disclosureTitle];
  v7.receiver = self;
  v7.super_class = PXUIWidgetHeaderBar;
  [(PXWidgetBar *)&v7 setDisclosureTitle:v4];
  if (v5 != v4 && ([v4 isEqual:v5] & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__PXUIWidgetHeaderBar_setDisclosureTitle___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXWidgetBar *)self performChanges:v6];
  }
}

uint64_t __42__PXUIWidgetHeaderBar_setDisclosureTitle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateView];
  v2 = *(a1 + 32);

  return [v2 invalidateViewHeight];
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(PXWidgetBar *)self subtitle];
  v7.receiver = self;
  v7.super_class = PXUIWidgetHeaderBar;
  [(PXWidgetBar *)&v7 setSubtitle:v4];
  if (v5 != v4 && ([v4 isEqual:v5] & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__PXUIWidgetHeaderBar_setSubtitle___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXWidgetBar *)self performChanges:v6];
  }
}

uint64_t __35__PXUIWidgetHeaderBar_setSubtitle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateView];
  v2 = *(a1 + 32);

  return [v2 invalidateViewHeight];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(PXWidgetBar *)self title];
  v7.receiver = self;
  v7.super_class = PXUIWidgetHeaderBar;
  [(PXWidgetBar *)&v7 setTitle:v4];
  if (v5 != v4 && ([v4 isEqual:v5] & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__PXUIWidgetHeaderBar_setTitle___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXWidgetBar *)self performChanges:v6];
  }
}

uint64_t __32__PXUIWidgetHeaderBar_setTitle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidateView];
  v2 = *(a1 + 32);

  return [v2 invalidateViewHeight];
}

- (double)viewHeight
{
  v2 = [(PXWidgetBar *)self view];
  [v2 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v4 = v3;

  return v4;
}

- (void)updateView
{
  v30.receiver = self;
  v30.super_class = PXUIWidgetHeaderBar;
  [(PXUIWidgetBar *)&v30 updateView];
  v3 = [(PXWidgetBar *)self spec];
  [v3 contentInsets];
  v5 = v4;
  v7 = v6;
  [v3 minimumDistanceBetweenTopAndFirstAscender];
  v9 = v8;
  [v3 minimumDistanceBetweenLastDescenderAndBottom];
  v11 = v10;
  v12 = [(PXWidgetBar *)self disclosureTitle];
  v13 = [v12 length];
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 != 0;
  v16 = [(PXWidgetBar *)self view];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __33__PXUIWidgetHeaderBar_updateView__block_invoke;
  v20[3] = &unk_1E772C8E8;
  v21 = v16;
  v22 = self;
  v23 = v14;
  v24 = v3;
  v29 = v15;
  v25 = v9;
  v26 = v5;
  v27 = v11;
  v28 = v7;
  v17 = v3;
  v18 = v14;
  v19 = v16;
  [v19 performChanges:v20];
}

uint64_t __33__PXUIWidgetHeaderBar_updateView__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) title];
  [v2 setTitle:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) subtitle];
  [v4 setSubtitle:v5];

  [*(a1 + 32) setCaption:*(a1 + 48)];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 56) textColor];
  [v6 setTextColor:v7];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 56) primaryFont];
  [v8 setPrimaryFont:v9];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 56) secondaryFont];
  [v10 setSecondaryFont:v11];

  [*(a1 + 32) setAllowUserInteractionWithCaption:*(a1 + 96)];
  [*(a1 + 32) setAllowUserInteractionWithSubtitle:{objc_msgSend(*(a1 + 40), "allowUserInteractionWithSubtitle")}];
  [*(a1 + 32) setContentInsets:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v12 = *(a1 + 32);
  if ([*(a1 + 56) shouldUseSingleLine])
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [v12 setLayoutStyle:v13];
  v14 = *(a1 + 32);
  [*(a1 + 56) distanceBetweenTopAndFirstBaseline];
  [v14 setMinimumDistanceBetweenTopAndFirstBaseline:?];
  v15 = *(a1 + 32);
  [*(a1 + 56) distanceBetweenLastBaselineAndBottom];
  [v15 setMinimumDistanceBetweenLastBaselineAndBottom:?];
  v16 = *(a1 + 32);
  [*(a1 + 56) distanceBetweenTitleBaselineAndSubtitleBaseline];
  [v16 setDistanceBetweenTitleBaselineAndSubtitleBaseline:?];
  v17 = *(a1 + 32);
  [*(a1 + 56) horizontalSpacingBetweenTitleAndSubtitle];

  return [v17 setHorizontalSpacingBetweenTitleAndSubtitle:?];
}

- (id)createView
{
  v3 = objc_alloc_init(PXUIWidgetHeaderView);
  [(PXUIWidgetHeaderView *)v3 setDelegate:self];

  return v3;
}

@end