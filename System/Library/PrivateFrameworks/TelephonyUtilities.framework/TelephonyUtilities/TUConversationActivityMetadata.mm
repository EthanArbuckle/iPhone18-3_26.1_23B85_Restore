@interface TUConversationActivityMetadata
+ (TUConversationActivityMetadata)activityMetadataWithDataBlob:(id)blob;
- (BOOL)_createImageFolderIfNeeded;
- (BOOL)_isEqualToActivityMetadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToActivityMetadata:(id)metadata;
- (NSData)imageData;
- (NSString)description;
- (TUConversationActivityMetadata)initWithCoder:(id)coder;
- (TUConversationActivityMetadata)initWithContext:(id)context linkMetadata:(id)metadata fallbackURL:(id)l invitationURL:(id)rL supportsContinuationOnTV:(BOOL)v title:(id)title subTitle:(id)subTitle imageData:(id)self0 preferredBroadcastingAttributes:(int64_t)self1 sceneAssociationBehavior:(id)self2 supportsActivityPreviews:(BOOL)self3;
- (TUConversationActivityMetadata)initWithContext:(id)context linkMetadata:(id)metadata fallbackURL:(id)l invitationURL:(id)rL supportsContinuationOnTV:(BOOL)v title:(id)title subTitle:(id)subTitle imageData:(id)self0 preferredBroadcastingAttributes:(int64_t)self1 sceneAssociationBehavior:(id)self2 supportsActivityPreviews:(BOOL)self3 lifetimePolicy:(int64_t)self4;
- (id)_filePathForImage;
- (id)_imagePreviewDirectoryPath;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)length;
- (void)_createImageFolderIfNeeded;
- (void)encodeWithCoder:(id)coder;
- (void)imageData;
- (void)removeImageDiskFile;
- (void)saveImageToDisk;
@end

@implementation TUConversationActivityMetadata

- (TUConversationActivityMetadata)initWithContext:(id)context linkMetadata:(id)metadata fallbackURL:(id)l invitationURL:(id)rL supportsContinuationOnTV:(BOOL)v title:(id)title subTitle:(id)subTitle imageData:(id)self0 preferredBroadcastingAttributes:(int64_t)self1 sceneAssociationBehavior:(id)self2 supportsActivityPreviews:(BOOL)self3 lifetimePolicy:(int64_t)self4
{
  contextCopy = context;
  metadataCopy = metadata;
  lCopy = l;
  rLCopy = rL;
  titleCopy = title;
  subTitleCopy = subTitle;
  dataCopy = data;
  behaviorCopy = behavior;
  v42.receiver = self;
  v42.super_class = TUConversationActivityMetadata;
  v26 = [(TUConversationActivityMetadata *)&v42 init];
  if (v26)
  {
    v27 = [contextCopy copy];
    context = v26->_context;
    v26->_context = v27;

    v29 = [metadataCopy copy];
    linkMetadatablob = v26->_linkMetadatablob;
    v26->_linkMetadatablob = v29;

    v31 = [lCopy copy];
    fallbackURL = v26->_fallbackURL;
    v26->_fallbackURL = v31;

    v33 = [rLCopy copy];
    invitationURL = v26->_invitationURL;
    v26->_invitationURL = v33;

    v26->_supportsContinuationOnTV = v;
    v35 = [titleCopy copy];
    title = v26->_title;
    v26->_title = v35;

    v37 = [subTitleCopy copy];
    subTitle = v26->_subTitle;
    v26->_subTitle = v37;

    objc_storeStrong(&v26->_imageData, data);
    v26->_preferredBroadcastingAttributes = attributes;
    objc_storeStrong(&v26->_sceneAssociationBehavior, behavior);
    v26->_supportsActivityPreviews = previews;
    v26->_lifetimePolicy = policy;
  }

  return v26;
}

- (TUConversationActivityMetadata)initWithContext:(id)context linkMetadata:(id)metadata fallbackURL:(id)l invitationURL:(id)rL supportsContinuationOnTV:(BOOL)v title:(id)title subTitle:(id)subTitle imageData:(id)self0 preferredBroadcastingAttributes:(int64_t)self1 sceneAssociationBehavior:(id)self2 supportsActivityPreviews:(BOOL)self3
{
  contextCopy = context;
  metadataCopy = metadata;
  lCopy = l;
  rLCopy = rL;
  titleCopy = title;
  subTitleCopy = subTitle;
  dataCopy = data;
  behaviorCopy = behavior;
  v41.receiver = self;
  v41.super_class = TUConversationActivityMetadata;
  v25 = [(TUConversationActivityMetadata *)&v41 init];
  if (v25)
  {
    v26 = [contextCopy copy];
    context = v25->_context;
    v25->_context = v26;

    v28 = [metadataCopy copy];
    linkMetadatablob = v25->_linkMetadatablob;
    v25->_linkMetadatablob = v28;

    v30 = [lCopy copy];
    fallbackURL = v25->_fallbackURL;
    v25->_fallbackURL = v30;

    v32 = [rLCopy copy];
    invitationURL = v25->_invitationURL;
    v25->_invitationURL = v32;

    v25->_supportsContinuationOnTV = v;
    v34 = [titleCopy copy];
    title = v25->_title;
    v25->_title = v34;

    v36 = [subTitleCopy copy];
    subTitle = v25->_subTitle;
    v25->_subTitle = v36;

    objc_storeStrong(&v25->_imageData, data);
    v25->_preferredBroadcastingAttributes = attributes;
    objc_storeStrong(&v25->_sceneAssociationBehavior, behavior);
    v25->_supportsActivityPreviews = previews;
    v25->_lifetimePolicy = 2;
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  context = [(TUConversationActivityMetadata *)self context];
  v6 = NSStringFromSelector(sel_context);
  [coderCopy encodeObject:context forKey:v6];

  linkMetadatablob = [(TUConversationActivityMetadata *)self linkMetadatablob];
  v8 = NSStringFromSelector(sel_linkMetadatablob);
  [coderCopy encodeObject:linkMetadatablob forKey:v8];

  fallbackURL = [(TUConversationActivityMetadata *)self fallbackURL];
  v10 = NSStringFromSelector(sel_fallbackURL);
  [coderCopy encodeObject:fallbackURL forKey:v10];

  invitationURL = [(TUConversationActivityMetadata *)self invitationURL];
  v12 = NSStringFromSelector(sel_invitationURL);
  [coderCopy encodeObject:invitationURL forKey:v12];

  supportsContinuationOnTV = [(TUConversationActivityMetadata *)self supportsContinuationOnTV];
  v14 = NSStringFromSelector(sel_supportsContinuationOnTV);
  [coderCopy encodeBool:supportsContinuationOnTV forKey:v14];

  title = [(TUConversationActivityMetadata *)self title];
  v16 = NSStringFromSelector(sel_title);
  [coderCopy encodeObject:title forKey:v16];

  subTitle = [(TUConversationActivityMetadata *)self subTitle];
  v18 = NSStringFromSelector(sel_subTitle);
  [coderCopy encodeObject:subTitle forKey:v18];

  preferredBroadcastingAttributes = [(TUConversationActivityMetadata *)self preferredBroadcastingAttributes];
  v20 = NSStringFromSelector(sel_preferredBroadcastingAttributes);
  [coderCopy encodeInteger:preferredBroadcastingAttributes forKey:v20];

  sceneAssociationBehavior = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
  v22 = NSStringFromSelector(sel_sceneAssociationBehavior);
  [coderCopy encodeObject:sceneAssociationBehavior forKey:v22];

  supportsActivityPreviews = [(TUConversationActivityMetadata *)self supportsActivityPreviews];
  v24 = NSStringFromSelector(sel_supportsActivityPreviews);
  [coderCopy encodeBool:supportsActivityPreviews forKey:v24];

  lifetimePolicy = [(TUConversationActivityMetadata *)self lifetimePolicy];
  v26 = NSStringFromSelector(sel_lifetimePolicy);
  [coderCopy encodeInteger:lifetimePolicy forKey:v26];

  imageFileURL = [(TUConversationActivityMetadata *)self imageFileURL];

  if (imageFileURL)
  {
    imageFileURL2 = [(TUConversationActivityMetadata *)self imageFileURL];
    v29 = &selRef_imageFileURL;
  }

  else
  {
    imageFileURL2 = [(TUConversationActivityMetadata *)self imageData];
    v29 = &selRef_imageData;
  }

  v30 = NSStringFromSelector(*v29);
  [coderCopy encodeObject:imageFileURL2 forKey:v30];

  objc_autoreleasePoolPop(v4);
}

- (TUConversationActivityMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  context = objc_autoreleasePoolPush();
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_context);
  v48 = [coderCopy decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_linkMetadatablob);
  v53 = [coderCopy decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_fallbackURL);
  v52 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_invitationURL);
  v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];

  v13 = NSStringFromSelector(sel_supportsContinuationOnTV);
  v47 = [coderCopy decodeBoolForKey:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_title);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_subTitle);
  v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];

  v20 = NSStringFromSelector(sel_preferredBroadcastingAttributes);
  v21 = [coderCopy decodeIntegerForKey:v20];

  v22 = objc_opt_class();
  v23 = NSStringFromSelector(sel_imageData);
  v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];

  v25 = objc_opt_class();
  v26 = NSStringFromSelector(sel_sceneAssociationBehavior);
  v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];

  v28 = NSStringFromSelector(sel_supportsActivityPreviews);
  LOBYTE(v26) = [coderCopy decodeBoolForKey:v28];

  v29 = NSStringFromSelector(sel_lifetimePolicy);
  v30 = [coderCopy decodeIntegerForKey:v29];

  v46 = v30;
  v31 = v52;
  LOBYTE(v45) = v26;
  v33 = v48;
  selfCopy = self;
  v50 = v12;
  v34 = v12;
  v35 = v16;
  v36 = [(TUConversationActivityMetadata *)selfCopy initWithContext:v48 linkMetadata:v53 fallbackURL:v52 invitationURL:v34 supportsContinuationOnTV:v47 title:v16 subTitle:v19 imageData:v24 preferredBroadcastingAttributes:v21 sceneAssociationBehavior:v27 supportsActivityPreviews:v45 lifetimePolicy:v46];
  v37 = objc_opt_class();
  v38 = NSStringFromSelector(sel_imageFileURL);
  v39 = [coderCopy decodeObjectOfClass:v37 forKey:v38];

  v40 = v53;
  if (v39)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      connection = [coderCopy connection];
      v42 = [v39 URL];
      v43 = [connection tu_clientSandboxCanAccessFileURL:v42];

      if (v43)
      {
        [(TUConversationActivityMetadata *)v36 setImageFileURL:v39];
      }

      v33 = v48;
      v40 = v53;
      v31 = v52;
    }

    else
    {
      [(TUConversationActivityMetadata *)v36 setImageFileURL:v39];
    }
  }

  objc_autoreleasePoolPop(context);
  return v36;
}

- (id)_imagePreviewDirectoryPath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"groupactivityimgpreview"];

  return v3;
}

- (id)_filePathForImage
{
  imageFileURL = [(TUConversationActivityMetadata *)self imageFileURL];

  if (imageFileURL)
  {
    imageFileURL2 = [(TUConversationActivityMetadata *)self imageFileURL];
  }

  else
  {
    _imagePreviewDirectoryPath = [(TUConversationActivityMetadata *)self _imagePreviewDirectoryPath];
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v7 = [_imagePreviewDirectoryPath stringByAppendingPathComponent:stringGUID];

    v8 = [TUSandboxExtendedURL alloc];
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
    v10 = [(TUSandboxExtendedURL *)v8 initWithURL:v9];
    [(TUConversationActivityMetadata *)self setImageFileURL:v10];

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9BA8]];
    imageFileURL3 = [(TUConversationActivityMetadata *)self imageFileURL];
    [imageFileURL3 setSandboxExtensionClass:v11];

    imageFileURL2 = [(TUConversationActivityMetadata *)self imageFileURL];
  }

  return imageFileURL2;
}

- (BOOL)_createImageFolderIfNeeded
{
  v13[1] = *MEMORY[0x1E69E9840];
  _imagePreviewDirectoryPath = [(TUConversationActivityMetadata *)self _imagePreviewDirectoryPath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:_imagePreviewDirectoryPath isDirectory:0];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = *MEMORY[0x1E696A3A0];
    v13[0] = *MEMORY[0x1E696A388];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = 0;
    [defaultManager2 createDirectoryAtPath:_imagePreviewDirectoryPath withIntermediateDirectories:1 attributes:v7 error:&v11];
    v5 = v11;

    if (v5)
    {
      v8 = TUDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [TUConversationActivityMetadata _createImageFolderIfNeeded];
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 == 0;
}

- (void)saveImageToDisk
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, v0, v1, "TUConversationActivityMetadata Error writing image data to %@ error %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)removeImageDiskFile
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, v0, v1, "TUConversationActivityMetadata %@ Wasn't able to delete image file error %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (NSData)imageData
{
  imageData = self->_imageData;
  if (imageData)
  {
    imageFileURL = imageData;
  }

  else
  {
    imageFileURL = [(TUConversationActivityMetadata *)self imageFileURL];

    if (imageFileURL)
    {
      v5 = MEMORY[0x1E695DEF0];
      imageFileURL2 = [(TUConversationActivityMetadata *)self imageFileURL];
      v7 = [imageFileURL2 URL];
      v11 = 0;
      imageFileURL = [v5 dataWithContentsOfURL:v7 options:8 error:&v11];
      v8 = v11;

      if (v8)
      {
        v9 = TUDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [TUConversationActivityMetadata imageData];
        }
      }
    }
  }

  return imageFileURL;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([(TUConversationActivityMetadata *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy == self || [(TUConversationActivityMetadata *)self _isEqualToActivityMetadata:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEquivalentToActivityMetadata:(id)metadata
{
  metadataCopy = metadata;
  context = [(TUConversationActivityMetadata *)self context];
  context2 = [metadataCopy context];
  if ([context isEqual:context2])
  {
    linkMetadatablob = [(TUConversationActivityMetadata *)self linkMetadatablob];
    linkMetadatablob2 = [metadataCopy linkMetadatablob];
    if (TUObjectsAreEqualOrNil(linkMetadatablob, linkMetadatablob2))
    {
      fallbackURL = [(TUConversationActivityMetadata *)self fallbackURL];
      fallbackURL2 = [metadataCopy fallbackURL];
      if (TUObjectsAreEqualOrNil(fallbackURL, fallbackURL2))
      {
        invitationURL = [(TUConversationActivityMetadata *)self invitationURL];
        invitationURL2 = [metadataCopy invitationURL];
        if (TUObjectsAreEqualOrNil(invitationURL, invitationURL2))
        {
          v28 = invitationURL;
          supportsContinuationOnTV = [(TUConversationActivityMetadata *)self supportsContinuationOnTV];
          if (supportsContinuationOnTV == [metadataCopy supportsContinuationOnTV])
          {
            title = [(TUConversationActivityMetadata *)self title];
            title2 = [metadataCopy title];
            v27 = title;
            if (TUObjectsAreEqualOrNil(title, title2))
            {
              subTitle = [(TUConversationActivityMetadata *)self subTitle];
              subTitle2 = [metadataCopy subTitle];
              v25 = subTitle;
              if (TUObjectsAreEqualOrNil(subTitle, subTitle2) && (v17 = -[TUConversationActivityMetadata preferredBroadcastingAttributes](self, "preferredBroadcastingAttributes"), v17 == [metadataCopy preferredBroadcastingAttributes]))
              {
                sceneAssociationBehavior = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
                sceneAssociationBehavior2 = [metadataCopy sceneAssociationBehavior];
                v23 = sceneAssociationBehavior;
                if ([sceneAssociationBehavior isEqual:?] && (v19 = -[TUConversationActivityMetadata supportsActivityPreviews](self, "supportsActivityPreviews"), v19 == objc_msgSend(metadataCopy, "supportsActivityPreviews")))
                {
                  lifetimePolicy = [(TUConversationActivityMetadata *)self lifetimePolicy];
                  v14 = lifetimePolicy == [metadataCopy lifetimePolicy];
                }

                else
                {
                  v14 = 0;
                }

                invitationURL = v28;
              }

              else
              {
                v14 = 0;
                invitationURL = v28;
              }
            }

            else
            {
              v14 = 0;
              invitationURL = v28;
            }
          }

          else
          {
            v14 = 0;
            invitationURL = v28;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isEqualToActivityMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([(TUConversationActivityMetadata *)self isEquivalentToActivityMetadata:metadataCopy])
  {
    imageFileURL = [(TUConversationActivityMetadata *)self imageFileURL];
    if (imageFileURL && (v6 = imageFileURL, [metadataCopy imageFileURL], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      imageFileURL2 = [(TUConversationActivityMetadata *)self imageFileURL];
      imageFileURL3 = [metadataCopy imageFileURL];
    }

    else
    {
      imageFileURL2 = [(TUConversationActivityMetadata *)self imageData];
      imageFileURL3 = [metadataCopy imageData];
    }

    v11 = imageFileURL3;
    v10 = TUObjectsAreEqualOrNil(imageFileURL2, imageFileURL3);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  imageFileURL = [(TUConversationActivityMetadata *)self imageFileURL];
  if (imageFileURL)
  {
    [(TUConversationActivityMetadata *)self imageFileURL];
  }

  else
  {
    [(TUConversationActivityMetadata *)self imageData];
  }
  v4 = ;
  v26 = [v4 hash];

  context = [(TUConversationActivityMetadata *)self context];
  v24 = [context hash];
  linkMetadatablob = [(TUConversationActivityMetadata *)self linkMetadatablob];
  v23 = [linkMetadatablob hash];
  fallbackURL = [(TUConversationActivityMetadata *)self fallbackURL];
  v22 = [fallbackURL hash];
  invitationURL = [(TUConversationActivityMetadata *)self invitationURL];
  v21 = [invitationURL hash];
  supportsContinuationOnTV = [(TUConversationActivityMetadata *)self supportsContinuationOnTV];
  v7 = 1237;
  v8 = 1231;
  if (!supportsContinuationOnTV)
  {
    v8 = 1237;
  }

  v20 = v8;
  title = [(TUConversationActivityMetadata *)self title];
  v10 = [title hash];
  subTitle = [(TUConversationActivityMetadata *)self subTitle];
  v12 = [subTitle hash];
  preferredBroadcastingAttributes = [(TUConversationActivityMetadata *)self preferredBroadcastingAttributes];
  sceneAssociationBehavior = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
  v15 = [sceneAssociationBehavior hash];
  if ([(TUConversationActivityMetadata *)self supportsActivityPreviews])
  {
    v7 = 1231;
  }

  lifetimePolicy = [(TUConversationActivityMetadata *)self lifetimePolicy];
  v17 = v24 ^ v26 ^ v23 ^ v22 ^ v21 ^ v20 ^ v10 ^ v12 ^ preferredBroadcastingAttributes ^ v15;
  v18 = v7 ^ lifetimePolicy;

  return v17 ^ v18;
}

- (unint64_t)length
{
  serializedData = [(TUConversationActivityMetadata *)self serializedData];
  v3 = [serializedData length];

  return v3;
}

+ (TUConversationActivityMetadata)activityMetadataWithDataBlob:(id)blob
{
  blobCopy = blob;
  if ([blobCopy length])
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:blobCopy error:&v9];
    v5 = v9;
    if (v5 || !v4)
    {
      v7 = TUDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(TUConversationActivityMetadata *)v5 activityMetadataWithDataBlob:v7];
      }

      v6 = 0;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  context = [(TUConversationActivityMetadata *)self context];
  [v3 appendFormat:@" context=%@", context];

  fallbackURL = [(TUConversationActivityMetadata *)self fallbackURL];

  if (fallbackURL)
  {
    fallbackURL2 = [(TUConversationActivityMetadata *)self fallbackURL];
    [v3 appendFormat:@" fallbackURL=%@", fallbackURL2];
  }

  invitationURL = [(TUConversationActivityMetadata *)self invitationURL];

  if (invitationURL)
  {
    invitationURL2 = [(TUConversationActivityMetadata *)self invitationURL];
    [v3 appendFormat:@" invitationURL=%@", invitationURL2];
  }

  if ([(TUConversationActivityMetadata *)self supportsContinuationOnTV])
  {
    [v3 appendFormat:@" supportsContinuationOnTV=%d", -[TUConversationActivityMetadata supportsContinuationOnTV](self, "supportsContinuationOnTV")];
  }

  title = [(TUConversationActivityMetadata *)self title];

  if (title)
  {
    title2 = [(TUConversationActivityMetadata *)self title];
    [v3 appendFormat:@" title=%@", title2];
  }

  subTitle = [(TUConversationActivityMetadata *)self subTitle];

  if (subTitle)
  {
    subTitle2 = [(TUConversationActivityMetadata *)self subTitle];
    [v3 appendFormat:@" subTitle=%@", subTitle2];
  }

  if ([(TUConversationActivityMetadata *)self preferredBroadcastingAttributes])
  {
    [v3 appendFormat:@" preferredBroadcastingAttributes=%ld", -[TUConversationActivityMetadata preferredBroadcastingAttributes](self, "preferredBroadcastingAttributes")];
  }

  imageFileURL = [(TUConversationActivityMetadata *)self imageFileURL];

  if (imageFileURL)
  {
    imageFileURL2 = [(TUConversationActivityMetadata *)self imageFileURL];

    if (!imageFileURL2)
    {
      goto LABEL_19;
    }

    imageFileURL3 = [(TUConversationActivityMetadata *)self imageFileURL];
    [v3 appendFormat:@" imageFileURL=%@", imageFileURL3];
  }

  else
  {
    imageData = [(TUConversationActivityMetadata *)self imageData];

    if (!imageData)
    {
      goto LABEL_19;
    }

    imageFileURL3 = [(TUConversationActivityMetadata *)self imageData];
    [v3 appendFormat:@" imageData=%@", imageFileURL3];
  }

LABEL_19:
  sceneAssociationBehavior = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
  [v3 appendFormat:@" sceneAssociationBehavior=%@", sceneAssociationBehavior];

  v18 = objc_opt_self();
  supportsActivityPreviews = [v18 supportsActivityPreviews];

  if (supportsActivityPreviews)
  {
    v20 = objc_opt_self();
    [v3 appendFormat:@" self.supportsActivityPreviews=%d", objc_msgSend(v20, "supportsActivityPreviews")];
  }

  v21 = objc_opt_self();
  lifetimePolicy = [v21 lifetimePolicy];

  if (lifetimePolicy)
  {
    v23 = objc_opt_self();
    [v3 appendFormat:@" self.lifetimePolicy=%ld", objc_msgSend(v23, "lifetimePolicy")];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = [objc_opt_class() allocWithZone:zone];
  context = [(TUConversationActivityMetadata *)self context];
  linkMetadatablob = [(TUConversationActivityMetadata *)self linkMetadatablob];
  fallbackURL = [(TUConversationActivityMetadata *)self fallbackURL];
  invitationURL = [(TUConversationActivityMetadata *)self invitationURL];
  supportsContinuationOnTV = [(TUConversationActivityMetadata *)self supportsContinuationOnTV];
  title = [(TUConversationActivityMetadata *)self title];
  subTitle = [(TUConversationActivityMetadata *)self subTitle];
  imageFileURL = [(TUConversationActivityMetadata *)self imageFileURL];
  v10 = fallbackURL;
  v11 = context;
  if (imageFileURL)
  {
    imageData = 0;
  }

  else
  {
    imageData = [(TUConversationActivityMetadata *)self imageData];
  }

  preferredBroadcastingAttributes = [(TUConversationActivityMetadata *)self preferredBroadcastingAttributes];
  sceneAssociationBehavior = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
  LOBYTE(v17) = [(TUConversationActivityMetadata *)self supportsActivityPreviews];
  v14 = [v19 initWithContext:v11 linkMetadata:linkMetadatablob fallbackURL:v10 invitationURL:invitationURL supportsContinuationOnTV:supportsContinuationOnTV title:title subTitle:subTitle imageData:imageData preferredBroadcastingAttributes:preferredBroadcastingAttributes sceneAssociationBehavior:sceneAssociationBehavior supportsActivityPreviews:v17 lifetimePolicy:{-[TUConversationActivityMetadata lifetimePolicy](self, "lifetimePolicy")}];

  if (!imageFileURL)
  {
  }

  imageFileURL2 = [(TUConversationActivityMetadata *)self imageFileURL];
  [v14 setImageFileURL:imageFileURL2];

  return v14;
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v18 = [objc_opt_class() allocWithZone:zone];
  context = [(TUConversationActivityMetadata *)self context];
  linkMetadatablob = [(TUConversationActivityMetadata *)self linkMetadatablob];
  fallbackURL = [(TUConversationActivityMetadata *)self fallbackURL];
  sanitizedCopy = [fallbackURL sanitizedCopy];
  invitationURL = [(TUConversationActivityMetadata *)self invitationURL];
  sanitizedCopy2 = [invitationURL sanitizedCopy];
  supportsContinuationOnTV = [(TUConversationActivityMetadata *)self supportsContinuationOnTV];
  title = [(TUConversationActivityMetadata *)self title];
  subTitle = [(TUConversationActivityMetadata *)self subTitle];
  imageFileURL = [(TUConversationActivityMetadata *)self imageFileURL];
  if (imageFileURL)
  {
    imageData = 0;
  }

  else
  {
    imageData = [(TUConversationActivityMetadata *)self imageData];
  }

  preferredBroadcastingAttributes = [(TUConversationActivityMetadata *)self preferredBroadcastingAttributes];
  sceneAssociationBehavior = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
  LOBYTE(v15) = [(TUConversationActivityMetadata *)self supportsActivityPreviews];
  v12 = [v18 initWithContext:context linkMetadata:linkMetadatablob fallbackURL:sanitizedCopy invitationURL:sanitizedCopy2 supportsContinuationOnTV:supportsContinuationOnTV title:title subTitle:subTitle imageData:imageData preferredBroadcastingAttributes:preferredBroadcastingAttributes sceneAssociationBehavior:sceneAssociationBehavior supportsActivityPreviews:v15 lifetimePolicy:{-[TUConversationActivityMetadata lifetimePolicy](self, "lifetimePolicy")}];

  if (!imageFileURL)
  {
  }

  imageFileURL2 = [(TUConversationActivityMetadata *)self imageFileURL];
  [v12 setImageFileURL:imageFileURL2];

  return v12;
}

- (void)_createImageFolderIfNeeded
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, v0, v1, "TUConversationActivityMetadata Error creating folder at %@ error %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)imageData
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, v0, v1, "Failed to read image data for %@, error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)activityMetadataWithDataBlob:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Error deserializing activity metadata %@,", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end