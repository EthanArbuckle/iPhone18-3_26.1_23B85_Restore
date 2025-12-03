@interface VUISidebandSeasonMediaCollection
- (VUISidebandSeasonMediaCollection)initWithMediaLibrary:(id)library seasonManagedObject:(id)object requestedProperties:(id)properties;
- (id)canonicalID;
- (id)isLocal;
- (id)seasonNumber;
- (id)showIdentifier;
- (id)title;
@end

@implementation VUISidebandSeasonMediaCollection

- (VUISidebandSeasonMediaCollection)initWithMediaLibrary:(id)library seasonManagedObject:(id)object requestedProperties:(id)properties
{
  libraryCopy = library;
  objectCopy = object;
  propertiesCopy = properties;
  if (libraryCopy)
  {
    if (objectCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"seasonManagedObject"}];
    if (propertiesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
  if (!objectCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (propertiesCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"requestedProperties"}];
LABEL_4:
  v11 = [VUISidebandMediaEntityIdentifier alloc];
  objectID = [objectCopy objectID];
  v13 = +[VUIMediaEntityType season];
  v14 = [(VUISidebandMediaEntityIdentifier *)v11 initWithManagedObjectID:objectID mediaEntityType:v13];

  v15 = VUISidebandSeasonMediaCollectionKind();
  v18.receiver = self;
  v18.super_class = VUISidebandSeasonMediaCollection;
  v16 = [(VUIMediaEntity *)&v18 initWithMediaLibrary:libraryCopy identifier:v14 requestedProperties:propertiesCopy kind:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_seasonManagedObject, object);
  }

  return v16;
}

- (id)canonicalID
{
  seasonManagedObject = [(VUISidebandSeasonMediaCollection *)self seasonManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  managedObjectContext = [seasonManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__VUISidebandSeasonMediaCollection_canonicalID__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = seasonManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __47__VUISidebandSeasonMediaCollection_canonicalID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) canonicalID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)isLocal
{
  seasonManagedObject = [(VUISidebandSeasonMediaCollection *)self seasonManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = MEMORY[0x1E695E110];
  managedObjectContext = [seasonManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__VUISidebandSeasonMediaCollection_isLocal__block_invoke;
  v7[3] = &unk_1E872DB58;
  v4 = seasonManagedObject;
  v8 = v4;
  v9 = &v10;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __43__VUISidebandSeasonMediaCollection_isLocal__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) episodes];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v9 + 1) + 8 * i) downloadState] == 2)
        {
          v7 = *(*(a1 + 40) + 8);
          v8 = *(v7 + 40);
          *(v7 + 40) = MEMORY[0x1E695E118];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)showIdentifier
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  seasonManagedObject = [(VUISidebandSeasonMediaCollection *)self seasonManagedObject];
  managedObjectContext = [seasonManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__VUISidebandSeasonMediaCollection_showIdentifier__block_invoke;
  v7[3] = &unk_1E872DB58;
  v4 = seasonManagedObject;
  v8 = v4;
  v9 = &v10;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __50__VUISidebandSeasonMediaCollection_showIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) series];
  v8 = [v2 objectID];

  if (v8)
  {
    v3 = [VUISidebandMediaEntityIdentifier alloc];
    v4 = +[VUIMediaEntityType show];
    v5 = [(VUISidebandMediaEntityIdentifier *)v3 initWithManagedObjectID:v8 mediaEntityType:v4];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)seasonNumber
{
  seasonManagedObject = [(VUISidebandSeasonMediaCollection *)self seasonManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  managedObjectContext = [seasonManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__VUISidebandSeasonMediaCollection_seasonNumber__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = seasonManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __48__VUISidebandSeasonMediaCollection_seasonNumber__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) seasonNumber];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)title
{
  seasonManagedObject = [(VUISidebandSeasonMediaCollection *)self seasonManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  managedObjectContext = [seasonManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__VUISidebandSeasonMediaCollection_title__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = seasonManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __41__VUISidebandSeasonMediaCollection_title__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) title];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end