@interface RWIProtocolDOMStorageStorageId
- (BOOL)isLocalStorage;
- (NSString)securityOrigin;
- (void)setSecurityOrigin:(id)a3;
@end

@implementation RWIProtocolDOMStorageStorageId

- (void)setSecurityOrigin:(id)a3
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMStorageStorageId;
  [(RWIProtocolJSONObject *)&v3 setString:a3 forKey:@"securityOrigin"];
}

- (NSString)securityOrigin
{
  v4.receiver = self;
  v4.super_class = RWIProtocolDOMStorageStorageId;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"securityOrigin"];

  return v2;
}

- (BOOL)isLocalStorage
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMStorageStorageId;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"isLocalStorage"];
}

@end