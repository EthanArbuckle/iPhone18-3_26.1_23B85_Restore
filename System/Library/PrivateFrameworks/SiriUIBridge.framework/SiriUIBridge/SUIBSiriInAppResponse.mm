@interface SUIBSiriInAppResponse
- (SUIBSiriInAppResponse)initWithBuilder:(id)a3;
- (SUIBSiriInAppResponse)initWithCoder:(id)a3;
@end

@implementation SUIBSiriInAppResponse

- (SUIBSiriInAppResponse)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUIBSiriInAppResponse;
  v5 = [(SUIBSiriInAppResponse *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(SUIBSiriInAppResponseMutation);
    v4[2](v4, v7);
    v8 = [(SUIBSiriInAppResponseMutation *)v7 bundleIdentifier];
    v9 = [v8 copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v9;
  }

  return v6;
}

- (SUIBSiriInAppResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBSiriInAppResponse::bundleIdentifier"];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SUIBSiriInAppResponse_initWithCoder___block_invoke;
  v9[3] = &unk_2784BFE98;
  v10 = v5;
  v6 = v5;
  v7 = [(SUIBSiriInAppResponse *)self initWithBuilder:v9];

  return v7;
}

@end