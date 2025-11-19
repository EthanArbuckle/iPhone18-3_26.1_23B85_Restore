@interface STSNFCHandoverHandler
- (STSNFCHandoverHandler)init;
@end

@implementation STSNFCHandoverHandler

- (STSNFCHandoverHandler)init
{
  v6.receiver = self;
  v6.super_class = STSNFCHandoverHandler;
  v2 = [(STSNFCHandoverHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    apduBuffer = v2->_apduBuffer;
    v2->_apduBuffer = v3;
  }

  return v2;
}

@end