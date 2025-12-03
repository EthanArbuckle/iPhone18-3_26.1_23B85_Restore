@interface SBHLibraryCategoryMap
+ (id)diffMap:(id)map withMap:(id)withMap;
- (BOOL)categoriesContainApplicationIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCategoryMap:(id)map;
- (NSDictionary)dictionaryRepresentation;
- (SBHLibraryCategoryMap)init;
- (SBHLibraryCategoryMap)initWithCoder:(id)coder;
- (id)categoryIdentifierForProactiveCategoryIdentifier:(unint64_t)identifier;
- (id)categoryIdentifiersForApplicationIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)localizedCategoryNameForCategoryIdentifier:(id)identifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)sortedApplicationIdentifiersForCategoryIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)setCategoryIdentifiers:(id)identifiers;
- (void)setLocalizedCategoryNameByCategoryIdentifier:(id)identifier;
- (void)setSortedApplicationIdentifiersByCategoryIdentifier:(id)identifier;
@end

@implementation SBHLibraryCategoryMap

- (SBHLibraryCategoryMap)init
{
  v15.receiver = self;
  v15.super_class = SBHLibraryCategoryMap;
  v2 = [(SBHLibraryCategoryMap *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    categoryIdentifiers = v2->_categoryIdentifiers;
    v2->_categoryIdentifiers = v3;

    v5 = objc_opt_new();
    sortedApplicationIdentifiersByCategoryIdentifier = v2->_sortedApplicationIdentifiersByCategoryIdentifier;
    v2->_sortedApplicationIdentifiersByCategoryIdentifier = v5;

    v7 = objc_opt_new();
    localizedCategoryNameByCategoryIdentifier = v2->_localizedCategoryNameByCategoryIdentifier;
    v2->_localizedCategoryNameByCategoryIdentifier = v7;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uniqueIdentifier = v2->_uniqueIdentifier;
    v2->_uniqueIdentifier = uUIDString;

    date = [MEMORY[0x1E695DF00] date];
    generatedDate = v2->_generatedDate;
    v2->_generatedDate = date;

    v2->_loadedFromDisk = 0;
  }

  return v2;
}

- (SBHLibraryCategoryMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = SBHLibraryCategoryMap;
  v5 = [(SBHLibraryCategoryMap *)&v41 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_categoryIdentifiers"];
    v11 = v10;
    v12 = MEMORY[0x1E695E0F0];
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v14 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v13];

    categoryIdentifiers = v5->_categoryIdentifiers;
    v5->_categoryIdentifiers = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"_sortedApplicationIdentifiersByCategoryIdentifier"];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = objc_opt_new();
    }

    v24 = v23;

    objc_storeStrong(&v5->_sortedApplicationIdentifiersByCategoryIdentifier, v24);
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"_localizedCategoryNameByCategoryIdentifier"];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = objc_opt_new();
    }

    v32 = v31;

    objc_storeStrong(&v5->_localizedCategoryNameByCategoryIdentifier, v32);
    if ([coderCopy containsValueForKey:@"_uniqueIdentifier"])
    {
      uUIDString = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_uniqueIdentifier"];
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
    }

    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = uUIDString;
    v36 = uUIDString;

    if ([coderCopy containsValueForKey:@"_generatedDate"])
    {
      [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_generatedDate"];
    }

    else
    {
      [MEMORY[0x1E695DF00] date];
    }
    v37 = ;
    generatedDate = v5->_generatedDate;
    v5->_generatedDate = v37;

    if ([coderCopy containsValueForKey:@"_loadedFromDisk"])
    {
      v39 = [coderCopy decodeBoolForKey:@"_loadedFromDisk"];
    }

    else
    {
      v39 = 1;
    }

    v5->_loadedFromDisk = v39;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  categoryIdentifiers = self->_categoryIdentifiers;
  coderCopy = coder;
  array = [(NSMutableOrderedSet *)categoryIdentifiers array];
  v6 = array;
  if (array)
  {
    v7 = array;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  [coderCopy encodeObject:v7 forKey:@"_categoryIdentifiers"];

  [coderCopy encodeObject:self->_sortedApplicationIdentifiersByCategoryIdentifier forKey:@"_sortedApplicationIdentifiersByCategoryIdentifier"];
  [coderCopy encodeObject:self->_localizedCategoryNameByCategoryIdentifier forKey:@"_localizedCategoryNameByCategoryIdentifier"];
  [coderCopy encodeBool:1 forKey:@"_loadedFromDisk"];
  [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"_uniqueIdentifier"];
  [coderCopy encodeObject:self->_generatedDate forKey:@"_generatedDate"];
}

- (NSDictionary)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(SBHLibraryCategoryMap *)self categoryIdentifiers];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(SBHLibraryCategoryMap *)self sortedApplicationIdentifiersForCategoryIdentifier:v8];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = MEMORY[0x1E695E0F0];
        }

        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "predictionCategoryID")}];
        v13 = [v12 description];
        [v3 setObject:v11 forKeyedSubscript:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SBHLibraryCategoryMap *)self isEqualToCategoryMap:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCategoryMap:(id)map
{
  mapCopy = map;
  v5 = mapCopy;
  if (mapCopy && [*(mapCopy + 1) isEqual:self->_categoryIdentifiers] && -[NSMutableDictionary isEqualToDictionary:](self->_sortedApplicationIdentifiersByCategoryIdentifier, "isEqualToDictionary:", v5[2]))
  {
    v6 = [(NSMutableDictionary *)self->_localizedCategoryNameByCategoryIdentifier isEqualToDictionary:v5[3]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_generatedDate withName:@"generatedDate"];
  v5 = [v3 appendObject:self->_uniqueIdentifier withName:@"uniqueIdentifier"];
  v6 = [v3 appendBool:self->_loadedFromDisk withName:@"loadedFromDisk"];
  v7 = [(NSMutableOrderedSet *)self->_categoryIdentifiers valueForKey:@"predictionCategoryID"];
  [v3 appendArraySection:v7 withName:@"categoryIdentifiers" skipIfEmpty:0];

  [v3 appendDictionarySection:self->_sortedApplicationIdentifiersByCategoryIdentifier withName:@"sortedApplicationIdentifiersByCategoryIdentifier" skipIfEmpty:0];
  [v3 appendDictionarySection:self->_localizedCategoryNameByCategoryIdentifier withName:@"_localizedCategoryNameByCategoryIdentifier" skipIfEmpty:0];
  build = [v3 build];

  return build;
}

+ (id)diffMap:(id)map withMap:(id)withMap
{
  v46 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  withMapCopy = withMap;
  withMapCopy = [MEMORY[0x1E696AD60] stringWithFormat:@"LHS: %p\nRHS: %p\n", mapCopy, withMapCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__SBHLibraryCategoryMap_diffMap_withMap___block_invoke;
  aBlock[3] = &unk_1E808B7B0;
  v38 = withMapCopy;
  v44 = v38;
  v8 = _Block_copy(aBlock);
  v9 = [SBHLibraryCategoryIdentifier categoryWithLocalizedDisplayName:@"CategoryIdentifiers" categoryID:31337 categoryIndex:0];
  array = [mapCopy[1] array];
  array2 = [withMapCopy[1] array];
  v35 = v9;
  v8[2](v8, v9, array, array2);

  v12 = MEMORY[0x1E695DFA8];
  v13 = [mapCopy[1] set];
  v14 = [v12 setWithSet:v13];

  v15 = withMapCopy;
  array3 = [withMapCopy[1] array];
  [v14 addObjectsFromArray:array3];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v14;
  v17 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v37 = *v40;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v39 + 1) + 8 * i);
        v21 = [mapCopy[3] objectForKeyedSubscript:v20];
        v22 = [v15[3] objectForKeyedSubscript:v20];
        v23 = v22;
        if (v21)
        {
          v24 = v22 == 0;
        }

        else
        {
          v24 = 0;
        }

        v25 = @"\t--> ADD %@: ";
        if (v24 || (!v21 ? (v26 = v22 == 0) : (v26 = 1), v25 = @"\t--> DELETE %@: ", !v26))
        {
          [v38 appendFormat:v25, v20];
        }

        if (([v21 isEqualToString:v23] & 1) == 0)
        {
          [v38 appendFormat:@"Category id '%@' name change from '%@'->'%@'", v20, v21, v23];
        }

        [mapCopy[2] objectForKeyedSubscript:v20];
        v28 = v27 = mapCopy;
        v29 = [v15[2] objectForKeyedSubscript:v20];
        v30 = v29;
        if (v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = MEMORY[0x1E695E0F0];
        }

        if (v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = MEMORY[0x1E695E0F0];
        }

        v8[2](v8, v20, v31, v32);

        mapCopy = v27;
      }

      v18 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v18);
  }

  v33 = v38;
  return v38;
}

void __41__SBHLibraryCategoryMap_diffMap_withMap___block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a3 | a4)
  {
    v8 = [a3 differenceFromArray:a4];
    if ([v8 hasChanges])
    {
      v9 = *(a1 + 32);
      v10 = [v7 localizedDisplayName];
      [v9 appendFormat:@"\t-->%@: ", v10];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v11 = [v8 removals];
      v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v30;
        do
        {
          v15 = 0;
          do
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(a1 + 32);
            v17 = [*(*(&v29 + 1) + 8 * v15) object];
            [v16 appendFormat:@"\n\t\tDELETION %@", v17];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v13);
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v18 = [v8 insertions];
      v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v26;
        do
        {
          v22 = 0;
          do
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(a1 + 32);
            v24 = [*(*(&v25 + 1) + 8 * v22) object];
            [v23 appendFormat:@"\n\t\tINSERT %@", v24];

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v20);
      }

      [*(a1 + 32) appendString:@"\n"];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  categoryIdentifiers = [(SBHLibraryCategoryMap *)self categoryIdentifiers];
  [v4 setCategoryIdentifiers:categoryIdentifiers];

  sortedApplicationIdentifiersByCategoryIdentifier = [(SBHLibraryCategoryMap *)self sortedApplicationIdentifiersByCategoryIdentifier];
  [v4 setSortedApplicationIdentifiersByCategoryIdentifier:sortedApplicationIdentifiersByCategoryIdentifier];

  localizedCategoryNameByCategoryIdentifier = [(SBHLibraryCategoryMap *)self localizedCategoryNameByCategoryIdentifier];
  [v4 setLocalizedCategoryNameByCategoryIdentifier:localizedCategoryNameByCategoryIdentifier];

  metadata = [(SBHLibraryCategoryMap *)self metadata];
  [v4 setMetadata:metadata];

  [v4 setLoadedFromDisk:{-[SBHLibraryCategoryMap loadedFromDisk](self, "loadedFromDisk")}];
  uniqueIdentifier = [(SBHLibraryCategoryMap *)self uniqueIdentifier];
  [v4 setUniqueIdentifier:uniqueIdentifier];

  generatedDate = [(SBHLibraryCategoryMap *)self generatedDate];
  [v4 setGeneratedDate:generatedDate];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  categoryIdentifiers = [(SBHLibraryCategoryMap *)self categoryIdentifiers];
  [v4 setCategoryIdentifiers:categoryIdentifiers];

  sortedApplicationIdentifiersByCategoryIdentifier = [(SBHLibraryCategoryMap *)self sortedApplicationIdentifiersByCategoryIdentifier];
  [v4 setSortedApplicationIdentifiersByCategoryIdentifier:sortedApplicationIdentifiersByCategoryIdentifier];

  localizedCategoryNameByCategoryIdentifier = [(SBHLibraryCategoryMap *)self localizedCategoryNameByCategoryIdentifier];
  [v4 setLocalizedCategoryNameByCategoryIdentifier:localizedCategoryNameByCategoryIdentifier];

  metadata = [(SBHLibraryCategoryMap *)self metadata];
  [v4 setMetadata:metadata];

  [v4 setLoadedFromDisk:{-[SBHLibraryCategoryMap loadedFromDisk](self, "loadedFromDisk")}];
  uniqueIdentifier = [(SBHLibraryCategoryMap *)self uniqueIdentifier];
  [v4 setUniqueIdentifier:uniqueIdentifier];

  generatedDate = [(SBHLibraryCategoryMap *)self generatedDate];
  [v4 setGeneratedDate:generatedDate];

  return v4;
}

- (id)localizedCategoryNameForCategoryIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_localizedCategoryNameByCategoryIdentifier objectForKey:identifier];
  v4 = [v3 copy];

  return v4;
}

- (id)sortedApplicationIdentifiersForCategoryIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_sortedApplicationIdentifiersByCategoryIdentifier objectForKey:identifier];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)categoriesContainApplicationIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  categoryIdentifiers = [(SBHLibraryCategoryMap *)self categoryIdentifiers];
  v6 = [categoryIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(categoryIdentifiers);
        }

        v10 = [(SBHLibraryCategoryMap *)self sortedApplicationIdentifiersForCategoryIdentifier:*(*(&v14 + 1) + 8 * i)];
        v11 = [v10 containsObject:identifierCopy];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [categoryIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)categoryIdentifiersForApplicationIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_sortedApplicationIdentifiersByCategoryIdentifier;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_sortedApplicationIdentifiersByCategoryIdentifier objectForKey:v11, v15];
        v13 = [v12 containsObject:identifierCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)setCategoryIdentifiers:(id)identifiers
{
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithArray:identifiers];
  categoryIdentifiers = self->_categoryIdentifiers;
  self->_categoryIdentifiers = v4;

  MEMORY[0x1EEE66BB8](v4, categoryIdentifiers);
}

- (void)setSortedApplicationIdentifiersByCategoryIdentifier:(id)identifier
{
  v4 = [identifier mutableCopy];
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
  }

  sortedApplicationIdentifiersByCategoryIdentifier = self->_sortedApplicationIdentifiersByCategoryIdentifier;
  self->_sortedApplicationIdentifiersByCategoryIdentifier = v5;
}

- (void)setLocalizedCategoryNameByCategoryIdentifier:(id)identifier
{
  v4 = [identifier mutableCopy];
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
  }

  localizedCategoryNameByCategoryIdentifier = self->_localizedCategoryNameByCategoryIdentifier;
  self->_localizedCategoryNameByCategoryIdentifier = v5;
}

- (id)categoryIdentifierForProactiveCategoryIdentifier:(unint64_t)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  categoryIdentifiers = [(SBHLibraryCategoryMap *)self categoryIdentifiers];
  v5 = [categoryIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(categoryIdentifiers);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 predictionCategoryID] == identifier)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [categoryIdentifiers countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

@end