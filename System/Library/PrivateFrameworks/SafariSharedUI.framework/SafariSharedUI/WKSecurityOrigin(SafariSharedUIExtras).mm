@interface WKSecurityOrigin(SafariSharedUIExtras)
- (id)safari_hostName;
- (id)safari_userVisibleName;
@end

@implementation WKSecurityOrigin(SafariSharedUIExtras)

- (id)safari_userVisibleName
{
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  protocol = [self protocol];
  [v2 setScheme:protocol];

  safari_hostName = [self safari_hostName];
  [v2 setHost:safari_hostName];

  if ([self port])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "port")}];
    [v2 setPort:v5];
  }

  else
  {
    [v2 setPort:0];
  }

  string = [v2 string];

  return string;
}

- (id)safari_hostName
{
  host = [self host];
  _webkit_decodeHostName = [host _webkit_decodeHostName];

  return _webkit_decodeHostName;
}

@end