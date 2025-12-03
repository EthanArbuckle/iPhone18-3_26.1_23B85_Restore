@interface NSString(WFPathUtilities)
- (const)wf_bestGuessURL;
- (id)wf_expandingTildeInPath;
- (id)wf_normalizedPathForROSP;
@end

@implementation NSString(WFPathUtilities)

- (id)wf_expandingTildeInPath
{
  wf_realHomeDirectoryURL = [MEMORY[0x1E695DFF8] wf_realHomeDirectoryURL];
  path = [wf_realHomeDirectoryURL path];
  v4 = [self stringByReplacingOccurrencesOfString:@"~" withString:path];

  return v4;
}

- (id)wf_normalizedPathForROSP
{
  if ([self length])
  {
    wf_bestGuessURL = [self wf_bestGuessURL];
    v3 = wf_bestGuessURL;
    if (wf_bestGuessURL)
    {
      wf_normalizedFileURLForROSP = [wf_bestGuessURL wf_normalizedFileURLForROSP];
      if ([wf_normalizedFileURLForROSP isEqual:v3])
      {
        selfCopy4 = self;
      }

      else
      {
        v6 = [self mutableCopy];
        v7 = [v6 rangeOfString:@"/Applications"];
        if (v7 != 0x7FFFFFFFFFFFFFFFLL && v8)
        {
          [v6 replaceCharactersInRange:v7 withString:{v8, @"/System/Applications"}];
        }

        v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
        v10 = v9;
        if (v9 && (v13 = 0, [v9 checkResourceIsReachableAndReturnError:&v13]))
        {
          selfCopy2 = [v6 copy];
        }

        else
        {
          selfCopy2 = self;
        }

        selfCopy4 = selfCopy2;
      }
    }

    else
    {
      selfCopy4 = self;
    }
  }

  else
  {
    selfCopy4 = self;
  }

  return selfCopy4;
}

- (const)wf_bestGuessURL
{
  v30[6] = *MEMORY[0x1E69E9840];
  v1 = [self copy];
  if ([(__CFString *)v1 hasPrefix:@"~"])
  {
    stringByExpandingTildeInPath = [(__CFString *)v1 stringByExpandingTildeInPath];

    v1 = stringByExpandingTildeInPath;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:v1];

  if (v4)
  {
    v5 = CFURLCreateWithFileSystemPath(0, v1, kCFURLPOSIXPathStyle, [(__CFString *)v1 hasSuffix:@"/"]);
    v6 = v5;
    if (v5 && CFURLCanBeDecomposed(v5))
    {
      goto LABEL_18;
    }
  }

  if ([(__CFString *)v1 hasPrefix:@"feeds:"])
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v1];
  }

  else
  {
    v7 = CFURLCreateWithString(0, v1, 0);
    v8 = v7;
    if (v7 && CFURLCanBeDecomposed(v7))
    {
      v6 = v8;
    }

    else
    {
      uRLHostAllowedCharacterSet = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
      v30[0] = uRLHostAllowedCharacterSet;
      uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
      v30[1] = uRLPathAllowedCharacterSet;
      uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
      v30[2] = uRLQueryAllowedCharacterSet;
      uRLFragmentAllowedCharacterSet = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
      v30[3] = uRLFragmentAllowedCharacterSet;
      uRLPasswordAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPasswordAllowedCharacterSet];
      v30[4] = uRLPasswordAllowedCharacterSet;
      uRLUserAllowedCharacterSet = [MEMORY[0x1E696AB08] URLUserAllowedCharacterSet];
      v30[5] = uRLUserAllowedCharacterSet;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:6];

      firstObject = [v15 firstObject];
      v17 = [firstObject mutableCopy];

      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __44__NSString_WFPathUtilities__wf_bestGuessURL__block_invoke;
      v28 = &unk_1E83756E8;
      v18 = v17;
      v29 = v18;
      [v15 enumerateObjectsUsingBlock:&v25];
      [v18 addCharactersInString:{@":/", v25, v26, v27, v28}];
      v19 = [v18 copy];
      v20 = [(__CFString *)v1 stringByAddingPercentEncodingWithAllowedCharacters:v19];

      v21 = [MEMORY[0x1E695DFF8] URLWithString:v20];
      v22 = v21;
      if (v21 && CFURLCanBeDecomposed(v21))
      {
        v6 = v22;
      }

      else
      {
        v6 = 0;
      }
    }
  }

LABEL_18:

  v23 = *MEMORY[0x1E69E9840];

  return v6;
}

@end