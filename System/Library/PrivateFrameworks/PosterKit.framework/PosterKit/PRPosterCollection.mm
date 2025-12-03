@interface PRPosterCollection
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCollection:(id)collection;
- (BOOL)isPosterConfigurationAnAssociatedPoster:(id)poster parentPoster:(id *)parentPoster;
- (NSSet)associatedPosterUUIDs;
- (NSSet)associatedPosters;
- (NSSet)posterExtensions;
- (PRPosterCollection)initWithSelectedPoster:(id)poster posters:(id)posters associatedPosterMap:(id)map attributeProvider:(id)provider;
- (id)associatedHomeScreenConfigurationsMap;
- (id)associatedPosterForPoster:(id)poster;
- (id)associatedPosterForUUID:(id)d;
- (id)attributeForPoster:(id)poster ofType:(id)type;
- (id)attributesForPoster:(id)poster ofTypes:(id)types;
- (id)chargerIdentifierRelationships;
- (id)configuredPropertiesForPoster:(id)poster;
- (id)debugDescription;
- (id)fallbackSelectedForSortedConfigurations:(id)configurations reverse:(BOOL)reverse;
- (id)posterWithUUID:(id)d;
@end

@implementation PRPosterCollection

- (PRPosterCollection)initWithSelectedPoster:(id)poster posters:(id)posters associatedPosterMap:(id)map attributeProvider:(id)provider
{
  posterCopy = poster;
  postersCopy = posters;
  mapCopy = map;
  providerCopy = provider;
  v16 = posterCopy;
  if (v16)
  {
    NSClassFromString(&cfstr_Prposterconfig.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterCollection initWithSelectedPoster:a2 posters:? associatedPosterMap:? attributeProvider:?];
    }
  }

  v17 = postersCopy;
  NSClassFromString(&cfstr_Nsorderedset.isa);
  if (!v17)
  {
    [PRPosterCollection initWithSelectedPoster:a2 posters:? associatedPosterMap:? attributeProvider:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterCollection initWithSelectedPoster:a2 posters:? associatedPosterMap:? attributeProvider:?];
  }

  v18 = mapCopy;
  NSClassFromString(&cfstr_Nsmaptable.isa);
  if (!v18)
  {
    [PRPosterCollection initWithSelectedPoster:a2 posters:? associatedPosterMap:? attributeProvider:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterCollection initWithSelectedPoster:a2 posters:? associatedPosterMap:? attributeProvider:?];
  }

  v28.receiver = self;
  v28.super_class = PRPosterCollection;
  v19 = [(PRPosterCollection *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_selectedPoster, poster);
    v21 = [v17 copy];
    orderedPosters = v20->_orderedPosters;
    v20->_orderedPosters = v21;

    v23 = [v18 copy];
    associatedPosterMap = v20->_associatedPosterMap;
    v20->_associatedPosterMap = v23;

    v25 = [providerCopy copy];
    attributeProvider = v20->_attributeProvider;
    v20->_attributeProvider = v25;
  }

  return v20;
}

- (id)debugDescription
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  selectedPoster = [(PRPosterCollection *)self selectedPoster];
  v5 = [v3 appendObject:selectedPoster withName:@"selectedPoster" skipIfNil:1];

  orderedPosterUUIDs = [(PRPosterCollection *)self orderedPosterUUIDs];
  array = [orderedPosterUUIDs array];
  v20 = v3;
  [v3 appendArraySection:array withName:@"posterUUIDs" skipIfEmpty:1];

  v21 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  orderedPosterUUIDs2 = [(PRPosterCollection *)self orderedPosterUUIDs];
  v9 = [orderedPosterUUIDs2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(orderedPosterUUIDs2);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [(PRPosterCollection *)self associatedPosterForUUID:v13];
        _path = [v14 _path];
        serverIdentity = [_path serverIdentity];
        posterUUID = [serverIdentity posterUUID];

        if (posterUUID)
        {
          [v21 setObject:posterUUID forKeyedSubscript:v13];
        }
      }

      v10 = [orderedPosterUUIDs2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  [v20 appendDictionarySection:v21 withName:@"parentToAssocPoster" skipIfEmpty:1];
  build = [v20 build];

  return build;
}

- (BOOL)isEqualToCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [[PRPosterCollectionDiffInspector alloc] initWithCollection:self newCollection:collectionCopy];

  v6 = [(PRPosterCollectionDiffInspector *)v5 isEqual];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PRPosterCollection *)self isEqualToCollection:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)posterWithUUID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_orderedPosters;
  v5 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        _path = [v9 _path];
        serverIdentity = [_path serverIdentity];
        posterUUID = [serverIdentity posterUUID];
        v13 = [posterUUID isEqual:dCopy];

        if (v13)
        {
          v14 = v9;
          goto LABEL_13;
        }

        v14 = [(PRPosterCollection *)self associatedPosterForPoster:v9];
        _path2 = [v14 _path];
        serverIdentity2 = [_path2 serverIdentity];
        posterUUID2 = [serverIdentity2 posterUUID];
        v18 = [posterUUID2 isEqual:dCopy];

        if (v18)
        {
          goto LABEL_13;
        }
      }

      v6 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      v14 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (id)associatedPosterForUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_orderedPosters;
  v5 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = [(PRPosterCollection *)self associatedPosterForPoster:*(*(&v16 + 1) + 8 * v8)];
      _path = [v9 _path];
      serverIdentity = [_path serverIdentity];
      posterUUID = [serverIdentity posterUUID];
      v13 = [posterUUID isEqual:dCopy];

      if (v13)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  return v9;
}

- (NSSet)associatedPosters
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  orderedPosters = [(PRPosterCollection *)self orderedPosters];
  v5 = [orderedPosters countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(orderedPosters);
        }

        v9 = [(PRPosterCollection *)self associatedPosterForPoster:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [orderedPosters countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isPosterConfigurationAnAssociatedPoster:(id)poster parentPoster:(id *)parentPoster
{
  v30 = *MEMORY[0x1E69E9840];
  _path = [poster _path];
  serverIdentity = [_path serverIdentity];
  posterUUID = [serverIdentity posterUUID];

  associatedPosterUUIDs = [(PRPosterCollection *)self associatedPosterUUIDs];
  v24 = posterUUID;
  LODWORD(serverIdentity) = [associatedPosterUUIDs containsObject:posterUUID];

  if (serverIdentity)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(NSMapTable *)self->_associatedPosterMap keyEnumerator];
    v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      parentPosterCopy = parentPoster;
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [(NSMapTable *)self->_associatedPosterMap objectForKey:v14];
          _path2 = [v15 _path];
          serverIdentity2 = [_path2 serverIdentity];
          posterUUID2 = [serverIdentity2 posterUUID];
          v19 = [posterUUID2 isEqual:v24];

          if (v19)
          {
            if (parentPosterCopy)
            {
              *parentPosterCopy = [(PRPosterCollection *)self posterWithUUID:v14];
            }

            v20 = 1;
            goto LABEL_15;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v20 = 0;
LABEL_15:
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)associatedHomeScreenConfigurationsMap
{
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  orderedPosters = [(PRPosterCollection *)self orderedPosters];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PRPosterCollection_associatedHomeScreenConfigurationsMap__block_invoke;
  v9[3] = &unk_1E7844BD8;
  v9[4] = self;
  v5 = strongToStrongObjectsMapTable;
  v10 = v5;
  [orderedPosters enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __59__PRPosterCollection_associatedHomeScreenConfigurationsMap__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v3 associatedPosterForPoster:v4];
  v5 = [v4 _path];

  v6 = [v5 isServerPosterPath];
  if (v5 && v6 && v9)
  {
    v7 = *(a1 + 40);
    v8 = [v5 serverIdentity];
    [v7 setObject:v9 forKey:v8];
  }
}

- (NSSet)posterExtensions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  posterExtensions = selfCopy->_posterExtensions;
  if (posterExtensions)
  {
    v4 = posterExtensions;
  }

  else
  {
    v5 = objc_opt_new();
    orderedPosters = [(PRPosterCollection *)selfCopy orderedPosters];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__PRPosterCollection_posterExtensions__block_invoke;
    v11[3] = &unk_1E7844C00;
    v7 = v5;
    v12 = v7;
    [orderedPosters enumerateObjectsUsingBlock:v11];

    v8 = [v7 copy];
    v9 = selfCopy->_posterExtensions;
    selfCopy->_posterExtensions = v8;

    v4 = selfCopy->_posterExtensions;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

void __38__PRPosterCollection_posterExtensions__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = [a2 _path];
  v3 = [v5 serverIdentity];
  v4 = [v3 provider];
  [v2 addObject:v4];
}

id __40__PRPosterCollection_orderedPosterUUIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _path];
  v3 = [v2 serverIdentity];
  v4 = [v3 posterUUID];

  return v4;
}

- (NSSet)associatedPosterUUIDs
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if ([(NSMapTable *)self->_associatedPosterMap count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    keyEnumerator = [(NSMapTable *)self->_associatedPosterMap keyEnumerator];
    v5 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v9 = [(NSMapTable *)self->_associatedPosterMap objectForKey:*(*(&v14 + 1) + 8 * i)];
          _path = [v9 _path];
          serverIdentity = [_path serverIdentity];
          posterUUID = [serverIdentity posterUUID];

          if (posterUUID)
          {
            [v3 addObject:posterUUID];
          }
        }

        v6 = [keyEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (id)associatedPosterForPoster:(id)poster
{
  associatedPosterMap = self->_associatedPosterMap;
  _path = [poster _path];
  serverIdentity = [_path serverIdentity];
  posterUUID = [serverIdentity posterUUID];
  v7 = [(NSMapTable *)associatedPosterMap objectForKey:posterUUID];

  return v7;
}

- (id)attributeForPoster:(id)poster ofType:(id)type
{
  posterCopy = poster;
  typeCopy = type;
  selfCopy = [(PRPosterCollection *)self orderedPosters];
  if ([(PRPosterCollection *)selfCopy containsObject:posterCopy]&& self->_attributeProvider)
  {

    if (!typeCopy)
    {
      v14 = 0;
      goto LABEL_17;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    posterToAttributeMap = selfCopy->_posterToAttributeMap;
    if (!posterToAttributeMap)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v11 = selfCopy->_posterToAttributeMap;
      selfCopy->_posterToAttributeMap = weakToStrongObjectsMapTable;

      posterToAttributeMap = selfCopy->_posterToAttributeMap;
    }

    v12 = [(NSMapTable *)posterToAttributeMap objectForKey:posterCopy];
    if (!v12)
    {
      v12 = objc_opt_new();
      [(NSMapTable *)selfCopy->_posterToAttributeMap setObject:v12 forKey:posterCopy];
    }

    v13 = [v12 objectForKey:typeCopy];

    if (v13)
    {
      v14 = [v12 objectForKey:typeCopy];
    }

    else
    {
      attributeProvider = self->_attributeProvider;
      v16 = [MEMORY[0x1E695DFD8] setWithObject:typeCopy];
      v17 = attributeProvider[2](attributeProvider, posterCopy, v16);

      v14 = [v17 objectForKey:typeCopy];
      if (v14)
      {
        [v12 setObject:v14 forKeyedSubscript:typeCopy];
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v14 = 0;
  }

LABEL_17:

  return v14;
}

- (id)attributesForPoster:(id)poster ofTypes:(id)types
{
  v51 = *MEMORY[0x1E69E9840];
  posterCopy = poster;
  typesCopy = types;
  v8 = posterCopy;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v8)
  {
    [PRPosterCollection attributesForPoster:a2 ofTypes:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterCollection attributesForPoster:a2 ofTypes:?];
  }

  v40 = v8;

  orderedPosters = [(PRPosterCollection *)self orderedPosters];
  v10 = v8;
  if (![orderedPosters containsObject:v8])
  {

    goto LABEL_13;
  }

  attributeProvider = self->_attributeProvider;

  if (!attributeProvider)
  {
LABEL_13:
    v21 = 0;
    goto LABEL_36;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  posterToAttributeMap = selfCopy->_posterToAttributeMap;
  if (!posterToAttributeMap)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v15 = selfCopy->_posterToAttributeMap;
    selfCopy->_posterToAttributeMap = weakToStrongObjectsMapTable;

    posterToAttributeMap = selfCopy->_posterToAttributeMap;
  }

  v16 = [(NSMapTable *)posterToAttributeMap objectForKey:v10];
  if (!v16)
  {
    v16 = objc_opt_new();
  }

  v17 = MEMORY[0x1E695DFD8];
  allKeys = [v16 allKeys];
  v19 = [v17 setWithArray:allKeys];
  if (![v19 isEqualToSet:typesCopy])
  {

    goto LABEL_15;
  }

  v20 = [v16 copy];

  if (!v20)
  {
LABEL_15:
    v22 = objc_opt_new();
    v23 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = typesCopy;
    v25 = [v24 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v25)
    {
      v26 = *v46;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v46 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v45 + 1) + 8 * i);
          v29 = [v16 objectForKey:v28];
          if (v29)
          {
            [v22 setObject:v29 forKey:v28];
          }

          else
          {
            [v23 addObject:v28];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v25);
    }

    v30 = (*(self->_attributeProvider + 2))();
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    keyEnumerator = [v30 keyEnumerator];
    v32 = [keyEnumerator countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v32)
    {
      v33 = *v42;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v35 = *(*(&v41 + 1) + 8 * j);
          v36 = [v30 objectForKey:v35];
          if (v36)
          {
            [v16 setObject:v36 forKeyedSubscript:v35];
            [v22 setObject:v36 forKeyedSubscript:v35];
          }
        }

        v32 = [keyEnumerator countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v32);
    }

    v21 = [v30 copy];
    goto LABEL_35;
  }

  v21 = v20;
LABEL_35:

  objc_sync_exit(obj);
LABEL_36:

  return v21;
}

- (id)configuredPropertiesForPoster:(id)poster
{
  posterCopy = poster;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!posterCopy)
  {
    [PRPosterCollection configuredPropertiesForPoster:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterCollection configuredPropertiesForPoster:a2];
  }

  orderedPosters = [(PRPosterCollection *)self orderedPosters];
  v7 = [orderedPosters containsObject:posterCopy];

  if (v7)
  {
    v8 = [posterCopy loadConfiguredPropertiesWithError:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)chargerIdentifierRelationships
{
  v3 = objc_opt_new();
  orderedPosters = [(PRPosterCollection *)self orderedPosters];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PRPosterCollection_chargerIdentifierRelationships__block_invoke;
  v9[3] = &unk_1E7844BD8;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [orderedPosters enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __52__PRPosterCollection_chargerIdentifierRelationships__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 _path];
  v5 = [v4 serverIdentity];

  v21 = v5;
  v6 = [v5 posterUUID];
  v7 = [v6 UUIDString];

  v8 = v3;
  [*(a1 + 32) attributeForPoster:v3 ofType:@"PRPosterRoleAttributeTypeAmbientChargerConfiguration"];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = v25 = 0u;
  obj = [v19 associatedChargerIdentifiers];
  v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [*(a1 + 40) objectForKeyedSubscript:v13];
        if (!v14)
        {
          v14 = objc_opt_new();
          [*(a1 + 40) setObject:v14 forKeyedSubscript:v13];
        }

        v15 = MEMORY[0x1E696AEC0];
        v16 = [v21 provider];
        v17 = [v8 descriptorIdentifier];
        v18 = [v15 stringWithFormat:@"%@ %@ %@", v7, v16, v17];
        [v14 addObject:v18];
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }
}

- (id)fallbackSelectedForSortedConfigurations:(id)configurations reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  configurationsCopy = configurations;
  v7 = configurationsCopy;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4;
  v20 = __Block_byref_object_dispose__4;
  v21 = 0;
  if (reverseCopy)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  if (configurationsCopy && [configurationsCopy count])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__PRPosterCollection_fallbackSelectedForSortedConfigurations_reverse___block_invoke;
    v15[3] = &unk_1E7844C48;
    v15[4] = self;
    v15[5] = &v16;
    [v7 enumerateObjectsWithOptions:v8 usingBlock:v15];
    if (!v17[5])
    {
      v9 = PRLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PRPosterCollection fallbackSelectedForSortedConfigurations:v9 reverse:?];
      }

      if (reverseCopy)
      {
        [v7 lastObject];
      }

      else
      {
        [v7 firstObject];
      }
      v10 = ;
      v13 = v17[5];
      v17[5] = v10;
    }

    v12 = v17[5];
  }

  else
  {
    v11 = PRLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PRPosterCollection fallbackSelectedForSortedConfigurations:v11 reverse:?];
    }

    v12 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v12;
}

void __70__PRPosterCollection_fallbackSelectedForSortedConfigurations_reverse___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(a1 + 32) configuredPropertiesForPoster:v7];
  v9 = [v8 focusConfiguration];

  if (!v9)
  {
    v10 = PRLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1A8AA7000, v10, OS_LOG_TYPE_DEFAULT, "Choosing selected configuration: choosing MRU unpaired configuration %{public}@", &v11, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)initWithSelectedPoster:(char *)a1 posters:associatedPosterMap:attributeProvider:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSelectedPoster:(char *)a1 posters:associatedPosterMap:attributeProvider:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSOrderedSetClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSelectedPoster:(char *)a1 posters:associatedPosterMap:attributeProvider:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSMapTableClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSelectedPoster:(char *)a1 posters:associatedPosterMap:attributeProvider:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSelectedPoster:(char *)a1 posters:associatedPosterMap:attributeProvider:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)attributesForPoster:(char *)a1 ofTypes:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)attributesForPoster:(char *)a1 ofTypes:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)configuredPropertiesForPoster:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)configuredPropertiesForPoster:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end