@interface PLPropertyIndexMapping
+ (BOOL)includesToManyRelationship:(id)relationship entity:(id)entity;
+ (PLPropertyIndexMapping)defaultMapping;
+ (id)attributeNamesForIndexValues:(unint64_t)values entity:(id)entity;
+ (id)relationshipNamesForIndexValues:(unint64_t)values entity:(id)entity;
+ (unint64_t)indexValueForAttributeNames:(id)names entity:(id)entity;
+ (unint64_t)indexValueForRelationshipNames:(id)names entity:(id)entity;
+ (void)recordChangedKeys:(id)keys forObjectID:(id)d inAttributesByOID:(id)iD relationshipsByOID:(id)oID;
+ (void)recordChangedProperties:(id)properties forObjectID:(id)d inAttributesByOID:(id)iD relationshipsByOID:(id)oID;
- ($61A80719B04F7407D3E47539F1B23CAA)_indexValueForPropertyNames:(id)names entityName:(id)name indexesByPropertyNamesByEntityNames:(id)entityNames;
- (BOOL)dumpToDirectory:(id)directory error:(id *)error;
- (BOOL)includesToManyRelationship:(id)relationship entity:(id)entity;
- (BOOL)includesTransientAttributes:(id)attributes entity:(id)entity;
- (PLPropertyIndexMapping)init;
- (PLPropertyIndexMapping)initWithManagedObjectModel:(id)model;
- (id)_dumpDictionary:(id)dictionary toDir:(id)dir withName:(id)name;
- (id)_processEntityByName:(id)name obj:(id)obj;
- (id)_processSubEntityByName:(id)name entity:(id)entity withEntityData:(id)data;
- (id)_propertyNamesForIndexValues:(id)values entity:(id)entity propertyNamesByIndexByEntityNames:(id)names;
- (void)recordChangedKeys:(id)keys forObjectID:(id)d inAttributesByOID:(id)iD relationshipsByOID:(id)oID;
- (void)recordChangedProperties:(id)properties forObjectID:(id)d inAttributesByOID:(id)iD relationshipsByOID:(id)oID;
- (void)updatedIndexesForChangedKeys:(id)keys entityName:(id)name withAttributes:(id)attributes relationships:(id)relationships updateBlock:(id)block;
@end

@implementation PLPropertyIndexMapping

+ (PLPropertyIndexMapping)defaultMapping
{
  pl_dispatch_once();
  v2 = defaultMapping_pl_once_object_17;

  return v2;
}

- (id)_dumpDictionary:(id)dictionary toDir:(id)dir withName:(id)name
{
  v24 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dictionaryCopy = dictionary;
  v9 = [dir URLByAppendingPathComponent:nameCopy];
  v10 = [v9 URLByAppendingPathExtension:@"txt"];
  _pl_prettyDescription = [dictionaryCopy _pl_prettyDescription];

  v19 = 0;
  v12 = [_pl_prettyDescription writeToURL:v10 atomically:0 encoding:4 error:&v19];
  v13 = v19;
  if (v12)
  {
    v14 = MEMORY[0x1E69BF2D0];
    null = [MEMORY[0x1E695DFB0] null];
    v16 = [v14 successWithResult:null];
  }

  else
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = nameCopy;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Unable to dump text for %@: %@", buf, 0x16u);
    }

    v16 = [MEMORY[0x1E69BF2D0] failureWithError:v13];
  }

  return v16;
}

- (BOOL)dumpToDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  v7 = MEMORY[0x1E69BF2D0];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 successWithResult:null];

  if ([v9 isSuccess])
  {
    v10 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_indexesByAttributeNamesByEntityNames toDir:directoryCopy withName:@"indexesByAttributeNamesByEntityNames"];

    v9 = v10;
  }

  if ([v9 isSuccess])
  {
    v11 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_attributeNamesByIndexByEntityNames toDir:directoryCopy withName:@"attributeNamesByIndexByEntityNames"];

    v9 = v11;
  }

  if ([v9 isSuccess])
  {
    v12 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_transientAttributeNamesByEntityNames toDir:directoryCopy withName:@"transientAttributeNamesByEntityNames"];

    v9 = v12;
  }

  if ([v9 isSuccess])
  {
    v13 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_indexesByRelationshipNamesByEntityNames toDir:directoryCopy withName:@"indexesByRelationshipNamesByEntityNames"];

    v9 = v13;
  }

  if ([v9 isSuccess])
  {
    v14 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_relationshipNamesByIndexByEntityNames toDir:directoryCopy withName:@"relationshipNamesByIndexByEntityNames"];

    v9 = v14;
  }

  if ([v9 isSuccess])
  {
    v15 = [(PLPropertyIndexMapping *)self _dumpDictionary:self->_toManyRelationshipNamesByEntityNames toDir:directoryCopy withName:@"toManyRelationshipNamesByEntityNames"];

    v9 = v15;
  }

  v16 = [v9 resultWithError:error];
  v17 = v16 != 0;

  return v17;
}

- (void)updatedIndexesForChangedKeys:(id)keys entityName:(id)name withAttributes:(id)attributes relationships:(id)relationships updateBlock:(id)block
{
  keysCopy = keys;
  nameCopy = name;
  blockCopy = block;
  v14 = [(PLPropertyIndexMapping *)self indexValueForAttributeNames:keysCopy entity:nameCopy]| attributes.var0;
  v15 = [(PLPropertyIndexMapping *)self indexValueForRelationshipNames:keysCopy entity:nameCopy]| relationships.var0;
  if (v14 | v15 || (-[NSDictionary objectForKeyedSubscript:](self->_transientAttributeNamesByEntityNames, "objectForKeyedSubscript:", nameCopy), v16 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E695DFD8] setWithArray:keysCopy], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "intersectsSet:", v17), v17, v16, v18))
  {
    blockCopy[2](blockCopy, v14, v15);
  }
}

- (void)recordChangedKeys:(id)keys forObjectID:(id)d inAttributesByOID:(id)iD relationshipsByOID:(id)oID
{
  dCopy = d;
  iDCopy = iD;
  oIDCopy = oID;
  keysCopy = keys;
  entity = [dCopy entity];
  name = [entity name];

  v16 = [iDCopy objectForKeyedSubscript:dCopy];
  v17 = v16;
  if (v16)
  {
    unsignedLongLongValue = [v16 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  v19 = [oIDCopy objectForKeyedSubscript:dCopy];
  v20 = v19;
  if (v19)
  {
    unsignedLongLongValue2 = [v19 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue2 = 0;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __93__PLPropertyIndexMapping_recordChangedKeys_forObjectID_inAttributesByOID_relationshipsByOID___block_invoke;
  v25[3] = &unk_1E756D618;
  v26 = iDCopy;
  v27 = dCopy;
  v28 = oIDCopy;
  v22 = oIDCopy;
  v23 = dCopy;
  v24 = iDCopy;
  [(PLPropertyIndexMapping *)self updatedIndexesForChangedKeys:keysCopy entityName:name withAttributes:unsignedLongLongValue relationships:unsignedLongLongValue2 updateBlock:v25];
}

void __93__PLPropertyIndexMapping_recordChangedKeys_forObjectID_inAttributesByOID_relationshipsByOID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:*(a1 + 40)];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [*(a1 + 48) setObject:v6 forKeyedSubscript:*(a1 + 40)];
}

- (void)recordChangedProperties:(id)properties forObjectID:(id)d inAttributesByOID:(id)iD relationshipsByOID:(id)oID
{
  oIDCopy = oID;
  iDCopy = iD;
  dCopy = d;
  allObjects = [properties allObjects];
  v13 = [allObjects _pl_map:&__block_literal_global_56];
  [(PLPropertyIndexMapping *)self recordChangedKeys:v13 forObjectID:dCopy inAttributesByOID:iDCopy relationshipsByOID:oIDCopy];
}

- (BOOL)includesTransientAttributes:(id)attributes entity:(id)entity
{
  transientAttributeNamesByEntityNames = self->_transientAttributeNamesByEntityNames;
  attributesCopy = attributes;
  v7 = [(NSDictionary *)transientAttributeNamesByEntityNames objectForKeyedSubscript:entity];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:attributesCopy];

  LOBYTE(attributesCopy) = [v7 intersectsSet:v8];
  return attributesCopy;
}

- (BOOL)includesToManyRelationship:(id)relationship entity:(id)entity
{
  toManyRelationshipNamesByEntityNames = self->_toManyRelationshipNamesByEntityNames;
  relationshipCopy = relationship;
  v7 = [(NSDictionary *)toManyRelationshipNamesByEntityNames objectForKeyedSubscript:entity];
  LOBYTE(toManyRelationshipNamesByEntityNames) = [v7 intersectsSet:relationshipCopy];

  return toManyRelationshipNamesByEntityNames;
}

- (id)_propertyNamesForIndexValues:(id)values entity:(id)entity propertyNamesByIndexByEntityNames:(id)names
{
  v6 = [names objectForKeyedSubscript:entity];
  if (values.var0)
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([v6 count])
    {
      v8 = 0;
      do
      {
        PLPropertyIndexSetValidateIndex(v8);
        if ((values.var0 >> v8))
        {
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
          v10 = [v6 objectForKeyedSubscript:v9];

          if (v10)
          {
            [array addObject:v10];
          }
        }

        ++v8;
      }

      while (v8 < [v6 count]);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- ($61A80719B04F7407D3E47539F1B23CAA)_indexValueForPropertyNames:(id)names entityName:(id)name indexesByPropertyNamesByEntityNames:(id)entityNames
{
  v25 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v8 = [entityNames objectForKeyedSubscript:name];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = namesCopy;
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
          unsignedIntegerValue = [v15 unsignedIntegerValue];
          v18 = unsignedIntegerValue;
          PLPropertyIndexSetValidateIndex(unsignedIntegerValue);
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

- (id)_processSubEntityByName:(id)name entity:(id)entity withEntityData:(id)data
{
  v97 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  entityCopy = entity;
  dataCopy = data;
  v49 = dataCopy;
  if (dataCopy)
  {
    dictionary = dataCopy;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary2 forKey:@"indexByAttr"];

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary3 forKey:@"attrByIndex"];

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary4 forKey:@"indexByRelation"];

    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary5 forKey:@"relationByIndex"];

    dictionary6 = [MEMORY[0x1E695DF90] dictionary];
    dictionary7 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary6 setObject:dictionary7 forKey:@"indexByAttrByEntity"];

    dictionary8 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary6 setObject:dictionary8 forKey:@"attrByIndexByEntity"];

    dictionary9 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary6 setObject:dictionary9 forKey:@"transientAttrByEntity"];

    dictionary10 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary6 setObject:dictionary10 forKey:@"indexByRelationByEntity"];

    dictionary11 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary6 setObject:dictionary11 forKey:@"relationByIndexByEntity"];

    dictionary12 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary6 setObject:dictionary12 forKey:@"toManyRelationsByEntity"];

    [dictionary setObject:dictionary6 forKey:@"resultDictionary"];
  }

  v63 = [dictionary objectForKey:@"indexByAttr"];
  v55 = [dictionary objectForKey:@"attrByIndex"];
  v62 = [dictionary objectForKey:@"indexByRelation"];
  v52 = [dictionary objectForKey:@"relationByIndex"];
  v70 = [dictionary objectForKey:@"resultDictionary"];
  v54 = [v70 objectForKey:@"indexByAttrByEntity"];
  v53 = [v70 objectForKey:@"attrByIndexByEntity"];
  v60 = [v70 objectForKey:@"transientAttrByEntity"];
  v51 = [v70 objectForKey:@"indexByRelationByEntity"];
  v50 = [v70 objectForKey:@"relationByIndexByEntity"];
  v58 = [v70 objectForKey:@"toManyRelationsByEntity"];
  attributesByName = [entityCopy attributesByName];
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(attributesByName, "count")}];
  v22 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(attributesByName, "count")}];
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __72__PLPropertyIndexMapping__processSubEntityByName_entity_withEntityData___block_invoke;
  v93[3] = &unk_1E7574E10;
  v59 = v22;
  v94 = v59;
  v61 = v21;
  v95 = v61;
  [attributesByName enumerateKeysAndObjectsUsingBlock:v93];
  v66 = [v61 sortedArrayUsingSelector:sel_compare_];
  if ([v66 count] >= 0x41)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPropertyIndexMapping.m" lineNumber:203 description:{@"%@ (%lu) has too many attributes to treat as a single bitfield", nameCopy, objc_msgSend(v66, "count")}];
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
    [v54 setObject:v23 forKey:nameCopy];
    [v53 setObject:v24 forKey:nameCopy];

    _Block_object_dispose(&v89, 8);
  }

  v25 = [v59 copy];
  [v60 setObject:v25 forKey:nameCopy];

  relationshipsByName = [entityCopy relationshipsByName];
  v26 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(relationshipsByName, "count")}];
  array = [MEMORY[0x1E695DF70] array];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __72__PLPropertyIndexMapping__processSubEntityByName_entity_withEntityData___block_invoke_3;
  v82[3] = &unk_1E75754F0;
  v56 = array;
  v83 = v56;
  v57 = v26;
  v84 = v57;
  [relationshipsByName enumerateKeysAndObjectsUsingBlock:v82];
  v28 = [v57 copy];
  [v58 setObject:v28 forKey:nameCopy];

  v65 = [v56 sortedArrayUsingSelector:sel_compare_];
  if ([v65 count] >= 0x41)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPropertyIndexMapping.m" lineNumber:241 description:{@"%@ (%lu) has too many relationships to treat as a single bitfield", nameCopy, objc_msgSend(v65, "count")}];
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
    [v51 setObject:v29 forKey:nameCopy];
    [v50 setObject:v30 forKey:nameCopy];

    _Block_object_dispose(&v89, 8);
  }

  obj = [entityCopy subentities];
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
        dictionary13 = [MEMORY[0x1E695DF90] dictionary];
        v35 = [dictionary objectForKey:@"indexByAttr"];
        v36 = [v35 mutableCopy];
        [dictionary13 setObject:v36 forKey:@"indexByAttr"];

        v37 = [dictionary objectForKey:@"attrByIndex"];
        v38 = [v37 mutableCopy];
        [dictionary13 setObject:v38 forKey:@"attrByIndex"];

        v39 = [dictionary objectForKey:@"indexByRelation"];
        v40 = [v39 mutableCopy];
        [dictionary13 setObject:v40 forKey:@"indexByRelation"];

        v41 = [dictionary objectForKey:@"relationByIndex"];
        v42 = [v41 mutableCopy];
        [dictionary13 setObject:v42 forKey:@"relationByIndex"];

        v43 = [dictionary objectForKey:@"resultDictionary"];
        [dictionary13 setObject:v43 forKey:@"resultDictionary"];

        name = [v33 name];
        v45 = [(PLPropertyIndexMapping *)self _processSubEntityByName:name entity:v33 withEntityData:dictionary13];
      }

      v31 = [obj countByEnumeratingWithState:&v74 objects:v96 count:16];
    }

    while (v31);
  }

  return dictionary;
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

- (id)_processEntityByName:(id)name obj:(id)obj
{
  objCopy = obj;
  superentity = [objCopy superentity];
  v7 = objCopy;
  v8 = v7;
  v9 = v7;
  if (superentity)
  {
    v10 = v7;
    do
    {
      v9 = superentity;

      superentity = [v9 superentity];

      v10 = v9;
    }

    while (superentity);
  }

  name = [v9 name];
  v12 = [(PLPropertyIndexMapping *)self _processSubEntityByName:name entity:v9 withEntityData:0];

  v13 = [v12 objectForKey:@"resultDictionary"];

  return v13;
}

- (PLPropertyIndexMapping)initWithManagedObjectModel:(id)model
{
  modelCopy = model;
  v44.receiver = self;
  v44.super_class = PLPropertyIndexMapping;
  v5 = [(PLPropertyIndexMapping *)&v44 init];
  if (v5)
  {
    entitiesByName = [modelCopy entitiesByName];
    v6 = [entitiesByName count];
    v34 = modelCopy;
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
    [entitiesByName enumerateKeysAndObjectsUsingBlock:v36];
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
    modelCopy = v34;
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

+ (void)recordChangedProperties:(id)properties forObjectID:(id)d inAttributesByOID:(id)iD relationshipsByOID:(id)oID
{
  oIDCopy = oID;
  iDCopy = iD;
  dCopy = d;
  propertiesCopy = properties;
  v13 = +[PLPropertyIndexMapping defaultMapping];
  [v13 recordChangedProperties:propertiesCopy forObjectID:dCopy inAttributesByOID:iDCopy relationshipsByOID:oIDCopy];
}

+ (void)recordChangedKeys:(id)keys forObjectID:(id)d inAttributesByOID:(id)iD relationshipsByOID:(id)oID
{
  oIDCopy = oID;
  iDCopy = iD;
  dCopy = d;
  keysCopy = keys;
  v13 = +[PLPropertyIndexMapping defaultMapping];
  [v13 recordChangedKeys:keysCopy forObjectID:dCopy inAttributesByOID:iDCopy relationshipsByOID:oIDCopy];
}

+ (BOOL)includesToManyRelationship:(id)relationship entity:(id)entity
{
  entityCopy = entity;
  relationshipCopy = relationship;
  v7 = +[PLPropertyIndexMapping defaultMapping];
  v8 = [v7 includesToManyRelationship:relationshipCopy entity:entityCopy];

  return v8;
}

+ (id)relationshipNamesForIndexValues:(unint64_t)values entity:(id)entity
{
  entityCopy = entity;
  v6 = +[PLPropertyIndexMapping defaultMapping];
  v7 = [v6 relationshipNamesForIndexValues:values entity:entityCopy];

  return v7;
}

+ (unint64_t)indexValueForRelationshipNames:(id)names entity:(id)entity
{
  entityCopy = entity;
  namesCopy = names;
  v7 = +[PLPropertyIndexMapping defaultMapping];
  v8 = [v7 indexValueForRelationshipNames:namesCopy entity:entityCopy];

  return v8;
}

+ (id)attributeNamesForIndexValues:(unint64_t)values entity:(id)entity
{
  entityCopy = entity;
  v6 = +[PLPropertyIndexMapping defaultMapping];
  v7 = [v6 attributeNamesForIndexValues:values entity:entityCopy];

  return v7;
}

+ (unint64_t)indexValueForAttributeNames:(id)names entity:(id)entity
{
  entityCopy = entity;
  namesCopy = names;
  v7 = +[PLPropertyIndexMapping defaultMapping];
  v8 = [v7 indexValueForAttributeNames:namesCopy entity:entityCopy];

  return v8;
}

void __40__PLPropertyIndexMapping_defaultMapping__block_invoke()
{
  v0 = objc_alloc_init(PLPropertyIndexMapping);
  v1 = defaultMapping_pl_once_object_17;
  defaultMapping_pl_once_object_17 = v0;
}

@end