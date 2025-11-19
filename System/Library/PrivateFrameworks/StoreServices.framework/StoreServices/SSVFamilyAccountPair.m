@interface SSVFamilyAccountPair
- (SSVFamilyAccountPair)initWithDownloaderAccountIdentifier:(unint64_t)a3 purchaserAccountIdentifier:(unint64_t)a4 familyIdentifier:(unint64_t)a5;
@end

@implementation SSVFamilyAccountPair

- (SSVFamilyAccountPair)initWithDownloaderAccountIdentifier:(unint64_t)a3 purchaserAccountIdentifier:(unint64_t)a4 familyIdentifier:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = SSVFamilyAccountPair;
  result = [(SSVFamilyAccountPair *)&v9 init];
  if (result)
  {
    result->_downloaderAccountIdentifier = a3;
    result->_familyIdentifier = a5;
    result->_purchaserAccountIdentifier = a4;
  }

  return result;
}

@end