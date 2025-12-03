@interface WBSFaviconProviderUtilities
+ (BOOL)isFaviconSize:(CGSize)size morePreferrableThanFaviconSize:(CGSize)faviconSize givenDesiredSize:(CGSize)desiredSize;
+ (id)imageWithURL:(id)l closetToPreferredSize:(CGSize)size;
+ (int64_t)computeRelativeSize:(CGSize)size referenceSize:(CGSize)referenceSize;
@end

@implementation WBSFaviconProviderUtilities

+ (BOOL)isFaviconSize:(CGSize)size morePreferrableThanFaviconSize:(CGSize)faviconSize givenDesiredSize:(CGSize)desiredSize
{
  height = desiredSize.height;
  width = desiredSize.width;
  v7 = faviconSize.height;
  v8 = faviconSize.width;
  v9 = size.height;
  v10 = size.width;
  if ([self computeRelativeSize:? referenceSize:?] == 6)
  {
    return 0;
  }

  v12 = *(MEMORY[0x1E695F060] + 8);
  if (v10 == *MEMORY[0x1E695F060] && v9 == v12)
  {
    return 0;
  }

  if (v8 == *MEMORY[0x1E695F060] && v7 == v12)
  {
    return 1;
  }

  v15 = [self computeRelativeSize:v10 referenceSize:{v9, width, height}];
  v16 = [self computeRelativeSize:v8 referenceSize:{v7, width, height}];
  if (v15 > v16)
  {
    return 1;
  }

  if (v15 < v16)
  {
    return 0;
  }

  v18 = v10 <= v8;
  if (v9 <= v7)
  {
    v18 = 1;
  }

  v19 = v10 >= v8;
  if (v9 >= v7)
  {
    v19 = 1;
  }

  v20 = v15 != 5 || v19;
  if (v15 == 4)
  {
    return v18;
  }

  else
  {
    return v20;
  }
}

+ (int64_t)computeRelativeSize:(CGSize)size referenceSize:(CGSize)referenceSize
{
  if (size.width == referenceSize.width && size.height == referenceSize.height)
  {
    return 6;
  }

  if (size.width == referenceSize.width + referenceSize.width && size.height == referenceSize.height + referenceSize.height)
  {
    return 3;
  }

  if (size.width == referenceSize.width * 4.0 && size.height == referenceSize.height * 4.0)
  {
    return 2;
  }

  if (size.width == referenceSize.width * 8.0 && size.height == referenceSize.height * 8.0)
  {
    return 1;
  }

  if (size.width < referenceSize.width && size.height < referenceSize.height)
  {
    return 5;
  }

  if (size.height <= referenceSize.height || size.width <= referenceSize.width)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

+ (id)imageWithURL:(id)l closetToPreferredSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  lCopy = l;
  v8 = MEMORY[0x1E695F060];
  v9 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  v11 = CGImageSourceCreateWithURL(lCopy, 0);
  if (!v11)
  {
    goto LABEL_18;
  }

  v31 = lCopy;
  v12 = 0;
  v13 = 0;
  v14 = *MEMORY[0x1E696DED8];
  v15 = *MEMORY[0x1E696DEC8];
  while (v12 < CGImageSourceGetCount(v11))
  {
    v16 = CGImageSourceCopyPropertiesAtIndex(v11, v12, 0);
    v17 = v16;
    if (v16)
    {
      Value = CFDictionaryGetValue(v16, v14);
      v19 = CFDictionaryGetValue(v17, v15);
      CFRelease(v17);
      [Value floatValue];
      v21 = v20;
      [v19 floatValue];
      v22 = v21;
      v24 = v23;
      v25 = *v8;
      v26 = v8[1];
    }

    else
    {
      v25 = *v8;
      v26 = v8[1];
      v22 = *v8;
      v24 = v26;
    }

    if (v9 == v25 && v10 == v26)
    {
      v13 = v12;
    }

    else if ([self isFaviconSize:v22 morePreferrableThanFaviconSize:v24 givenDesiredSize:{v9, v10, width, height}])
    {
      v13 = v12;
    }

    else
    {
      v22 = v9;
      v24 = v10;
    }

    ++v12;
    v9 = v22;
    v10 = v24;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, v13, 0);
  CFRelease(v11);
  lCopy = v31;
  if (ImageAtIndex)
  {
    v29 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:ImageAtIndex];
    CFRelease(ImageAtIndex);
  }

  else
  {
LABEL_18:
    v29 = 0;
  }

  return v29;
}

@end