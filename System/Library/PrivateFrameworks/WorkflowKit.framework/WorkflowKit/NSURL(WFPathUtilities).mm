@interface NSURL(WFPathUtilities)
- (id)wf_normalizedFileURLForROSP;
@end

@implementation NSURL(WFPathUtilities)

- (id)wf_normalizedFileURLForROSP
{
  if (([self isFileURL] & 1) != 0 || (objc_msgSend(self, "scheme"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "length"), v2, !v3))
  {
    v5 = [MEMORY[0x1E696AF20] componentsWithURL:self resolvingAgainstBaseURL:1];
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
        selfCopy6 = self;
      }

      else
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v11 = [defaultManager URLsForDirectory:1 inDomains:2];
        firstObject = [v11 firstObject];

        if (firstObject)
        {
          path = [firstObject path];
          stringByStandardizingPath = [path stringByStandardizingPath];

          path2 = [v7 path];
          stringByStandardizingPath2 = [path2 stringByStandardizingPath];

          if ([stringByStandardizingPath2 hasPrefix:stringByStandardizingPath])
          {
            pathComponents = [v7 pathComponents];
            v18 = [pathComponents mutableCopy];

            v27 = v18;
            [v18 insertObject:@"/System" atIndex:0];
            v19 = [MEMORY[0x1E696AF20] componentsWithURL:v7 resolvingAgainstBaseURL:1];

            v20 = [MEMORY[0x1E696AEC0] pathWithComponents:v18];
            [v19 setPath:v20];

            v21 = [v19 URL];
            v28 = v9;
            v22 = [v21 checkResourceIsReachableAndReturnError:&v28];
            v23 = stringByStandardizingPath;
            v24 = v28;

            if (v22)
            {
              selfCopy2 = v21;
            }

            else
            {
              selfCopy2 = self;
            }

            selfCopy6 = selfCopy2;

            v9 = v24;
            stringByStandardizingPath = v23;
            v5 = v19;
          }

          else
          {
            selfCopy6 = self;
          }
        }

        else
        {
          selfCopy6 = self;
        }
      }
    }

    else
    {
      selfCopy6 = self;
    }
  }

  else
  {
    selfCopy6 = self;
  }

  return selfCopy6;
}

@end