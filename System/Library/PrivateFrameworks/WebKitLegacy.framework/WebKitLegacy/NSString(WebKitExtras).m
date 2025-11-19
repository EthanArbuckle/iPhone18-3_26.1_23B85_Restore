@interface NSString(WebKitExtras)
+ (uint64_t)_webkit_localCacheDirectoryWithBundleIdentifier:()WebKitExtras;
- (__CFString)_webkit_stringByTrimmingWhitespace;
- (uint64_t)_web_stringByAbbreviatingWithTildeInPath;
@end

@implementation NSString(WebKitExtras)

- (uint64_t)_web_stringByAbbreviatingWithTildeInPath
{
  v2 = [(NSString *)NSHomeDirectory() stringByResolvingSymlinksInPath];
  if ([a1 hasPrefix:v2])
  {
    v3 = -[NSString stringByAppendingPathComponent:](NSHomeDirectory(), "stringByAppendingPathComponent:", [a1 substringFromIndex:{-[NSString length](v2, "length")}]);
  }

  else
  {
    v3 = a1;
  }

  return [(NSString *)v3 stringByAbbreviatingWithTildeInPath];
}

- (__CFString)_webkit_stringByTrimmingWhitespace
{
  v1 = [a1 mutableCopy];
  CFStringTrimWhitespace(v1);
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

+ (uint64_t)_webkit_localCacheDirectoryWithBundleIdentifier:()WebKitExtras
{
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:WebKitLocalCacheDefaultsKey];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = [(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"Library/Caches"];
  }

  return [(NSString *)v6 stringByAppendingPathComponent:a3];
}

@end