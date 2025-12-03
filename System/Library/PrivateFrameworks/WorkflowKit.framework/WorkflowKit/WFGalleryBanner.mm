@interface WFGalleryBanner
+ (CGSize)pointSize;
+ (NSDictionary)properties;
- (WFGalleryBanner)initWithIdentifier:(id)identifier name:(id)name subtitle:(id)subtitle detailPage:(id)page imageFile:(id)file language:(id)language base:(id)base persistentIdentifier:(id)self0 supportedIdioms:(id)self1;
- (WFImage)image;
@end

@implementation WFGalleryBanner

- (WFImage)image
{
  imageFile = [(WFGalleryBanner *)self imageFile];
  v3 = imageFile;
  if (imageFile)
  {
    v4 = MEMORY[0x1E69E0B58];
    mappedData = [imageFile mappedData];
    v6 = [v4 imageWithData:mappedData scale:0 allowAnimated:1.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFGalleryBanner)initWithIdentifier:(id)identifier name:(id)name subtitle:(id)subtitle detailPage:(id)page imageFile:(id)file language:(id)language base:(id)base persistentIdentifier:(id)self0 supportedIdioms:(id)self1
{
  identifierCopy = identifier;
  nameCopy = name;
  subtitleCopy = subtitle;
  obj = page;
  pageCopy = page;
  fileCopy = file;
  languageCopy = language;
  baseCopy = base;
  v21 = nameCopy;
  persistentIdentifierCopy = persistentIdentifier;
  idiomsCopy = idioms;
  v43.receiver = self;
  v43.super_class = WFGalleryBanner;
  v24 = [(WFGalleryBanner *)&v43 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_identifier, identifier);
    v26 = [v21 copy];
    name = v25->_name;
    v25->_name = v26;

    v28 = [subtitleCopy copy];
    subtitle = v25->_subtitle;
    v25->_subtitle = v28;

    objc_storeStrong(&v25->_detailPage, obj);
    objc_storeStrong(&v25->_imageFile, file);
    v30 = [languageCopy copy];
    language = v25->_language;
    v25->_language = v30;

    objc_storeStrong(&v25->_base, base);
    v32 = [persistentIdentifierCopy copy];
    persistentIdentifier = v25->_persistentIdentifier;
    v25->_persistentIdentifier = v32;

    v34 = [idiomsCopy copy];
    supportedIdioms = v25->_supportedIdioms;
    v25->_supportedIdioms = v34;

    v36 = v25;
  }

  return v25;
}

+ (CGSize)pointSize
{
  v2 = 343.0;
  v3 = 150.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (NSDictionary)properties
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"name";
  v2 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v15[0] = v2;
  v14[1] = @"subtitle";
  v3 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v15[1] = v3;
  v14[2] = @"detailPage";
  v4 = [WFCloudKitItemProperty itemReferencePropertyWithName:@"detailPage" itemClass:objc_opt_class()];
  v15[2] = v4;
  v14[3] = @"iphone3xImage";
  v5 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982E30]];
  v6 = [WFCloudKitItemProperty assetPropertyWithName:@"imageFile" fileType:v5 ignoredByDefault:1 encrypted:0];
  v15[3] = v6;
  v14[4] = @"language";
  v7 = [WFCloudKitItemProperty objectPropertyWithName:"objectPropertyWithName:ignoredByDefault:encrypted:" ignoredByDefault:? encrypted:?];
  v15[4] = v7;
  v14[5] = @"base";
  v8 = [WFCloudKitItemProperty itemReferencePropertyWithName:@"base" itemClass:objc_opt_class()];
  v15[5] = v8;
  v14[6] = @"persistentIdentifier";
  v9 = [WFCloudKitItemProperty objectPropertyWithName:"objectPropertyWithName:ignoredByDefault:encrypted:" ignoredByDefault:? encrypted:?];
  v15[6] = v9;
  v14[7] = @"supportedIdioms";
  v10 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v15[7] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end