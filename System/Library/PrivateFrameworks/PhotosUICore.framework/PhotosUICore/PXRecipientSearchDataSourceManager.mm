@interface PXRecipientSearchDataSourceManager
- (PXRecipientSearchDataSourceManager)init;
- (void)queryStringDidChange;
- (void)setQueryString:(id)string;
- (void)setSearchState:(unint64_t)state;
@end

@implementation PXRecipientSearchDataSourceManager

- (void)setSearchState:(unint64_t)state
{
  if (self->_searchState != state)
  {
    self->_searchState = state;
    [(PXRecipientSearchDataSourceManager *)self signalChange:2];
  }
}

- (void)queryStringDidChange
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXRecipientSearchDataSourceManager.m" lineNumber:41 description:{@"Method %s is a responsibility of subclass %@", "-[PXRecipientSearchDataSourceManager queryStringDidChange]", v6}];

  abort();
}

- (void)setQueryString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (self->_queryString != stringCopy)
  {
    v9 = stringCopy;
    v6 = [(NSString *)stringCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      queryString = self->_queryString;
      self->_queryString = v7;

      [(PXRecipientSearchDataSourceManager *)self queryStringDidChange];
      v5 = v9;
    }
  }
}

- (PXRecipientSearchDataSourceManager)init
{
  v6.receiver = self;
  v6.super_class = PXRecipientSearchDataSourceManager;
  v2 = [(PXSectionedDataSourceManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] set];
    usedAddresses = v2->_usedAddresses;
    v2->_usedAddresses = v3;
  }

  return v2;
}

@end