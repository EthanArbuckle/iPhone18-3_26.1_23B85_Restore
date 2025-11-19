@interface SKDPipelineInfo
- (SKDPipelineInfo)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
@end

@implementation SKDPipelineInfo

- (SKDPipelineInfo)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = SKDPipelineInfo;
  v11 = [(SKDPipelineInfo *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_domain, a3);
    v12->_code = a4;
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v12->_userInfo, v13);
  }

  return v12;
}

@end