@interface WBSCloudTabParameters
- (WBSCloudTabParameters)initWithURL:(id)a3;
@end

@implementation WBSCloudTabParameters

- (WBSCloudTabParameters)initWithURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBSCloudTabParameters;
  v6 = [(WBSCloudTabParameters *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v8 = v7;
  }

  return v7;
}

@end