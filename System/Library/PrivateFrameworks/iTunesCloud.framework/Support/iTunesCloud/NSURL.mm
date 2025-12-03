@interface NSURL
- (BOOL)ic_referencesSameFile:(id)file;
@end

@implementation NSURL

- (BOOL)ic_referencesSameFile:(id)file
{
  fileCopy = file;
  if (-[NSURL isFileURL](self, "isFileURL") && [fileCopy isFileURL])
  {
    if (([(NSURL *)self isEqual:fileCopy]& 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      path = [(NSURL *)self path];
      stringByStandardizingPath = [path stringByStandardizingPath];

      path2 = [fileCopy path];
      stringByStandardizingPath2 = [path2 stringByStandardizingPath];

      if ([stringByStandardizingPath isEqualToString:stringByStandardizingPath2])
      {
        v5 = 1;
      }

      else
      {
        stringByResolvingSymlinksInPath = [stringByStandardizingPath stringByResolvingSymlinksInPath];

        stringByResolvingSymlinksInPath2 = [stringByStandardizingPath2 stringByResolvingSymlinksInPath];

        v5 = [stringByResolvingSymlinksInPath isEqualToString:stringByResolvingSymlinksInPath2];
        stringByStandardizingPath = stringByResolvingSymlinksInPath;
        stringByStandardizingPath2 = stringByResolvingSymlinksInPath2;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end