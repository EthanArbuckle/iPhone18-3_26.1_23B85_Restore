@interface SHSheetOptionsViewContext
- (SHSheetOptionsViewContext)initWithCustomizationGroups:(id)a3;
- (UIViewController)itemPreviewViewController;
- (id)description;
@end

@implementation SHSheetOptionsViewContext

- (SHSheetOptionsViewContext)initWithCustomizationGroups:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SHSheetOptionsViewContext;
  v5 = [(SHSheetOptionsViewContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v5 = [(SHSheetOptionsViewContext *)self customizationGroups];
  v6 = [(SHSheetOptionsViewContext *)self itemPreviewViewController];
  v7 = [v3 stringWithFormat:@"<%@ customizationGroups:%@ itemPreviewViewController:%@>", v4, v5, v6];

  return v7;
}

- (UIViewController)itemPreviewViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemPreviewViewController);

  return WeakRetained;
}

@end