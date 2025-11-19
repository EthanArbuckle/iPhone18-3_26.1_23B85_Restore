@interface PKUserLegalAgreementConsent
- (PKUserLegalAgreementConsent)initWithCoder:(id)a3;
- (PKUserLegalAgreementConsent)initWithIdentifier:(id)a3 passUniqueID:(id)a4 type:(unint64_t)a5 name:(id)a6 version:(id)a7 agreementUrl:(id)a8;
- (id)_initForDatabase;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKUserLegalAgreementConsent

- (id)_initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKUserLegalAgreementConsent;
  return [(PKUserLegalAgreementConsent *)&v3 init];
}

- (PKUserLegalAgreementConsent)initWithIdentifier:(id)a3 passUniqueID:(id)a4 type:(unint64_t)a5 name:(id)a6 version:(id)a7 agreementUrl:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = PKUserLegalAgreementConsent;
  v18 = [(PKUserLegalAgreementConsent *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(&v19->_passUniqueID, a4);
    v19->_type = a5;
    objc_storeStrong(&v19->_name, a6);
    objc_storeStrong(&v19->_version, a7);
    objc_storeStrong(&v19->_agreementUrl, a8);
  }

  return v19;
}

- (PKUserLegalAgreementConsent)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKUserLegalAgreementConsent;
  v5 = [(PKUserLegalAgreementConsent *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKUserLegalAgreementTypeFromString(v10);

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"agreementUrl"];
    agreementUrl = v5->_agreementUrl;
    v5->_agreementUrl = v15;

    v5->_userConsented = [v4 decodeBoolForKey:@"userConsented"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  [v6 encodeObject:self->_passUniqueID forKey:@"passUniqueID"];
  if (self->_type == 1)
  {
    v5 = @"provisioningTermsCondition";
  }

  else
  {
    v5 = @"unknown";
  }

  [v6 encodeObject:v5 forKey:@"type"];
  [v6 encodeObject:self->_name forKey:@"name"];
  [v6 encodeObject:self->_version forKey:@"version"];
  [v6 encodeObject:self->_agreementUrl forKey:@"agreementUrl"];
  [v6 encodeBool:self->_userConsented forKey:@"userConsented"];
}

@end