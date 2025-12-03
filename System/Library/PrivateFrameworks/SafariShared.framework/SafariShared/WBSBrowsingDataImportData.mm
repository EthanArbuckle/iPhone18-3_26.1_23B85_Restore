@interface WBSBrowsingDataImportData
- (WBSBrowsingDataImportData)initWithNumberOfItemsSuccessfullyImported:(unint64_t)imported numberOfItemsFailedToImport:(unint64_t)import errorMessage:(id)message;
- (id)combine:(id)combine;
@end

@implementation WBSBrowsingDataImportData

- (WBSBrowsingDataImportData)initWithNumberOfItemsSuccessfullyImported:(unint64_t)imported numberOfItemsFailedToImport:(unint64_t)import errorMessage:(id)message
{
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = WBSBrowsingDataImportData;
  v10 = [(WBSBrowsingDataImportData *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_numberOfItemsSuccessfullyImported = imported;
    v10->_numberOfItemsFailedToImport = import;
    objc_storeStrong(&v10->_errorMessage, message);
    v12 = v11;
  }

  return v11;
}

- (id)combine:(id)combine
{
  combineCopy = combine;
  v5 = combineCopy;
  if (combineCopy)
  {
    self->_numberOfItemsSuccessfullyImported += [combineCopy numberOfItemsSuccessfullyImported];
    self->_numberOfItemsFailedToImport += [v5 numberOfItemsFailedToImport];
    extensionLockupViews = self->_extensionLockupViews;
    extensionLockupViews = [v5 extensionLockupViews];
    v8 = [(NSArray *)extensionLockupViews safari_arrayByAddingObjectsFromArrayIfNotDuplicates:extensionLockupViews];
    v9 = self->_extensionLockupViews;
    self->_extensionLockupViews = v8;

    if (!self->_errorMessage)
    {
      errorMessage = [v5 errorMessage];
      errorMessage = self->_errorMessage;
      self->_errorMessage = errorMessage;
    }
  }

  selfCopy = self;

  return self;
}

@end