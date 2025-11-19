@interface WKSecurityOrigin(SafariSharedUIExtras)
- (id)safari_hostName;
- (id)safari_userVisibleName;
@end

@implementation WKSecurityOrigin(SafariSharedUIExtras)

- (id)safari_userVisibleName
{
  v2 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v3 = [a1 protocol];
  [v2 setScheme:v3];

  v4 = [a1 safari_hostName];
  [v2 setHost:v4];

  if ([a1 port])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a1, "port")}];
    [v2 setPort:v5];
  }

  else
  {
    [v2 setPort:0];
  }

  v6 = [v2 string];

  return v6;
}

- (id)safari_hostName
{
  v1 = [a1 host];
  v2 = [v1 _webkit_decodeHostName];

  return v2;
}

@end