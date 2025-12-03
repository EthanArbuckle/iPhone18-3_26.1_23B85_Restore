@interface PXImportSourceNavigationListItem
- (BOOL)isRemovable;
- (PXImportSourceNavigationListItem)initWithIdentifier:(id)identifier title:(id)title accessoryTitle:(id)accessoryTitle reorderable:(BOOL)reorderable topLevelIdentifier:(id)levelIdentifier;
- (PXImportSourceNavigationListItem)initWithImportSource:(id)source photoLibrary:(id)library;
- (UIImage)image;
- (id)accessoryGlyphImageName;
- (id)fileURL;
- (unint64_t)hash;
@end

@implementation PXImportSourceNavigationListItem

- (unint64_t)hash
{
  importSource = [(PXImportSourceNavigationListItem *)self importSource];
  uuid = [importSource uuid];
  v4 = [uuid hash];

  return v4;
}

- (BOOL)isRemovable
{
  importSource = [(PXImportSourceNavigationListItem *)self importSource];
  canEject = [importSource canEject];

  return canEject;
}

- (id)accessoryGlyphImageName
{
  v7.receiver = self;
  v7.super_class = PXImportSourceNavigationListItem;
  accessoryGlyphImageName = [(PXNavigationListItem *)&v7 accessoryGlyphImageName];
  importSource = [(PXImportSourceNavigationListItem *)self importSource];
  px_shouldShowCPLOptimizedMessage = [importSource px_shouldShowCPLOptimizedMessage];

  if (px_shouldShowCPLOptimizedMessage)
  {

    accessoryGlyphImageName = @"exclamationmark.icloud.fill";
  }

  return accessoryGlyphImageName;
}

- (id)fileURL
{
  importSource = [(PXImportSourceNavigationListItem *)self importSource];
  path = [importSource path];

  if (path)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIImage)image
{
  importSource = [(PXImportSourceNavigationListItem *)self importSource];
  iconSymbolName = [importSource iconSymbolName];

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:iconSymbolName];

  return v4;
}

- (PXImportSourceNavigationListItem)initWithIdentifier:(id)identifier title:(id)title accessoryTitle:(id)accessoryTitle reorderable:(BOOL)reorderable topLevelIdentifier:(id)levelIdentifier
{
  identifierCopy = identifier;
  titleCopy = title;
  accessoryTitleCopy = accessoryTitle;
  levelIdentifierCopy = levelIdentifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportSourceNavigationListItem.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXImportSourceNavigationListItem initWithIdentifier:title:accessoryTitle:reorderable:topLevelIdentifier:]"}];

  abort();
}

- (PXImportSourceNavigationListItem)initWithImportSource:(id)source photoLibrary:(id)library
{
  sourceCopy = source;
  libraryCopy = library;
  v9 = [objc_opt_class() identifierForImportSource:sourceCopy];
  name = [sourceCopy name];
  v13.receiver = self;
  v13.super_class = PXImportSourceNavigationListItem;
  v11 = [(PXNavigationListItem *)&v13 initWithIdentifier:v9 title:name accessoryTitle:0 reorderable:0 topLevelIdentifier:0];

  if (v11)
  {
    objc_storeStrong(&v11->_importSource, source);
    objc_storeStrong(&v11->_photoLibrary, library);
  }

  return v11;
}

@end