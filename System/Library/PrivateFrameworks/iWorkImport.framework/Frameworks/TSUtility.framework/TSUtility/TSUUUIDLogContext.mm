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
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    publicString = v2->_publicString;
    v2->_publicString = uUIDString;

    privateString = v2->_privateString;
    v2->_privateString = &stru_28862C2A0;
  }

  return v2;
}

@end