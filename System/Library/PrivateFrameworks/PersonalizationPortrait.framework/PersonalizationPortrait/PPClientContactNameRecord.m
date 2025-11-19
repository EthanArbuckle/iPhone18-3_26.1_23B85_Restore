@interface PPClientContactNameRecord
- (PPClientContactNameRecord)initWithIdentifier:(id)a3 score:(double)a4 source:(unsigned __int8)a5 sourceIdentifier:(id)a6 changeType:(unsigned __int8)a7 firstName:(id)a8 phoneticFirstName:(id)a9 middleName:(id)a10 phoneticMiddleName:(id)a11 lastName:(id)a12 phoneticLastName:(id)a13 organizationName:(id)a14 jobTitle:(id)a15 nickname:(id)a16 relatedNames:(id)a17 streetNames:(id)a18 cityNames:(id)a19;
@end

@implementation PPClientContactNameRecord

- (PPClientContactNameRecord)initWithIdentifier:(id)a3 score:(double)a4 source:(unsigned __int8)a5 sourceIdentifier:(id)a6 changeType:(unsigned __int8)a7 firstName:(id)a8 phoneticFirstName:(id)a9 middleName:(id)a10 phoneticMiddleName:(id)a11 lastName:(id)a12 phoneticLastName:(id)a13 organizationName:(id)a14 jobTitle:(id)a15 nickname:(id)a16 relatedNames:(id)a17 streetNames:(id)a18 cityNames:(id)a19
{
  v45 = a3;
  v33 = a6;
  v44 = a6;
  v43 = a8;
  v35 = a9;
  v42 = a9;
  v41 = a10;
  v40 = a11;
  v39 = a12;
  v38 = a13;
  v37 = a14;
  v23 = a15;
  v24 = a16;
  v25 = a17;
  v26 = a18;
  v27 = a19;
  v46.receiver = self;
  v46.super_class = PPClientContactNameRecord;
  v28 = [(PPContactNameRecord *)&v46 init_];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(v28 + 1, a3);
    v29->_score = a4;
    v29->_source = a5;
    objc_storeStrong(&v29->_sourceIdentifier, v33);
    v29->_changeType = a7;
    objc_storeStrong(&v29->_firstName, a8);
    objc_storeStrong(&v29->_phoneticFirstName, v35);
    objc_storeStrong(&v29->_middleName, a10);
    objc_storeStrong(&v29->_phoneticMiddleName, a11);
    objc_storeStrong(&v29->_lastName, a12);
    objc_storeStrong(&v29->_phoneticLastName, a13);
    objc_storeStrong(&v29->_organizationName, a14);
    objc_storeStrong(&v29->_jobTitle, a15);
    objc_storeStrong(&v29->_nickname, a16);
    objc_storeStrong(&v29->_relatedNames, a17);
    objc_storeStrong(&v29->_streetNames, a18);
    objc_storeStrong(&v29->_cityNames, a19);
  }

  return v29;
}

@end