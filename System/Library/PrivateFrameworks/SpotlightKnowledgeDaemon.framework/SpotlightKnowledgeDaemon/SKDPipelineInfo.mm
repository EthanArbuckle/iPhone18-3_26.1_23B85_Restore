@interface SKDPipelineInfo
- (SKDPipelineInfo)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
@end

@implementation SKDPipelineInfo

- (SKDPipelineInfo)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  domainCopy = domain;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = SKDPipelineInfo;
  v11 = [(SKDPipelineInfo *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_domain, domain);
    v12->_code = code;
    if (infoCopy)
    {
      v13 = infoCopy;
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