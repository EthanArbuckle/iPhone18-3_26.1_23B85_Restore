@interface SBHAddWidgetSheetViewControllerBase
- (SBHAddWidgetSheetViewControllerBase)initWithListLayoutProvider:(id)a3 iconViewProvider:(id)a4 allowedWidgets:(SBHWidgetFilteringParameters)a5 addWidgetSheetStyle:(unint64_t)a6;
- (SBHAddWidgetSheetViewControllerBase)initWithListLayoutProvider:(id)a3 iconViewProvider:(id)a4 allowedWidgets:(SBHWidgetFilteringParameters)a5 appCellConfigurator:(id)a6 addWidgetSheetStyle:(unint64_t)a7;
- (SBHAddWidgetSheetViewControllerDelegate)delegate;
- (SBHPadAddWidgetSheetMetrics)addWidgetSheetMetrics;
- (SBHWidgetFilteringParameters)allowedWidgets;
- (SBIconViewProviding)iconViewProvider;
- (UIEdgeInsets)preferredInsetsForSheetPresentationInInterfaceOrientation:(int64_t)a3;
- (int64_t)widgetWrapperViewControllerBackgroundType;
- (void)setAddWidgetSheetMetrics:(SBHPadAddWidgetSheetMetrics *)a3;
@end

@implementation SBHAddWidgetSheetViewControllerBase

- (SBHAddWidgetSheetViewControllerBase)initWithListLayoutProvider:(id)a3 iconViewProvider:(id)a4 allowedWidgets:(SBHWidgetFilteringParameters)a5 addWidgetSheetStyle:(unint64_t)a6
{
  v7 = *&a5.includesNonStackable;
  families = a5.families;
  v11 = MEMORY[0x1E69DCEB0];
  v12 = a4;
  v13 = a3;
  v14 = [v11 mainScreen];
  [v14 scale];
  v16 = v15;

  if (a6)
  {
    v17 = 32.0;
    v18 = 10.0;
  }

  else
  {
    v17 = 48.0;
    v18 = 12.0;
  }

  v19 = SBIconImageInfoMake(v17, v17, v16, v18);
  v23 = [[SBHAddWidgetSheetAppCollectionViewCellConfigurator alloc] initWithIconImageInfo:v19, v20, v21, v22];
  v24 = [(SBHAddWidgetSheetViewControllerBase *)self initWithListLayoutProvider:v13 iconViewProvider:v12 allowedWidgets:families appCellConfigurator:v7 addWidgetSheetStyle:v23, a6];

  return v24;
}

- (SBHAddWidgetSheetViewControllerBase)initWithListLayoutProvider:(id)a3 iconViewProvider:(id)a4 allowedWidgets:(SBHWidgetFilteringParameters)a5 appCellConfigurator:(id)a6 addWidgetSheetStyle:(unint64_t)a7
{
  v9 = *&a5.includesNonStackable;
  families = a5.families;
  v29[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v28.receiver = self;
  v28.super_class = SBHAddWidgetSheetViewControllerBase;
  v17 = [(SBHAddWidgetSheetViewControllerBase *)&v28 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_listLayoutProvider, a3);
    objc_storeWeak(&v18->_iconViewProvider, v15);
    v18->_allowedWidgets.families = families;
    *&v18->_allowedWidgets.includesNonStackable = v9;
    objc_storeStrong(&v18->_appCellConfigurator, a6);
    v18->_addWidgetSheetStyle = a7;
    v19 = MEMORY[0x1E69DD1B8];
    v20 = [(SBHAddWidgetSheetViewControllerBase *)v18 traitCollection];
    v21 = [v19 sbh_iconImageAppearanceFromTraitCollection:v20];

    [v16 setIconImageAppearance:v21];
    v22 = objc_opt_self();
    v29[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __138__SBHAddWidgetSheetViewControllerBase_initWithListLayoutProvider_iconViewProvider_allowedWidgets_appCellConfigurator_addWidgetSheetStyle___block_invoke;
    v26[3] = &unk_1E808B8D0;
    v27 = v16;
    v24 = [(SBHAddWidgetSheetViewControllerBase *)v18 registerForTraitChanges:v23 withHandler:v26];
  }

  return v18;
}

void __138__SBHAddWidgetSheetViewControllerBase_initWithListLayoutProvider_iconViewProvider_allowedWidgets_appCellConfigurator_addWidgetSheetStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DD1B8];
  v4 = [a2 traitCollection];
  v5 = [v3 sbh_iconImageAppearanceFromTraitCollection:v4];

  [*(a1 + 32) setIconImageAppearance:v5];
}

- (UIEdgeInsets)preferredInsetsForSheetPresentationInInterfaceOrientation:(int64_t)a3
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (int64_t)widgetWrapperViewControllerBackgroundType
{
  result = [(SBHAddWidgetSheetViewControllerBase *)self addWidgetSheetWidgetBackgroundType];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (SBHAddWidgetSheetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHWidgetFilteringParameters)allowedWidgets
{
  p_allowedWidgets = &self->_allowedWidgets;
  families = self->_allowedWidgets.families;
  v4 = *&p_allowedWidgets->includesNonStackable;
  result.includesNonStackable = v4;
  result.requiresRemovableBackground = BYTE1(v4);
  result.families = families;
  return result;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

- (SBHPadAddWidgetSheetMetrics)addWidgetSheetMetrics
{
  v3 = *&self[7].sidebarPadding.leading;
  *&retstr->detailAddButtonTopSpacing = *&self[7].detailPageControlTopSpacing;
  *&retstr->detailPageControlTopSpacing = v3;
  *&retstr->sidebarPadding.leading = *&self[7].sidebarPadding.trailing;
  retstr->sidebarPadding.trailing = self[8].leadingPadding;
  v4 = *&self[7].scaledWidgetSize.height;
  *&retstr->trailingPadding = *&self[7].widgetScaleFactor;
  *&retstr->widgetScaleFactor = v4;
  v5 = *&self[7].detailAddButtonTopSpacing;
  *&retstr->scaledWidgetSize.height = self[7].detailWidgetPadding;
  retstr->detailWidgetPadding = v5;
  v6 = *&self[7].trailingPadding;
  *&retstr->sheetMargin = *&self[7].sidebarWidth;
  *&retstr->sidebarWidth = v6;
  return self;
}

- (void)setAddWidgetSheetMetrics:(SBHPadAddWidgetSheetMetrics *)a3
{
  v3 = *&a3->sidebarWidth;
  *&self->_addWidgetSheetMetrics.sheetMargin = *&a3->sheetMargin;
  *&self->_addWidgetSheetMetrics.sidebarWidth = v3;
  detailWidgetPadding = a3->detailWidgetPadding;
  v6 = *&a3->trailingPadding;
  v5 = *&a3->widgetScaleFactor;
  *&self->_addWidgetSheetMetrics.scaledWidgetSize.height = *&a3->scaledWidgetSize.height;
  self->_addWidgetSheetMetrics.detailWidgetPadding = detailWidgetPadding;
  *&self->_addWidgetSheetMetrics.trailingPadding = v6;
  *&self->_addWidgetSheetMetrics.widgetScaleFactor = v5;
  v8 = *&a3->detailPageControlTopSpacing;
  v7 = *&a3->sidebarPadding.leading;
  v9 = *&a3->detailAddButtonTopSpacing;
  self->_addWidgetSheetMetrics.sidebarPadding.trailing = a3->sidebarPadding.trailing;
  *&self->_addWidgetSheetMetrics.detailPageControlTopSpacing = v8;
  *&self->_addWidgetSheetMetrics.sidebarPadding.leading = v7;
  *&self->_addWidgetSheetMetrics.detailAddButtonTopSpacing = v9;
}

@end