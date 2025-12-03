@interface TSPExpandedDirectoryPackage
+ (BOOL)isValidPackageAtURL:(id)l;
- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error;
- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive;
@end

@implementation TSPExpandedDirectoryPackage

+ (BOOL)isValidPackageAtURL:(id)l
{
  lCopy = l;
  v5 = [@"Index" stringByAppendingPathComponent:@"Metadata"];
  v6 = [self componentFileURLForPackageURL:lCopy packageLocator:v5];
  v7 = [v6 checkResourceIsReachableAndReturnError:0];

  return v7;
}

- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive
{
  locatorCopy = locator;
  if (!archive)
  {
    v7 = [@"Index" stringByAppendingPathComponent:locatorCopy];

    locatorCopy = v7;
  }

  v10.receiver = self;
  v10.super_class = TSPExpandedDirectoryPackage;
  v8 = [(TSPDirectoryPackage *)&v10 packageEntryInfoForComponentLocator:locatorCopy isStoredOutsideObjectArchive:1];

  return v8;
}

- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error
{
  locatorCopy = locator;
  if (!archive)
  {
    v9 = [@"Index" stringByAppendingPathComponent:locatorCopy];

    locatorCopy = v9;
  }

  v12.receiver = self;
  v12.super_class = TSPExpandedDirectoryPackage;
  v10 = [(TSPDirectoryPackage *)&v12 newRawReadChannelForComponentLocator:locatorCopy isStoredOutsideObjectArchive:1 error:error];

  return v10;
}

@end