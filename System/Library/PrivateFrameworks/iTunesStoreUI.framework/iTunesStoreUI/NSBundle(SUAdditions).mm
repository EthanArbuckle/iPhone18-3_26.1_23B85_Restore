@interface NSBundle(SUAdditions)
+ (uint64_t)pathForITunesResource:()SUAdditions ofType:;
- (uint64_t)newDataURLForResource:()SUAdditions ofType:withMIMEType:;
@end

@implementation NSBundle(SUAdditions)

- (uint64_t)newDataURLForResource:()SUAdditions ofType:withMIMEType:
{
  if (![a5 hasPrefix:@"image"] || (objc_msgSend(objc_msgSend(MEMORY[0x1E69DCEB0], "mainScreen"), "scale"), v9 != 2.0) || (v10 = objc_msgSend(self, "pathForResource:ofType:", objc_msgSend(a3, "stringByAppendingString:", @"@2x"), a4)) == 0)
  {
    v10 = [self pathForResource:a3 ofType:a4];
    if (!v10)
    {
      return 0;
    }
  }

  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v10];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = [v11 base64EncodedStringWithOptions:0];
  if (v13)
  {
    v14 = v13;
    v15 = objc_alloc(MEMORY[0x1E695DFF8]);
    v16 = [v15 initWithString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"data:%@;base64, %@", a5, v14)}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (uint64_t)pathForITunesResource:()SUAdditions ofType:
{
  result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (!result)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

    return [v7 pathForResource:a3 ofType:a4];
  }

  return result;
}

@end