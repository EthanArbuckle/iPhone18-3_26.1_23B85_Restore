@interface PRUISPosterGallery
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGallery:(id)gallery;
- (NSDate)creationDate;
- (NSSet)providers;
- (PRUISPosterGallery)init;
- (PRUISPosterGallery)initWithContext:(id)context descriptors:(id)descriptors metadata:(id)metadata;
- (id)description;
- (id)descriptorsForProvider:(id)provider;
@end

@implementation PRUISPosterGallery

- (PRUISPosterGallery)initWithContext:(id)context descriptors:(id)descriptors metadata:(id)metadata
{
  v37 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  descriptorsCopy = descriptors;
  metadataCopy = metadata;
  if (!descriptorsCopy)
  {
    descriptorsCopy = objc_opt_new();
  }

  v35.receiver = self;
  v35.super_class = PRUISPosterGallery;
  v12 = [(PRUISPosterGallery *)&v35 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
    v14 = [descriptorsCopy copy];
    descriptors = v13->_descriptors;
    v13->_descriptors = v14;

    v30 = metadataCopy;
    v16 = [metadataCopy copy];
    metadata = v13->_metadata;
    v13->_metadata = v16;

    v18 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    postersByProvider = [descriptorsCopy postersByProvider];
    allKeys = [postersByProvider allKeys];

    v21 = [allKeys countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(allKeys);
          }

          v25 = *(*(&v31 + 1) + 8 * i);
          v26 = [[_PRUISPosterProvider alloc] initWithProviderBundleIdentifier:v25];
          [v18 setObject:v26 forKey:v25];
        }

        v22 = [allKeys countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v22);
    }

    v27 = [v18 copy];
    providersByBundleIdentifier = v13->_providersByBundleIdentifier;
    v13->_providersByBundleIdentifier = v27;

    metadataCopy = v30;
  }

  return v13;
}

- (PRUISPosterGallery)init
{
  [(PRUISPosterGallery *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  context = [(PRUISPosterGallery *)self context];

  if (context)
  {
    context2 = [(PRUISPosterGallery *)self context];
    v6 = [v3 appendObject:context2 withName:@"context"];
  }

  descriptors = [(PRUISPosterGallery *)self descriptors];
  posters = [descriptors posters];
  bs_array = [posters bs_array];

  if ([bs_array count])
  {
    [v3 appendArraySection:bs_array withName:@"descriptors" skipIfEmpty:1];
  }

  creationDate = [(PRUISPosterGallery *)self creationDate];
  v11 = [v3 appendObject:creationDate withName:@"creationDate"];

  build = [v3 build];

  return build;
}

- (NSSet)providers
{
  v2 = MEMORY[0x1E695DFD8];
  allValues = [(NSDictionary *)self->_providersByBundleIdentifier allValues];
  v4 = [v2 setWithArray:allValues];

  return v4;
}

- (NSDate)creationDate
{
  creationDate = [(PRUISPosterGalleryMetadata *)self->_metadata creationDate];
  if (!creationDate)
  {
    v3 = PRUISLogChannels();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1CAE63000, v3, OS_LOG_TYPE_DEFAULT, "Encountered invalid gallery creation date. Returning [NSDate distantPast].", v5, 2u);
    }

    creationDate = [MEMORY[0x1E695DF00] distantPast];
  }

  return creationDate;
}

- (id)descriptorsForProvider:(id)provider
{
  descriptors = self->_descriptors;
  bundleIdentifier = [provider bundleIdentifier];
  v5 = [(PRSPosterDescriptorCollection *)descriptors collectionForProvider:bundleIdentifier];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
    v8 = equalCopy && (objc_opt_self(), v6 = {;
  }

  return v8;
}

- (BOOL)isEqualToGallery:(id)gallery
{
  galleryCopy = gallery;
  v5 = galleryCopy;
  if (galleryCopy == self)
  {
    v14 = 1;
  }

  else if (galleryCopy && ([(PRUISPosterGallery *)galleryCopy context], v6 = objc_claimAutoreleasedReturnValue(), [(PRUISPosterGallery *)self context], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8) && ([(PRUISPosterGallery *)v5 descriptors], v9 = objc_claimAutoreleasedReturnValue(), [(PRUISPosterGallery *)self descriptors], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11))
  {
    creationDate = [(PRUISPosterGallery *)v5 creationDate];
    creationDate2 = [(PRUISPosterGallery *)self creationDate];
    v14 = [creationDate isEqualToDate:creationDate2];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end