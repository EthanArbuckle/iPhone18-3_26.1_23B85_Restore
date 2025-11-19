@interface PUVideoComplementItemSource
- (id)_initWithVideoComplement:(id)a3 bundleAtURL:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5;
- (id)activityViewControllerSubject:(id)a3;
@end

@implementation PUVideoComplementItemSource

- (id)activityViewControllerSubject:(id)a3
{
  v3 = [(PFVideoComplement *)self->_videoComplement imagePath];
  v4 = [v3 lastPathComponent];

  return v4;
}

- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = [(PFVideoComplement *)self->_videoComplement imagePath:a3];
  v8 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithContentsOfFile:v7];
  [v8 size];
  v18.origin.x = PURectWithAspectRatioFillingRect(v9 / v10, 0.0, 0.0, width, height);
  v19 = CGRectIntegral(v18);
  v11 = v19.size.width;
  v12 = v19.size.height;
  v13 = *MEMORY[0x1E695EFF8];
  v14 = *(MEMORY[0x1E695EFF8] + 8);
  v19.origin.x = v19.size.width;
  v19.origin.y = v19.size.height;
  UIGraphicsBeginImageContextWithOptions(v19.origin, 1, 0.0);
  [v8 drawInRect:{v13, v14, v11, v12}];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (![v5 isEqualToString:@"com.apple.Photos.activity.saveToCameraRoll"] || (v6 = self->_videoComplement) == 0)
  {
    if ([PUActivityItemSourceConfiguration isLivePhotoBundleSupportedByActivityType:v5])
    {
      v6 = self->_bundleURL;
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = [(PFVideoComplement *)self->_videoComplement imagePath];
  if (!v6)
  {
    if ([v5 isEqualToString:*MEMORY[0x1E69CDA90]])
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v7 options:1 error:0];
      if (!v8)
      {
        v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v7];
      }

      v9 = MEMORY[0x1E69C08F0];
      v10 = [v7 pathExtension];
      v11 = [v9 typeWithFilenameExtension:v10 conformingToType:*MEMORY[0x1E6982E30]];

      v6 = 0;
      if (v8 && v11)
      {
        v12 = [v11 identifier];
        v14 = v12;
        v15[0] = v8;
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      }

      if (v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v6 = 0;
    }

    if (v7)
    {
      v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7 isDirectory:0];
    }
  }

LABEL_18:

  return v6;
}

- (id)_initWithVideoComplement:(id)a3 bundleAtURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = PUVideoComplementItemSource;
  v8 = [(PUVideoComplementItemSource *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundleURL, a4);
    v10 = v6 ? v6 : [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:v7];
    p_videoComplement = &v9->_videoComplement;
    videoComplement = v9->_videoComplement;
    v9->_videoComplement = v10;

    if (!v9->_bundleURL)
    {
      if (*p_videoComplement)
      {
        v13 = [*p_videoComplement imagePath];
        v14 = [v13 stringByDeletingLastPathComponent];
        v15 = [v14 pathExtension];
        v16 = [v15 isEqualToString:*MEMORY[0x1E69C09D0]];

        if (v16)
        {
          v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:1];
          bundleURL = v9->_bundleURL;
          v9->_bundleURL = v17;
        }
      }
    }
  }

  return v9;
}

@end