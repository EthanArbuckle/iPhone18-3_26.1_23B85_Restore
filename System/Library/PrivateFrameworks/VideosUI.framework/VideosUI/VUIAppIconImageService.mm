@interface VUIAppIconImageService
+ (double)iconCornerRadiusForSize:(CGSize)a3;
+ (id)_MD5StringForString:(id)a3;
+ (id)_cachePath;
+ (id)_cachedImageForKey:(id)a3;
+ (void)_cacheImage:(id)a3 forKey:(id)a4;
+ (void)fetchIconForInstallable:(id)a3 size:(CGSize)a4 completion:(id)a5;
+ (void)fetchIconForInstallableWithImageURL:(id)a3 operationQueue:(id)a4 completion:(id)a5;
+ (void)fetchIconForVUIInstallable:(id)a3 size:(CGSize)a4 completion:(id)a5;
@end

@implementation VUIAppIconImageService

+ (void)fetchIconForVUIInstallable:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v6 = MEMORY[0x1E69DCEB0];
  v7 = a5;
  v8 = a3;
  v9 = [v6 mainScreen];
  [v9 scale];
  v11 = v10;

  CGAffineTransformMakeScale(&v16, v11, v11);
  v12 = [v8 appIconURLForSize:{vmlaq_n_f64(vmulq_n_f64(*&v16.c, height), *&v16.a, width)}];

  v13 = [MEMORY[0x1E696ADC8] vuiDefaultQueue];
  [VUIAppIconImageService fetchIconForInstallableWithImageURL:v12 operationQueue:v13 completion:v7];
}

+ (void)fetchIconForInstallable:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v6 = MEMORY[0x1E69DCEB0];
  v7 = a5;
  v8 = a3;
  v9 = [v6 mainScreen];
  [v9 scale];
  v11 = v10;

  CGAffineTransformMakeScale(&v16, v11, v11);
  v12 = [v8 appIconURLForSize:{vmlaq_n_f64(vmulq_n_f64(*&v16.c, height), *&v16.a, width)}];

  v13 = [MEMORY[0x1E696ADC8] wlkDefaultQueue];
  [VUIAppIconImageService fetchIconForInstallableWithImageURL:v12 operationQueue:v13 completion:v7];
}

+ (void)fetchIconForInstallableWithImageURL:(id)a3 operationQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 absoluteString];
  v12 = [v11 length];

  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v8 absoluteString];
    v15 = [a1 _MD5StringForString:v14];
    v16 = [v13 stringWithFormat:@"%@.png", v15];
  }

  else
  {
    NSLog(&cfstr_Vuiappiconimag.isa, v8);
    v16 = 0;
  }

  if ([v16 length])
  {
    v17 = [a1 _cachedImageForKey:v16];
    if (v17)
    {
      v10[2](v10, v17);
    }

    else
    {
      v18 = MEMORY[0x1E696AAE0];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __88__VUIAppIconImageService_fetchIconForInstallableWithImageURL_operationQueue_completion___block_invoke;
      v20[3] = &unk_1E8734720;
      v21 = v16;
      v22 = v8;
      v24 = a1;
      v23 = v10;
      v19 = [v18 blockOperationWithBlock:v20];
      [v9 addOperation:v19];
    }
  }

  else
  {
    v10[2](v10, 0);
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

+ (double)iconCornerRadiusForSize:(CGSize)a3
{
  if (a3.width == 60.0 && a3.height == 60.0)
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

+ (id)_MD5StringForString:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a3 UTF8String];
  v4 = v3;
  if (v3)
  {
    v5 = strlen(v3);
    CC_MD5(v4, v5, md);
    v4 = [MEMORY[0x1E696AD60] stringWithCapacity:16];
    for (i = 0; i != 16; ++i)
    {
      [v4 appendFormat:@"%02x", md[i]];
    }
  }

  return v4;
}

+ (void)_cacheImage:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _cachePath];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if ((v10 & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    [v11 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v12 = [v8 stringByAppendingPathComponent:v6];

  v13 = [v12 stringByExpandingTildeInPath];

  v14 = UIImagePNGRepresentation(v7);

  v18 = 0;
  v15 = [v14 writeToFile:v13 options:1 error:&v18];
  v16 = v18;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    NSLog(&cfstr_Vuiappiconimag_2.isa, v6, v16);
  }
}

+ (id)_cachedImageForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 _cachePath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [v6 stringByExpandingTildeInPath];

  v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v7];
  v9 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  v11 = [v9 initWithData:v8 scale:?];

  return v11;
}

+ (id)_cachePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 firstObject];

  if (_os_feature_enabled_impl())
  {
    v4 = @"com.apple.videosui";
  }

  else
  {
    v4 = @"com.apple.WatchListKit";
  }

  v5 = [v3 stringByAppendingPathComponent:v4];

  v6 = [v5 stringByAppendingPathComponent:@"channel-icons"];

  return v6;
}

@end