@interface WBSBrowsingDataImportData
- (WBSBrowsingDataImportData)initWithNumberOfItemsSuccessfullyImported:(unint64_t)a3 numberOfItemsFailedToImport:(unint64_t)a4 errorMessage:(id)a5;
- (id)combine:(id)a3;
@end

@implementation WBSBrowsingDataImportData

- (WBSBrowsingDataImportData)initWithNumberOfItemsSuccessfullyImported:(unint64_t)a3 numberOfItemsFailedToImport:(unint64_t)a4 errorMessage:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = WBSBrowsingDataImportData;
  v10 = [(WBSBrowsingDataImportData *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_numberOfItemsSuccessfullyImported = a3;
    v10->_numberOfItemsFailedToImport = a4;
    objc_storeStrong(&v10->_errorMessage, a5);
    v12 = v11;
  }

  return v11;
}

- (id)combine:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    self->_numberOfItemsSuccessfullyImported += [v4 numberOfItemsSuccessfullyImported];
    self->_numberOfItemsFailedToImport += [v5 numberOfItemsFailedToImport];
    extensionLockupViews = self->_extensionLockupViews;
    v7 = [v5 extensionLockupViews];
    v8 = [(NSArray *)extensionLockupViews safari_arrayByAddingObjectsFromArrayIfNotDuplicates:v7];
    v9 = self->_extensionLockupViews;
    self->_extensionLockupViews = v8;

    if (!self->_errorMessage)
    {
      v10 = [v5 errorMessage];
      errorMessage = self->_errorMessage;
      self->_errorMessage = v10;
    }
  }

  v12 = self;

  return self;
}

@end