@interface PFAmbientPosterData
+ (id)loadFromURL:(id)l error:(id *)error;
- (BOOL)saveToURL:(id)l error:(id *)error;
- (PFAmbientPosterData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFAmbientPosterData

- (PFAmbientPosterData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PFAmbientPosterData *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedAssetCloudIdentifier"];
    associatedAssetCloudIdentifier = v5->_associatedAssetCloudIdentifier;
    v5->_associatedAssetCloudIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  associatedAssetCloudIdentifier = [(PFAmbientPosterData *)self associatedAssetCloudIdentifier];
  [coderCopy encodeObject:associatedAssetCloudIdentifier forKey:@"associatedAssetCloudIdentifier"];
}

- (BOOL)saveToURL:(id)l error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __39__PFAmbientPosterData_saveToURL_error___block_invoke;
  v17[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v17[4] = error;
  lCopy = l;
  v6 = MEMORY[0x1B8C64C40](v17);
  v7 = [lCopy URLByAppendingPathComponent:@"AmbientPosterData.plist"];

  v16 = 0;
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v16];
  v9 = v16;
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v10;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Failed to encode poster data at path:%@ error:%@";
LABEL_9:
      _os_log_error_impl(&dword_1B35C1000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v15 = 0;
  v13 = 1;
  [v8 writeToURL:v7 options:1 error:&v15];
  v10 = v15;
  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v10;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "Failed to write poster data at path:%@ error:%@";
      goto LABEL_9;
    }

LABEL_6:
    (v6)[2](v6, v10);
    v13 = 0;
  }

  return v13;
}

void **__39__PFAmbientPosterData_saveToURL_error___block_invoke(void **result, id a2)
{
  if (result[4])
  {
    v3 = result;
    result = a2;
    *v3[4] = a2;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PFAmbientPosterData allocWithZone:zone];
  v5 = [(NSString *)self->_associatedAssetCloudIdentifier copy];
  associatedAssetCloudIdentifier = v4->_associatedAssetCloudIdentifier;
  v4->_associatedAssetCloudIdentifier = v5;

  return v4;
}

+ (id)loadFromURL:(id)l error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [l URLByAppendingPathComponent:@"AmbientPosterData.plist"];
  v15 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:1 error:&v15];
  v7 = v15;
  if (v6)
  {
    v14 = v7;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v14];
    v9 = v14;

    if (v8)
    {
      v10 = v8;
LABEL_10:

      goto LABEL_14;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v9;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to unarchive poster configuraton data error:%@", buf, 0xCu);
      if (!error)
      {
        goto LABEL_10;
      }
    }

    else if (!error)
    {
      goto LABEL_10;
    }

    v12 = v9;
    *error = v9;
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v7;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to read poster data at path:%@ error:%@", buf, 0x16u);
    if (error)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (!error)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = v7;
  v8 = 0;
  *error = v7;
LABEL_13:
  v9 = v7;
LABEL_14:

  return v8;
}

@end