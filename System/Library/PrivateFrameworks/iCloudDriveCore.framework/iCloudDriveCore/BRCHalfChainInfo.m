@interface BRCHalfChainInfo
- (BRCHalfChainInfo)initWithRecord:(id)a3 ckInfo:(id)a4;
@end

@implementation BRCHalfChainInfo

- (BRCHalfChainInfo)initWithRecord:(id)a3 ckInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BRCHalfChainInfo;
  v9 = [(BRCHalfChainInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, a3);
    objc_storeStrong(&v10->_ckInfo, a4);
  }

  return v10;
}

@end