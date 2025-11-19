@interface SUIBSiriResponse
- (SUIBSiriResponse)initWithBuilder:(id)a3;
- (SUIBSiriResponse)initWithCoder:(id)a3;
@end

@implementation SUIBSiriResponse

- (SUIBSiriResponse)initWithBuilder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SUIBSiriResponse;
  v5 = [(SUIBSiriResponse *)&v11 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(SUIBSiriResponseMutation);
    v4[2](v4, v7);
    v8 = [(SUIBSiriResponseMutation *)v7 inAppResponse];
    inAppResponse = v6->_inAppResponse;
    v6->_inAppResponse = v8;
  }

  return v6;
}

- (SUIBSiriResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBSiriResponse::inAppResponse"];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__SUIBSiriResponse_initWithCoder___block_invoke;
  v9[3] = &unk_2784BFEE0;
  v10 = v5;
  v6 = v5;
  v7 = [(SUIBSiriResponse *)self initWithBuilder:v9];

  return v7;
}

@end