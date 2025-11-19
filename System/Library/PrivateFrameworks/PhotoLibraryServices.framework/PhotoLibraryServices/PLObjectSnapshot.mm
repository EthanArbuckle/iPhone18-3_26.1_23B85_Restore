@interface PLObjectSnapshot
+ (__CFDictionary)_createIndexMapsSnapshotForManagedObject:(id)a3 changeNotificationCenter:(id)a4;
+ (id)snapshotForManagedObject:(id)a3 changeNotificationCenter:(id)a4 useCommitedValues:(BOOL)a5;
- (BOOL)hasSnapshotValueForProperty:(id)a3;
- (PLObjectSnapshot)initWithManagedObject:(id)a3 properties:(id)a4 toOneRelationships:(id)a5 indexMaps:(__CFDictionary *)a6 useCommitedValues:(BOOL)a7;
- (id)_allSnapshotValuesDescription;
- (id)_snapshotValueForProperty:(id)a3;
- (id)description;
- (id)filteredIndexesForFilter:(id)a3;
- (id)indexMapStateForDerivedObject:(id)a3;
- (id)snapshotValueForProperty:(id)a3;
- (void)dealloc;
- (void)setAssetsSnapshot:(id)a3;
@end

@implementation PLObjectSnapshot

- (void)setAssetsSnapshot:(id)a3
{
  if (a3)
  {
    snapshotValues = self->_snapshotValues;
    v5 = a3;
    v9 = [(NSKnownKeysDictionary *)snapshotValues mapping];
    v6 = [v9 fastIndexForKnownKey:@"assets"];
    v7 = self->_snapshotValues;
    v8 = [v5 copy];

    [(NSKnownKeysDictionary *)v7 setValue:v8 atIndex:v6];
  }
}

- (id)_allSnapshotValuesDescription
{
  v3 = [MEMORY[0x1E695DF70] array];
  snapshotValues = self->_snapshotValues;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLObjectSnapshot__allSnapshotValuesDescription__block_invoke;
  v8[3] = &unk_1E756BF68;
  v9 = v3;
  v5 = v3;
  [(NSKnownKeysDictionary *)snapshotValues enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

void __49__PLObjectSnapshot__allSnapshotValuesDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v5 pl_shortDescription];
  }

  else
  {
    [v5 description];
  }
  v9 = ;

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: {%@}", v6, v9];

  [v7 addObject:v8];
}

- (id)_snapshotValueForProperty:(id)a3
{
  snapshotValues = self->_snapshotValues;
  v5 = a3;
  v6 = [(NSKnownKeysDictionary *)snapshotValues mapping];
  v7 = [v6 fastIndexForKnownKey:v5];

  v8 = [(NSKnownKeysDictionary *)self->_snapshotValues valueAtIndex:v7];

  return v8;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSKnownKeysDictionary *)self->_snapshotValues allKeys];
  v5 = MEMORY[0x1E696AD60];
  v6 = objc_opt_class();
  v7 = [(PLManagedObject *)self->_managedObject entity];
  v8 = [v7 managedObjectClassName];
  v9 = [v4 componentsJoinedByString:{@", "}];
  v10 = [v5 stringWithFormat:@"<%@: %p> class: %@, keys: {%@}", v6, self, v8, v9];

  indexMaps = self->_indexMaps;
  if (indexMaps)
  {
    CFDictionaryApplyFunction(indexMaps, myIndexMapDescriptionApplier, v10);
  }

  objc_autoreleasePoolPop(v3);

  return v10;
}

- (id)filteredIndexesForFilter:(id)a3
{
  v3 = [(PLObjectSnapshot *)self indexMapStateForDerivedObject:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)indexMapStateForDerivedObject:(id)a3
{
  indexMaps = self->_indexMaps;
  if (indexMaps)
  {
    indexMaps = CFDictionaryGetValue(indexMaps, a3);
    v3 = vars8;
  }

  return indexMaps;
}

- (BOOL)hasSnapshotValueForProperty:(id)a3
{
  v3 = [(PLObjectSnapshot *)self _snapshotValueForProperty:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)snapshotValueForProperty:(id)a3
{
  v3 = [(PLObjectSnapshot *)self _snapshotValueForProperty:a3];
  v4 = [MEMORY[0x1E695DFB0] null];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

- (PLObjectSnapshot)initWithManagedObject:(id)a3 properties:(id)a4 toOneRelationships:(id)a5 indexMaps:(__CFDictionary *)a6 useCommitedValues:(BOOL)a7
{
  v7 = a7;
  v63 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v60.receiver = self;
  v60.super_class = PLObjectSnapshot;
  v16 = [(PLObjectSnapshot *)&v60 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_managedObject, a3);
    v18 = [v13 managedObjectContext];
    v19 = [PLChangeNotificationCenter allManagedObjectKeysStrategyWithContext:v18];

    v51 = v19;
    v20 = [objc_alloc(MEMORY[0x1E695D608]) initWithSearchStrategy:v19];
    snapshotValues = v17->_snapshotValues;
    v17->_snapshotValues = v20;

    v45 = v15;
    cf = a6;
    v50 = v7;
    if (v7)
    {
      v49 = [v13 committedValuesForKeys:v14];
    }

    else
    {
      v49 = 0;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v47 = v14;
    obj = v14;
    v22 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v57;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          v26 = v17;
          if (*v57 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v56 + 1) + 8 * i);
          v28 = v13;
          v29 = [v13 entity];
          v30 = [v29 name];
          v31 = +[PLManagedAsset entityName];
          v32 = [v30 isEqualToString:v31];

          v33 = v27;
          if (v32)
          {
            v34 = @"orderedCloudComments";
            if (([(__CFString *)v27 isEqualToString:@"cloudComments"]& 1) != 0 || (v34 = @"orderedLikeComments", v33 = v27, [(__CFString *)v27 isEqualToString:@"likeComments"]))
            {

              v33 = v34;
            }
          }

          if (v50)
          {
            v35 = [v49 objectForKey:v33];
            v13 = v28;
          }

          else
          {
            v13 = v28;
            v35 = [v28 valueForKey:v33];
          }

          v36 = [v35 copy];

          v17 = v26;
          if (!v36)
          {
            v36 = [MEMORY[0x1E695DFB0] null];
          }

          -[NSKnownKeysDictionary setValue:atIndex:](v26->_snapshotValues, "setValue:atIndex:", v36, [v51 fastIndexForKnownKey:v27]);
        }

        v23 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v23);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v15 = v45;
    v37 = v45;
    v38 = [v37 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v53;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v53 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v52 + 1) + 8 * j);
          if (v50)
          {
            [v49 objectForKey:*(*(&v52 + 1) + 8 * j)];
          }

          else
          {
            [v13 valueForKey:*(*(&v52 + 1) + 8 * j)];
          }
          v43 = ;
          if (!v43)
          {
            v43 = [MEMORY[0x1E695DFB0] null];
          }

          -[NSKnownKeysDictionary setValue:atIndex:](v17->_snapshotValues, "setValue:atIndex:", v43, [v51 fastIndexForKnownKey:v42]);
        }

        v39 = [v37 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v39);
    }

    if (cf)
    {
      v17->_indexMaps = CFRetain(cf);
    }

    v14 = v47;
  }

  return v17;
}

- (void)dealloc
{
  indexMaps = self->_indexMaps;
  if (indexMaps)
  {
    CFRelease(indexMaps);
  }

  v4.receiver = self;
  v4.super_class = PLObjectSnapshot;
  [(PLObjectSnapshot *)&v4 dealloc];
}

+ (__CFDictionary)_createIndexMapsSnapshotForManagedObject:(id)a3 changeNotificationCenter:(id)a4
{
  v5 = a3;
  v6 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__PLObjectSnapshot__createIndexMapsSnapshotForManagedObject_changeNotificationCenter___block_invoke;
  v9[3] = &unk_1E756BF40;
  v9[4] = &v10;
  [v6 enumerateIndexMappingCachesForObject:v5 withBlock:v9];
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __86__PLObjectSnapshot__createIndexMapsSnapshotForManagedObject_changeNotificationCenter___block_invoke(uint64_t a1, void *a2)
{
  key = a2;
  v3 = [key cachedIndexMapState];
  if (v3)
  {
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreateMutable(0, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v4 = [v3 copyWithZone:0];
    CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 24), key, v4);
  }
}

+ (id)snapshotForManagedObject:(id)a3 changeNotificationCenter:(id)a4 useCommitedValues:(BOOL)a5
{
  v5 = a5;
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 isFault])
  {
    v10 = 0;
    goto LABEL_43;
  }

  v11 = [v9 _orderedRelationshipsOfInterestForObject:v8];
  v12 = [v9 _attributesOfInterestForObject:v8];
  v13 = [v9 _toOneRelationshipsOfInterestForObject:v8];
  v14 = [v11 count];
  v15 = [v12 count] + v14;
  if (v15 + [v13 count])
  {
    context = objc_autoreleasePoolPush();
    v41 = v13;
    v39 = v5;
    v38 = a1;
    if (v5)
    {
      v16 = [v11 allObjects];
      v17 = [v13 allObjects];
    }

    else
    {
      if (v11)
      {
        v16 = [MEMORY[0x1E695DF70] array];
      }

      else
      {
        v16 = 0;
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v18 = v11;
      v19 = [v18 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v47;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v47 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v46 + 1) + 8 * i);
            if (([v8 hasFaultForRelationshipNamed:v23] & 1) == 0)
            {
              [v16 addObject:v23];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v20);
      }

      v37 = v11;
      if (v41)
      {
        v17 = [MEMORY[0x1E695DF70] array];
      }

      else
      {
        v17 = 0;
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v24 = v41;
      v25 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v43;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v43 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v42 + 1) + 8 * j);
            if (([v8 hasFaultForRelationshipNamed:v29] & 1) == 0)
            {
              [v17 addObject:v29];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v26);
      }

      v30 = [v16 count];
      v31 = [v12 count] + v30;
      if (!(v31 + [v17 count]))
      {
        v10 = 0;
        v11 = v37;
LABEL_41:
        v13 = v41;

        objc_autoreleasePoolPop(context);
        goto LABEL_42;
      }

      v11 = v37;
    }

    v32 = [MEMORY[0x1E695DF70] array];
    v33 = v32;
    if (v16)
    {
      [v32 addObjectsFromArray:v16];
    }

    if (v12)
    {
      v34 = [v12 allObjects];
      [v33 addObjectsFromArray:v34];
    }

    v35 = [v38 _createIndexMapsSnapshotForManagedObject:v8 changeNotificationCenter:v9];
    v10 = [[v38 alloc] initWithManagedObject:v8 properties:v33 toOneRelationships:v17 indexMaps:v35 useCommitedValues:v39];
    if (v35)
    {
      CFRelease(v35);
    }

    goto LABEL_41;
  }

  v10 = 0;
LABEL_42:

LABEL_43:

  return v10;
}

@end