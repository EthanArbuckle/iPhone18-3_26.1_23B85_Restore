@interface SSVFamilyAccountPair
- (SSVFamilyAccountPair)initWithDownloaderAccountIdentifier:(unint64_t)identifier purchaserAccountIdentifier:(unint64_t)accountIdentifier familyIdentifier:(unint64_t)familyIdentifier;
@end

@implementation SSVFamilyAccountPair

- (SSVFamilyAccountPair)initWithDownloaderAccountIdentifier:(unint64_t)identifier purchaserAccountIdentifier:(unint64_t)accountIdentifier familyIdentifier:(unint64_t)familyIdentifier
{
  v9.receiver = self;
  v9.super_class = SSVFamilyAccountPair;
  result = [(SSVFamilyAccountPair *)&v9 init];
  if (result)
  {
    result->_downloaderAccountIdentifier = identifier;
    result->_familyIdentifier = familyIdentifier;
    result->_purchaserAccountIdentifier = accountIdentifier;
  }

  return result;
}

@end