@interface NSURL(WFPathUtilities)
- (id)wf_normalizedFileURLForROSP;
@end

@implementation NSURL(WFPathUtilities)

- (id)wf_normalizedFileURLForROSP
{
  if (([a1 isFileURL] & 1) != 0 || (objc_msgSend(a1, "scheme"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "length"), v2, !v3))
  {
    v5 = [MEMORY[0x1E696AF20] componentsWithURL:a1 resolvingAgainstBaseURL:1];
    [v5 setScheme:@"file"];
    v6 = [v5 URL];
    v7 = v6;
    if (v6)
    {
      v29 = 0;
      v8 = [v6 checkResourceIsReachableAndReturnError:&v29];
      v9 = v29;
      if (v8)
      {
        v4 = a1;
      }

      else
      {
        v10 = [MEMORY[0x1E696AC08] defaultManager];
        v11 = [v10 URLsForDirectory:1 inDomains:2];
        v12 = [v11 firstObject];

        if (v12)
        {
          v13 = [v12 path];
          v14 = [v13 stringByStandardizingPath];

          v15 = [v7 path];
          v16 = [v15 stringByStandardizingPath];

          if ([v16 hasPrefix:v14])
          {
            v17 = [v7 pathComponents];
            v18 = [v17 mutableCopy];

            v27 = v18;
            [v18 insertObject:@"/System" atIndex:0];
            v19 = [MEMORY[0x1E696AF20] componentsWithURL:v7 resolvingAgainstBaseURL:1];

            v20 = [MEMORY[0x1E696AEC0] pathWithComponents:v18];
            [v19 setPath:v20];

            v21 = [v19 URL];
            v28 = v9;
            v22 = [v21 checkResourceIsReachableAndReturnError:&v28];
            v23 = v14;
            v24 = v28;

            if (v22)
            {
              v25 = v21;
            }

            else
            {
              v25 = a1;
            }

            v4 = v25;

            v9 = v24;
            v14 = v23;
            v5 = v19;
          }

          else
          {
            v4 = a1;
          }
        }

        else
        {
          v4 = a1;
        }
      }
    }

    else
    {
      v4 = a1;
    }
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

@end