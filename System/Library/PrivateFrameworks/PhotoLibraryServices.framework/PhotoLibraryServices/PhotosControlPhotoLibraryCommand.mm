@interface PhotosControlPhotoLibraryCommand
+ (const)optstring;
+ (id)usage;
+ (id)usagesummary;
+ (option)longopts;
- (BOOL)argument:(id)argument isValidDouble:(double *)double;
- (BOOL)processOption:(int)option arg:(id)arg;
- (NSURL)libraryURL;
- (PhotosControlPhotoLibraryCommand)initWithArgc:(int)argc argv:(char *)argv ctl:(id)ctl;
- (id)_jsonDictionaryFromManagedObject:(id)object allPreviousObjects:(id)objects currentDepth:(unint64_t)depth maxDepth:(unint64_t)maxDepth;
- (id)jsonDictionaryFromError:(id)error;
- (id)managedObjectContext;
- (id)photoLibrary;
- (id)plPhotoLibrary;
- (id)processBooleanOptionArg:(id)arg;
- (id)unopenedPhotoLibrary;
- (int)runOnAssetArgumentsAllowAll:(BOOL)all additionalPredicate:(id)predicate block:(id)block;
- (int)runOnManagedObjectArgumentsWithEntityName:(id)name identifierPropertyKey:(id)key allowAll:(BOOL)all additionalPredicate:(id)predicate sortDescriptors:(id)descriptors relationshipKeyPathsForPrefetching:(id)prefetching block:(id)block;
- (int)runOnPhotoKitAssetArgumentsAllowAll:(BOOL)all propertySets:(id)sets additionalPredicate:(id)predicate block:(id)block;
- (int)save;
- (int)setValueString:(id)string forKey:(id)key onManagedObject:(id)object;
- (int)traverseRelationshipsForRootManagedObject:(id)object keys:(id)keys targetObject:(id *)targetObject;
- (void)configureWithAlternateURLToLibraryDatabase:(id)database;
@end

@implementation PhotosControlPhotoLibraryCommand

- (int)runOnPhotoKitAssetArgumentsAllowAll:(BOOL)all propertySets:(id)sets additionalPredicate:(id)predicate block:(id)block
{
  allCopy = all;
  setsCopy = sets;
  predicateCopy = predicate;
  blockCopy = block;
  photoKitProxy = self->_photoKitProxy;
  if (!photoKitProxy)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"missing required _PhotosControlPhotoLibraryPhotoKit" userInfo:0];
    objc_exception_throw(v16);
  }

  v14 = [(_PhotosControlPhotoLibraryPhotoKit *)photoKitProxy runOnPhotoKitAssetArgumentsAllowAll:allCopy propertySets:setsCopy additionalPredicate:predicateCopy block:blockCopy];

  return v14;
}

- (id)managedObjectContext
{
  moc = self->_moc;
  if (moc)
  {
    managedObjectContext = moc;
  }

  else
  {
    photoKitProxy = self->_photoKitProxy;
    if (!photoKitProxy)
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"missing required _PhotosControlPhotoLibraryPhotoKit" userInfo:0];
      objc_exception_throw(v6);
    }

    managedObjectContext = [(_PhotosControlPhotoLibraryPhotoKit *)photoKitProxy managedObjectContext];
  }

  return managedObjectContext;
}

- (id)photoLibrary
{
  photoKitProxy = self->_photoKitProxy;
  if (!photoKitProxy)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"missing required _PhotosControlPhotoLibraryPhotoKit" userInfo:{0, v2, v3}];
    objc_exception_throw(v6);
  }

  return [(_PhotosControlPhotoLibraryPhotoKit *)photoKitProxy photoLibrary];
}

- (id)unopenedPhotoLibrary
{
  photoKitProxy = self->_photoKitProxy;
  if (!photoKitProxy)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"missing required _PhotosControlPhotoLibraryPhotoKit" userInfo:{0, v2, v3}];
    objc_exception_throw(v6);
  }

  return [(_PhotosControlPhotoLibraryPhotoKit *)photoKitProxy unopenedPhotoLibrary];
}

- (id)plPhotoLibrary
{
  photoKitProxy = self->_photoKitProxy;
  if (!photoKitProxy)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"missing required _PhotosControlPhotoLibraryPhotoKit" userInfo:{0, v2, v3}];
    objc_exception_throw(v6);
  }

  return [(_PhotosControlPhotoLibraryPhotoKit *)photoKitProxy plPhotoLibrary];
}

- (BOOL)processOption:(int)option arg:(id)arg
{
  v5 = *&option;
  argCopy = arg;
  if (v5 == 108)
  {
    objc_storeStrong(&self->_libraryArg, arg);
    v8 = [(PhotosControlCommand *)self libraryURLFromArgument:argCopy];
    libraryURL = self->_libraryURL;
    self->_libraryURL = v8;
  }

  v10 = [(PhotosControlPhotoLibraryCommand *)self libraryProcessOption:v5 arg:argCopy];
  v11 = v5 == 108 || v10;

  return v11;
}

- (id)processBooleanOptionArg:(id)arg
{
  argCopy = arg;
  lowercaseString = [argCopy lowercaseString];
  if ([lowercaseString isEqualToString:@"y"])
  {
    goto LABEL_4;
  }

  lowercaseString2 = [argCopy lowercaseString];
  if (![lowercaseString2 isEqualToString:@"yes"])
  {
    lowercaseString3 = [argCopy lowercaseString];
    v10 = [lowercaseString3 isEqualToString:@"1"];

    if (v10)
    {
      goto LABEL_5;
    }

    lowercaseString4 = [argCopy lowercaseString];
    if (([lowercaseString4 isEqualToString:@"n"] & 1) == 0)
    {
      lowercaseString5 = [argCopy lowercaseString];
      if (![lowercaseString5 isEqualToString:@"no"])
      {
        lowercaseString6 = [argCopy lowercaseString];
        v14 = [lowercaseString6 isEqualToString:@"0"];

        if ((v14 & 1) == 0)
        {
          [(PhotosControlCommand *)self outputError:@"Argument for BOOLean option must be one of '1|0', 'y|n', 'yes|no'\n"];
          v7 = 0;
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

LABEL_12:
    v7 = MEMORY[0x1E695E110];
    goto LABEL_6;
  }

LABEL_4:
LABEL_5:
  v7 = MEMORY[0x1E695E118];
LABEL_6:

  return v7;
}

- (int)save
{
  plPhotoLibrary = [(PhotosControlPhotoLibraryCommand *)self plPhotoLibrary];
  managedObjectContext = [plPhotoLibrary managedObjectContext];

  v10 = 0;
  v5 = [managedObjectContext save:&v10];
  v6 = v10;
  v7 = v6;
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    [(PhotosControlCommand *)self outputError:@"Save error: %@\n", v6];
    v8 = 70;
  }

  return v8;
}

- (id)jsonDictionaryFromError:(id)error
{
  v3 = MEMORY[0x1E695DF90];
  errorCopy = error;
  v5 = objc_alloc_init(v3);
  domain = [errorCopy domain];
  [v5 setObject:domain forKeyedSubscript:@"domain"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  [v5 setObject:v7 forKeyedSubscript:@"code"];

  localizedDescription = [errorCopy localizedDescription];

  [v5 setObject:localizedDescription forKeyedSubscript:@"localizedDescription"];

  return v5;
}

- (id)_jsonDictionaryFromManagedObject:(id)object allPreviousObjects:(id)objects currentDepth:(unint64_t)depth maxDepth:(unint64_t)maxDepth
{
  objectCopy = object;
  objectsCopy = objects;
  if (!objectsCopy)
  {
    v12 = MEMORY[0x1E695DFA8];
    objectID = [objectCopy objectID];
    objectsCopy = [v12 setWithObject:objectID];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  entity = [objectCopy entity];
  propertiesByName = [entity propertiesByName];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __110__PhotosControlPhotoLibraryCommand__jsonDictionaryFromManagedObject_allPreviousObjects_currentDepth_maxDepth___block_invoke;
  v22[3] = &unk_1E756F6F8;
  v23 = objectCopy;
  v17 = dictionary;
  v24 = v17;
  v25 = objectsCopy;
  v29 = maxDepth - 1 >= depth;
  selfCopy = self;
  depthCopy = depth;
  maxDepthCopy = maxDepth;
  v18 = objectsCopy;
  v19 = objectCopy;
  [propertiesByName enumerateKeysAndObjectsUsingBlock:v22];
  v20 = v17;

  return v17;
}

void __110__PhotosControlPhotoLibraryCommand__jsonDictionaryFromManagedObject_allPreviousObjects_currentDepth_maxDepth___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 isToMany];
    v8 = [*(a1 + 32) valueForKey:v5];
    v9 = v8;
    if (v7)
    {
      if ([v8 count])
      {
        v10 = [MEMORY[0x1E695DF70] array];
        v31 = v5;
        [*(a1 + 40) setObject:v10 forKey:v5];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = v9;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * i);
              v17 = *(a1 + 48);
              v18 = [v16 objectID];
              LOBYTE(v17) = [v17 containsObject:v18];

              if ((v17 & 1) == 0)
              {
                v19 = *(a1 + 48);
                v20 = [v16 objectID];
                [v19 addObject:v20];

                if (*(a1 + 80) == 1)
                {
                  [*(a1 + 56) _jsonDictionaryFromManagedObject:v16 allPreviousObjects:*(a1 + 48) currentDepth:*(a1 + 64) + 1 maxDepth:*(a1 + 72)];
                }

                else
                {
                  [v16 description];
                }
                v21 = ;
                [v10 addObject:v21];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v13);
        }

        v9 = v30;
        v5 = v31;
      }

      goto LABEL_37;
    }

    if (v8)
    {
      v23 = *(a1 + 48);
      v24 = [v8 objectID];
      LOBYTE(v23) = [v23 containsObject:v24];

      if ((v23 & 1) == 0)
      {
        v25 = *(a1 + 48);
        v26 = [v9 objectID];
        [v25 addObject:v26];

        if (*(a1 + 80) == 1)
        {
          v27 = [*(a1 + 56) _jsonDictionaryFromManagedObject:v9 allPreviousObjects:*(a1 + 48) currentDepth:*(a1 + 64) + 1 maxDepth:*(a1 + 72)];
          v28 = *(a1 + 40);
LABEL_36:
          [v28 setObject:v27 forKey:v5];

          goto LABEL_37;
        }

LABEL_35:
        v29 = *(a1 + 40);
        v27 = [v9 description];
        v28 = v29;
        goto LABEL_36;
      }
    }

    goto LABEL_37;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [*(a1 + 32) valueForKey:v5];
    if (v9)
    {
      v22 = [v6 attributeType];
      if (v22 <= 499)
      {
        if (v22 != 100 && v22 != 200 && v22 != 300)
        {
          goto LABEL_35;
        }
      }

      else if (v22 > 699)
      {
        if (v22 != 800 && v22 != 700)
        {
          goto LABEL_35;
        }
      }

      else if (v22 != 500 && v22 != 600)
      {
        goto LABEL_35;
      }

      [*(a1 + 40) setObject:v9 forKey:v5];
    }

LABEL_37:
  }
}

- (int)setValueString:(id)string forKey:(id)key onManagedObject:(id)object
{
  stringCopy = string;
  keyCopy = key;
  objectCopy = object;
  entity = [objectCopy entity];
  propertiesByName = [entity propertiesByName];

  v13 = [propertiesByName objectForKey:keyCopy];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      v15 = v14;
      if (!stringCopy)
      {
        if (([v14 isOptional] & 1) == 0)
        {
          [(PhotosControlCommand *)self outputError:@"Resetting property %@ is forbidden because it is not optional\n", keyCopy];
LABEL_33:
          v17 = 64;
          goto LABEL_34;
        }

        v18 = 0;
        goto LABEL_29;
      }

      attributeType = [v14 attributeType];
      if (attributeType <= 599)
      {
        if (attributeType <= 299)
        {
          if (attributeType != 100 && attributeType != 200)
          {
            goto LABEL_31;
          }

          goto LABEL_22;
        }

        if (attributeType == 300)
        {
LABEL_22:
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(stringCopy, "integerValue")}];
          goto LABEL_28;
        }

        if (attributeType == 500)
        {
          v19 = MEMORY[0x1E696AD98];
          [stringCopy doubleValue];
          v20 = [v19 numberWithDouble:?];
          goto LABEL_28;
        }

LABEL_31:
        v24 = @"Set command is not supported for date, binary, and transformable attributes\n";
        goto LABEL_32;
      }

      if (attributeType > 799)
      {
        if (attributeType == 800)
        {
          v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(stringCopy, "BOOLValue")}];
        }

        else
        {
          if (attributeType != 900)
          {
            goto LABEL_31;
          }

          v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:{objc_msgSend(stringCopy, "integerValue")}];
        }
      }

      else
      {
        if (attributeType != 600)
        {
          if (attributeType == 700)
          {
            v18 = stringCopy;
            goto LABEL_29;
          }

          goto LABEL_31;
        }

        v21 = MEMORY[0x1E696AD98];
        [stringCopy floatValue];
        v20 = [v21 numberWithFloat:?];
      }

LABEL_28:
      v18 = v20;
      if (!v20)
      {
        v24 = @"Unable to provide non-null value for set command\n";
LABEL_32:
        [(PhotosControlCommand *)self outputError:v24, v26];
        goto LABEL_33;
      }

LABEL_29:
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      [(PhotosControlCommand *)self output:@"Setting value %@ for key %@ on object of class %@\n", v18, keyCopy, v23];

      [objectCopy setValue:v18 forKey:keyCopy];
      v17 = 0;
LABEL_34:

      goto LABEL_35;
    }

    [(PhotosControlCommand *)self outputError:@"Set command is only supported for attribute properties, %@ is not an attribute\n", keyCopy];
  }

  else
  {
    [(PhotosControlCommand *)self outputError:@"Cannot find property %@\n", keyCopy];
  }

  v17 = 64;
LABEL_35:

  return v17;
}

- (int)traverseRelationshipsForRootManagedObject:(id)object keys:(id)keys targetObject:(id *)targetObject
{
  objectCopy = object;
  v8 = [keys mutableCopy];
  v25 = objectCopy;
  if ([v8 count])
  {
    v9 = @"Cannot find relationship %@ on object of class %@\n";
    v10 = 0x1E695D000uLL;
    selfCopy = self;
    while (1)
    {
      firstObject = [v8 firstObject];
      [v8 removeObjectAtIndex:0];
      entity = [objectCopy entity];
      propertiesByName = [entity propertiesByName];

      v14 = [propertiesByName objectForKey:firstObject];
      if (!v14)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        [(PhotosControlCommand *)self outputError:@"%@ is not a relationship\n", firstObject];
        goto LABEL_9;
      }

      if ([v14 isToMany])
      {

        [(PhotosControlCommand *)self outputError:@"Set command is not supported for to-many relationships, %@ is to-many\n", firstObject];
LABEL_9:
        objectCopy = 0;
        v17 = 0;
        v18 = 64;
        goto LABEL_10;
      }

      [objectCopy valueForKey:firstObject];
      v20 = v10;
      v22 = v21 = v9;

      v18 = 0;
      v17 = 1;
      objectCopy = v22;
      v9 = v21;
      v10 = v20;
      self = selfCopy;
LABEL_10:

      v19 = [v8 count];
      if (!v17 || !v19)
      {
        goto LABEL_15;
      }
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [(PhotosControlCommand *)self outputError:v9, firstObject, v16];

    goto LABEL_9;
  }

  v18 = 0;
LABEL_15:
  if (targetObject)
  {
    v23 = objectCopy;
    *targetObject = objectCopy;
  }

  return v18;
}

- (int)runOnAssetArgumentsAllowAll:(BOOL)all additionalPredicate:(id)predicate block:(id)block
{
  allCopy = all;
  blockCopy = block;
  predicateCopy = predicate;
  v10 = +[PLManagedAsset entityName];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__PhotosControlPhotoLibraryCommand_runOnAssetArgumentsAllowAll_additionalPredicate_block___block_invoke;
  v13[3] = &unk_1E756F6D0;
  v14 = blockCopy;
  v11 = blockCopy;
  LODWORD(allCopy) = [(PhotosControlPhotoLibraryCommand *)self runOnManagedObjectArgumentsWithEntityName:v10 identifierPropertyKey:@"uuid" allowAll:allCopy additionalPredicate:predicateCopy sortDescriptors:0 block:v13];

  return allCopy;
}

uint64_t __90__PhotosControlPhotoLibraryCommand_runOnAssetArgumentsAllowAll_additionalPredicate_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int)runOnManagedObjectArgumentsWithEntityName:(id)name identifierPropertyKey:(id)key allowAll:(BOOL)all additionalPredicate:(id)predicate sortDescriptors:(id)descriptors relationshipKeyPathsForPrefetching:(id)prefetching block:(id)block
{
  allCopy = all;
  nameCopy = name;
  keyCopy = key;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  prefetchingCopy = prefetching;
  blockCopy = block;
  managedObjectContext = [(PhotosControlPhotoLibraryCommand *)self managedObjectContext];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  if (self->_argumentRangeForRunOnManagedObjects.length)
  {
    args = [(PhotosControlCommand *)self args];
    args2 = [args subarrayWithRange:{self->_argumentRangeForRunOnManagedObjects.location, self->_argumentRangeForRunOnManagedObjects.length}];
  }

  else
  {
    args2 = [(PhotosControlCommand *)self args];
  }

  v23 = [args2 count];
  if (v23 > 1)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __186__PhotosControlPhotoLibraryCommand_runOnManagedObjectArgumentsWithEntityName_identifierPropertyKey_allowAll_additionalPredicate_sortDescriptors_relationshipKeyPathsForPrefetching_block___block_invoke;
    v28[3] = &unk_1E756F6A8;
    v39 = v23;
    v29 = args2;
    v40 = allCopy;
    v30 = keyCopy;
    v31 = nameCopy;
    v32 = prefetchingCopy;
    v33 = managedObjectContext;
    v34 = predicateCopy;
    v35 = descriptorsCopy;
    selfCopy = self;
    v37 = blockCopy;
    v38 = &v41;
    [v33 performBlockAndWait:v28];
    v25 = *(v42 + 6);

    firstObject = v29;
  }

  else
  {
    firstObject = [args2 firstObject];
    [(PhotosControlCommand *)self outputError:@"%@ requires at least 1 %@ identifier", firstObject, nameCopy, keyCopy];
    if (allCopy)
    {
      [(PhotosControlCommand *)self outputError:@" or 'all'"];
      [(PhotosControlCommand *)self outputError:@" or 'guest'"];
    }

    [(PhotosControlCommand *)self outputError:@" or 'latest'\n"];
    v25 = 64;
  }

  _Block_object_dispose(&v41, 8);
  return v25;
}

void __186__PhotosControlPhotoLibraryCommand_runOnManagedObjectArgumentsWithEntityName_identifierPropertyKey_allowAll_additionalPredicate_sortDescriptors_relationshipKeyPathsForPrefetching_block___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*(a1 + 112) < 2uLL)
  {
    v3 = 0;
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v2 = [*(a1 + 32) objectAtIndex:1];
  v3 = v2;
  if (*(a1 + 120) != 1)
  {
    goto LABEL_6;
  }

  v4 = [v2 lowercaseString];
  v5 = [v4 isEqualToString:@"guest"];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 1}];
LABEL_7:
  if (*(a1 + 120) == 1 && ([v3 lowercaseString], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"all"), v7, (v8 & 1) != 0))
  {
    v46 = 0;
    v9 = 1;
  }

  else
  {
    v10 = [v3 lowercaseString];
    v11 = [v10 isEqualToString:@"latest"];

    v46 = v11;
    v9 = v11;
  }

  LODWORD(v12) = [*(a1 + 40) isEqualToString:@"self"];
  v13 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:*(a1 + 48)];
  [v13 setRelationshipKeyPathsForPrefetching:*(a1 + 56)];
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [MEMORY[0x1E695DFA8] set];
  if ((v9 & 1) == 0 && !v6)
  {
    v16 = [*(a1 + 32) subarrayWithRange:{1, *(a1 + 112) - 1}];
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", *(a1 + 40), v16];
    v18 = v17;
    v43 = v12;
    if (v12)
    {
      v39 = v17;
      v40 = v15;
      v41 = v14;
      v42 = v13;
      v44 = v3;
      v12 = [MEMORY[0x1E695DF70] array];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v54;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v54 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [MEMORY[0x1E695DFF8] URLWithString:*(*(&v53 + 1) + 8 * i)];
            v25 = [*(a1 + 64) persistentStoreCoordinator];
            v26 = [v25 managedObjectIDForURIRepresentation:v24];

            [v12 addObject:v26];
          }

          v21 = [v19 countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v21);
      }

      v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v12];

      v3 = v44;
      v13 = v42;
      v6 = 0;
      v15 = v40;
      v14 = v41;
    }

    else
    {
      v12 = v16;
    }

    [v14 addObject:v18];
    [v15 addObjectsFromArray:v12];

    LOBYTE(v12) = v43;
  }

  if (*(a1 + 72))
  {
    [v14 addObject:?];
  }

  if (v6)
  {
    [v14 addObject:v6];
  }

  v27 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v14];
  [v13 setPredicate:v27];
  [v13 setSortDescriptors:*(a1 + 80)];
  if (v46)
  {
    v28 = v12;
    v45 = v3;
    v29 = v15;
    v12 = v14;
    v30 = [v13 copy];
    [v30 setResultType:1];
    v31 = [*(a1 + 64) executeFetchRequest:v30 error:0];
    v32 = [v31 lastObject];
    if (v32)
    {
      [*(a1 + 88) output:{@"'latest' resolved to object with ID: %@\n", v32}];
      v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self == %@", v32];
      [v13 setPredicate:v33];

      [v29 addObject:v32];
      v28 = 1;
    }

    v14 = v12;
    v15 = v29;
    v3 = v45;
    LOBYTE(v12) = v28;
  }

  v34 = *(a1 + 64);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __186__PhotosControlPhotoLibraryCommand_runOnManagedObjectArgumentsWithEntityName_identifierPropertyKey_allowAll_additionalPredicate_sortDescriptors_relationshipKeyPathsForPrefetching_block___block_invoke_2;
  v47[3] = &unk_1E756F680;
  v52 = v12;
  v35 = v15;
  v48 = v35;
  v49 = *(a1 + 40);
  v36 = *(a1 + 96);
  v37 = *(a1 + 104);
  v50 = v36;
  v51 = v37;
  v38 = [v34 enumerateObjectsFromFetchRequest:v13 count:0 usingDefaultBatchSizeWithBlock:v47];
  if ([v35 count] && !*(*(*(a1 + 104) + 8) + 24))
  {
    [*(a1 + 88) outputError:{@"Unable to find objects with identifiers: %@\n", v35}];
  }
}

void __186__PhotosControlPhotoLibraryCommand_runOnManagedObjectArgumentsWithEntityName_identifierPropertyKey_allowAll_additionalPredicate_sortDescriptors_relationshipKeyPathsForPrefetching_block___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v12 = v7;
  if (*(a1 + 64) == 1)
  {
    v8 = *(a1 + 32);
    v9 = [v7 objectID];
    v10 = v8;
LABEL_5:
    [v10 removeObject:v9];
    goto LABEL_6;
  }

  v9 = [v7 valueForKeyPath:*(a1 + 40)];
  if (v9)
  {
    v10 = *(a1 + 32);
    goto LABEL_5;
  }

LABEL_6:

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v12, a3, *(*(a1 + 56) + 8) + 24);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      *a4 = 1;
    }
  }
}

- (BOOL)argument:(id)argument isValidDouble:(double *)double
{
  v5 = [MEMORY[0x1E696AE88] scannerWithString:argument];
  v8 = 0;
  if ([v5 scanDouble:&v8] && objc_msgSend(v5, "isAtEnd"))
  {
    if (double)
    {
      *double = v8;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)configureWithAlternateURLToLibraryDatabase:(id)database
{
  v21[1] = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PhotosControlPhotoLibraryCommand.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"urlToDb"}];
  }

  v6 = MEMORY[0x1E695D6B8];
  v20 = 0;
  v7 = databaseCopy;
  v8 = [v6 cachedModelForPersistentStoreWithURL:v7 options:0 error:&v20];
  v9 = v20;
  if (!v8)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PhotosControlPhotoLibraryCommand.m" lineNumber:100 description:@"can't load model."];
  }

  lastPathComponent = [v7 lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];
  [PhotosControlArbitraryPersistentContainer setDefaultDirectoryURL:uRLByDeletingLastPathComponent];
  v13 = [(NSPersistentContainer *)[PhotosControlArbitraryPersistentContainer alloc] initWithName:stringByDeletingPathExtension managedObjectModel:v8];
  v14 = [objc_alloc(MEMORY[0x1E695D6C8]) initWithURL:v7];

  [v14 setShouldMigrateStoreAutomatically:0];
  v21[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [(NSPersistentContainer *)v13 setPersistentStoreDescriptions:v15];

  [(NSPersistentContainer *)v13 loadPersistentStoresWithCompletionHandler:&__block_literal_global_64922];
  newBackgroundContext = [(NSPersistentContainer *)v13 newBackgroundContext];
  moc = self->_moc;
  self->_moc = newBackgroundContext;
}

void __79__PhotosControlPhotoLibraryCommand_configureWithAlternateURLToLibraryDatabase___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 userInfo];
    NSLog(&cfstr_UnresolvedErro.isa, v3, v4);
  }
}

- (NSURL)libraryURL
{
  v3 = self->_libraryURL;
  objc_sync_enter(v3);
  libraryURL = self->_libraryURL;
  if (!libraryURL)
  {
    systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
    v6 = self->_libraryURL;
    self->_libraryURL = systemLibraryURL;

    libraryURL = self->_libraryURL;
  }

  v7 = libraryURL;
  objc_sync_exit(v3);

  return v7;
}

- (PhotosControlPhotoLibraryCommand)initWithArgc:(int)argc argv:(char *)argv ctl:(id)ctl
{
  v7 = *&argc;
  ctlCopy = ctl;
  v19.receiver = self;
  v19.super_class = PhotosControlPhotoLibraryCommand;
  v10 = [(PhotosControlCommand *)&v19 initWithArgc:v7 argv:argv];
  if (v10)
  {
    v11 = dispatch_group_create();
    group = v10->_group;
    v10->_group = v11;

    objc_storeStrong(&v10->_ctl, ctl);
    v10->_argumentRangeForRunOnManagedObjects.location = 0;
    v10->_argumentRangeForRunOnManagedObjects.length = 0;
    v13 = getenv("PHOTOSCTL_LIBRARY");
    if (v13)
    {
      if (!v10->_libraryURL)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
        libraryArg = v10->_libraryArg;
        v10->_libraryArg = v14;

        v16 = [(PhotosControlCommand *)v10 libraryURLFromArgument:v10->_libraryArg];
        libraryURL = v10->_libraryURL;
        v10->_libraryURL = v16;
      }
    }
  }

  return v10;
}

+ (option)longopts
{
  libraryLongopts = [self libraryLongopts];
  if (libraryLongopts)
  {
    v3 = 0;
    do
    {
      v4 = (libraryLongopts + v3 * 8);
      if (!*(libraryLongopts + v3 * 8))
      {
        break;
      }

      v3 += 4;
      v5 = &(&longopts_longopts)[v3];
      v6 = v4[1];
      *v5 = *v4;
      *(v5 + 1) = v6;
    }

    while (v3 != 392);
  }

  return &longopts_longopts;
}

+ (const)optstring
{
  if (![self libraryOptstring])
  {
    return "l:";
  }

  v2 = &optstring_buffer;
  __strlcpy_chk();
  __strlcat_chk();
  return v2;
}

+ (id)usage
{
  usagesummary = [self usagesummary];
  libraryUsage = [self libraryUsage];
  if (libraryUsage)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", usagesummary, libraryUsage];
  }

  else
  {
    v5 = usagesummary;
  }

  v6 = v5;

  return v6;
}

+ (id)usagesummary
{
  libraryUsagesummary = [self libraryUsagesummary];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [self name];
  v6 = name;
  if (libraryUsagesummary)
  {
    v7 = [v4 initWithFormat:@"%@ %@ %@", name, @"[-l|--library <path.photoslibrary>|<uuid>|<WellKnownPhotoLibraryIdentifier (1=System, 3=Syndication)>]", libraryUsagesummary];
  }

  else
  {
    v7 = [v4 initWithFormat:@"%@ %@", name, @"[-l|--library <path.photoslibrary>|<uuid>|<WellKnownPhotoLibraryIdentifier (1=System, 3=Syndication)>]", v10];
  }

  v8 = v7;

  return v8;
}

@end