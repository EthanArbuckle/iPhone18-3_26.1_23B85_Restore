@interface TICredentialCustomInfo
- (TICredentialCustomInfo)initWithCustomInfo:(id)info documentIdentifier:(id)identifier;
@end

@implementation TICredentialCustomInfo

- (TICredentialCustomInfo)initWithCustomInfo:(id)info documentIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = TICredentialCustomInfo;
  v9 = [(TICredentialCustomInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_customInfo, info);
    objc_storeStrong(&v10->_documentIdentifier, identifier);
  }

  return v10;
}

@end