@interface PXUIWidgetFooterBar
- (double)viewHeight;
- (id)createView;
- (void)setDisclosureTitle:(id)a3;
- (void)setSpec:(id)a3;
- (void)updateView;
@end

@implementation PXUIWidgetFooterBar

- (void)setSpec:(id)a3
{
  v4 = a3;
  v5 = [(PXWidgetBar *)self spec];
  v7.receiver = self;
  v7.super_class = PXUIWidgetFooterBar;
  [(PXWidgetBar *)&v7 setSpec:v4];
  if (v5 != v4 && ([v4 isEqual:v5] & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __31__PXUIWidgetFooterBar_setSpec___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXWidgetBar *)self performChanges:v6];
  }
}

uint64_t __31__PXUIWidgetFooterBar_setSpec___block_invoke(uint64_t a1)
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
  v7.super_class = PXUIWidgetFooterBar;
  [(PXWidgetBar *)&v7 setDisclosureTitle:v4];
  if (v5 != v4 && ([v4 isEqual:v5] & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__PXUIWidgetFooterBar_setDisclosureTitle___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXWidgetBar *)self performChanges:v6];
  }
}

- (double)viewHeight
{
  v3 = [(PXWidgetBar *)self disclosureTitle];
  v4 = [v3 length];

  if (!v4)
  {
    return 0.0;
  }

  v5 = [(PXWidgetBar *)self spec];
  [v5 distanceBetweenTopAndFirstBaseline];
  v7 = v6;
  v8 = [(PXWidgetBar *)self spec];
  [v8 distanceBetweenLastBaselineAndBottom];
  v10 = v7 + v9;

  return v10;
}

- (void)updateView
{
  v23.receiver = self;
  v23.super_class = PXUIWidgetFooterBar;
  [(PXUIWidgetBar *)&v23 updateView];
  v3 = [(PXWidgetBar *)self spec];
  [v3 contentInsets];
  v5 = v4;
  v7 = v6;
  [v3 minimumDistanceBetweenTopAndFirstAscender];
  v9 = v8;
  [v3 minimumDistanceBetweenLastDescenderAndBottom];
  v11 = v10;
  v12 = [(PXWidgetBar *)self view];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __33__PXUIWidgetFooterBar_updateView__block_invoke;
  v15[3] = &unk_1E7749878;
  v16 = v12;
  v17 = self;
  v18 = v3;
  v19 = v9;
  v20 = v5;
  v21 = v11;
  v22 = v7;
  v13 = v3;
  v14 = v12;
  [v14 performChanges:v15];
}

uint64_t __33__PXUIWidgetFooterBar_updateView__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLayoutStyle:1];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) disclosureTitle];
  [v2 setDisclosureTitle:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 48) primaryFont];
  [v4 setFont:v5];

  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);

  return [v6 setContentInsets:{v7, v8, v9, v10}];
}

- (id)createView
{
  v3 = objc_alloc_init(PXUIWidgetFooterView);
  [(PXUIWidgetFooterView *)v3 setDelegate:self];

  return v3;
}

@end