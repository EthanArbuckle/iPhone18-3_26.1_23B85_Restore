@interface PKSharingMessageExtensionOpenGraphMessage
- (NSString)description;
- (PKSharingMessageExtensionOpenGraphMessage)initWithURL:(id)l;
- (id)urlRepresentation;
@end

@implementation PKSharingMessageExtensionOpenGraphMessage

- (PKSharingMessageExtensionOpenGraphMessage)initWithURL:(id)l
{
  v49 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v47.receiver = self;
  v47.super_class = PKSharingMessageExtensionOpenGraphMessage;
  v6 = [(PKSharingMessageExtensionOpenGraphMessage *)&v47 init];
  v7 = v6;
  if (v6)
  {
    v41 = lCopy;
    objc_storeStrong(&v6->_url, l);
    v8 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v7->_url resolvingAgainstBaseURL:0];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v40 = v8;
    queryItems = [v8 queryItems];
    v10 = [queryItems countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = v10;
    v42 = *v44;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v44 != v42)
        {
          objc_enumerationMutation(queryItems);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        name = [v13 name];
        v15 = name;
        if (name == @"title")
        {
          goto LABEL_10;
        }

        if (!name)
        {
          goto LABEL_21;
        }

        v16 = [(__CFString *)name isEqualToString:@"title"];

        if (v16)
        {
LABEL_10:
          value = [v13 value];
          title = v7->_title;
          v7->_title = value;

          goto LABEL_21;
        }

        v19 = queryItems;
        v20 = v15;
        if (v20 == @"subtitle" || (v21 = v20, v22 = [(__CFString *)v20 isEqualToString:@"subtitle"], v21, v22))
        {
          value2 = [v13 value];
          subtitle = v7->_subtitle;
          v7->_subtitle = value2;

LABEL_20:
          queryItems = v19;
          goto LABEL_21;
        }

        v25 = v21;
        if (v25 == @"image" || (v26 = v25, v27 = [(__CFString *)v25 isEqualToString:@"image"], v26, v27))
        {
          v28 = objc_alloc(MEMORY[0x1E695DEF0]);
          value3 = [v13 value];
          v30 = [v28 initWithBase64EncodedString:value3 options:0];

          if (v30)
          {
            v31 = PKCreateCGImage(v30);
            if (v31)
            {
              v32 = v31;
              v33 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v31];
              thumbnail = v7->_thumbnail;
              v7->_thumbnail = v33;

              CGImageRelease(v32);
            }
          }

          goto LABEL_20;
        }

        v35 = v26;
        queryItems = v19;
        if (v35 == @"fetched" || (v36 = v35, v37 = [(__CFString *)v35 isEqualToString:@"fetched"], v36, v37))
        {
          v7->_hasFetchedOpenGraphPreview = 1;
        }

LABEL_21:

        ++v12;
      }

      while (v11 != v12);
      v38 = [queryItems countByEnumeratingWithState:&v43 objects:v48 count:16];
      v11 = v38;
      if (!v38)
      {
LABEL_27:

        lCopy = v41;
        break;
      }
    }
  }

  return v7;
}

- (id)urlRepresentation
{
  if (self->_isPending)
  {
    v3 = self->_url;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self->_url resolvingAgainstBaseURL:0];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self->_title)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"title" value:self->_title];
      [v5 addObject:v6];
    }

    if (self->_subtitle)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"subtitle" value:self->_subtitle];
      [v5 addObject:v7];
    }

    v8 = UIImagePNGRepresentation(self->_thumbnail);
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E696AF60]);
      v10 = [v8 base64EncodedStringWithOptions:0];
      v11 = [v9 initWithName:@"image" value:v10];
      [v5 addObject:v11];
    }

    if (self->_hasFetchedOpenGraphPreview)
    {
      v12 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"fetched" value:@"Yes"];
      [v5 addObject:v12];
    }

    [v4 setQueryItems:v5];
    v3 = [v4 URL];
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"url: '%@'; ", self->_url];
  [v6 appendFormat:@"title: '%@'; ", self->_title];
  [v6 appendFormat:@"subtitle: '%@'; ", self->_subtitle];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

@end