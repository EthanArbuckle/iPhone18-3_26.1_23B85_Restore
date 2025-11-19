@interface TICredentialCustomInfo
- (TICredentialCustomInfo)initWithCustomInfo:(id)a3 documentIdentifier:(id)a4;
@end

@implementation TICredentialCustomInfo

- (TICredentialCustomInfo)initWithCustomInfo:(id)a3 documentIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TICredentialCustomInfo;
  v9 = [(TICredentialCustomInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_customInfo, a3);
    objc_storeStrong(&v10->_documentIdentifier, a4);
  }

  return v10;
}

@end