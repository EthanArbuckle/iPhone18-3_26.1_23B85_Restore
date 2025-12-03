@interface TSPFilePackageConverter
- (BOOL)isValid;
@end

@implementation TSPFilePackageConverter

- (BOOL)isValid
{
  package = [(TSPPackageConverter *)self package];
  zipArchive = [package zipArchive];
  v4 = [TSPFilePackage isValidPackageAtZipArchive:zipArchive];

  return v4;
}

@end