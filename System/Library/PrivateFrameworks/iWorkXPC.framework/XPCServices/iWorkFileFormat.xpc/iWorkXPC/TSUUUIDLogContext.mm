@interface TSUUUIDLogContext
- (TSUUUIDLogContext)init;
@end

@implementation TSUUUIDLogContext

- (TSUUUIDLogContext)init
{
  v8.receiver = self;
  v8.super_class = TSUUUIDLogContext;
  v2 = [(TSUUUIDLogContext *)&v8 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    v4 = [v3 UUIDString];
    publicString = v2->_publicString;
    v2->_publicString = v4;

    privateString = v2->_privateString;
    v2->_privateString = &stru_1001D3878;
  }

  return v2;
}

@end