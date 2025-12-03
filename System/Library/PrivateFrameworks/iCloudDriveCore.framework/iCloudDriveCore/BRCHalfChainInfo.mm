@interface BRCHalfChainInfo
- (BRCHalfChainInfo)initWithRecord:(id)record ckInfo:(id)info;
@end

@implementation BRCHalfChainInfo

- (BRCHalfChainInfo)initWithRecord:(id)record ckInfo:(id)info
{
  recordCopy = record;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = BRCHalfChainInfo;
  v9 = [(BRCHalfChainInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, record);
    objc_storeStrong(&v10->_ckInfo, info);
  }

  return v10;
}

@end