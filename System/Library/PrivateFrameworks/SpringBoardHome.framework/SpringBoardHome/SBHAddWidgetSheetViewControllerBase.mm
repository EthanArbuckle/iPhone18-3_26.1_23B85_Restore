@interface SBHAddWidgetSheetViewControllerBase
- (SBHAddWidgetSheetViewControllerBase)initWithListLayoutProvider:(id)provider iconViewProvider:(id)viewProvider allowedWidgets:(SBHWidgetFilteringParameters)widgets addWidgetSheetStyle:(unint64_t)style;
- (SBHAddWidgetSheetViewControllerBase)initWithListLayoutProvider:(id)provider iconViewProvider:(id)viewProvider allowedWidgets:(SBHWidgetFilteringParameters)widgets appCellConfigurator:(id)configurator addWidgetSheetStyle:(unint64_t)style;
- (SBHAddWidgetSheetViewControllerDelegate)delegate;
- (SBHPadAddWidgetSheetMetrics)addWidgetSheetMetrics;
- (SBHWidgetFilteringParameters)allowedWidgets;
- (SBIconViewProviding)iconViewProvider;
- (UIEdgeInsets)preferredInsetsForSheetPresentationInInterfaceOrientation:(int64_t)orientation;
- (int64_t)widgetWrapperViewControllerBackgroundType;
- (void)setAddWidgetSheetMetrics:(SBHPadAddWidgetSheetMetrics *)metrics;
@end

@implementation SBHAddWidgetSheetViewControllerBase

- (SBHAddWidgetSheetViewControllerBase)initWithListLayoutProvider:(id)provider iconViewProvider:(id)viewProvider allowedWidgets:(SBHWidgetFilteringParameters)widgets addWidgetSheetStyle:(unint64_t)style
{
  v7 = *&widgets.includesNonStackable;
  families = widgets.families;
  v11 = MEMORY[0x1E69DCEB0];
  viewProviderCopy = viewProvider;
  providerCopy = provider;
  mainScreen = [v11 mainScreen];
  [mainScreen scale];
  v16 = v15;

  if (style)
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
  style = [(SBHAddWidgetSheetViewControllerBase *)self initWithListLayoutProvider:providerCopy iconViewProvider:viewProviderCopy allowedWidgets:families appCellConfigurator:v7 addWidgetSheetStyle:v23, style];

  return style;
}

- (SBHAddWidgetSheetViewControllerBase)initWithListLayoutProvider:(id)provider iconViewProvider:(id)viewProvider allowedWidgets:(SBHWidgetFilteringParameters)widgets appCellConfigurator:(id)configurator addWidgetSheetStyle:(unint64_t)style
{
  v9 = *&widgets.includesNonStackable;
  families = widgets.families;
  v29[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  viewProviderCopy = viewProvider;
  configuratorCopy = configurator;
  v28.receiver = self;
  v28.super_class = SBHAddWidgetSheetViewControllerBase;
  v17 = [(SBHAddWidgetSheetViewControllerBase *)&v28 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_listLayoutProvider, provider);
    objc_storeWeak(&v18->_iconViewProvider, viewProviderCopy);
    v18->_allowedWidgets.families = families;
    *&v18->_allowedWidgets.includesNonStackable = v9;
    objc_storeStrong(&v18->_appCellConfigurator, configurator);
    v18->_addWidgetSheetStyle = style;
    v19 = MEMORY[0x1E69DD1B8];
    traitCollection = [(SBHAddWidgetSheetViewControllerBase *)v18 traitCollection];
    v21 = [v19 sbh_iconImageAppearanceFromTraitCollection:traitCollection];

    [configuratorCopy setIconImageAppearance:v21];
    v22 = objc_opt_self();
    v29[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __138__SBHAddWidgetSheetViewControllerBase_initWithListLayoutProvider_iconViewProvider_allowedWidgets_appCellConfigurator_addWidgetSheetStyle___block_invoke;
    v26[3] = &unk_1E808B8D0;
    v27 = configuratorCopy;
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

- (UIEdgeInsets)preferredInsetsForSheetPresentationInInterfaceOrientation:(int64_t)orientation
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

- (void)setAddWidgetSheetMetrics:(SBHPadAddWidgetSheetMetrics *)metrics
{
  v3 = *&metrics->sidebarWidth;
  *&self->_addWidgetSheetMetrics.sheetMargin = *&metrics->sheetMargin;
  *&self->_addWidgetSheetMetrics.sidebarWidth = v3;
  detailWidgetPadding = metrics->detailWidgetPadding;
  v6 = *&metrics->trailingPadding;
  v5 = *&metrics->widgetScaleFactor;
  *&self->_addWidgetSheetMetrics.scaledWidgetSize.height = *&metrics->scaledWidgetSize.height;
  self->_addWidgetSheetMetrics.detailWidgetPadding = detailWidgetPadding;
  *&self->_addWidgetSheetMetrics.trailingPadding = v6;
  *&self->_addWidgetSheetMetrics.widgetScaleFactor = v5;
  v8 = *&metrics->detailPageControlTopSpacing;
  v7 = *&metrics->sidebarPadding.leading;
  v9 = *&metrics->detailAddButtonTopSpacing;
  self->_addWidgetSheetMetrics.sidebarPadding.trailing = metrics->sidebarPadding.trailing;
  *&self->_addWidgetSheetMetrics.detailPageControlTopSpacing = v8;
  *&self->_addWidgetSheetMetrics.sidebarPadding.leading = v7;
  *&self->_addWidgetSheetMetrics.detailAddButtonTopSpacing = v9;
}

@end