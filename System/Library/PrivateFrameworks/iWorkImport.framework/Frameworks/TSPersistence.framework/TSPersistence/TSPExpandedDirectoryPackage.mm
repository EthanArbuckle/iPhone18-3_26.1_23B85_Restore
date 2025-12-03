@interface TSPExpandedDirectoryPackage
+ (BOOL)isValidPackageAtURL:(id)l;
- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error;
- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive;
@end

@implementation TSPExpandedDirectoryPackage

+ (BOOL)isValidPackageAtURL:(id)l
{
  lCopy = l;
  v6 = objc_msgSend_stringByAppendingPathComponent_(@"Index", v5, @"Metadata");
  v8 = objc_msgSend_componentFileURLForPackageURL_packageLocator_(self, v7, lCopy, v6);
  v10 = objc_msgSend_checkResourceIsReachableAndReturnError_(v8, v9, 0);

  return v10;
}

- (id)packageEntryInfoForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive
{
  locatorCopy = locator;
  if (!archive)
  {
    v8 = objc_msgSend_stringByAppendingPathComponent_(@"Index", v6, locatorCopy);

    locatorCopy = v8;
  }

  v11.receiver = self;
  v11.super_class = TSPExpandedDirectoryPackage;
  v9 = [(TSPDirectoryPackage *)&v11 packageEntryInfoForComponentLocator:locatorCopy isStoredOutsideObjectArchive:1];

  return v9;
}

- (id)newRawReadChannelForComponentLocator:(id)locator isStoredOutsideObjectArchive:(BOOL)archive error:(id *)error
{
  locatorCopy = locator;
  if (!archive)
  {
    v10 = objc_msgSend_stringByAppendingPathComponent_(@"Index", v8, locatorCopy);

    locatorCopy = v10;
  }

  v13.receiver = self;
  v13.super_class = TSPExpandedDirectoryPackage;
  v11 = [(TSPDirectoryPackage *)&v13 newRawReadChannelForComponentLocator:locatorCopy isStoredOutsideObjectArchive:1 error:error];

  return v11;
}

@end