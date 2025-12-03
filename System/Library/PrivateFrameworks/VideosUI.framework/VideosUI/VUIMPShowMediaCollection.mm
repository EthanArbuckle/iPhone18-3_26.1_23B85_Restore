@interface VUIMPShowMediaCollection
- (VUIMPShowMediaCollection)initWithMediaLibrary:(id)library mediaItemCollection:(id)collection identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind;
- (VUIMPShowMediaCollection)initWithMediaLibrary:(id)library mediaItemCollection:(id)collection requestedProperties:(id)properties;
- (id)seasonCount;
@end

@implementation VUIMPShowMediaCollection

- (VUIMPShowMediaCollection)initWithMediaLibrary:(id)library mediaItemCollection:(id)collection requestedProperties:(id)properties
{
  libraryCopy = library;
  collectionCopy = collection;
  propertiesCopy = properties;
  if (libraryCopy)
  {
    if (collectionCopy)
    {
      goto LABEL_3;
    }

LABEL_7:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaItemCollection"}];
    if (propertiesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
  if (!collectionCopy)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (propertiesCopy)
  {
    goto LABEL_4;
  }

LABEL_8:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"requestedProperties"}];
LABEL_4:
  representativeItem = [collectionCopy representativeItem];
  v12 = [VUIMPMediaEntityIdentifier showIdentifierWithMediaItem:representativeItem];
  if (v12)
  {
    v13 = VUIMPShowMediaCollectionKind();
    v17.receiver = self;
    v17.super_class = VUIMPShowMediaCollection;
    v14 = [(VUIMPMediaCollection *)&v17 initWithMediaLibrary:libraryCopy mediaItemCollection:collectionCopy identifier:v12 requestedProperties:propertiesCopy kind:v13];

    self = v14;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VUIMPShowMediaCollection)initWithMediaLibrary:(id)library mediaItemCollection:(id)collection identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind
{
  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D940];
  v10 = NSStringFromSelector(a2);
  [v8 raise:v9 format:{@"The %@ initializer is not available.", v10}];

  return 0;
}

- (id)seasonCount
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__VUIMPShowMediaCollection_seasonCount__block_invoke;
  v4[3] = &unk_1E8734608;
  v4[4] = self;
  v2 = [(VUIMediaEntity *)self _propertyValueWithBlock:v4 forKey:@"seasonCount"];

  return v2;
}

id __39__VUIMPShowMediaCollection_seasonCount__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 72);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = [*(a1 + 32) mediaItemCollection];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v4 items];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [VUIMPSeasonMediaCollectionIdentifier seasonIdentifierWithMediaItem:*(*(&v16 + 1) + 8 * v9)];
          if (v10)
          {
            [v3 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v11 = [v3 count];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    v13 = *(a1 + 32);
    v14 = *(v13 + 72);
    *(v13 + 72) = v12;

    v2 = *(*(a1 + 32) + 72);
  }

  return v2;
}

@end