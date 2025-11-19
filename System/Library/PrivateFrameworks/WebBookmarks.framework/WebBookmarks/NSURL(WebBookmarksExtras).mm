@interface NSURL(WebBookmarksExtras)
- (uint64_t)_webBookmarks_isHTTPFamilyURL;
@end

@implementation NSURL(WebBookmarksExtras)

- (uint64_t)_webBookmarks_isHTTPFamilyURL
{
  v1 = [a1 absoluteString];
  if ([v1 _webBookmarks_hasCaseInsensitivePrefix:@"http:"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 _webBookmarks_hasCaseInsensitivePrefix:@"https:"];
  }

  return v2;
}

@end