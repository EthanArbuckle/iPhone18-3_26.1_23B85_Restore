@interface SHSheetOptionsViewContext
- (SHSheetOptionsViewContext)initWithCustomizationGroups:(id)groups;
- (UIViewController)itemPreviewViewController;
- (id)description;
@end

@implementation SHSheetOptionsViewContext

- (SHSheetOptionsViewContext)initWithCustomizationGroups:(id)groups
{
  groupsCopy = groups;
  v9.receiver = self;
  v9.super_class = SHSheetOptionsViewContext;
  v5 = [(SHSheetOptionsViewContext *)&v9 init];
  if (v5)
  {
    v6 = [groupsCopy copy];
    customizationGroups = v5->_customizationGroups;
    v5->_customizationGroups = v6;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SHSheetOptionsViewContext;
  v4 = [(SHSheetOptionsViewContext *)&v9 description];
  customizationGroups = [(SHSheetOptionsViewContext *)self customizationGroups];
  itemPreviewViewController = [(SHSheetOptionsViewContext *)self itemPreviewViewController];
  v7 = [v3 stringWithFormat:@"<%@ customizationGroups:%@ itemPreviewViewController:%@>", v4, customizationGroups, itemPreviewViewController];

  return v7;
}

- (UIViewController)itemPreviewViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemPreviewViewController);

  return WeakRetained;
}

@end