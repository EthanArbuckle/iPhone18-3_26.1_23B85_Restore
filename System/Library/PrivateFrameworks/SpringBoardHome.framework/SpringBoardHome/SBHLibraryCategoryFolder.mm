@interface SBHLibraryCategoryFolder
- (SBHLibraryCategoryFolder)initWithDisplayName:(id)name maxListCount:(unint64_t)count listGridSize:(SBHIconGridSize)size libraryCategoryIdentifier:(id)identifier;
@end

@implementation SBHLibraryCategoryFolder

- (SBHLibraryCategoryFolder)initWithDisplayName:(id)name maxListCount:(unint64_t)count listGridSize:(SBHIconGridSize)size libraryCategoryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SBHLibraryCategoryFolder;
  v11 = [(SBFolder *)&v15 initWithDisplayName:name maxListCount:count listGridSize:*&size];
  if (v11)
  {
    v12 = [identifierCopy copy];
    libraryCategoryIdentifier = v11->_libraryCategoryIdentifier;
    v11->_libraryCategoryIdentifier = v12;
  }

  return v11;
}

@end