@interface NSString(WFPathUtilities)
- (const)wf_bestGuessURL;
- (id)wf_expandingTildeInPath;
- (id)wf_normalizedPathForROSP;
@end

@implementation NSString(WFPathUtilities)

- (id)wf_expandingTildeInPath
{
  v2 = [MEMORY[0x1E695DFF8] wf_realHomeDirectoryURL];
  v3 = [v2 path];
  v4 = [a1 stringByReplacingOccurrencesOfString:@"~" withString:v3];

  return v4;
}

- (id)wf_normalizedPathForROSP
{
  if ([a1 length])
  {
    v2 = [a1 wf_bestGuessURL];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 wf_normalizedFileURLForROSP];
      if ([v4 isEqual:v3])
      {
        v5 = a1;
      }

      else
      {
        v6 = [a1 mutableCopy];
        v7 = [v6 rangeOfString:@"/Applications"];
        if (v7 != 0x7FFFFFFFFFFFFFFFLL && v8)
        {
          [v6 replaceCharactersInRange:v7 withString:{v8, @"/System/Applications"}];
        }

        v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
        v10 = v9;
        if (v9 && (v13 = 0, [v9 checkResourceIsReachableAndReturnError:&v13]))
        {
          v11 = [v6 copy];
        }

        else
        {
          v11 = a1;
        }

        v5 = v11;
      }
    }

    else
    {
      v5 = a1;
    }
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (const)wf_bestGuessURL
{
  v30[6] = *MEMORY[0x1E69E9840];
  v1 = [a1 copy];
  if ([(__CFString *)v1 hasPrefix:@"~"])
  {
    v2 = [(__CFString *)v1 stringByExpandingTildeInPath];

    v1 = v2;
  }

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v1];

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
      v9 = [MEMORY[0x1E696AB08] URLHostAllowedCharacterSet];
      v30[0] = v9;
      v10 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
      v30[1] = v10;
      v11 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
      v30[2] = v11;
      v12 = [MEMORY[0x1E696AB08] URLFragmentAllowedCharacterSet];
      v30[3] = v12;
      v13 = [MEMORY[0x1E696AB08] URLPasswordAllowedCharacterSet];
      v30[4] = v13;
      v14 = [MEMORY[0x1E696AB08] URLUserAllowedCharacterSet];
      v30[5] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:6];

      v16 = [v15 firstObject];
      v17 = [v16 mutableCopy];

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