@interface TSPFilePackageConverter
- (BOOL)isValid;
@end

@implementation TSPFilePackageConverter

- (BOOL)isValid
{
  v3 = objc_msgSend_package(self, a2, v2);
  v6 = objc_msgSend_zipArchive(v3, v4, v5);
  isValidPackageAtZipArchive = objc_msgSend_isValidPackageAtZipArchive_(TSPFilePackage, v7, v6);

  return isValidPackageAtZipArchive;
}

@end