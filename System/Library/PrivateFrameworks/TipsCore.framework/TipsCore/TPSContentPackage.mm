@interface TPSContentPackage
- (BOOL)hasTipContent;
- (NSArray)orderedCollections;
- (TPSContentPackage)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setFeaturedCollection:(id)collection;
- (void)setOrderedCollectionIdentifiers:(id)identifiers;
- (void)updateOrderedCollectionIdentifiers;
@end

@implementation TPSContentPackage

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  orderedCollectionIdentifiers = [(TPSContentPackage *)self orderedCollectionIdentifiers];
  [v4 setOrderedCollectionIdentifiers:orderedCollectionIdentifiers];

  language = [(TPSContentPackage *)self language];
  [v4 setLanguage:language];

  collectionMap = [(TPSContentPackage *)self collectionMap];
  [v4 setCollectionMap:collectionMap];

  collectionSections = [(TPSContentPackage *)self collectionSections];
  [v4 setCollectionSections:collectionSections];

  userGuideMap = [(TPSContentPackage *)self userGuideMap];
  [v4 setUserGuideMap:userGuideMap];

  collectionSectionMap = [(TPSContentPackage *)self collectionSectionMap];
  [v4 setCollectionSectionMap:collectionSectionMap];

  tipMap = [(TPSContentPackage *)self tipMap];
  [v4 setTipMap:tipMap];

  assetSizes = [(TPSContentPackage *)self assetSizes];
  [v4 setAssetSizes:assetSizes];

  featuredCollections = [(TPSContentPackage *)self featuredCollections];
  [v4 setFeaturedCollections:featuredCollections];

  userGuideCollection = [(TPSContentPackage *)self userGuideCollection];
  [v4 setUserGuideCollection:userGuideCollection];

  mainCollectionSection = [(TPSContentPackage *)self mainCollectionSection];
  [v4 setMainCollectionSection:mainCollectionSection];

  return v4;
}

- (TPSContentPackage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v56.receiver = self;
  v56.super_class = TPSContentPackage;
  v5 = [(TPSContentPackage *)&v56 init];
  if (v5)
  {
    v55 = objc_opt_class();
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"orderedCollectionIdentifiers"];
    orderedCollectionIdentifiers = v5->_orderedCollectionIdentifiers;
    v5->_orderedCollectionIdentifiers = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"collectionMap"];
    collectionMap = v5->_collectionMap;
    v5->_collectionMap = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"collectionSections"];
    collectionSections = v5->_collectionSections;
    v5->_collectionSections = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"userGuideMap"];
    userGuideMap = v5->_userGuideMap;
    v5->_userGuideMap = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"collectionSectionMap"];
    collectionSectionMap = v5->_collectionSectionMap;
    v5->_collectionSectionMap = v36;

    v38 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), v55, 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"featuredCollections"];
    featuredCollections = v5->_featuredCollections;
    v5->_featuredCollections = v39;

    v41 = MEMORY[0x1E695DFD8];
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = [v41 setWithObjects:{v42, v43, v44, objc_opt_class(), 0}];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"tipMap"];
    tipMap = v5->_tipMap;
    v5->_tipMap = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSizes"];
    assetSizes = v5->_assetSizes;
    v5->_assetSizes = v48;

    v50 = [coderCopy decodeObjectOfClass:v55 forKey:@"userGuideCollection"];
    userGuideCollection = v5->_userGuideCollection;
    v5->_userGuideCollection = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mainCollectionSection"];
    mainCollectionSection = v5->_mainCollectionSection;
    v5->_mainCollectionSection = v52;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  orderedCollectionIdentifiers = [(TPSContentPackage *)self orderedCollectionIdentifiers];
  [coderCopy encodeObject:orderedCollectionIdentifiers forKey:@"orderedCollectionIdentifiers"];

  language = [(TPSContentPackage *)self language];
  [coderCopy encodeObject:language forKey:@"language"];

  collectionMap = [(TPSContentPackage *)self collectionMap];
  [coderCopy encodeObject:collectionMap forKey:@"collectionMap"];

  tipMap = [(TPSContentPackage *)self tipMap];
  [coderCopy encodeObject:tipMap forKey:@"tipMap"];

  collectionSections = [(TPSContentPackage *)self collectionSections];
  [coderCopy encodeObject:collectionSections forKey:@"collectionSections"];

  userGuideMap = [(TPSContentPackage *)self userGuideMap];
  [coderCopy encodeObject:userGuideMap forKey:@"userGuideMap"];

  collectionSectionMap = [(TPSContentPackage *)self collectionSectionMap];
  [coderCopy encodeObject:collectionSectionMap forKey:@"collectionSectionMap"];

  assetSizes = [(TPSContentPackage *)self assetSizes];
  [coderCopy encodeObject:assetSizes forKey:@"assetSizes"];

  featuredCollections = [(TPSContentPackage *)self featuredCollections];
  [coderCopy encodeObject:featuredCollections forKey:@"featuredCollections"];

  userGuideCollection = [(TPSContentPackage *)self userGuideCollection];
  [coderCopy encodeObject:userGuideCollection forKey:@"userGuideCollection"];

  mainCollectionSection = [(TPSContentPackage *)self mainCollectionSection];
  [coderCopy encodeObject:mainCollectionSection forKey:@"mainCollectionSection"];
}

- (void)setFeaturedCollection:(id)collection
{
  collectionCopy = collection;
  if (([(NSArray *)self->_featuredCollections isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_featuredCollections, collection);
    [(TPSContentPackage *)self updateOrderedCollectionIdentifiers];
  }
}

- (void)setOrderedCollectionIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  p_orderedCollectionIdentifiers = &self->_orderedCollectionIdentifiers;
  if (self->_orderedCollectionIdentifiers != identifiersCopy)
  {
    v7 = identifiersCopy;
    objc_storeStrong(p_orderedCollectionIdentifiers, identifiers);
    p_orderedCollectionIdentifiers = [(TPSContentPackage *)self updateOrderedCollectionIdentifiers];
    identifiersCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_orderedCollectionIdentifiers, identifiersCopy);
}

- (void)updateOrderedCollectionIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_orderedCollectionIdentifiers mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_featuredCollections;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        identifier = [*(*(&v13 + 1) + 8 * v8) identifier];
        [v3 removeObject:identifier];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  orderedCollectionIdentifiers = self->_orderedCollectionIdentifiers;
  self->_orderedCollectionIdentifiers = v10;

  v12 = *MEMORY[0x1E69E9840];
}

- (NSArray)orderedCollections
{
  v21 = *MEMORY[0x1E69E9840];
  orderedCollectionIdentifiers = [(TPSContentPackage *)self orderedCollectionIdentifiers];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(orderedCollectionIdentifiers, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = orderedCollectionIdentifiers;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        collectionMap = [(TPSContentPackage *)self collectionMap];
        v12 = [collectionMap objectForKeyedSubscript:v10];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)hasTipContent
{
  collectionMap = [(TPSContentPackage *)self collectionMap];
  if ([collectionMap count])
  {
    tipMap = [(TPSContentPackage *)self tipMap];
    v5 = [tipMap count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v29.receiver = self;
  v29.super_class = TPSContentPackage;
  v4 = [(TPSContentPackage *)&v29 debugDescription];
  v5 = [v3 initWithString:v4];

  orderedCollectionIdentifiers = [(TPSContentPackage *)self orderedCollectionIdentifiers];

  if (orderedCollectionIdentifiers)
  {
    orderedCollectionIdentifiers2 = [(TPSContentPackage *)self orderedCollectionIdentifiers];
    [v5 appendFormat:@"\n  %@ = %@\n", @"orderedCollectionIdentifiers", orderedCollectionIdentifiers2];
  }

  language = [(TPSContentPackage *)self language];

  if (language)
  {
    language2 = [(TPSContentPackage *)self language];
    [v5 appendFormat:@"  %@ = %@\n", @"language", language2];
  }

  collectionMap = [(TPSContentPackage *)self collectionMap];

  if (collectionMap)
  {
    collectionMap2 = [(TPSContentPackage *)self collectionMap];
    [v5 appendFormat:@"  %@ = %@\n", @"collectionMap", collectionMap2];
  }

  collectionSections = [(TPSContentPackage *)self collectionSections];

  if (collectionSections)
  {
    collectionSections2 = [(TPSContentPackage *)self collectionSections];
    [v5 appendFormat:@"  %@ = %@\n", @"collectionSections", collectionSections2];
  }

  collectionSectionMap = [(TPSContentPackage *)self collectionSectionMap];

  if (collectionSectionMap)
  {
    collectionSectionMap2 = [(TPSContentPackage *)self collectionSectionMap];
    [v5 appendFormat:@"  %@ = %@\n", @"collectionSectionMap", collectionSectionMap2];
  }

  userGuideMap = [(TPSContentPackage *)self userGuideMap];

  if (userGuideMap)
  {
    userGuideMap2 = [(TPSContentPackage *)self userGuideMap];
    [v5 appendFormat:@"  %@ = %@\n", @"userGuideMap", userGuideMap2];
  }

  tipMap = [(TPSContentPackage *)self tipMap];

  if (tipMap)
  {
    tipMap2 = [(TPSContentPackage *)self tipMap];
    [v5 appendFormat:@"  %@ = %@\n", @"tipMap", tipMap2];
  }

  assetSizes = [(TPSContentPackage *)self assetSizes];

  if (assetSizes)
  {
    assetSizes2 = [(TPSContentPackage *)self assetSizes];
    [v5 appendFormat:@"  %@ = %@", @"assetSizes", assetSizes2];
  }

  featuredCollections = [(TPSContentPackage *)self featuredCollections];

  if (featuredCollections)
  {
    featuredCollections2 = [(TPSContentPackage *)self featuredCollections];
    [v5 appendFormat:@"  %@ = %@", @"featuredCollections", featuredCollections2];
  }

  userGuideCollection = [(TPSContentPackage *)self userGuideCollection];

  if (userGuideCollection)
  {
    userGuideCollection2 = [(TPSContentPackage *)self userGuideCollection];
    [v5 appendFormat:@"  %@ = %@", @"userGuideCollection", userGuideCollection2];
  }

  mainCollectionSection = [(TPSContentPackage *)self mainCollectionSection];

  if (mainCollectionSection)
  {
    mainCollectionSection2 = [(TPSContentPackage *)self mainCollectionSection];
    [v5 appendFormat:@"  %@ = %@", @"mainCollectionSection", mainCollectionSection2];
  }

  return v5;
}

@end