@interface SUIBSiriResponse
- (SUIBSiriResponse)initWithBuilder:(id)builder;
- (SUIBSiriResponse)initWithCoder:(id)coder;
@end

@implementation SUIBSiriResponse

- (SUIBSiriResponse)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v11.receiver = self;
  v11.super_class = SUIBSiriResponse;
  v5 = [(SUIBSiriResponse *)&v11 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = objc_alloc_init(SUIBSiriResponseMutation);
    builderCopy[2](builderCopy, v7);
    inAppResponse = [(SUIBSiriResponseMutation *)v7 inAppResponse];
    inAppResponse = v6->_inAppResponse;
    v6->_inAppResponse = inAppResponse;
  }

  return v6;
}

- (SUIBSiriResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBSiriResponse::inAppResponse"];

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