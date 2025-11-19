@interface VUISidebandMediaEntityImageLoadParams
- (BOOL)isEqual:(id)a3;
- (VUISidebandMediaEntityImageLoadParams)initWithVideoManagedObject:(id)a3 imageType:(unint64_t)a4;
- (unint64_t)hash;
@end

@implementation VUISidebandMediaEntityImageLoadParams

- (VUISidebandMediaEntityImageLoadParams)initWithVideoManagedObject:(id)a3 imageType:(unint64_t)a4
{
  v6 = a3;
  v30.receiver = self;
  v30.super_class = VUISidebandMediaEntityImageLoadParams;
  v7 = [(VUISidebandMediaEntityImageLoadParams *)&v30 init];
  if (v7)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__8;
    v28 = __Block_byref_object_dispose__8;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__8;
    v22 = __Block_byref_object_dispose__8;
    v23 = 0;
    v8 = [v6 managedObjectContext];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __78__VUISidebandMediaEntityImageLoadParams_initWithVideoManagedObject_imageType___block_invoke;
    v13 = &unk_1E8731948;
    v14 = v6;
    v15 = &v24;
    v16 = &v18;
    v17 = a4;
    [v8 performBlockAndWait:&v10];

    if (v25[5] && [v19[5] length])
    {
      objc_storeStrong(&v7->_imageInfo, v25[5]);
      objc_storeStrong(&v7->_imageIdentifierInternal, v19[5]);
      v7->_imageTypeInternal = a4;
    }

    else
    {

      v7 = 0;
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  return v7;
}

void __78__VUISidebandMediaEntityImageLoadParams_initWithVideoManagedObject_imageType___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !*(a1 + 56))
  {
    v16 = [*(a1 + 32) series];
    v2 = [v16 imageInfos];
  }

  else
  {
    v2 = [*(a1 + 32) imageInfos];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 imageType] == *(a1 + 56))
        {
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
          v9 = [*(*(*(a1 + 40) + 8) + 40) urlFormat];
          if ([v9 length])
          {
            v10 = MEMORY[0x1E696AEC0];
            v11 = VUIImageTypeString(*(a1 + 56));
            v12 = [v10 stringWithFormat:@"%@_%@", v9, v11, v17];
            v13 = [v12 tv_filenameSafeString];
            v14 = *(*(a1 + 48) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;
          }

          goto LABEL_16;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (unint64_t)hash
{
  v2 = [(VUISidebandMediaEntityImageLoadParams *)self imageIdentifierInternal];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VUISidebandMediaEntityImageLoadParams *)self imageIdentifierInternal];
      v6 = [(VUISidebandMediaEntityImageLoadParams *)v4 imageIdentifierInternal];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end