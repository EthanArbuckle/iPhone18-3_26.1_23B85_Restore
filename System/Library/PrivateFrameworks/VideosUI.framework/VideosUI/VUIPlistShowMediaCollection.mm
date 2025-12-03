@interface VUIPlistShowMediaCollection
- (VUIPlistShowMediaCollection)initWithMediaLibrary:(id)library databaseShow:(id)show requestedProperties:(id)properties;
- (VUIPlistShowMediaCollection)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind;
- (id)_valueForPropertyDescriptor:(id)descriptor;
- (id)coverArtImageIdentifier;
- (id)imageLoadParamsWithImageType:(unint64_t)type;
- (id)mediaItemCount;
@end

@implementation VUIPlistShowMediaCollection

- (VUIPlistShowMediaCollection)initWithMediaLibrary:(id)library databaseShow:(id)show requestedProperties:(id)properties
{
  showCopy = show;
  propertiesCopy = properties;
  libraryCopy = library;
  v12 = [VUIPlistMediaEntityIdentifier alloc];
  identifier = [showCopy identifier];
  v14 = [(VUIPlistMediaEntityIdentifier *)v12 initWithIdentifier:identifier type:4];

  v15 = VUIPlistShowMediaKind();
  v18.receiver = self;
  v18.super_class = VUIPlistShowMediaCollection;
  v16 = [(VUIMediaEntity *)&v18 initWithMediaLibrary:libraryCopy identifier:v14 requestedProperties:propertiesCopy kind:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_databaseShow, show);
  }

  return v16;
}

- (VUIPlistShowMediaCollection)initWithMediaLibrary:(id)library identifier:(id)identifier requestedProperties:(id)properties kind:(id)kind
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The %@ initializer is not available.", v9}];

  return 0;
}

- (id)coverArtImageIdentifier
{
  databaseShow = [(VUIPlistShowMediaCollection *)self databaseShow];
  coverArtURL = [databaseShow coverArtURL];
  absoluteString = [coverArtURL absoluteString];

  return absoluteString;
}

- (id)_valueForPropertyDescriptor:(id)descriptor
{
  sourcePropertyNames = [descriptor sourcePropertyNames];
  allObjects = [sourcePropertyNames allObjects];

  if ([allObjects count] == 1)
  {
    firstObject = [allObjects firstObject];
    databaseShow = [(VUIPlistShowMediaCollection *)self databaseShow];
    NSSelectorFromString(firstObject);
    if (objc_opt_respondsToSelector())
    {
      v8 = [databaseShow valueForKey:firstObject];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)mediaItemCount
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  databaseShow = [(VUIPlistShowMediaCollection *)self databaseShow];
  seasons = [databaseShow seasons];

  v4 = [seasons countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(seasons);
        }

        episodes = [*(*(&v12 + 1) + 8 * i) episodes];
        v6 += [episodes count];
      }

      v5 = [seasons countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];

  return v10;
}

- (id)imageLoadParamsWithImageType:(unint64_t)type
{
  if (type)
  {
    v3 = 0;
  }

  else
  {
    databaseShow = [(VUIPlistShowMediaCollection *)self databaseShow];
    coverArtURL = [databaseShow coverArtURL];

    coverArtImageIdentifier = [(VUIPlistShowMediaCollection *)self coverArtImageIdentifier];
    v3 = [[VUIPlistMediaEntityImageLoadParams alloc] initWithImageURL:coverArtURL baseImageIdentifier:coverArtImageIdentifier imageType:0];
  }

  return v3;
}

@end