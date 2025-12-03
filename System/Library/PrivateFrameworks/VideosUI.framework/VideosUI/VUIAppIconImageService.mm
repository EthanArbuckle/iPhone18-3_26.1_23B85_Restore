@interface VUIAppIconImageService
+ (double)iconCornerRadiusForSize:(CGSize)size;
+ (id)_MD5StringForString:(id)string;
+ (id)_cachePath;
+ (id)_cachedImageForKey:(id)key;
+ (void)_cacheImage:(id)image forKey:(id)key;
+ (void)fetchIconForInstallable:(id)installable size:(CGSize)size completion:(id)completion;
+ (void)fetchIconForInstallableWithImageURL:(id)l operationQueue:(id)queue completion:(id)completion;
+ (void)fetchIconForVUIInstallable:(id)installable size:(CGSize)size completion:(id)completion;
@end

@implementation VUIAppIconImageService

+ (void)fetchIconForVUIInstallable:(id)installable size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x1E69DCEB0];
  completionCopy = completion;
  installableCopy = installable;
  mainScreen = [v6 mainScreen];
  [mainScreen scale];
  v11 = v10;

  CGAffineTransformMakeScale(&v16, v11, v11);
  v12 = [installableCopy appIconURLForSize:{vmlaq_n_f64(vmulq_n_f64(*&v16.c, height), *&v16.a, width)}];

  vuiDefaultQueue = [MEMORY[0x1E696ADC8] vuiDefaultQueue];
  [VUIAppIconImageService fetchIconForInstallableWithImageURL:v12 operationQueue:vuiDefaultQueue completion:completionCopy];
}

+ (void)fetchIconForInstallable:(id)installable size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x1E69DCEB0];
  completionCopy = completion;
  installableCopy = installable;
  mainScreen = [v6 mainScreen];
  [mainScreen scale];
  v11 = v10;

  CGAffineTransformMakeScale(&v16, v11, v11);
  v12 = [installableCopy appIconURLForSize:{vmlaq_n_f64(vmulq_n_f64(*&v16.c, height), *&v16.a, width)}];

  wlkDefaultQueue = [MEMORY[0x1E696ADC8] wlkDefaultQueue];
  [VUIAppIconImageService fetchIconForInstallableWithImageURL:v12 operationQueue:wlkDefaultQueue completion:completionCopy];
}

+ (void)fetchIconForInstallableWithImageURL:(id)l operationQueue:(id)queue completion:(id)completion
{
  lCopy = l;
  queueCopy = queue;
  completionCopy = completion;
  absoluteString = [lCopy absoluteString];
  v12 = [absoluteString length];

  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    absoluteString2 = [lCopy absoluteString];
    v15 = [self _MD5StringForString:absoluteString2];
    v16 = [v13 stringWithFormat:@"%@.png", v15];
  }

  else
  {
    NSLog(&cfstr_Vuiappiconimag.isa, lCopy);
    v16 = 0;
  }

  if ([v16 length])
  {
    v17 = [self _cachedImageForKey:v16];
    if (v17)
    {
      completionCopy[2](completionCopy, v17);
    }

    else
    {
      v18 = MEMORY[0x1E696AAE0];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __88__VUIAppIconImageService_fetchIconForInstallableWithImageURL_operationQueue_completion___block_invoke;
      v20[3] = &unk_1E8734720;
      v21 = v16;
      v22 = lCopy;
      selfCopy = self;
      v23 = completionCopy;
      v19 = [v18 blockOperationWithBlock:v20];
      [queueCopy addOperation:v19];
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

void __88__VUIAppIconImageService_fetchIconForInstallableWithImageURL_operationQueue_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = v3;

  NSLog(&cfstr_Vuiappiconimag_0.isa, *(a1 + 32), *(a1 + 40));
  v5 = *(a1 + 40);
  v11 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:0 error:&v11];
  v7 = v11;
  v8 = v7;
  v9 = @"YES";
  if (!v6)
  {
    v9 = @"NO";
  }

  NSLog(&cfstr_Vuiappiconimag_1.isa, v9, v7);
  v10 = 0;
  if ([v6 length] && !v8)
  {
    v10 = [MEMORY[0x1E69DCAB8] imageWithData:v6 scale:v4];
    [*(a1 + 56) _cacheImage:v10 forKey:*(a1 + 32)];
  }

  (*(*(a1 + 48) + 16))();
}

+ (double)iconCornerRadiusForSize:(CGSize)size
{
  if (size.width == 60.0 && size.height == 60.0)
  {
    v6 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
    [v6 continuousCornerRadius];
    v8 = v7;

    return v8;
  }

  else
  {

    VUIRoundValue();
  }

  return result;
}

+ (id)_MD5StringForString:(id)string
{
  v9 = *MEMORY[0x1E69E9840];
  uTF8String = [string UTF8String];
  v4 = uTF8String;
  if (uTF8String)
  {
    v5 = strlen(uTF8String);
    CC_MD5(v4, v5, md);
    v4 = [MEMORY[0x1E696AD60] stringWithCapacity:16];
    for (i = 0; i != 16; ++i)
    {
      [v4 appendFormat:@"%02x", md[i]];
    }
  }

  return v4;
}

+ (void)_cacheImage:(id)image forKey:(id)key
{
  keyCopy = key;
  imageCopy = image;
  _cachePath = [self _cachePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [defaultManager fileExistsAtPath:_cachePath];

  if ((v10 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager2 createDirectoryAtPath:_cachePath withIntermediateDirectories:1 attributes:0 error:0];
  }

  v12 = [_cachePath stringByAppendingPathComponent:keyCopy];

  stringByExpandingTildeInPath = [v12 stringByExpandingTildeInPath];

  v14 = UIImagePNGRepresentation(imageCopy);

  v18 = 0;
  v15 = [v14 writeToFile:stringByExpandingTildeInPath options:1 error:&v18];
  v16 = v18;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    NSLog(&cfstr_Vuiappiconimag_2.isa, keyCopy, v16);
  }
}

+ (id)_cachedImageForKey:(id)key
{
  keyCopy = key;
  _cachePath = [self _cachePath];
  v6 = [_cachePath stringByAppendingPathComponent:keyCopy];

  stringByExpandingTildeInPath = [v6 stringByExpandingTildeInPath];

  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:stringByExpandingTildeInPath];
  v9 = objc_alloc(MEMORY[0x1E69DCAB8]);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v11 = [v9 initWithData:v8 scale:?];

  return v11;
}

+ (id)_cachePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v2 firstObject];

  if (_os_feature_enabled_impl())
  {
    v4 = @"com.apple.videosui";
  }

  else
  {
    v4 = @"com.apple.WatchListKit";
  }

  v5 = [firstObject stringByAppendingPathComponent:v4];

  v6 = [v5 stringByAppendingPathComponent:@"channel-icons"];

  return v6;
}

@end