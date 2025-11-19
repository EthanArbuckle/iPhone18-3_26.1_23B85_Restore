@interface NSString(WebBookmarksExtras)
- (id)_wb_stringByDeletingTrailingSlash;
- (id)_wb_stringByStandardizingDAVServerID;
- (id)wb_bestURLForUserTypedString;
@end

@implementation NSString(WebBookmarksExtras)

- (id)_wb_stringByStandardizingDAVServerID
{
  v2 = [MEMORY[0x277CCACE0] componentsWithString:a1];
  v3 = [v2 path];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = a1;
  }

  v5 = [v4 _wb_stringByDeletingTrailingSlash];

  return v5;
}

- (id)_wb_stringByDeletingTrailingSlash
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = [a1 substringToIndex:{objc_msgSend(a1, "length") - 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)wb_bestURLForUserTypedString
{
  if (objc_opt_respondsToSelector())
  {
    [a1 safari_bestURLForUserTypedString];
  }

  else
  {
    [a1 _web_bestURLForUserTypedString];
  }
  v2 = ;

  return v2;
}

@end