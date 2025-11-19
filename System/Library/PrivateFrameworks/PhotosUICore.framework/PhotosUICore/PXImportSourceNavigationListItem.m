@interface PXImportSourceNavigationListItem
- (BOOL)isRemovable;
- (PXImportSourceNavigationListItem)initWithIdentifier:(id)a3 title:(id)a4 accessoryTitle:(id)a5 reorderable:(BOOL)a6 topLevelIdentifier:(id)a7;
- (PXImportSourceNavigationListItem)initWithImportSource:(id)a3 photoLibrary:(id)a4;
- (UIImage)image;
- (id)accessoryGlyphImageName;
- (id)fileURL;
- (unint64_t)hash;
@end

@implementation PXImportSourceNavigationListItem

- (unint64_t)hash
{
  v2 = [(PXImportSourceNavigationListItem *)self importSource];
  v3 = [v2 uuid];
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isRemovable
{
  v2 = [(PXImportSourceNavigationListItem *)self importSource];
  v3 = [v2 canEject];

  return v3;
}

- (id)accessoryGlyphImageName
{
  v7.receiver = self;
  v7.super_class = PXImportSourceNavigationListItem;
  v3 = [(PXNavigationListItem *)&v7 accessoryGlyphImageName];
  v4 = [(PXImportSourceNavigationListItem *)self importSource];
  v5 = [v4 px_shouldShowCPLOptimizedMessage];

  if (v5)
  {

    v3 = @"exclamationmark.icloud.fill";
  }

  return v3;
}

- (id)fileURL
{
  v2 = [(PXImportSourceNavigationListItem *)self importSource];
  v3 = [v2 path];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIImage)image
{
  v2 = [(PXImportSourceNavigationListItem *)self importSource];
  v3 = [v2 iconSymbolName];

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];

  return v4;
}

- (PXImportSourceNavigationListItem)initWithIdentifier:(id)a3 title:(id)a4 accessoryTitle:(id)a5 reorderable:(BOOL)a6 topLevelIdentifier:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PXImportSourceNavigationListItem.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXImportSourceNavigationListItem initWithIdentifier:title:accessoryTitle:reorderable:topLevelIdentifier:]"}];

  abort();
}

- (PXImportSourceNavigationListItem)initWithImportSource:(id)a3 photoLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_opt_class() identifierForImportSource:v7];
  v10 = [v7 name];
  v13.receiver = self;
  v13.super_class = PXImportSourceNavigationListItem;
  v11 = [(PXNavigationListItem *)&v13 initWithIdentifier:v9 title:v10 accessoryTitle:0 reorderable:0 topLevelIdentifier:0];

  if (v11)
  {
    objc_storeStrong(&v11->_importSource, a3);
    objc_storeStrong(&v11->_photoLibrary, a4);
  }

  return v11;
}

@end