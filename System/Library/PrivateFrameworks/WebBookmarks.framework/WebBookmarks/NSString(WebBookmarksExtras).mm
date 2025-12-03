@interface NSString(WebBookmarksExtras)
- (id)_wb_stringByDeletingTrailingSlash;
- (id)_wb_stringByStandardizingDAVServerID;
- (id)wb_bestURLForUserTypedString;
@end

@implementation NSString(WebBookmarksExtras)

- (id)_wb_stringByStandardizingDAVServerID
{
  v2 = [MEMORY[0x277CCACE0] componentsWithString:self];
  path = [v2 path];

  if ([path length])
  {
    selfCopy = path;
  }

  else
  {
    selfCopy = self;
  }

  _wb_stringByDeletingTrailingSlash = [selfCopy _wb_stringByDeletingTrailingSlash];

  return _wb_stringByDeletingTrailingSlash;
}

- (id)_wb_stringByDeletingTrailingSlash
{
  if ([self hasSuffix:@"/"])
  {
    selfCopy = [self substringToIndex:{objc_msgSend(self, "length") - 1}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)wb_bestURLForUserTypedString
{
  if (objc_opt_respondsToSelector())
  {
    [self safari_bestURLForUserTypedString];
  }

  else
  {
    [self _web_bestURLForUserTypedString];
  }
  v2 = ;

  return v2;
}

@end