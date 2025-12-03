@interface GQUCommon
+ (BOOL)fileExistsAtUrl:(__CFURL *)url;
@end

@implementation GQUCommon

+ (BOOL)fileExistsAtUrl:(__CFURL *)url
{
  if (!url)
  {
    return 0;
  }

  v3 = CFURLCopyFileSystemPath(url, kCFURLPOSIXPathStyle);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:", v3];
  CFRelease(v4);
  return v5;
}

@end