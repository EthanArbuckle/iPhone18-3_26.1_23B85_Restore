@interface TSPFilePackageConverter
- (BOOL)isValid;
@end

@implementation TSPFilePackageConverter

- (BOOL)isValid
{
  v2 = [(TSPPackageConverter *)self package];
  v3 = [v2 zipArchive];
  v4 = [TSPFilePackage isValidPackageAtZipArchive:v3];

  return v4;
}

@end