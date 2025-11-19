@interface MPFileValidationManager
+ (BOOL)validateFiles:(id)a3 allowAudio:(BOOL)a4 allowImages:(BOOL)a5 allowMovies:(BOOL)a6 extensionsOnly:(BOOL)a7;
+ (id)resolveAliasPath:(id)a3;
+ (void)checkFileExtension:(id)a3 isAudio:(BOOL *)a4 isImage:(BOOL *)a5 isVideo:(BOOL *)a6;
@end

@implementation MPFileValidationManager

+ (BOOL)validateFiles:(id)a3 allowAudio:(BOOL)a4 allowImages:(BOOL)a5 allowMovies:(BOOL)a6 extensionsOnly:(BOOL)a7
{
  v7 = a6;
  v12 = [a3 count];
  if (v12)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [a3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(a3);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v20 = 0;
          v19 = 0;
          [a1 checkFileExtension:v17 isAudio:&v19 isImage:&v20 isVideo:&v20 + 1];
          if ((v20 & 0x100) == 0 && (v19 & 1) == 0 && v20 != 1 || !a4 && (HIBYTE(v20) & v7 & 1) == 0 && (v19 & 1) != 0 || !a5 && (v20 & 1) != 0 || HIBYTE(v20) && !a4 && !v7)
          {
            LOBYTE(v12) = 0;
            return v12;
          }
        }

        v14 = [a3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (void)checkFileExtension:(id)a3 isAudio:(BOOL *)a4 isImage:(BOOL *)a5 isVideo:(BOOL *)a6
{
  v12 = 0;
  if (a3 && [+[NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:"]
  {
    if (a4)
    {
      *a4 = 0;
    }

    if (a6)
    {
      *a6 = 0;
    }

    if (a5)
    {
      *a5 = 0;
    }

    v10 = [a3 pathExtension];
    if ([v10 length])
    {
      if (![v10 caseInsensitiveCompare:@"jpg"] || !objc_msgSend(v10, "caseInsensitiveCompare:", @"jpeg") || !objc_msgSend(v10, "caseInsensitiveCompare:", @"gif") || !objc_msgSend(v10, "caseInsensitiveCompare:", @"tif") || !objc_msgSend(v10, "caseInsensitiveCompare:", @"tiff") || !objc_msgSend(v10, "caseInsensitiveCompare:", @"pdf") || !objc_msgSend(v10, "caseInsensitiveCompare:", @"tga") || !objc_msgSend(v10, "caseInsensitiveCompare:", @"png") || !objc_msgSend(v10, "caseInsensitiveCompare:", @"bmp") || !objc_msgSend(v10, "caseInsensitiveCompare:", @"sgi") || !objc_msgSend(v10, "caseInsensitiveCompare:", @"pct") || !objc_msgSend(v10, "caseInsensitiveCompare:", @"psd"))
      {
        if (!a5)
        {
          return;
        }

        goto LABEL_45;
      }

      if ([v10 caseInsensitiveCompare:@"mov"] && objc_msgSend(v10, "caseInsensitiveCompare:", @"qt") && objc_msgSend(v10, "caseInsensitiveCompare:", @"mp4") && objc_msgSend(v10, "caseInsensitiveCompare:", @"mpg") && objc_msgSend(v10, "caseInsensitiveCompare:", @"mpeg") && objc_msgSend(v10, "caseInsensitiveCompare:", @"m4v") && objc_msgSend(v10, "caseInsensitiveCompare:", @"dv") && objc_msgSend(v10, "caseInsensitiveCompare:", @"avi") && objc_msgSend(v10, "caseInsensitiveCompare:", @"3g2") && objc_msgSend(v10, "caseInsensitiveCompare:", @"3gp"))
      {
        if ([v10 caseInsensitiveCompare:@"mp3"] && objc_msgSend(v10, "caseInsensitiveCompare:", @"m4a") && objc_msgSend(v10, "caseInsensitiveCompare:", @"m4p") && objc_msgSend(v10, "caseInsensitiveCompare:", @"aac") && objc_msgSend(v10, "caseInsensitiveCompare:", @"aif") && objc_msgSend(v10, "caseInsensitiveCompare:", @"aifc") && objc_msgSend(v10, "caseInsensitiveCompare:", @"aiff") && objc_msgSend(v10, "caseInsensitiveCompare:", @"wav"))
        {
          v11 = [v10 caseInsensitiveCompare:@"qtz"];
          if (!a6)
          {
            return;
          }

          a5 = a6;
          if (v11)
          {
            return;
          }
        }

        else
        {
          a5 = a4;
          if (!a4)
          {
            return;
          }
        }

LABEL_45:
        *a5 = 1;
        return;
      }

      if (a4)
      {
        *a4 = 1;
      }

      a5 = a6;
      if (a6)
      {
        goto LABEL_45;
      }
    }
  }
}

+ (id)resolveAliasPath:(id)a3
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