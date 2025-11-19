@interface TUConversationActivityMetadata
+ (TUConversationActivityMetadata)activityMetadataWithDataBlob:(id)a3;
- (BOOL)_createImageFolderIfNeeded;
- (BOOL)_isEqualToActivityMetadata:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToActivityMetadata:(id)a3;
- (NSData)imageData;
- (NSString)description;
- (TUConversationActivityMetadata)initWithCoder:(id)a3;
- (TUConversationActivityMetadata)initWithContext:(id)a3 linkMetadata:(id)a4 fallbackURL:(id)a5 invitationURL:(id)a6 supportsContinuationOnTV:(BOOL)a7 title:(id)a8 subTitle:(id)a9 imageData:(id)a10 preferredBroadcastingAttributes:(int64_t)a11 sceneAssociationBehavior:(id)a12 supportsActivityPreviews:(BOOL)a13;
- (TUConversationActivityMetadata)initWithContext:(id)a3 linkMetadata:(id)a4 fallbackURL:(id)a5 invitationURL:(id)a6 supportsContinuationOnTV:(BOOL)a7 title:(id)a8 subTitle:(id)a9 imageData:(id)a10 preferredBroadcastingAttributes:(int64_t)a11 sceneAssociationBehavior:(id)a12 supportsActivityPreviews:(BOOL)a13 lifetimePolicy:(int64_t)a14;
- (id)_filePathForImage;
- (id)_imagePreviewDirectoryPath;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (unint64_t)length;
- (void)_createImageFolderIfNeeded;
- (void)encodeWithCoder:(id)a3;
- (void)imageData;
- (void)removeImageDiskFile;
- (void)saveImageToDisk;
@end

@implementation TUConversationActivityMetadata

- (TUConversationActivityMetadata)initWithContext:(id)a3 linkMetadata:(id)a4 fallbackURL:(id)a5 invitationURL:(id)a6 supportsContinuationOnTV:(BOOL)a7 title:(id)a8 subTitle:(id)a9 imageData:(id)a10 preferredBroadcastingAttributes:(int64_t)a11 sceneAssociationBehavior:(id)a12 supportsActivityPreviews:(BOOL)a13 lifetimePolicy:(int64_t)a14
{
  v41 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a12;
  v42.receiver = self;
  v42.super_class = TUConversationActivityMetadata;
  v26 = [(TUConversationActivityMetadata *)&v42 init];
  if (v26)
  {
    v27 = [v41 copy];
    context = v26->_context;
    v26->_context = v27;

    v29 = [v19 copy];
    linkMetadatablob = v26->_linkMetadatablob;
    v26->_linkMetadatablob = v29;

    v31 = [v20 copy];
    fallbackURL = v26->_fallbackURL;
    v26->_fallbackURL = v31;

    v33 = [v21 copy];
    invitationURL = v26->_invitationURL;
    v26->_invitationURL = v33;

    v26->_supportsContinuationOnTV = a7;
    v35 = [v22 copy];
    title = v26->_title;
    v26->_title = v35;

    v37 = [v23 copy];
    subTitle = v26->_subTitle;
    v26->_subTitle = v37;

    objc_storeStrong(&v26->_imageData, a10);
    v26->_preferredBroadcastingAttributes = a11;
    objc_storeStrong(&v26->_sceneAssociationBehavior, a12);
    v26->_supportsActivityPreviews = a13;
    v26->_lifetimePolicy = a14;
  }

  return v26;
}

- (TUConversationActivityMetadata)initWithContext:(id)a3 linkMetadata:(id)a4 fallbackURL:(id)a5 invitationURL:(id)a6 supportsContinuationOnTV:(BOOL)a7 title:(id)a8 subTitle:(id)a9 imageData:(id)a10 preferredBroadcastingAttributes:(int64_t)a11 sceneAssociationBehavior:(id)a12 supportsActivityPreviews:(BOOL)a13
{
  v40 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a12;
  v41.receiver = self;
  v41.super_class = TUConversationActivityMetadata;
  v25 = [(TUConversationActivityMetadata *)&v41 init];
  if (v25)
  {
    v26 = [v40 copy];
    context = v25->_context;
    v25->_context = v26;

    v28 = [v18 copy];
    linkMetadatablob = v25->_linkMetadatablob;
    v25->_linkMetadatablob = v28;

    v30 = [v19 copy];
    fallbackURL = v25->_fallbackURL;
    v25->_fallbackURL = v30;

    v32 = [v20 copy];
    invitationURL = v25->_invitationURL;
    v25->_invitationURL = v32;

    v25->_supportsContinuationOnTV = a7;
    v34 = [v21 copy];
    title = v25->_title;
    v25->_title = v34;

    v36 = [v22 copy];
    subTitle = v25->_subTitle;
    v25->_subTitle = v36;

    objc_storeStrong(&v25->_imageData, a10);
    v25->_preferredBroadcastingAttributes = a11;
    objc_storeStrong(&v25->_sceneAssociationBehavior, a12);
    v25->_supportsActivityPreviews = a13;
    v25->_lifetimePolicy = 2;
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v31 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(TUConversationActivityMetadata *)self context];
  v6 = NSStringFromSelector(sel_context);
  [v31 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationActivityMetadata *)self linkMetadatablob];
  v8 = NSStringFromSelector(sel_linkMetadatablob);
  [v31 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationActivityMetadata *)self fallbackURL];
  v10 = NSStringFromSelector(sel_fallbackURL);
  [v31 encodeObject:v9 forKey:v10];

  v11 = [(TUConversationActivityMetadata *)self invitationURL];
  v12 = NSStringFromSelector(sel_invitationURL);
  [v31 encodeObject:v11 forKey:v12];

  v13 = [(TUConversationActivityMetadata *)self supportsContinuationOnTV];
  v14 = NSStringFromSelector(sel_supportsContinuationOnTV);
  [v31 encodeBool:v13 forKey:v14];

  v15 = [(TUConversationActivityMetadata *)self title];
  v16 = NSStringFromSelector(sel_title);
  [v31 encodeObject:v15 forKey:v16];

  v17 = [(TUConversationActivityMetadata *)self subTitle];
  v18 = NSStringFromSelector(sel_subTitle);
  [v31 encodeObject:v17 forKey:v18];

  v19 = [(TUConversationActivityMetadata *)self preferredBroadcastingAttributes];
  v20 = NSStringFromSelector(sel_preferredBroadcastingAttributes);
  [v31 encodeInteger:v19 forKey:v20];

  v21 = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
  v22 = NSStringFromSelector(sel_sceneAssociationBehavior);
  [v31 encodeObject:v21 forKey:v22];

  v23 = [(TUConversationActivityMetadata *)self supportsActivityPreviews];
  v24 = NSStringFromSelector(sel_supportsActivityPreviews);
  [v31 encodeBool:v23 forKey:v24];

  v25 = [(TUConversationActivityMetadata *)self lifetimePolicy];
  v26 = NSStringFromSelector(sel_lifetimePolicy);
  [v31 encodeInteger:v25 forKey:v26];

  v27 = [(TUConversationActivityMetadata *)self imageFileURL];

  if (v27)
  {
    v28 = [(TUConversationActivityMetadata *)self imageFileURL];
    v29 = &selRef_imageFileURL;
  }

  else
  {
    v28 = [(TUConversationActivityMetadata *)self imageData];
    v29 = &selRef_imageData;
  }

  v30 = NSStringFromSelector(*v29);
  [v31 encodeObject:v28 forKey:v30];

  objc_autoreleasePoolPop(v4);
}

- (TUConversationActivityMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  context = objc_autoreleasePoolPush();
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_context);
  v48 = [v3 decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_linkMetadatablob);
  v53 = [v3 decodeObjectOfClass:v6 forKey:v7];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_fallbackURL);
  v52 = [v3 decodeObjectOfClass:v8 forKey:v9];

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_invitationURL);
  v12 = [v3 decodeObjectOfClass:v10 forKey:v11];

  v13 = NSStringFromSelector(sel_supportsContinuationOnTV);
  v47 = [v3 decodeBoolForKey:v13];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_title);
  v16 = [v3 decodeObjectOfClass:v14 forKey:v15];

  v17 = objc_opt_class();
  v18 = NSStringFromSelector(sel_subTitle);
  v19 = [v3 decodeObjectOfClass:v17 forKey:v18];

  v20 = NSStringFromSelector(sel_preferredBroadcastingAttributes);
  v21 = [v3 decodeIntegerForKey:v20];

  v22 = objc_opt_class();
  v23 = NSStringFromSelector(sel_imageData);
  v24 = [v3 decodeObjectOfClass:v22 forKey:v23];

  v25 = objc_opt_class();
  v26 = NSStringFromSelector(sel_sceneAssociationBehavior);
  v27 = [v3 decodeObjectOfClass:v25 forKey:v26];

  v28 = NSStringFromSelector(sel_supportsActivityPreviews);
  LOBYTE(v26) = [v3 decodeBoolForKey:v28];

  v29 = NSStringFromSelector(sel_lifetimePolicy);
  v30 = [v3 decodeIntegerForKey:v29];

  v46 = v30;
  v31 = v52;
  LOBYTE(v45) = v26;
  v33 = v48;
  v32 = self;
  v50 = v12;
  v34 = v12;
  v35 = v16;
  v36 = [(TUConversationActivityMetadata *)v32 initWithContext:v48 linkMetadata:v53 fallbackURL:v52 invitationURL:v34 supportsContinuationOnTV:v47 title:v16 subTitle:v19 imageData:v24 preferredBroadcastingAttributes:v21 sceneAssociationBehavior:v27 supportsActivityPreviews:v45 lifetimePolicy:v46];
  v37 = objc_opt_class();
  v38 = NSStringFromSelector(sel_imageFileURL);
  v39 = [v3 decodeObjectOfClass:v37 forKey:v38];

  v40 = v53;
  if (v39)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [v3 connection];
      v42 = [v39 URL];
      v43 = [v41 tu_clientSandboxCanAccessFileURL:v42];

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
  v3 = [(TUConversationActivityMetadata *)self imageFileURL];

  if (v3)
  {
    v4 = [(TUConversationActivityMetadata *)self imageFileURL];
  }

  else
  {
    v5 = [(TUConversationActivityMetadata *)self _imagePreviewDirectoryPath];
    v6 = [MEMORY[0x1E696AEC0] stringGUID];
    v7 = [v5 stringByAppendingPathComponent:v6];

    v8 = [TUSandboxExtendedURL alloc];
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
    v10 = [(TUSandboxExtendedURL *)v8 initWithURL:v9];
    [(TUConversationActivityMetadata *)self setImageFileURL:v10];

    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9BA8]];
    v12 = [(TUConversationActivityMetadata *)self imageFileURL];
    [v12 setSandboxExtensionClass:v11];

    v4 = [(TUConversationActivityMetadata *)self imageFileURL];
  }

  return v4;
}

- (BOOL)_createImageFolderIfNeeded
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = [(TUConversationActivityMetadata *)self _imagePreviewDirectoryPath];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v2 isDirectory:0];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v12 = *MEMORY[0x1E696A3A0];
    v13[0] = *MEMORY[0x1E696A388];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = 0;
    [v6 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:v7 error:&v11];
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
    v3 = imageData;
  }

  else
  {
    v3 = [(TUConversationActivityMetadata *)self imageFileURL];

    if (v3)
    {
      v5 = MEMORY[0x1E695DEF0];
      v6 = [(TUConversationActivityMetadata *)self imageFileURL];
      v7 = [v6 URL];
      v11 = 0;
      v3 = [v5 dataWithContentsOfURL:v7 options:8 error:&v11];
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

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([(TUConversationActivityMetadata *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4 == self || [(TUConversationActivityMetadata *)self _isEqualToActivityMetadata:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEquivalentToActivityMetadata:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationActivityMetadata *)self context];
  v6 = [v4 context];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUConversationActivityMetadata *)self linkMetadatablob];
    v8 = [v4 linkMetadatablob];
    if (TUObjectsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUConversationActivityMetadata *)self fallbackURL];
      v10 = [v4 fallbackURL];
      if (TUObjectsAreEqualOrNil(v9, v10))
      {
        v11 = [(TUConversationActivityMetadata *)self invitationURL];
        v12 = [v4 invitationURL];
        if (TUObjectsAreEqualOrNil(v11, v12))
        {
          v28 = v11;
          v13 = [(TUConversationActivityMetadata *)self supportsContinuationOnTV];
          if (v13 == [v4 supportsContinuationOnTV])
          {
            v15 = [(TUConversationActivityMetadata *)self title];
            v26 = [v4 title];
            v27 = v15;
            if (TUObjectsAreEqualOrNil(v15, v26))
            {
              v16 = [(TUConversationActivityMetadata *)self subTitle];
              v24 = [v4 subTitle];
              v25 = v16;
              if (TUObjectsAreEqualOrNil(v16, v24) && (v17 = -[TUConversationActivityMetadata preferredBroadcastingAttributes](self, "preferredBroadcastingAttributes"), v17 == [v4 preferredBroadcastingAttributes]))
              {
                v18 = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
                v22 = [v4 sceneAssociationBehavior];
                v23 = v18;
                if ([v18 isEqual:?] && (v19 = -[TUConversationActivityMetadata supportsActivityPreviews](self, "supportsActivityPreviews"), v19 == objc_msgSend(v4, "supportsActivityPreviews")))
                {
                  v20 = [(TUConversationActivityMetadata *)self lifetimePolicy];
                  v14 = v20 == [v4 lifetimePolicy];
                }

                else
                {
                  v14 = 0;
                }

                v11 = v28;
              }

              else
              {
                v14 = 0;
                v11 = v28;
              }
            }

            else
            {
              v14 = 0;
              v11 = v28;
            }
          }

          else
          {
            v14 = 0;
            v11 = v28;
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

- (BOOL)_isEqualToActivityMetadata:(id)a3
{
  v4 = a3;
  if ([(TUConversationActivityMetadata *)self isEquivalentToActivityMetadata:v4])
  {
    v5 = [(TUConversationActivityMetadata *)self imageFileURL];
    if (v5 && (v6 = v5, [v4 imageFileURL], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = [(TUConversationActivityMetadata *)self imageFileURL];
      v9 = [v4 imageFileURL];
    }

    else
    {
      v8 = [(TUConversationActivityMetadata *)self imageData];
      v9 = [v4 imageData];
    }

    v11 = v9;
    v10 = TUObjectsAreEqualOrNil(v8, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(TUConversationActivityMetadata *)self imageFileURL];
  if (v3)
  {
    [(TUConversationActivityMetadata *)self imageFileURL];
  }

  else
  {
    [(TUConversationActivityMetadata *)self imageData];
  }
  v4 = ;
  v26 = [v4 hash];

  v28 = [(TUConversationActivityMetadata *)self context];
  v24 = [v28 hash];
  v27 = [(TUConversationActivityMetadata *)self linkMetadatablob];
  v23 = [v27 hash];
  v25 = [(TUConversationActivityMetadata *)self fallbackURL];
  v22 = [v25 hash];
  v5 = [(TUConversationActivityMetadata *)self invitationURL];
  v21 = [v5 hash];
  v6 = [(TUConversationActivityMetadata *)self supportsContinuationOnTV];
  v7 = 1237;
  v8 = 1231;
  if (!v6)
  {
    v8 = 1237;
  }

  v20 = v8;
  v9 = [(TUConversationActivityMetadata *)self title];
  v10 = [v9 hash];
  v11 = [(TUConversationActivityMetadata *)self subTitle];
  v12 = [v11 hash];
  v13 = [(TUConversationActivityMetadata *)self preferredBroadcastingAttributes];
  v14 = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
  v15 = [v14 hash];
  if ([(TUConversationActivityMetadata *)self supportsActivityPreviews])
  {
    v7 = 1231;
  }

  v16 = [(TUConversationActivityMetadata *)self lifetimePolicy];
  v17 = v24 ^ v26 ^ v23 ^ v22 ^ v21 ^ v20 ^ v10 ^ v12 ^ v13 ^ v15;
  v18 = v7 ^ v16;

  return v17 ^ v18;
}

- (unint64_t)length
{
  v2 = [(TUConversationActivityMetadata *)self serializedData];
  v3 = [v2 length];

  return v3;
}

+ (TUConversationActivityMetadata)activityMetadataWithDataBlob:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
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
  v4 = [(TUConversationActivityMetadata *)self context];
  [v3 appendFormat:@" context=%@", v4];

  v5 = [(TUConversationActivityMetadata *)self fallbackURL];

  if (v5)
  {
    v6 = [(TUConversationActivityMetadata *)self fallbackURL];
    [v3 appendFormat:@" fallbackURL=%@", v6];
  }

  v7 = [(TUConversationActivityMetadata *)self invitationURL];

  if (v7)
  {
    v8 = [(TUConversationActivityMetadata *)self invitationURL];
    [v3 appendFormat:@" invitationURL=%@", v8];
  }

  if ([(TUConversationActivityMetadata *)self supportsContinuationOnTV])
  {
    [v3 appendFormat:@" supportsContinuationOnTV=%d", -[TUConversationActivityMetadata supportsContinuationOnTV](self, "supportsContinuationOnTV")];
  }

  v9 = [(TUConversationActivityMetadata *)self title];

  if (v9)
  {
    v10 = [(TUConversationActivityMetadata *)self title];
    [v3 appendFormat:@" title=%@", v10];
  }

  v11 = [(TUConversationActivityMetadata *)self subTitle];

  if (v11)
  {
    v12 = [(TUConversationActivityMetadata *)self subTitle];
    [v3 appendFormat:@" subTitle=%@", v12];
  }

  if ([(TUConversationActivityMetadata *)self preferredBroadcastingAttributes])
  {
    [v3 appendFormat:@" preferredBroadcastingAttributes=%ld", -[TUConversationActivityMetadata preferredBroadcastingAttributes](self, "preferredBroadcastingAttributes")];
  }

  v13 = [(TUConversationActivityMetadata *)self imageFileURL];

  if (v13)
  {
    v14 = [(TUConversationActivityMetadata *)self imageFileURL];

    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = [(TUConversationActivityMetadata *)self imageFileURL];
    [v3 appendFormat:@" imageFileURL=%@", v15];
  }

  else
  {
    v16 = [(TUConversationActivityMetadata *)self imageData];

    if (!v16)
    {
      goto LABEL_19;
    }

    v15 = [(TUConversationActivityMetadata *)self imageData];
    [v3 appendFormat:@" imageData=%@", v15];
  }

LABEL_19:
  v17 = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
  [v3 appendFormat:@" sceneAssociationBehavior=%@", v17];

  v18 = objc_opt_self();
  v19 = [v18 supportsActivityPreviews];

  if (v19)
  {
    v20 = objc_opt_self();
    [v3 appendFormat:@" self.supportsActivityPreviews=%d", objc_msgSend(v20, "supportsActivityPreviews")];
  }

  v21 = objc_opt_self();
  v22 = [v21 lifetimePolicy];

  if (v22)
  {
    v23 = objc_opt_self();
    [v3 appendFormat:@" self.lifetimePolicy=%ld", objc_msgSend(v23, "lifetimePolicy")];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = [objc_opt_class() allocWithZone:a3];
  v4 = [(TUConversationActivityMetadata *)self context];
  v20 = [(TUConversationActivityMetadata *)self linkMetadatablob];
  v5 = [(TUConversationActivityMetadata *)self fallbackURL];
  v6 = [(TUConversationActivityMetadata *)self invitationURL];
  v18 = [(TUConversationActivityMetadata *)self supportsContinuationOnTV];
  v7 = [(TUConversationActivityMetadata *)self title];
  v8 = [(TUConversationActivityMetadata *)self subTitle];
  v9 = [(TUConversationActivityMetadata *)self imageFileURL];
  v10 = v5;
  v11 = v4;
  if (v9)
  {
    v21 = 0;
  }

  else
  {
    v21 = [(TUConversationActivityMetadata *)self imageData];
  }

  v12 = [(TUConversationActivityMetadata *)self preferredBroadcastingAttributes];
  v13 = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
  LOBYTE(v17) = [(TUConversationActivityMetadata *)self supportsActivityPreviews];
  v14 = [v19 initWithContext:v11 linkMetadata:v20 fallbackURL:v10 invitationURL:v6 supportsContinuationOnTV:v18 title:v7 subTitle:v8 imageData:v21 preferredBroadcastingAttributes:v12 sceneAssociationBehavior:v13 supportsActivityPreviews:v17 lifetimePolicy:{-[TUConversationActivityMetadata lifetimePolicy](self, "lifetimePolicy")}];

  if (!v9)
  {
  }

  v15 = [(TUConversationActivityMetadata *)self imageFileURL];
  [v14 setImageFileURL:v15];

  return v14;
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v18 = [objc_opt_class() allocWithZone:a3];
  v4 = [(TUConversationActivityMetadata *)self context];
  v21 = [(TUConversationActivityMetadata *)self linkMetadatablob];
  v20 = [(TUConversationActivityMetadata *)self fallbackURL];
  v5 = [v20 sanitizedCopy];
  v19 = [(TUConversationActivityMetadata *)self invitationURL];
  v6 = [v19 sanitizedCopy];
  v16 = [(TUConversationActivityMetadata *)self supportsContinuationOnTV];
  v7 = [(TUConversationActivityMetadata *)self title];
  v17 = [(TUConversationActivityMetadata *)self subTitle];
  v8 = [(TUConversationActivityMetadata *)self imageFileURL];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(TUConversationActivityMetadata *)self imageData];
  }

  v10 = [(TUConversationActivityMetadata *)self preferredBroadcastingAttributes];
  v11 = [(TUConversationActivityMetadata *)self sceneAssociationBehavior];
  LOBYTE(v15) = [(TUConversationActivityMetadata *)self supportsActivityPreviews];
  v12 = [v18 initWithContext:v4 linkMetadata:v21 fallbackURL:v5 invitationURL:v6 supportsContinuationOnTV:v16 title:v7 subTitle:v17 imageData:v9 preferredBroadcastingAttributes:v10 sceneAssociationBehavior:v11 supportsActivityPreviews:v15 lifetimePolicy:{-[TUConversationActivityMetadata lifetimePolicy](self, "lifetimePolicy")}];

  if (!v8)
  {
  }

  v13 = [(TUConversationActivityMetadata *)self imageFileURL];
  [v12 setImageFileURL:v13];

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