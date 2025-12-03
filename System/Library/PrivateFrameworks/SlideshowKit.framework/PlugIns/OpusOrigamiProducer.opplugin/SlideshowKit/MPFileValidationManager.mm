@interface MPFileValidationManager
+ (BOOL)validateFiles:(id)files allowAudio:(BOOL)audio allowImages:(BOOL)images allowMovies:(BOOL)movies extensionsOnly:(BOOL)only;
+ (id)resolveAliasPath:(id)path;
+ (void)checkFileExtension:(id)extension isAudio:(BOOL *)audio isImage:(BOOL *)image isVideo:(BOOL *)video;
@end

@implementation MPFileValidationManager

+ (BOOL)validateFiles:(id)files allowAudio:(BOOL)audio allowImages:(BOOL)images allowMovies:(BOOL)movies extensionsOnly:(BOOL)only
{
  moviesCopy = movies;
  v12 = [files count];
  if (v12)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [files countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(files);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v20 = 0;
          v19 = 0;
          [self checkFileExtension:v17 isAudio:&v19 isImage:&v20 isVideo:&v20 + 1];
          if ((v20 & 0x100) == 0 && (v19 & 1) == 0 && v20 != 1 || !audio && (HIBYTE(v20) & moviesCopy & 1) == 0 && (v19 & 1) != 0 || !images && (v20 & 1) != 0 || HIBYTE(v20) && !audio && !moviesCopy)
          {
            LOBYTE(v12) = 0;
            return v12;
          }
        }

        v14 = [files countByEnumeratingWithState:&v21 objects:v25 count:16];
        LOBYTE(v12) = 1;
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  return v12;
}

+ (void)checkFileExtension:(id)extension isAudio:(BOOL *)audio isImage:(BOOL *)image isVideo:(BOOL *)video
{
  v12 = 0;
  if (extension && [+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]
  {
    if (audio)
    {
      *audio = 0;
    }

    if (video)
    {
      *video = 0;
    }

    if (image)
    {
      *image = 0;
    }

    pathExtension = [extension pathExtension];
    if ([pathExtension length])
    {
      if (![pathExtension caseInsensitiveCompare:@"jpg"] || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"jpeg") || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"gif") || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"tif") || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"tiff") || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"pdf") || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"tga") || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"png") || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"bmp") || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"sgi") || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"pct") || !objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"psd"))
      {
        if (!image)
        {
          return;
        }

        goto LABEL_45;
      }

      if ([pathExtension caseInsensitiveCompare:@"mov"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"qt") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"mp4") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"mpg") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"mpeg") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"m4v") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"dv") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"avi") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"3g2") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"3gp"))
      {
        if ([pathExtension caseInsensitiveCompare:@"mp3"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"m4a") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"m4p") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"aac") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"aif") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"aifc") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"aiff") && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"wav"))
        {
          v11 = [pathExtension caseInsensitiveCompare:@"qtz"];
          if (!video)
          {
            return;
          }

          image = video;
          if (v11)
          {
            return;
          }
        }

        else
        {
          image = audio;
          if (!audio)
          {
            return;
          }
        }

LABEL_45:
        *image = 1;
        return;
      }

      if (audio)
      {
        *audio = 1;
      }

      image = video;
      if (video)
      {
        goto LABEL_45;
      }
    }
  }
}

+ (id)resolveAliasPath:(id)path
{
  v3 = [[NSURL fileURLWithPath:?]];
  v8 = 0;
  v9 = 0;
  if ([(NSURL *)v3 getResourceValue:&v8 forKey:NSURLIsAliasFileKey error:&v9])
  {
    if ([v8 BOOLValue])
    {
      v4 = [NSURL bookmarkDataWithContentsOfURL:v3 error:&v9];
      if (v4)
      {
        v7 = 0;
        v5 = [NSURL URLByResolvingBookmarkData:v4 options:768 relativeToURL:0 bookmarkDataIsStale:&v7 error:&v9];
        if (v5)
        {
          v3 = v5;
        }
      }
    }
  }

  return [(NSURL *)v3 path];
}

@end