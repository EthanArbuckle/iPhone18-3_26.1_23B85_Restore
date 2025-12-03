@interface PXUIWidgetFooterBar
- (double)viewHeight;
- (id)createView;
- (void)setDisclosureTitle:(id)title;
- (void)setSpec:(id)spec;
- (void)updateView;
@end

@implementation PXUIWidgetFooterBar

- (void)setSpec:(id)spec
{
  specCopy = spec;
  spec = [(PXWidgetBar *)self spec];
  v7.receiver = self;
  v7.super_class = PXUIWidgetFooterBar;
  [(PXWidgetBar *)&v7 setSpec:specCopy];
  if (spec != specCopy && ([specCopy isEqual:spec] & 1) == 0)
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

- (void)setDisclosureTitle:(id)title
{
  titleCopy = title;
  disclosureTitle = [(PXWidgetBar *)self disclosureTitle];
  v7.receiver = self;
  v7.super_class = PXUIWidgetFooterBar;
  [(PXWidgetBar *)&v7 setDisclosureTitle:titleCopy];
  if (disclosureTitle != titleCopy && ([titleCopy isEqual:disclosureTitle] & 1) == 0)
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
  disclosureTitle = [(PXWidgetBar *)self disclosureTitle];
  v4 = [disclosureTitle length];

  if (!v4)
  {
    return 0.0;
  }

  spec = [(PXWidgetBar *)self spec];
  [spec distanceBetweenTopAndFirstBaseline];
  v7 = v6;
  spec2 = [(PXWidgetBar *)self spec];
  [spec2 distanceBetweenLastBaselineAndBottom];
  v10 = v7 + v9;

  return v10;
}

- (void)updateView
{
  v23.receiver = self;
  v23.super_class = PXUIWidgetFooterBar;
  [(PXUIWidgetBar *)&v23 updateView];
  spec = [(PXWidgetBar *)self spec];
  [spec contentInsets];
  v5 = v4;
  v7 = v6;
  [spec minimumDistanceBetweenTopAndFirstAscender];
  v9 = v8;
  [spec minimumDistanceBetweenLastDescenderAndBottom];
  v11 = v10;
  view = [(PXWidgetBar *)self view];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __33__PXUIWidgetFooterBar_updateView__block_invoke;
  v15[3] = &unk_1E7749878;
  v16 = view;
  selfCopy = self;
  v18 = spec;
  v19 = v9;
  v20 = v5;
  v21 = v11;
  v22 = v7;
  v13 = spec;
  v14 = view;
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