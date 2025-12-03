@interface SPECRGroundedPerson
- (SPECRGroundedPerson)initWithName:(id)name relationLabel:(id)label ecrToken:(id)token queryRawToken:(id)rawToken;
@end

@implementation SPECRGroundedPerson

- (SPECRGroundedPerson)initWithName:(id)name relationLabel:(id)label ecrToken:(id)token queryRawToken:(id)rawToken
{
  nameCopy = name;
  labelCopy = label;
  tokenCopy = token;
  rawTokenCopy = rawToken;
  v18.receiver = self;
  v18.super_class = SPECRGroundedPerson;
  v15 = [(SPECRGroundedPerson *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fullName, name);
    objc_storeStrong(&v16->_relationLabel, label);
    objc_storeStrong(&v16->_ecrToken, token);
    objc_storeStrong(&v16->_queryRawToken, rawToken);
  }

  return v16;
}

@end