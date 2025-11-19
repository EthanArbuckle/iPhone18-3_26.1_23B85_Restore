@interface ACMImageLoader
+ (id)sharedInstance;
- (NSMutableDictionary)imagesCache;
- (id)imageNamed:(id)a3;
- (void)dealloc;
@end

@implementation ACMImageLoader

+ (id)sharedInstance
{
  result = sLoader;
  if (!sLoader)
  {
    result = objc_opt_new();
    sLoader = result;
  }

  return result;
}

- (NSMutableDictionary)imagesCache
{
  result = self->_imagesCache;
  if (!result)
  {
    result = objc_opt_new();
    self->_imagesCache = result;
  }

  return result;
}

- (void)dealloc
{
  self->_imagesCache = 0;
  v3.receiver = self;
  v3.super_class = ACMImageLoader;
  [(ACMImageLoader *)&v3 dealloc];
}

- (id)imageNamed:(id)a3
{
  v5 = [(NSMutableDictionary *)[(ACMImageLoader *)self imagesCache] objectForKeyedSubscript:a3];
  if (!v5)
  {
    [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
    v7 = v6;
    v8 = +[ACMUIImageUtilities imageResolutionFactor];
    if (v8 < 1)
    {
LABEL_8:
      if (qword_2A1EB8E90 && (ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLogNS(3, "[ACMImageLoader imageNamed:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMImages.m", 116, 0, @"No data for image %@", v13, v14, a3);
      }

      return 0;
    }

    else
    {
      v9 = v8;
      while (1)
      {
        v10 = &stru_2A1EB91A0;
        if (v9 != 1)
        {
          v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"_%dx", v9];
        }

        NSClassFromString([MEMORY[0x29EDBA0F8] stringWithFormat:@"ACM_%@%@_%@", objc_msgSend(a3, "stringByDeletingPathExtension"), v10, objc_msgSend(objc_msgSend(a3, "pathExtension"), "uppercaseString")]);
        v11 = [objc_opt_new() data];
        if (v11)
        {
          break;
        }

        v7 = v7 + -1.0;
        v12 = v9 != 0;
        v9 = (v9 - 1);
        if (v9 == 0 || !v12)
        {
          goto LABEL_8;
        }
      }

      v15 = v11;
      if (qword_2A1EB8E88 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
      {
        v16 = objc_opt_class();
        ACFLog(7, "[ACMImageLoader imageNamed:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMImages.m", 107, 0, "Loaded image: %@", v16);
      }

      v17 = CGDataProviderCreateWithCFData(v15);
      v18 = CGImageCreateWithPNGDataProvider(v17, 0, 0, kCGRenderingIntentDefault);
      v5 = [MEMORY[0x29EDC7AC8] imageWithCGImage:v18 scale:0 orientation:v7];
      if (v18)
      {
        CFRelease(v18);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (v5)
      {
        [(NSMutableDictionary *)[(ACMImageLoader *)self imagesCache] setObject:v5 forKey:a3];
      }
    }
  }

  return v5;
}

@end