@interface PXStaticEditSourceLoader
- (PXStaticEditSourceLoader)initWithEditSource:(id)a3 compositionController:(id)a4 baseVersion:(int64_t)a5 contentIdentifier:(id)a6;
@end

@implementation PXStaticEditSourceLoader

- (PXStaticEditSourceLoader)initWithEditSource:(id)a3 compositionController:(id)a4 baseVersion:(int64_t)a5 contentIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = PXStaticEditSourceLoader;
  v14 = [(PXStaticEditSourceLoader *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_editSource, a3);
    v16 = [v12 copy];
    compositionController = v15->_compositionController;
    v15->_compositionController = v16;

    v15->_baseVersion = a5;
    v18 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    progress = v15->_progress;
    v15->_progress = v18;

    [(NSProgress *)v15->_progress setCompletedUnitCount:[(NSProgress *)v15->_progress totalUnitCount]];
    v20 = [v13 copy];
    contentIdentifier = v15->_contentIdentifier;
    v15->_contentIdentifier = v20;
  }

  return v15;
}

@end