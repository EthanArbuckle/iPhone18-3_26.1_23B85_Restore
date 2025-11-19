@interface PLPropertyIndexMapping
+ (BOOL)includesToManyRelationship:(id)a3 entity:(id)a4;
+ (PLPropertyIndexMapping)defaultMapping;
+ (id)attributeNamesForIndexValues:(unint64_t)a3 entity:(id)a4;
+ (id)relationshipNamesForIndexValues:(unint64_t)a3 entity:(id)a4;
+ (unint64_t)indexValueForAttributeNames:(id)a3 entity:(id)a4;
+ (unint64_t)indexValueForRelationshipNames:(id)a3 entity:(id)a4;
+ (void)recordChangedKeys:(id)a3 forObjectID:(id)a4 inAttributesByOID:(id)a5 relationshipsByOID:(id)a6;
+ (void)recordChangedProperties:(id)a3 forObjectID:(id)a4 inAttributesByOID:(id)a5 relationshipsByOID:(id)a6;
- ($61A80719B04F7407D3E47539F1B23CAA)_indexValueForPropertyNames:(id)a3 entityName:(id)a4 indexesByPropertyNamesByEntityNames:(id)a5;
- (BOOL)dumpToDirectory:(id)a3 error:(id *)a4;
- (BOOL)includesToManyRelationship:(id)a3 entity:(id)a4;
- (BOOL)includesTransientAttributes:(id)a3 entity:(id)a4;
- (PLPropertyIndexMapping)init;
- (PLPropertyIndexMapping)initWithManagedObjectModel:(id)a3;
- (id)_dumpDictionary:(id)a3 toDir:(id)a4 withName:(id)a5;
- (id)_processEntityByName:(id)a3 obj:(id)a4;
- (id)_processSubEntityByName:(id)a3 entity:(id)a4 withEntityData:(id)a5;
- (id)_propertyNamesForIndexValues:(id)a3 entity:(id)a4 propertyNamesByIndexByEntityNames:(id)a5;
- (void)recordChangedKeys:(id)a3 forObjectID:(id)a4 inAttributesByOID:(id)a5 relationshipsByOID:(id)a6;
- (void)recordChangedProperties:(id)a3 forObjectID:(id)a4 inAttributesByOID:(id)a5 relationshipsByOID:(id)a6;
- (void)updatedIndexesForChangedKeys:(id)a3 entityName:(id)a4 withAttributes:(id)a5 relationships:(id)a6 updateBlock:(id)a7;
@end

@implementation PLPropertyIndexMapping

+ (PLPropertyIndexMapping)defaultMapping
{
  pl_dispatch_once();
  v2 = defaultMapping_pl_once_object_17;

  return v2;
}

- (id)_dumpDictionary:(id)a3 toDir:(id)a4 withName:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a3;
  v9 = [a4 URLByAppendingPathComponent:v7];
  v10 = [v9 URLByAppendingPathExtension:@"txt"];
  v11 = [v8 _pl_prettyDescription];

  v19 = 0;
  v12 = [v11 writeToURL:v10 atomically:0 encoding:4 error:&v19];
  v13 = v19;
  if (v12)
  {
    v14 = MEMORY[0x1E69BF2D0];
    v15 = [MEMORY[0x1E695DFB0] null];
    v16 = [v14 successWithResult:v15];
  }

  else
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Unable to dump text for %@: %@", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E69BF2D0] failureWithError:v13];
  }

  return v16;
}

- (BOOL)dumpToDirectory:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E69BF2D0];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 successWithResult:v8];

  if ([v9 isSuccess])
  {
    v10 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_indexesByAttributeNamesByEntityNames toDir:v6 withName:@"indexesByAttributeNamesByEntityNames"];

    v9 = v10;
  }

  if ([v9 isSuccess])
  {
    v11 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_attributeNamesByIndexByEntityNames toDir:v6 withName:@"attributeNamesByIndexByEntityNames"];

    v9 = v11;
  }

  if ([v9 isSuccess])
  {
    v12 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_transientAttributeNamesByEntityNames toDir:v6 withName:@"transientAttributeNamesByEntityNames"];

    v9 = v12;
  }

  if ([v9 isSuccess])
  {
    v13 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_indexesByRelationshipNamesByEntityNames toDir:v6 withName:@"indexesByRelationshipNamesByEntityNames"];

    v9 = v13;
  }

  if ([v9 isSuccess])
  {
    v14 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_relationshipNamesByIndexByEntityNames toDir:v6 withName:@"relationshipNamesByIndexByEntityNames"];

    v9 = v14;
  }

  if ([v9 isSuccess])
  {
    v15 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_toManyRelationshipNamesByEntityNames toDir:v6 withName:@"toManyRelationshipNamesByEntityNames"];

    v9 = v15;
  }

  v16 = [v9 resultWithError:a4];
  v17 = v16 != 0;

  return v17;
}

- (void)updatedIndexesForChangedKeys:(id)a3 entityName:(id)a4 withAttributes:(id)a5 relationships:(id)a6 updateBlock:(id)a7
{
  v19 = a3;
  v12 = a4;
  v13 = a7;
  v14 = [(PLPropertyIndexMapping *)self indexValueForAttributeNames:v19 entity:v12]| a5.var0;
  v15 = [(PLPropertyIndexMapping *)self indexValueForRelationshipNames:v19 entity:v12]| a6.var0;
  if (v14 | v15 || (-[NSDictionary objectForKeyedSubscript:](self->_transientAttributeNamesByEntityNames, "objectForKeyedSubscript:", v12), v16 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E695DFD8] setWithArray:v19], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "intersectsSet:", v17), v17, v16, v18))
  {
    v13[2](v13, v14, v15);
  }
}

- (void)recordChangedKeys:(id)a3 forObjectID:(id)a4 inAttributesByOID:(id)a5 relationshipsByOID:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [v10 entity];
  v15 = [v14 name];

  v16 = [v11 objectForKeyedSubscript:v10];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 unsignedLongLongValue];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v12 objectForKeyedSubscript:v10];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 unsignedLongLongValue];
  }

  else
  {
    v21 = 0;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __93__PLPropertyIndexMapping_recordChangedKeys_forObjectID_inAttributesByOID_relationshipsByOID___block_invoke;
  v25[3] = &unk_1E756D618;
  v26 = v11;
  v27 = v10;
  v28 = v12;
  v22 = v12;
  v23 = v10;
  v24 = v11;
  [(PLPropertyIndexMapping *)self updatedIndexesForChangedKeys:v13 entityName:v15 withAttributes:v18 relationships:v21 updateBlock:v25];
}

void __93__PLPropertyIndexMapping_recordChangedKeys_forObjectID_inAttributesByOID_relationshipsByOID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:*(a1 + 40)];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [*(a1 + 48) setObject:v6 forKeyedSubscript:*(a1 + 40)];
}

- (void)recordChangedProperties:(id)a3 forObjectID:(id)a4 inAttributesByOID:(id)a5 relationshipsByOID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v14 = [a3 allObjects];
  v13 = [v14 _pl_map:&__block_literal_global_56];
  [(PLPropertyIndexMapping *)self recordChangedKeys:v13 forObjectID:v12 inAttributesByOID:v11 relationshipsByOID:v10];
}

- (BOOL)includesTransientAttributes:(id)a3 entity:(id)a4
{
  transientAttributeNamesByEntityNames = self->_transientAttributeNamesByEntityNames;
  v6 = a3;
  v7 = [(NSDictionary *)transientAttributeNamesByEntityNames objectForKeyedSubscript:a4];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];

  LOBYTE(v6) = [v7 intersectsSet:v8];
  return v6;
}

- (BOOL)includesToManyRelationship:(id)a3 entity:(id)a4
{
  toManyRelationshipNamesByEntityNames = self->_toManyRelationshipNamesByEntityNames;
  v6 = a3;
  v7 = [(NSDictionary *)toManyRelationshipNamesByEntityNames objectForKeyedSubscript:a4];
  LOBYTE(toManyRelationshipNamesByEntityNames) = [v7 intersectsSet:v6];

  return toManyRelationshipNamesByEntityNames;
}

- (id)_propertyNamesForIndexValues:(id)a3 entity:(id)a4 propertyNamesByIndexByEntityNames:(id)a5
{
  v6 = [a5 objectForKeyedSubscript:a4];
  if (a3.var0)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    if ([v6 count])
    {
      v8 = 0;
      do
      {
        PLPropertyIndexSetValidateIndex(v8);
        if ((a3.var0 >> v8))
        {
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
          v10 = [v6 objectForKeyedSubscript:v9];

          if (v10)
          {
            [v7 addObject:v10];
          }
        }

        ++v8;
      }

      while (v8 < [v6 count]);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- ($61A80719B04F7407D3E47539F1B23CAA)_indexValueForPropertyNames:(id)a3 entityName:(id)a4 indexesByPropertyNamesByEntityNames:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [a5 objectForKeyedSubscript:a4];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12.var0 = 0;
    v13 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [v8 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * i), v20}];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 unsignedIntegerValue];
          v18 = v17;
          PLPropertyIndexSetValidateIndex(v17);
          v12.var0 |= 1 << v18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  else
  {
    v12.var0 = 0;
  }

  return v12;
}

- (id)_processSubEntityByName:(id)a3 entity:(id)a4 withEntityData:(id)a5
{
  v97 = *MEMORY[0x1E69E9840];
  v69 = a3;
  v67 = a4;
  v8 = a5;
  v49 = v8;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v10 forKey:@"indexByAttr"];

    v11 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v11 forKey:@"attrByIndex"];

    v12 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v12 forKey:@"indexByRelation"];

    v13 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v13 forKey:@"relationByIndex"];

    v14 = [MEMORY[0x1E695DF90] dictionary];
    v15 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v15 forKey:@"indexByAttrByEntity"];

    v16 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v16 forKey:@"attrByIndexByEntity"];

    v17 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v17 forKey:@"transientAttrByEntity"];

    v18 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v18 forKey:@"indexByRelationByEntity"];

    v19 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v19 forKey:@"relationByIndexByEntity"];

    v20 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v20 forKey:@"toManyRelationsByEntity"];

    [v9 setObject:v14 forKey:@"resultDictionary"];
  }

  v63 = [v9 objectForKey:@"indexByAttr"];
  v55 = [v9 objectForKey:@"attrByIndex"];
  v62 = [v9 objectForKey:@"indexByRelation"];
  v52 = [v9 objectForKey:@"relationByIndex"];
  v70 = [v9 objectForKey:@"resultDictionary"];
  v54 = [v70 objectForKey:@"indexByAttrByEntity"];
  v53 = [v70 objectForKey:@"attrByIndexByEntity"];
  v60 = [v70 objectForKey:@"transientAttrByEntity"];
  v51 = [v70 objectForKey:@"indexByRelationByEntity"];
  v50 = [v70 objectForKey:@"relationByIndexByEntity"];
  v58 = [v70 objectForKey:@"toManyRelationsByEntity"];
  v68 = [v67 attributesByName];
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v68, "count")}];
  v22 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v68, "count")}];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __72__PLPropertyIndexMapping__processSubEntityByName_entity_withEntityData___block_invoke;
  v93[3] = &unk_1E7574E10;
  v59 = v22;
  v94 = v59;
  v61 = v21;
  v95 = v61;
  [v68 enumerateKeysAndObjectsUsingBlock:v93];
  v66 = [v61 sortedArrayUsingSelector:sel_compare_];
  if ([v66 count] >= 0x41)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"PLPropertyIndexMapping.m" lineNumber:203 description:{@"%@ (%lu) has too many attributes to treat as a single bitfield", v69, objc_msgSend(v66, "count")}];
  }

  if ([v66 count])
  {
    v89 = 0;
    v90 = &v89;
    v91 = 0x2020000000;
    v92 = [v63 count];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __72__PLPropertyIndexMapping__processSubEntityByName_entity_withEntityData___block_invoke_2;
    v85[3] = &unk_1E756F148;
    v23 = v63;
    v86 = v23;
    v88 = &v89;
    v24 = v55;
    v87 = v24;
    [v66 enumerateObjectsUsingBlock:v85];
    [v54 setObject:v23 forKey:v69];
    [v53 setObject:v24 forKey:v69];

    _Block_object_dispose(&v89, 8);
  }

  v25 = [v59 copy];
  [v60 setObject:v25 forKey:v69];

  v64 = [v67 relationshipsByName];
  v26 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v64, "count")}];
  v27 = [MEMORY[0x1E695DF70] array];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __72__PLPropertyIndexMapping__processSubEntityByName_entity_withEntityData___block_invoke_3;
  v82[3] = &unk_1E75754F0;
  v56 = v27;
  v83 = v56;
  v57 = v26;
  v84 = v57;
  [v64 enumerateKeysAndObjectsUsingBlock:v82];
  v28 = [v57 copy];
  [v58 setObject:v28 forKey:v69];

  v65 = [v56 sortedArrayUsingSelector:sel_compare_];
  if ([v65 count] >= 0x41)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"PLPropertyIndexMapping.m" lineNumber:241 description:{@"%@ (%lu) has too many relationships to treat as a single bitfield", v69, objc_msgSend(v65, "count")}];
  }

  if ([v65 count])
  {
    v89 = 0;
    v90 = &v89;
    v91 = 0x2020000000;
    v92 = [v62 count];
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __72__PLPropertyIndexMapping__processSubEntityByName_entity_withEntityData___block_invoke_4;
    v78[3] = &unk_1E756F148;
    v29 = v62;
    v79 = v29;
    v81 = &v89;
    v30 = v52;
    v80 = v30;
    [v65 enumerateObjectsUsingBlock:v78];
    [v51 setObject:v29 forKey:v69];
    [v50 setObject:v30 forKey:v69];

    _Block_object_dispose(&v89, 8);
  }

  obj = [v67 subentities];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v31 = [obj countByEnumeratingWithState:&v74 objects:v96 count:16];
  if (v31)
  {
    v72 = *v75;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v75 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v74 + 1) + 8 * i);
        v34 = [MEMORY[0x1E695DF90] dictionary];
        v35 = [v9 objectForKey:@"indexByAttr"];
        v36 = [v35 mutableCopy];
        [v34 setObject:v36 forKey:@"indexByAttr"];

        v37 = [v9 objectForKey:@"attrByIndex"];
        v38 = [v37 mutableCopy];
        [v34 setObject:v38 forKey:@"attrByIndex"];

        v39 = [v9 objectForKey:@"indexByRelation"];
        v40 = [v39 mutableCopy];
        [v34 setObject:v40 forKey:@"indexByRelation"];

        v41 = [v9 objectForKey:@"relationByIndex"];
        v42 = [v41 mutableCopy];
        [v34 setObject:v42 forKey:@"relationByIndex"];

        v43 = [v9 objectForKey:@"resultDictionary"];
        [v34 setObject:v43 forKey:@"resultDictionary"];

        v44 = [v33 name];
        v45 = [(PLPropertyIndexMapping *)self _processSubEntityByName:v44 entity:v33 withEntityData:v34];
      }

      v31 = [obj countByEnumeratingWithState:&v74 objects:v96 count:16];
    }

    while (v31);
  }

  return v9;
}

void __72__PLPropertyIndexMapping__processSubEntityByName_entity_withEntityData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 isTransient])
  {
    v6 = 32;
  }

  else
  {
    v7 = [v5 userInfo];
    v8 = [v7 objectForKey:@"com.apple.photos.photoKit.ignoreForUpdates"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      goto LABEL_6;
    }

    v6 = 40;
  }

  [*(a1 + v6) addObject:v10];
LABEL_6:
}

void __72__PLPropertyIndexMapping__processSubEntityByName_entity_withEntityData___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) objectForKey:?];

  if (!v3)
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [v5 setObject:v6 forKey:v9];

    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [v7 setObject:v9 forKey:v8];

    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

void __72__PLPropertyIndexMapping__processSubEntityByName_entity_withEntityData___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKey:@"com.apple.photos.photoKit.ignoreForUpdates"];
  v8 = [v7 BOOLValue];

  if ((v8 & 1) == 0)
  {
    [*(a1 + 32) addObject:v9];
  }

  if ([v5 isToMany])
  {
    [*(a1 + 40) addObject:v9];
  }
}

void __72__PLPropertyIndexMapping__processSubEntityByName_entity_withEntityData___block_invoke_4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) objectForKey:?];

  if (!v3)
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [v5 setObject:v6 forKey:v9];

    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    [v7 setObject:v9 forKey:v8];

    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

- (id)_processEntityByName:(id)a3 obj:(id)a4
{
  v5 = a4;
  v6 = [v5 superentity];
  v7 = v5;
  v8 = v7;
  v9 = v7;
  if (v6)
  {
    v10 = v7;
    do
    {
      v9 = v6;

      v6 = [v9 superentity];

      v10 = v9;
    }

    while (v6);
  }

  v11 = [v9 name];
  v12 = [(PLPropertyIndexMapping *)self _processSubEntityByName:v11 entity:v9 withEntityData:0];

  v13 = [v12 objectForKey:@"resultDictionary"];

  return v13;
}

- (PLPropertyIndexMapping)initWithManagedObjectModel:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = PLPropertyIndexMapping;
  v5 = [(PLPropertyIndexMapping *)&v44 init];
  if (v5)
  {
    v35 = [v4 entitiesByName];
    v6 = [v35 count];
    v34 = v4;
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v6];
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v6];
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v6];
    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v6];
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v6];
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v6];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __53__PLPropertyIndexMapping_initWithManagedObjectModel___block_invoke;
    v36[3] = &unk_1E756D5C8;
    v13 = v7;
    v37 = v13;
    v14 = v5;
    v38 = v14;
    v15 = v8;
    v39 = v15;
    v16 = v9;
    v40 = v16;
    v17 = v10;
    v41 = v17;
    v18 = v11;
    v42 = v18;
    v19 = v12;
    v43 = v19;
    [v35 enumerateKeysAndObjectsUsingBlock:v36];
    indexesByAttributeNamesByEntityNames = v14->_indexesByAttributeNamesByEntityNames;
    v14->_indexesByAttributeNamesByEntityNames = v13;
    v33 = v13;

    attributeNamesByIndexByEntityNames = v14->_attributeNamesByIndexByEntityNames;
    v14->_attributeNamesByIndexByEntityNames = v15;
    v22 = v15;

    transientAttributeNamesByEntityNames = v14->_transientAttributeNamesByEntityNames;
    v14->_transientAttributeNamesByEntityNames = v16;
    v24 = v16;

    indexesByRelationshipNamesByEntityNames = v14->_indexesByRelationshipNamesByEntityNames;
    v14->_indexesByRelationshipNamesByEntityNames = v17;
    v26 = v17;

    relationshipNamesByIndexByEntityNames = v14->_relationshipNamesByIndexByEntityNames;
    v14->_relationshipNamesByIndexByEntityNames = v18;
    v28 = v18;

    toManyRelationshipNamesByEntityNames = v14->_toManyRelationshipNamesByEntityNames;
    v14->_toManyRelationshipNamesByEntityNames = v19;
    v30 = v19;

    v31 = v14;
    v4 = v34;
  }

  return v5;
}

void __53__PLPropertyIndexMapping_initWithManagedObjectModel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v21];

  if (!v6)
  {
    v7 = [*(a1 + 40) _processEntityByName:v21 obj:v5];
    v8 = v7;
    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = [v7 objectForKey:@"indexByAttrByEntity"];
      [v9 addEntriesFromDictionary:v10];

      v11 = *(a1 + 48);
      v12 = [v8 objectForKey:@"attrByIndexByEntity"];
      [v11 addEntriesFromDictionary:v12];

      v13 = *(a1 + 56);
      v14 = [v8 objectForKey:@"transientAttrByEntity"];
      [v13 addEntriesFromDictionary:v14];

      v15 = *(a1 + 64);
      v16 = [v8 objectForKey:@"indexByRelationByEntity"];
      [v15 addEntriesFromDictionary:v16];

      v17 = *(a1 + 72);
      v18 = [v8 objectForKey:@"relationByIndexByEntity"];
      [v17 addEntriesFromDictionary:v18];

      v19 = *(a1 + 80);
      v20 = [v8 objectForKey:@"toManyRelationsByEntity"];
      [v19 addEntriesFromDictionary:v20];
    }
  }
}

- (PLPropertyIndexMapping)init
{
  v3 = +[PLPersistentContainer managedObjectModel];
  v4 = [(PLPropertyIndexMapping *)self initWithManagedObjectModel:v3];

  return v4;
}

+ (void)recordChangedProperties:(id)a3 forObjectID:(id)a4 inAttributesByOID:(id)a5 relationshipsByOID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[PLPropertyIndexMapping defaultMapping];
  [v13 recordChangedProperties:v12 forObjectID:v11 inAttributesByOID:v10 relationshipsByOID:v9];
}

+ (void)recordChangedKeys:(id)a3 forObjectID:(id)a4 inAttributesByOID:(id)a5 relationshipsByOID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[PLPropertyIndexMapping defaultMapping];
  [v13 recordChangedKeys:v12 forObjectID:v11 inAttributesByOID:v10 relationshipsByOID:v9];
}

+ (BOOL)includesToManyRelationship:(id)a3 entity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PLPropertyIndexMapping defaultMapping];
  v8 = [v7 includesToManyRelationship:v6 entity:v5];

  return v8;
}

+ (id)relationshipNamesForIndexValues:(unint64_t)a3 entity:(id)a4
{
  v5 = a4;
  v6 = +[PLPropertyIndexMapping defaultMapping];
  v7 = [v6 relationshipNamesForIndexValues:a3 entity:v5];

  return v7;
}

+ (unint64_t)indexValueForRelationshipNames:(id)a3 entity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PLPropertyIndexMapping defaultMapping];
  v8 = [v7 indexValueForRelationshipNames:v6 entity:v5];

  return v8;
}

+ (id)attributeNamesForIndexValues:(unint64_t)a3 entity:(id)a4
{
  v5 = a4;
  v6 = +[PLPropertyIndexMapping defaultMapping];
  v7 = [v6 attributeNamesForIndexValues:a3 entity:v5];

  return v7;
}

+ (unint64_t)indexValueForAttributeNames:(id)a3 entity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PLPropertyIndexMapping defaultMapping];
  v8 = [v7 indexValueForAttributeNames:v6 entity:v5];

  return v8;
}

void __40__PLPropertyIndexMapping_defaultMapping__block_invoke()
{
  v0 = objc_alloc_init(PLPropertyIndexMapping);
  v1 = defaultMapping_pl_once_object_17;
  defaultMapping_pl_once_object_17 = v0;
}

@end