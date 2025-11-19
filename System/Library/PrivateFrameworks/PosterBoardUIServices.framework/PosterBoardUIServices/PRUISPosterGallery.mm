@interface PRUISPosterGallery
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToGallery:(id)a3;
- (NSDate)creationDate;
- (NSSet)providers;
- (PRUISPosterGallery)init;
- (PRUISPosterGallery)initWithContext:(id)a3 descriptors:(id)a4 metadata:(id)a5;
- (id)description;
- (id)descriptorsForProvider:(id)a3;
@end

@implementation PRUISPosterGallery

- (PRUISPosterGallery)initWithContext:(id)a3 descriptors:(id)a4 metadata:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v10 = objc_opt_new();
  }

  v35.receiver = self;
  v35.super_class = PRUISPosterGallery;
  v12 = [(PRUISPosterGallery *)&v35 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    v14 = [v10 copy];
    descriptors = v13->_descriptors;
    v13->_descriptors = v14;

    v30 = v11;
    v16 = [v11 copy];
    metadata = v13->_metadata;
    v13->_metadata = v16;

    v18 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = [v10 postersByProvider];
    v20 = [v19 allKeys];

    v21 = [v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v31 + 1) + 8 * i);
          v26 = [[_PRUISPosterProvider alloc] initWithProviderBundleIdentifier:v25];
          [v18 setObject:v26 forKey:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v22);
    }

    v27 = [v18 copy];
    providersByBundleIdentifier = v13->_providersByBundleIdentifier;
    v13->_providersByBundleIdentifier = v27;

    v11 = v30;
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
  v4 = [(PRUISPosterGallery *)self context];

  if (v4)
  {
    v5 = [(PRUISPosterGallery *)self context];
    v6 = [v3 appendObject:v5 withName:@"context"];
  }

  v7 = [(PRUISPosterGallery *)self descriptors];
  v8 = [v7 posters];
  v9 = [v8 bs_array];

  if ([v9 count])
  {
    [v3 appendArraySection:v9 withName:@"descriptors" skipIfEmpty:1];
  }

  v10 = [(PRUISPosterGallery *)self creationDate];
  v11 = [v3 appendObject:v10 withName:@"creationDate"];

  v12 = [v3 build];

  return v12;
}

- (NSSet)providers
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSDictionary *)self->_providersByBundleIdentifier allValues];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (NSDate)creationDate
{
  v2 = [(PRUISPosterGalleryMetadata *)self->_metadata creationDate];
  if (!v2)
  {
    v3 = PRUISLogChannels();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1CAE63000, v3, OS_LOG_TYPE_DEFAULT, "Encountered invalid gallery creation date. Returning [NSDate distantPast].", v5, 2u);
    }

    v2 = [MEMORY[0x1E695DF00] distantPast];
  }

  return v2;
}

- (id)descriptorsForProvider:(id)a3
{
  descriptors = self->_descriptors;
  v4 = [a3 bundleIdentifier];
  v5 = [(PRSPosterDescriptorCollection *)descriptors collectionForProvider:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else
    v8 = v4 && (objc_opt_self(), v6 = {;
  }

  return v8;
}

- (BOOL)isEqualToGallery:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v14 = 1;
  }

  else if (v4 && ([(PRUISPosterGallery *)v4 context], v6 = objc_claimAutoreleasedReturnValue(), [(PRUISPosterGallery *)self context], v7 = objc_claimAutoreleasedReturnValue(), v8 = BSEqualObjects(), v7, v6, v8) && ([(PRUISPosterGallery *)v5 descriptors], v9 = objc_claimAutoreleasedReturnValue(), [(PRUISPosterGallery *)self descriptors], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11))
  {
    v12 = [(PRUISPosterGallery *)v5 creationDate];
    v13 = [(PRUISPosterGallery *)self creationDate];
    v14 = [v12 isEqualToDate:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end