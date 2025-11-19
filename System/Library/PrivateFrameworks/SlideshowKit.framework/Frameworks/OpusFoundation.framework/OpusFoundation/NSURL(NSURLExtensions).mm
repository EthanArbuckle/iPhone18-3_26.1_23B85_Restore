@interface NSURL(NSURLExtensions)
+ (uint64_t)_contentModificationDate:()NSURLExtensions;
+ (uint64_t)_displayName:()NSURLExtensions;
+ (uint64_t)_hasUnresolvedConflict:()NSURLExtensions;
+ (uint64_t)_isDownloaded:()NSURLExtensions;
+ (uint64_t)_isDownloading:()NSURLExtensions;
+ (uint64_t)_isInCloud:()NSURLExtensions;
+ (uint64_t)_isUploaded:()NSURLExtensions;
+ (uint64_t)_isUploading:()NSURLExtensions;
+ (uint64_t)isHostnameReachable:()NSURLExtensions;
+ (void)parseURLParams:()NSURLExtensions;
- (uint64_t)contentModificationDate;
- (uint64_t)displayName;
- (uint64_t)hasUnresolvedConflict;
- (uint64_t)isDownloaded;
- (uint64_t)isDownloading;
- (uint64_t)isInCloud;
- (uint64_t)isUploaded;
- (uint64_t)isUploading;
@end

@implementation NSURL(NSURLExtensions)

+ (uint64_t)isHostnameReachable:()NSURLExtensions
{
  if (!a3 || ![a3 length])
  {
    return 0;
  }

  v4 = [OFReachability reachabilityWithHostName:a3];

  return [(OFReachability *)v4 currentNetworkStatus];
}

+ (void)parseURLParams:()NSURLExtensions
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a3 componentsSeparatedByString:@"&"];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) componentsSeparatedByString:@"="];
        v10 = [v9 objectAtIndex:1];
        [v4 setObject:objc_msgSend(v10 forKey:{"stringByAddingPercentEncodingWithAllowedCharacters:", objc_msgSend(MEMORY[0x277CCA900], "URLPathAllowedCharacterSet")), objc_msgSend(v9, "objectAtIndex:", 0)}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (uint64_t)_displayName:()NSURLExtensions
{
  v5 = 0;
  v6 = 0;
  if ([a3 getResourceValue:&v6 forKey:*MEMORY[0x277CBE8D0] error:&v5])
  {
    return v6;
  }

  if (OFLoggerLevel >= 4)
  {
    +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSURLExtensions.m", 46, @"An error occured getting file %@ resources: %@", a3, [v5 localizedDescription]);
  }

  return 0;
}

- (uint64_t)displayName
{
  v2 = objc_opt_class();

  return [v2 _displayName:a1];
}

+ (uint64_t)_contentModificationDate:()NSURLExtensions
{
  v5 = 0;
  v6 = 0;
  if ([a3 getResourceValue:&v6 forKey:*MEMORY[0x277CBE7B0] error:&v5])
  {
    return v6;
  }

  if (OFLoggerLevel >= 4)
  {
    +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSURLExtensions.m", 68, @"An error occured getting file %@ resources: %@", a3, [v5 localizedDescription]);
  }

  return 0;
}

- (uint64_t)contentModificationDate
{
  v2 = objc_opt_class();

  return [v2 _contentModificationDate:a1];
}

+ (uint64_t)_isInCloud:()NSURLExtensions
{
  v5 = 0;
  v6 = 0;
  if ([a3 getResourceValue:&v6 forKey:*MEMORY[0x277CBE8B8] error:&v5])
  {
    return [v6 BOOLValue];
  }

  if (OFLoggerLevel >= 4)
  {
    +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSURLExtensions.m", 91, @"An error occured identifying file %@ in the cloud: %@", a3, [v5 localizedDescription]);
  }

  return 0;
}

- (uint64_t)isInCloud
{
  v2 = objc_opt_class();

  return [v2 _isInCloud:a1];
}

+ (uint64_t)_isDownloading:()NSURLExtensions
{
  result = [a1 _isInCloud:?];
  if (result)
  {
    v5 = 0;
    v6 = 0;
    if ([a3 getResourceValue:&v5 forKey:*MEMORY[0x277CBE960] error:&v6])
    {
      return [v5 BOOLValue];
    }

    else
    {
      if (OFLoggerLevel >= 4)
      {
        +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSURLExtensions.m", 116, @"An error occured getting file %@ resources in the cloud: %@", a3, [v6 localizedDescription]);
      }

      return 0;
    }
  }

  return result;
}

- (uint64_t)isDownloading
{
  v2 = objc_opt_class();

  return [v2 _isDownloading:a1];
}

+ (uint64_t)_isDownloaded:()NSURLExtensions
{
  if (![a1 _isInCloud:?])
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  if ([a3 getResourceValue:&v5 forKey:*MEMORY[0x277CBE948] error:&v6])
  {
    return [v5 isEqualToString:*MEMORY[0x277CBE938]];
  }

  if (OFLoggerLevel >= 4)
  {
    +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSURLExtensions.m", 145, @"An error occured getting file %@ resources in the cloud: %@", a3, [v6 localizedDescription]);
  }

  return 0;
}

- (uint64_t)isDownloaded
{
  v2 = objc_opt_class();

  return [v2 _isDownloaded:a1];
}

+ (uint64_t)_isUploading:()NSURLExtensions
{
  result = [a1 _isInCloud:?];
  if (result)
  {
    v5 = 0;
    v6 = 0;
    if ([a3 getResourceValue:&v5 forKey:*MEMORY[0x277CBE988] error:&v6])
    {
      return [v5 BOOLValue];
    }

    else
    {
      if (OFLoggerLevel >= 4)
      {
        +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSURLExtensions.m", 174, @"An error occured getting file %@ resources in the cloud: %@", a3, [v6 localizedDescription]);
      }

      return 0;
    }
  }

  return result;
}

- (uint64_t)isUploading
{
  v2 = objc_opt_class();

  return [v2 _isUploading:a1];
}

+ (uint64_t)_isUploaded:()NSURLExtensions
{
  result = [a1 _isInCloud:?];
  if (result)
  {
    v5 = 0;
    v6 = 0;
    if ([a3 getResourceValue:&v5 forKey:*MEMORY[0x277CBE980] error:&v6])
    {
      return [v5 BOOLValue];
    }

    else
    {
      if (OFLoggerLevel >= 4)
      {
        +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSURLExtensions.m", 203, @"An error occured getting file %@ resources in the cloud: %@", a3, [v6 localizedDescription]);
      }

      return 0;
    }
  }

  return result;
}

- (uint64_t)isUploaded
{
  v2 = objc_opt_class();

  return [v2 _isUploaded:a1];
}

+ (uint64_t)_hasUnresolvedConflict:()NSURLExtensions
{
  result = [a1 _isInCloud:?];
  if (result)
  {
    v5 = 0;
    v6 = 0;
    if ([a3 getResourceValue:&v5 forKey:*MEMORY[0x277CBE958] error:&v6])
    {
      return [v5 BOOLValue];
    }

    else
    {
      if (OFLoggerLevel >= 4)
      {
        +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Extensions/OFNSURLExtensions.m", 232, @"An error occured getting file %@ resources in the cloud: %@", a3, [v6 localizedDescription]);
      }

      return 0;
    }
  }

  return result;
}

- (uint64_t)hasUnresolvedConflict
{
  v2 = objc_opt_class();

  return [v2 _hasUnresolvedConflict:a1];
}

@end