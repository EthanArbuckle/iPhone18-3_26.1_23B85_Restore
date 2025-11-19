@interface TSPExpandedDirectoryPackage
+ (BOOL)isValidPackageAtURL:(id)a3;
- (id)newRawReadChannelForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 error:(id *)a5;
- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4;
@end

@implementation TSPExpandedDirectoryPackage

+ (BOOL)isValidPackageAtURL:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_stringByAppendingPathComponent_(@"Index", v5, @"Metadata");
  v8 = objc_msgSend_componentFileURLForPackageURL_packageLocator_(a1, v7, v4, v6);
  v10 = objc_msgSend_checkResourceIsReachableAndReturnError_(v8, v9, 0);

  return v10;
}

- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4
{
  v7 = a3;
  if (!a4)
  {
    v8 = objc_msgSend_stringByAppendingPathComponent_(@"Index", v6, v7);

    v7 = v8;
  }

  v11.receiver = self;
  v11.super_class = TSPExpandedDirectoryPackage;
  v9 = [(TSPDirectoryPackage *)&v11 packageEntryInfoForComponentLocator:v7 isStoredOutsideObjectArchive:1];

  return v9;
}

- (id)newRawReadChannelForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 error:(id *)a5
{
  v9 = a3;
  if (!a4)
  {
    v10 = objc_msgSend_stringByAppendingPathComponent_(@"Index", v8, v9);

    v9 = v10;
  }

  v13.receiver = self;
  v13.super_class = TSPExpandedDirectoryPackage;
  v11 = [(TSPDirectoryPackage *)&v13 newRawReadChannelForComponentLocator:v9 isStoredOutsideObjectArchive:1 error:a5];

  return v11;
}

@end