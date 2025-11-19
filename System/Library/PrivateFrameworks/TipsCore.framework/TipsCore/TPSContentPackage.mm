@interface TPSContentPackage
- (BOOL)hasTipContent;
- (NSArray)orderedCollections;
- (TPSContentPackage)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
- (void)setFeaturedCollection:(id)a3;
- (void)setOrderedCollectionIdentifiers:(id)a3;
- (void)updateOrderedCollectionIdentifiers;
@end

@implementation TPSContentPackage

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TPSContentPackage *)self orderedCollectionIdentifiers];
  [v4 setOrderedCollectionIdentifiers:v5];

  v6 = [(TPSContentPackage *)self language];
  [v4 setLanguage:v6];

  v7 = [(TPSContentPackage *)self collectionMap];
  [v4 setCollectionMap:v7];

  v8 = [(TPSContentPackage *)self collectionSections];
  [v4 setCollectionSections:v8];

  v9 = [(TPSContentPackage *)self userGuideMap];
  [v4 setUserGuideMap:v9];

  v10 = [(TPSContentPackage *)self collectionSectionMap];
  [v4 setCollectionSectionMap:v10];

  v11 = [(TPSContentPackage *)self tipMap];
  [v4 setTipMap:v11];

  v12 = [(TPSContentPackage *)self assetSizes];
  [v4 setAssetSizes:v12];

  v13 = [(TPSContentPackage *)self featuredCollections];
  [v4 setFeaturedCollections:v13];

  v14 = [(TPSContentPackage *)self userGuideCollection];
  [v4 setUserGuideCollection:v14];

  v15 = [(TPSContentPackage *)self mainCollectionSection];
  [v4 setMainCollectionSection:v15];

  return v4;
}

- (TPSContentPackage)initWithCoder:(id)a3
{
  v4 = a3;
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
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"orderedCollectionIdentifiers"];
    orderedCollectionIdentifiers = v5->_orderedCollectionIdentifiers;
    v5->_orderedCollectionIdentifiers = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"collectionMap"];
    collectionMap = v5->_collectionMap;
    v5->_collectionMap = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"collectionSections"];
    collectionSections = v5->_collectionSections;
    v5->_collectionSections = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"userGuideMap"];
    userGuideMap = v5->_userGuideMap;
    v5->_userGuideMap = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"collectionSectionMap"];
    collectionSectionMap = v5->_collectionSectionMap;
    v5->_collectionSectionMap = v36;

    v38 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), v55, 0}];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"featuredCollections"];
    featuredCollections = v5->_featuredCollections;
    v5->_featuredCollections = v39;

    v41 = MEMORY[0x1E695DFD8];
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = [v41 setWithObjects:{v42, v43, v44, objc_opt_class(), 0}];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"tipMap"];
    tipMap = v5->_tipMap;
    v5->_tipMap = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSizes"];
    assetSizes = v5->_assetSizes;
    v5->_assetSizes = v48;

    v50 = [v4 decodeObjectOfClass:v55 forKey:@"userGuideCollection"];
    userGuideCollection = v5->_userGuideCollection;
    v5->_userGuideCollection = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mainCollectionSection"];
    mainCollectionSection = v5->_mainCollectionSection;
    v5->_mainCollectionSection = v52;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TPSContentPackage *)self orderedCollectionIdentifiers];
  [v4 encodeObject:v5 forKey:@"orderedCollectionIdentifiers"];

  v6 = [(TPSContentPackage *)self language];
  [v4 encodeObject:v6 forKey:@"language"];

  v7 = [(TPSContentPackage *)self collectionMap];
  [v4 encodeObject:v7 forKey:@"collectionMap"];

  v8 = [(TPSContentPackage *)self tipMap];
  [v4 encodeObject:v8 forKey:@"tipMap"];

  v9 = [(TPSContentPackage *)self collectionSections];
  [v4 encodeObject:v9 forKey:@"collectionSections"];

  v10 = [(TPSContentPackage *)self userGuideMap];
  [v4 encodeObject:v10 forKey:@"userGuideMap"];

  v11 = [(TPSContentPackage *)self collectionSectionMap];
  [v4 encodeObject:v11 forKey:@"collectionSectionMap"];

  v12 = [(TPSContentPackage *)self assetSizes];
  [v4 encodeObject:v12 forKey:@"assetSizes"];

  v13 = [(TPSContentPackage *)self featuredCollections];
  [v4 encodeObject:v13 forKey:@"featuredCollections"];

  v14 = [(TPSContentPackage *)self userGuideCollection];
  [v4 encodeObject:v14 forKey:@"userGuideCollection"];

  v15 = [(TPSContentPackage *)self mainCollectionSection];
  [v4 encodeObject:v15 forKey:@"mainCollectionSection"];
}

- (void)setFeaturedCollection:(id)a3
{
  v5 = a3;
  if (([(NSArray *)self->_featuredCollections isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_featuredCollections, a3);
    [(TPSContentPackage *)self updateOrderedCollectionIdentifiers];
  }
}

- (void)setOrderedCollectionIdentifiers:(id)a3
{
  v5 = a3;
  p_orderedCollectionIdentifiers = &self->_orderedCollectionIdentifiers;
  if (self->_orderedCollectionIdentifiers != v5)
  {
    v7 = v5;
    objc_storeStrong(p_orderedCollectionIdentifiers, a3);
    p_orderedCollectionIdentifiers = [(TPSContentPackage *)self updateOrderedCollectionIdentifiers];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_orderedCollectionIdentifiers, v5);
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

        v9 = [*(*(&v13 + 1) + 8 * v8) identifier];
        [v3 removeObject:v9];

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
  v3 = [(TPSContentPackage *)self orderedCollectionIdentifiers];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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
        v11 = [(TPSContentPackage *)self collectionMap];
        v12 = [v11 objectForKeyedSubscript:v10];
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
  v3 = [(TPSContentPackage *)self collectionMap];
  if ([v3 count])
  {
    v4 = [(TPSContentPackage *)self tipMap];
    v5 = [v4 count] != 0;
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

  v6 = [(TPSContentPackage *)self orderedCollectionIdentifiers];

  if (v6)
  {
    v7 = [(TPSContentPackage *)self orderedCollectionIdentifiers];
    [v5 appendFormat:@"\n  %@ = %@\n", @"orderedCollectionIdentifiers", v7];
  }

  v8 = [(TPSContentPackage *)self language];

  if (v8)
  {
    v9 = [(TPSContentPackage *)self language];
    [v5 appendFormat:@"  %@ = %@\n", @"language", v9];
  }

  v10 = [(TPSContentPackage *)self collectionMap];

  if (v10)
  {
    v11 = [(TPSContentPackage *)self collectionMap];
    [v5 appendFormat:@"  %@ = %@\n", @"collectionMap", v11];
  }

  v12 = [(TPSContentPackage *)self collectionSections];

  if (v12)
  {
    v13 = [(TPSContentPackage *)self collectionSections];
    [v5 appendFormat:@"  %@ = %@\n", @"collectionSections", v13];
  }

  v14 = [(TPSContentPackage *)self collectionSectionMap];

  if (v14)
  {
    v15 = [(TPSContentPackage *)self collectionSectionMap];
    [v5 appendFormat:@"  %@ = %@\n", @"collectionSectionMap", v15];
  }

  v16 = [(TPSContentPackage *)self userGuideMap];

  if (v16)
  {
    v17 = [(TPSContentPackage *)self userGuideMap];
    [v5 appendFormat:@"  %@ = %@\n", @"userGuideMap", v17];
  }

  v18 = [(TPSContentPackage *)self tipMap];

  if (v18)
  {
    v19 = [(TPSContentPackage *)self tipMap];
    [v5 appendFormat:@"  %@ = %@\n", @"tipMap", v19];
  }

  v20 = [(TPSContentPackage *)self assetSizes];

  if (v20)
  {
    v21 = [(TPSContentPackage *)self assetSizes];
    [v5 appendFormat:@"  %@ = %@", @"assetSizes", v21];
  }

  v22 = [(TPSContentPackage *)self featuredCollections];

  if (v22)
  {
    v23 = [(TPSContentPackage *)self featuredCollections];
    [v5 appendFormat:@"  %@ = %@", @"featuredCollections", v23];
  }

  v24 = [(TPSContentPackage *)self userGuideCollection];

  if (v24)
  {
    v25 = [(TPSContentPackage *)self userGuideCollection];
    [v5 appendFormat:@"  %@ = %@", @"userGuideCollection", v25];
  }

  v26 = [(TPSContentPackage *)self mainCollectionSection];

  if (v26)
  {
    v27 = [(TPSContentPackage *)self mainCollectionSection];
    [v5 appendFormat:@"  %@ = %@", @"mainCollectionSection", v27];
  }

  return v5;
}

@end