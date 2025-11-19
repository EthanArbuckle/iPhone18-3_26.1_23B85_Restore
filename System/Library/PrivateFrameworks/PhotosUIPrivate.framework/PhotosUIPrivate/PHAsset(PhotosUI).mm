@interface PHAsset(PhotosUI)
+ (__CFString)pu_typeStringForMediaType:()PhotosUI;
+ (id)pu_typeStringForAssets:()PhotosUI;
+ (uint64_t)_pu_mediaTypeForAssets:()PhotosUI;
+ (uint64_t)pu_commonMediaTypeForPhotoCount:()PhotosUI videoCount:otherCount:;
@end

@implementation PHAsset(PhotosUI)

+ (__CFString)pu_typeStringForMediaType:()PhotosUI
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E7B73E68[a3];
  }
}

+ (uint64_t)_pu_mediaTypeForAssets:()PhotosUI
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    v8 = 1;
LABEL_3:
    v9 = 0;
    v10 = v6;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v11 = [*(*(&v13 + 1) + 8 * v9) mediaType];
      v6 = v11;
      if ((v8 & 1) == 0)
      {
        v6 = v10;
        if (v11 != v10)
        {
          break;
        }
      }

      v8 = 0;
      ++v9;
      v10 = v6;
      if (v5 == v9)
      {
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v8 = 0;
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (uint64_t)pu_commonMediaTypeForPhotoCount:()PhotosUI videoCount:otherCount:
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || a4 == 0x7FFFFFFFFFFFFFFFLL || a5 != 0)
  {
    return 0;
  }

  if (a3 && !a4)
  {
    return 1;
  }

  if (a4)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

+ (id)pu_typeStringForAssets:()PhotosUI
{
  v4 = a3;
  v5 = [a1 pu_typeStringForMediaType:{objc_msgSend(a1, "_pu_mediaTypeForAssets:", v4)}];
  v6 = [v4 count];

  if (v6 != 1)
  {
    v7 = [v5 stringByAppendingString:@"S"];

    v5 = v7;
  }

  return v5;
}

@end