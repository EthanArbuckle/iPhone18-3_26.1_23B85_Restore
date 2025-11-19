@interface SPECRGroundedPerson
- (SPECRGroundedPerson)initWithName:(id)a3 relationLabel:(id)a4 ecrToken:(id)a5 queryRawToken:(id)a6;
@end

@implementation SPECRGroundedPerson

- (SPECRGroundedPerson)initWithName:(id)a3 relationLabel:(id)a4 ecrToken:(id)a5 queryRawToken:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SPECRGroundedPerson;
  v15 = [(SPECRGroundedPerson *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fullName, a3);
    objc_storeStrong(&v16->_relationLabel, a4);
    objc_storeStrong(&v16->_ecrToken, a5);
    objc_storeStrong(&v16->_queryRawToken, a6);
  }

  return v16;
}

@end