@interface NSString(WebKitExtras)
+ (uint64_t)_webkit_localCacheDirectoryWithBundleIdentifier:()WebKitExtras;
- (__CFString)_webkit_stringByTrimmingWhitespace;
- (uint64_t)_web_stringByAbbreviatingWithTildeInPath;
@end

@implementation NSString(WebKitExtras)

- (uint64_t)_web_stringByAbbreviatingWithTildeInPath
{
  stringByResolvingSymlinksInPath = [(NSString *)NSHomeDirectory() stringByResolvingSymlinksInPath];
  if ([self hasPrefix:stringByResolvingSymlinksInPath])
  {
    selfCopy = -[NSString stringByAppendingPathComponent:](NSHomeDirectory(), "stringByAppendingPathComponent:", [self substringFromIndex:{-[NSString length](stringByResolvingSymlinksInPath, "length")}]);
  }

  else
  {
    selfCopy = self;
  }

  return [(NSString *)selfCopy stringByAbbreviatingWithTildeInPath];
}

- (__CFString)_webkit_stringByTrimmingWhitespace
{
  v1 = [self mutableCopy];
  CFStringTrimWhitespace(v1);
  if (v1)
  {
    v2 = v1;
  }

  return v1;
}

+ (uint64_t)_webkit_localCacheDirectoryWithBundleIdentifier:()WebKitExtras
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:WebKitLocalCacheDefaultsKey];
  if (!v5 || (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = [(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"Library/Caches"];
  }

  return [(NSString *)v6 stringByAppendingPathComponent:a3];
}

@end