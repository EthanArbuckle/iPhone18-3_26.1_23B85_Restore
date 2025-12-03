@interface WFGalleryPage
+ (NSDictionary)properties;
- (WFGalleryPage)initWithIdentifier:(id)identifier name:(id)name minVersion:(id)version isRoot:(id)root banners:(id)banners collections:(id)collections language:(id)language base:(id)self0 persistentIdentifier:(id)self1;
- (id)subPageMatchingName:(id)name;
- (id)subPageWithIdentifier:(id)identifier;
@end

@implementation WFGalleryPage

- (id)subPageWithIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  identifier = [(WFGalleryPage *)self identifier];
  v6 = [identifier isEqual:identifierCopy];

  if (v6)
  {
    selfCopy = self;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    banners = [(WFGalleryPage *)self banners];
    v9 = [banners valueForKey:@"detailPage"];

    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) subPageWithIdentifier:identifierCopy];
          if (v14)
          {
            selfCopy = v14;

            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_13:

  v15 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)subPageMatchingName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  name = [(WFGalleryPage *)self name];
  v6 = [name rangeOfString:nameCopy options:129];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    banners = [(WFGalleryPage *)self banners];
    v8 = [banners valueForKey:@"detailPage"];

    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) subPageMatchingName:nameCopy];
          if (v13)
          {
            selfCopy = v13;

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

LABEL_13:

  v15 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (WFGalleryPage)initWithIdentifier:(id)identifier name:(id)name minVersion:(id)version isRoot:(id)root banners:(id)banners collections:(id)collections language:(id)language base:(id)self0 persistentIdentifier:(id)self1
{
  identifierCopy = identifier;
  nameCopy = name;
  versionCopy = version;
  rootCopy = root;
  bannersCopy = banners;
  collectionsCopy = collections;
  languageCopy = language;
  baseCopy = base;
  persistentIdentifierCopy = persistentIdentifier;
  v45.receiver = self;
  v45.super_class = WFGalleryPage;
  v24 = [(WFGalleryPage *)&v45 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_identifier, identifier);
    v26 = [nameCopy copy];
    name = v25->_name;
    v25->_name = v26;

    v28 = [versionCopy copy];
    minVersion = v25->_minVersion;
    v25->_minVersion = v28;

    v30 = [rootCopy copy];
    isRoot = v25->_isRoot;
    v25->_isRoot = v30;

    v32 = [bannersCopy copy];
    banners = v25->_banners;
    v25->_banners = v32;

    v34 = [collectionsCopy copy];
    collections = v25->_collections;
    v25->_collections = v34;

    v36 = [languageCopy copy];
    language = v25->_language;
    v25->_language = v36;

    objc_storeStrong(&v25->_base, base);
    v38 = [persistentIdentifierCopy copy];
    persistentIdentifier = v25->_persistentIdentifier;
    v25->_persistentIdentifier = v38;

    v40 = v25;
  }

  return v25;
}

+ (NSDictionary)properties
{
  v14[8] = *MEMORY[0x1E69E9840];
  v13[0] = @"name";
  v2 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v14[0] = v2;
  v13[1] = @"minVersion";
  v3 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v14[1] = v3;
  v13[2] = @"isRoot";
  v4 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v14[2] = v4;
  v13[3] = @"banners";
  v5 = [WFCloudKitItemProperty itemPropertyWithName:@"banners" itemClass:objc_opt_class()];
  v14[3] = v5;
  v13[4] = @"collections";
  v6 = [WFCloudKitItemProperty itemPropertyWithName:@"collections" itemClass:objc_opt_class()];
  v14[4] = v6;
  v13[5] = @"language";
  v7 = [WFCloudKitItemProperty objectPropertyWithName:"objectPropertyWithName:ignoredByDefault:encrypted:" ignoredByDefault:? encrypted:?];
  v14[5] = v7;
  v13[6] = @"base";
  v8 = [WFCloudKitItemProperty itemReferencePropertyWithName:@"base" itemClass:objc_opt_class()];
  v14[6] = v8;
  v13[7] = @"persistentIdentifier";
  v9 = [WFCloudKitItemProperty objectPropertyWithName:"objectPropertyWithName:ignoredByDefault:encrypted:" ignoredByDefault:? encrypted:?];
  v14[7] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end