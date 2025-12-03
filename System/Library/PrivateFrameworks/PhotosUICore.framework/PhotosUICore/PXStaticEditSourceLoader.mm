@interface PXStaticEditSourceLoader
- (PXStaticEditSourceLoader)initWithEditSource:(id)source compositionController:(id)controller baseVersion:(int64_t)version contentIdentifier:(id)identifier;
@end

@implementation PXStaticEditSourceLoader

- (PXStaticEditSourceLoader)initWithEditSource:(id)source compositionController:(id)controller baseVersion:(int64_t)version contentIdentifier:(id)identifier
{
  sourceCopy = source;
  controllerCopy = controller;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = PXStaticEditSourceLoader;
  v14 = [(PXStaticEditSourceLoader *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_editSource, source);
    v16 = [controllerCopy copy];
    compositionController = v15->_compositionController;
    v15->_compositionController = v16;

    v15->_baseVersion = version;
    v18 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    progress = v15->_progress;
    v15->_progress = v18;

    [(NSProgress *)v15->_progress setCompletedUnitCount:[(NSProgress *)v15->_progress totalUnitCount]];
    v20 = [identifierCopy copy];
    contentIdentifier = v15->_contentIdentifier;
    v15->_contentIdentifier = v20;
  }

  return v15;
}

@end