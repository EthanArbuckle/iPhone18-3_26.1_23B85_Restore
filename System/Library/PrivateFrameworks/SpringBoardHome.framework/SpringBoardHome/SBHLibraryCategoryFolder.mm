@interface SBHLibraryCategoryFolder
- (SBHLibraryCategoryFolder)initWithDisplayName:(id)a3 maxListCount:(unint64_t)a4 listGridSize:(SBHIconGridSize)a5 libraryCategoryIdentifier:(id)a6;
@end

@implementation SBHLibraryCategoryFolder

- (SBHLibraryCategoryFolder)initWithDisplayName:(id)a3 maxListCount:(unint64_t)a4 listGridSize:(SBHIconGridSize)a5 libraryCategoryIdentifier:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = SBHLibraryCategoryFolder;
  v11 = [(SBFolder *)&v15 initWithDisplayName:a3 maxListCount:a4 listGridSize:*&a5];
  if (v11)
  {
    v12 = [v10 copy];
    libraryCategoryIdentifier = v11->_libraryCategoryIdentifier;
    v11->_libraryCategoryIdentifier = v12;
  }

  return v11;
}

@end