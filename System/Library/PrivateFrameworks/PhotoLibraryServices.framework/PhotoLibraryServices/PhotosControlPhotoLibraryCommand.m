@interface PhotosControlPhotoLibraryCommand
+ (const)optstring;
+ (id)usage;
+ (id)usagesummary;
+ (option)longopts;
- (BOOL)argument:(id)a3 isValidDouble:(double *)a4;
- (BOOL)processOption:(int)a3 arg:(id)a4;
- (NSURL)libraryURL;
- (PhotosControlPhotoLibraryCommand)initWithArgc:(int)a3 argv:(char *)a4 ctl:(id)a5;
- (id)_jsonDictionaryFromManagedObject:(id)a3 allPreviousObjects:(id)a4 currentDepth:(unint64_t)a5 maxDepth:(unint64_t)a6;
- (id)jsonDictionaryFromError:(id)a3;
- (id)managedObjectContext;
- (id)photoLibrary;
- (id)plPhotoLibrary;
- (id)processBooleanOptionArg:(id)a3;
- (id)unopenedPhotoLibrary;
- (int)runOnAssetArgumentsAllowAll:(BOOL)a3 additionalPredicate:(id)a4 block:(id)a5;
- (int)runOnManagedObjectArgumentsWithEntityName:(id)a3 identifierPropertyKey:(id)a4 allowAll:(BOOL)a5 additionalPredicate:(id)a6 sortDescriptors:(id)a7 relationshipKeyPathsForPrefetching:(id)a8 block:(id)a9;
- (int)runOnPhotoKitAssetArgumentsAllowAll:(BOOL)a3 propertySets:(id)a4 additionalPredicate:(id)a5 block:(id)a6;
- (int)save;
- (int)setValueString:(id)a3 forKey:(id)a4 onManagedObject:(id)a5;
- (int)traverseRelationshipsForRootManagedObject:(id)a3 keys:(id)a4 targetObject:(id *)a5;
- (void)configureWithAlternateURLToLibraryDatabase:(id)a3;
@end

@implementation PhotosControlPhotoLibraryCommand

- (int)runOnPhotoKitAssetArgumentsAllowAll:(BOOL)a3 propertySets:(id)a4 additionalPredicate:(id)a5 block:(id)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  photoKitProxy = self->_photoKitProxy;
  if (!photoKitProxy)
  {
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"missing required _PhotosControlPhotoLibraryPhotoKit" userInfo:0];
    objc_exception_throw(v16);
  }

  v14 = [(_PhotosControlPhotoLibraryPhotoKit *)photoKitProxy runOnPhotoKitAssetArgumentsAllowAll:v8 propertySets:v10 additionalPredicate:v11 block:v12];

  return v14;
}

- (id)managedObjectContext
{
  moc = self->_moc;
  if (moc)
  {
    v3 = moc;
  }

  else
  {
    photoKitProxy = self->_photoKitProxy;
    if (!photoKitProxy)
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"missing required _PhotosControlPhotoLibraryPhotoKit" userInfo:0];
      objc_exception_throw(v6);
    }

    v3 = [(_PhotosControlPhotoLibraryPhotoKit *)photoKitProxy managedObjectContext];
  }

  return v3;
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

- (BOOL)processOption:(int)a3 arg:(id)a4
{
  v5 = *&a3;
  v7 = a4;
  if (v5 == 108)
  {
    objc_storeStrong(&self->_libraryArg, a4);
    v8 = [(PhotosControlCommand *)self libraryURLFromArgument:v7];
    libraryURL = self->_libraryURL;
    self->_libraryURL = v8;
  }

  v10 = [(PhotosControlPhotoLibraryCommand *)self libraryProcessOption:v5 arg:v7];
  v11 = v5 == 108 || v10;

  return v11;
}

- (id)processBooleanOptionArg:(id)a3
{
  v4 = a3;
  v5 = [v4 lowercaseString];
  if ([v5 isEqualToString:@"y"])
  {
    goto LABEL_4;
  }

  v6 = [v4 lowercaseString];
  if (![v6 isEqualToString:@"yes"])
  {
    v9 = [v4 lowercaseString];
    v10 = [v9 isEqualToString:@"1"];

    if (v10)
    {
      goto LABEL_5;
    }

    v11 = [v4 lowercaseString];
    if (([v11 isEqualToString:@"n"] & 1) == 0)
    {
      v12 = [v4 lowercaseString];
      if (![v12 isEqualToString:@"no"])
      {
        v13 = [v4 lowercaseString];
        v14 = [v13 isEqualToString:@"0"];

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
  v3 = [(PhotosControlPhotoLibraryCommand *)self plPhotoLibrary];
  v4 = [v3 managedObjectContext];

  v10 = 0;
  v5 = [v4 save:&v10];
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

- (id)jsonDictionaryFromError:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 domain];
  [v5 setObject:v6 forKeyedSubscript:@"domain"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "code")}];
  [v5 setObject:v7 forKeyedSubscript:@"code"];

  v8 = [v4 localizedDescription];

  [v5 setObject:v8 forKeyedSubscript:@"localizedDescription"];

  return v5;
}

- (id)_jsonDictionaryFromManagedObject:(id)a3 allPreviousObjects:(id)a4 currentDepth:(unint64_t)a5 maxDepth:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  if (!v11)
  {
    v12 = MEMORY[0x1E695DFA8];
    v13 = [v10 objectID];
    v11 = [v12 setWithObject:v13];
  }

  v14 = [MEMORY[0x1E695DF90] dictionary];
  v15 = [v10 entity];
  v16 = [v15 propertiesByName];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __110__PhotosControlPhotoLibraryCommand__jsonDictionaryFromManagedObject_allPreviousObjects_currentDepth_maxDepth___block_invoke;
  v22[3] = &unk_1E756F6F8;
  v23 = v10;
  v17 = v14;
  v24 = v17;
  v25 = v11;
  v29 = a6 - 1 >= a5;
  v26 = self;
  v27 = a5;
  v28 = a6;
  v18 = v11;
  v19 = v10;
  [v16 enumerateKeysAndObjectsUsingBlock:v22];
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

- (int)setValueString:(id)a3 forKey:(id)a4 onManagedObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 entity];
  v12 = [v11 propertiesByName];

  v13 = [v12 objectForKey:v9];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      v15 = v14;
      if (!v8)
      {
        if (([v14 isOptional] & 1) == 0)
        {
          [(PhotosControlCommand *)self outputError:@"Resetting property %@ is forbidden because it is not optional\n", v9];
LABEL_33:
          v17 = 64;
          goto LABEL_34;
        }

        v18 = 0;
        goto LABEL_29;
      }

      v16 = [v14 attributeType];
      if (v16 <= 599)
      {
        if (v16 <= 299)
        {
          if (v16 != 100 && v16 != 200)
          {
            goto LABEL_31;
          }

          goto LABEL_22;
        }

        if (v16 == 300)
        {
LABEL_22:
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue")}];
          goto LABEL_28;
        }

        if (v16 == 500)
        {
          v19 = MEMORY[0x1E696AD98];
          [v8 doubleValue];
          v20 = [v19 numberWithDouble:?];
          goto LABEL_28;
        }

LABEL_31:
        v24 = @"Set command is not supported for date, binary, and transformable attributes\n";
        goto LABEL_32;
      }

      if (v16 > 799)
      {
        if (v16 == 800)
        {
          v20 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "BOOLValue")}];
        }

        else
        {
          if (v16 != 900)
          {
            goto LABEL_31;
          }

          v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:{objc_msgSend(v8, "integerValue")}];
        }
      }

      else
      {
        if (v16 != 600)
        {
          if (v16 == 700)
          {
            v18 = v8;
            goto LABEL_29;
          }

          goto LABEL_31;
        }

        v21 = MEMORY[0x1E696AD98];
        [v8 floatValue];
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
      [(PhotosControlCommand *)self output:@"Setting value %@ for key %@ on object of class %@\n", v18, v9, v23];

      [v10 setValue:v18 forKey:v9];
      v17 = 0;
LABEL_34:

      goto LABEL_35;
    }

    [(PhotosControlCommand *)self outputError:@"Set command is only supported for attribute properties, %@ is not an attribute\n", v9];
  }

  else
  {
    [(PhotosControlCommand *)self outputError:@"Cannot find property %@\n", v9];
  }

  v17 = 64;
LABEL_35:

  return v17;
}

- (int)traverseRelationshipsForRootManagedObject:(id)a3 keys:(id)a4 targetObject:(id *)a5
{
  v7 = a3;
  v8 = [a4 mutableCopy];
  v25 = v7;
  if ([v8 count])
  {
    v9 = @"Cannot find relationship %@ on object of class %@\n";
    v10 = 0x1E695D000uLL;
    v27 = self;
    while (1)
    {
      v11 = [v8 firstObject];
      [v8 removeObjectAtIndex:0];
      v12 = [v7 entity];
      v13 = [v12 propertiesByName];

      v14 = [v13 objectForKey:v11];
      if (!v14)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        [(PhotosControlCommand *)self outputError:@"%@ is not a relationship\n", v11];
        goto LABEL_9;
      }

      if ([v14 isToMany])
      {

        [(PhotosControlCommand *)self outputError:@"Set command is not supported for to-many relationships, %@ is to-many\n", v11];
LABEL_9:
        v7 = 0;
        v17 = 0;
        v18 = 64;
        goto LABEL_10;
      }

      [v7 valueForKey:v11];
      v20 = v10;
      v22 = v21 = v9;

      v18 = 0;
      v17 = 1;
      v7 = v22;
      v9 = v21;
      v10 = v20;
      self = v27;
LABEL_10:

      v19 = [v8 count];
      if (!v17 || !v19)
      {
        goto LABEL_15;
      }
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [(PhotosControlCommand *)self outputError:v9, v11, v16];

    goto LABEL_9;
  }

  v18 = 0;
LABEL_15:
  if (a5)
  {
    v23 = v7;
    *a5 = v7;
  }

  return v18;
}

- (int)runOnAssetArgumentsAllowAll:(BOOL)a3 additionalPredicate:(id)a4 block:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[PLManagedAsset entityName];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__PhotosControlPhotoLibraryCommand_runOnAssetArgumentsAllowAll_additionalPredicate_block___block_invoke;
  v13[3] = &unk_1E756F6D0;
  v14 = v8;
  v11 = v8;
  LODWORD(v6) = [(PhotosControlPhotoLibraryCommand *)self runOnManagedObjectArgumentsWithEntityName:v10 identifierPropertyKey:@"uuid" allowAll:v6 additionalPredicate:v9 sortDescriptors:0 block:v13];

  return v6;
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

- (int)runOnManagedObjectArgumentsWithEntityName:(id)a3 identifierPropertyKey:(id)a4 allowAll:(BOOL)a5 additionalPredicate:(id)a6 sortDescriptors:(id)a7 relationshipKeyPathsForPrefetching:(id)a8 block:(id)a9
{
  v12 = a5;
  v15 = a3;
  v27 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = [(PhotosControlPhotoLibraryCommand *)self managedObjectContext];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  if (self->_argumentRangeForRunOnManagedObjects.length)
  {
    v21 = [(PhotosControlCommand *)self args];
    v22 = [v21 subarrayWithRange:{self->_argumentRangeForRunOnManagedObjects.location, self->_argumentRangeForRunOnManagedObjects.length}];
  }

  else
  {
    v22 = [(PhotosControlCommand *)self args];
  }

  v23 = [v22 count];
  if (v23 > 1)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __186__PhotosControlPhotoLibraryCommand_runOnManagedObjectArgumentsWithEntityName_identifierPropertyKey_allowAll_additionalPredicate_sortDescriptors_relationshipKeyPathsForPrefetching_block___block_invoke;
    v28[3] = &unk_1E756F6A8;
    v39 = v23;
    v29 = v22;
    v40 = v12;
    v30 = v27;
    v31 = v15;
    v32 = v18;
    v33 = v20;
    v34 = v16;
    v35 = v17;
    v36 = self;
    v37 = v19;
    v38 = &v41;
    [v33 performBlockAndWait:v28];
    v25 = *(v42 + 6);

    v24 = v29;
  }

  else
  {
    v24 = [v22 firstObject];
    [(PhotosControlCommand *)self outputError:@"%@ requires at least 1 %@ identifier", v24, v15, v27];
    if (v12)
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

- (BOOL)argument:(id)a3 isValidDouble:(double *)a4
{
  v5 = [MEMORY[0x1E696AE88] scannerWithString:a3];
  v8 = 0;
  if ([v5 scanDouble:&v8] && objc_msgSend(v5, "isAtEnd"))
  {
    if (a4)
    {
      *a4 = v8;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)configureWithAlternateURLToLibraryDatabase:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PhotosControlPhotoLibraryCommand.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"urlToDb"}];
  }

  v6 = MEMORY[0x1E695D6B8];
  v20 = 0;
  v7 = v5;
  v8 = [v6 cachedModelForPersistentStoreWithURL:v7 options:0 error:&v20];
  v9 = v20;
  if (!v8)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PhotosControlPhotoLibraryCommand.m" lineNumber:100 description:@"can't load model."];
  }

  v10 = [v7 lastPathComponent];
  v11 = [v10 stringByDeletingPathExtension];

  v12 = [v7 URLByDeletingLastPathComponent];
  [PhotosControlArbitraryPersistentContainer setDefaultDirectoryURL:v12];
  v13 = [(NSPersistentContainer *)[PhotosControlArbitraryPersistentContainer alloc] initWithName:v11 managedObjectModel:v8];
  v14 = [objc_alloc(MEMORY[0x1E695D6C8]) initWithURL:v7];

  [v14 setShouldMigrateStoreAutomatically:0];
  v21[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  [(NSPersistentContainer *)v13 setPersistentStoreDescriptions:v15];

  [(NSPersistentContainer *)v13 loadPersistentStoresWithCompletionHandler:&__block_literal_global_64922];
  v16 = [(NSPersistentContainer *)v13 newBackgroundContext];
  moc = self->_moc;
  self->_moc = v16;
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
    v5 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
    v6 = self->_libraryURL;
    self->_libraryURL = v5;

    libraryURL = self->_libraryURL;
  }

  v7 = libraryURL;
  objc_sync_exit(v3);

  return v7;
}

- (PhotosControlPhotoLibraryCommand)initWithArgc:(int)a3 argv:(char *)a4 ctl:(id)a5
{
  v7 = *&a3;
  v9 = a5;
  v19.receiver = self;
  v19.super_class = PhotosControlPhotoLibraryCommand;
  v10 = [(PhotosControlCommand *)&v19 initWithArgc:v7 argv:a4];
  if (v10)
  {
    v11 = dispatch_group_create();
    group = v10->_group;
    v10->_group = v11;

    objc_storeStrong(&v10->_ctl, a5);
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
  v2 = [a1 libraryLongopts];
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = (v2 + v3 * 8);
      if (!*(v2 + v3 * 8))
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
  if (![a1 libraryOptstring])
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
  v3 = [a1 usagesummary];
  v4 = [a1 libraryUsage];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", v3, v4];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

+ (id)usagesummary
{
  v3 = [a1 libraryUsagesummary];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [a1 name];
  v6 = v5;
  if (v3)
  {
    v7 = [v4 initWithFormat:@"%@ %@ %@", v5, @"[-l|--library <path.photoslibrary>|<uuid>|<WellKnownPhotoLibraryIdentifier (1=System, 3=Syndication)>]", v3];
  }

  else
  {
    v7 = [v4 initWithFormat:@"%@ %@", v5, @"[-l|--library <path.photoslibrary>|<uuid>|<WellKnownPhotoLibraryIdentifier (1=System, 3=Syndication)>]", v10];
  }

  v8 = v7;

  return v8;
}

@end