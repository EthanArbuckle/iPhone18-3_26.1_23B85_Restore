@interface NSURL(WebBookmarksExtras)
- (uint64_t)_webBookmarks_isHTTPFamilyURL;
@end

@implementation NSURL(WebBookmarksExtras)

- (uint64_t)_webBookmarks_isHTTPFamilyURL
{
  absoluteString = [self absoluteString];
  if ([absoluteString _webBookmarks_hasCaseInsensitivePrefix:@"http:"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [absoluteString _webBookmarks_hasCaseInsensitivePrefix:@"https:"];
  }

  return v2;
}

@end