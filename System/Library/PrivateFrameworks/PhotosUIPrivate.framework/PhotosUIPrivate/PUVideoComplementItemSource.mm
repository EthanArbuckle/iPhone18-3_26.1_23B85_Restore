@interface PUVideoComplementItemSource
- (id)_initWithVideoComplement:(id)complement bundleAtURL:(id)l;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerSubject:(id)subject;
@end

@implementation PUVideoComplementItemSource

- (id)activityViewControllerSubject:(id)subject
{
  imagePath = [(PFVideoComplement *)self->_videoComplement imagePath];
  lastPathComponent = [imagePath lastPathComponent];

  return lastPathComponent;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [(PFVideoComplement *)self->_videoComplement imagePath:controller];
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

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v15[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (![typeCopy isEqualToString:@"com.apple.Photos.activity.saveToCameraRoll"] || (v6 = self->_videoComplement) == 0)
  {
    if ([PUActivityItemSourceConfiguration isLivePhotoBundleSupportedByActivityType:typeCopy])
    {
      v6 = self->_bundleURL;
    }

    else
    {
      v6 = 0;
    }
  }

  imagePath = [(PFVideoComplement *)self->_videoComplement imagePath];
  if (!v6)
  {
    if ([typeCopy isEqualToString:*MEMORY[0x1E69CDA90]])
    {
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:imagePath options:1 error:0];
      if (!v8)
      {
        v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:imagePath];
      }

      v9 = MEMORY[0x1E69C08F0];
      pathExtension = [imagePath pathExtension];
      v11 = [v9 typeWithFilenameExtension:pathExtension conformingToType:*MEMORY[0x1E6982E30]];

      v6 = 0;
      if (v8 && v11)
      {
        identifier = [v11 identifier];
        v14 = identifier;
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

    if (imagePath)
    {
      v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:imagePath isDirectory:0];
    }
  }

LABEL_18:

  return v6;
}

- (id)_initWithVideoComplement:(id)complement bundleAtURL:(id)l
{
  complementCopy = complement;
  lCopy = l;
  v20.receiver = self;
  v20.super_class = PUVideoComplementItemSource;
  v8 = [(PUVideoComplementItemSource *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bundleURL, l);
    v10 = complementCopy ? complementCopy : [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:lCopy];
    p_videoComplement = &v9->_videoComplement;
    videoComplement = v9->_videoComplement;
    v9->_videoComplement = v10;

    if (!v9->_bundleURL)
    {
      if (*p_videoComplement)
      {
        imagePath = [*p_videoComplement imagePath];
        stringByDeletingLastPathComponent = [imagePath stringByDeletingLastPathComponent];
        pathExtension = [stringByDeletingLastPathComponent pathExtension];
        v16 = [pathExtension isEqualToString:*MEMORY[0x1E69C09D0]];

        if (v16)
        {
          v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:stringByDeletingLastPathComponent isDirectory:1];
          bundleURL = v9->_bundleURL;
          v9->_bundleURL = v17;
        }
      }
    }
  }

  return v9;
}

@end