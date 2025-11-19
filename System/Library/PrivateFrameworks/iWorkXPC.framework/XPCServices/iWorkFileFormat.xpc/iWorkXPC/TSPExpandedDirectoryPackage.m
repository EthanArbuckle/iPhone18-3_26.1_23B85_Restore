@interface TSPExpandedDirectoryPackage
+ (BOOL)isValidPackageAtURL:(id)a3;
- (id)newRawReadChannelForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 error:(id *)a5;
- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4;
@end

@implementation TSPExpandedDirectoryPackage

+ (BOOL)isValidPackageAtURL:(id)a3
{
  v4 = a3;
  v5 = [@"Index" stringByAppendingPathComponent:@"Metadata"];
  v6 = [a1 componentFileURLForPackageURL:v4 packageLocator:v5];
  v7 = [v6 checkResourceIsReachableAndReturnError:0];

  return v7;
}

- (id)packageEntryInfoForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4
{
  v6 = a3;
  if (!a4)
  {
    v7 = [@"Index" stringByAppendingPathComponent:v6];

    v6 = v7;
  }

  v10.receiver = self;
  v10.super_class = TSPExpandedDirectoryPackage;
  v8 = [(TSPDirectoryPackage *)&v10 packageEntryInfoForComponentLocator:v6 isStoredOutsideObjectArchive:1];

  return v8;
}

- (id)newRawReadChannelForComponentLocator:(id)a3 isStoredOutsideObjectArchive:(BOOL)a4 error:(id *)a5
{
  v8 = a3;
  if (!a4)
  {
    v9 = [@"Index" stringByAppendingPathComponent:v8];

    v8 = v9;
  }

  v12.receiver = self;
  v12.super_class = TSPExpandedDirectoryPackage;
  v10 = [(TSPDirectoryPackage *)&v12 newRawReadChannelForComponentLocator:v8 isStoredOutsideObjectArchive:1 error:a5];

  return v10;
}

@end