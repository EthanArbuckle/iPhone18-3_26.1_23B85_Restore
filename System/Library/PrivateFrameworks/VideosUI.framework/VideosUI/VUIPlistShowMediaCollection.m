@interface VUIPlistShowMediaCollection
- (VUIPlistShowMediaCollection)initWithMediaLibrary:(id)a3 databaseShow:(id)a4 requestedProperties:(id)a5;
- (VUIPlistShowMediaCollection)initWithMediaLibrary:(id)a3 identifier:(id)a4 requestedProperties:(id)a5 kind:(id)a6;
- (id)_valueForPropertyDescriptor:(id)a3;
- (id)coverArtImageIdentifier;
- (id)imageLoadParamsWithImageType:(unint64_t)a3;
- (id)mediaItemCount;
@end

@implementation VUIPlistShowMediaCollection

- (VUIPlistShowMediaCollection)initWithMediaLibrary:(id)a3 databaseShow:(id)a4 requestedProperties:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [VUIPlistMediaEntityIdentifier alloc];
  v13 = [v9 identifier];
  v14 = [(VUIPlistMediaEntityIdentifier *)v12 initWithIdentifier:v13 type:4];

  v15 = VUIPlistShowMediaKind();
  v18.receiver = self;
  v18.super_class = VUIPlistShowMediaCollection;
  v16 = [(VUIMediaEntity *)&v18 initWithMediaLibrary:v11 identifier:v14 requestedProperties:v10 kind:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_databaseShow, a4);
  }

  return v16;
}

- (VUIPlistShowMediaCollection)initWithMediaLibrary:(id)a3 identifier:(id)a4 requestedProperties:(id)a5 kind:(id)a6
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The %@ initializer is not available.", v9}];

  return 0;
}

- (id)coverArtImageIdentifier
{
  v2 = [(VUIPlistShowMediaCollection *)self databaseShow];
  v3 = [v2 coverArtURL];
  v4 = [v3 absoluteString];

  return v4;
}

- (id)_valueForPropertyDescriptor:(id)a3
{
  v4 = [a3 sourcePropertyNames];
  v5 = [v4 allObjects];

  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
    v7 = [(VUIPlistShowMediaCollection *)self databaseShow];
    NSSelectorFromString(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 valueForKey:v6];
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
  v2 = [(VUIPlistShowMediaCollection *)self databaseShow];
  v3 = [v2 seasons];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) episodes];
        v6 += [v9 count];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)imageLoadParamsWithImageType:(unint64_t)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(VUIPlistShowMediaCollection *)self databaseShow];
    v6 = [v5 coverArtURL];

    v7 = [(VUIPlistShowMediaCollection *)self coverArtImageIdentifier];
    v3 = [[VUIPlistMediaEntityImageLoadParams alloc] initWithImageURL:v6 baseImageIdentifier:v7 imageType:0];
  }

  return v3;
}

@end