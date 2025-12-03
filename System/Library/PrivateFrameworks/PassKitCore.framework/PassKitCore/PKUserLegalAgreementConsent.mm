@interface PKUserLegalAgreementConsent
- (PKUserLegalAgreementConsent)initWithCoder:(id)coder;
- (PKUserLegalAgreementConsent)initWithIdentifier:(id)identifier passUniqueID:(id)d type:(unint64_t)type name:(id)name version:(id)version agreementUrl:(id)url;
- (id)_initForDatabase;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKUserLegalAgreementConsent

- (id)_initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKUserLegalAgreementConsent;
  return [(PKUserLegalAgreementConsent *)&v3 init];
}

- (PKUserLegalAgreementConsent)initWithIdentifier:(id)identifier passUniqueID:(id)d type:(unint64_t)type name:(id)name version:(id)version agreementUrl:(id)url
{
  identifierCopy = identifier;
  dCopy = d;
  nameCopy = name;
  versionCopy = version;
  urlCopy = url;
  v23.receiver = self;
  v23.super_class = PKUserLegalAgreementConsent;
  v18 = [(PKUserLegalAgreementConsent *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_passUniqueID, d);
    v19->_type = type;
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_version, version);
    objc_storeStrong(&v19->_agreementUrl, url);
  }

  return v19;
}

- (PKUserLegalAgreementConsent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKUserLegalAgreementConsent;
  v5 = [(PKUserLegalAgreementConsent *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueID"];
    passUniqueID = v5->_passUniqueID;
    v5->_passUniqueID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKUserLegalAgreementTypeFromString(v10);

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"agreementUrl"];
    agreementUrl = v5->_agreementUrl;
    v5->_agreementUrl = v15;

    v5->_userConsented = [coderCopy decodeBoolForKey:@"userConsented"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_passUniqueID forKey:@"passUniqueID"];
  if (self->_type == 1)
  {
    v5 = @"provisioningTermsCondition";
  }

  else
  {
    v5 = @"unknown";
  }

  [coderCopy encodeObject:v5 forKey:@"type"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_version forKey:@"version"];
  [coderCopy encodeObject:self->_agreementUrl forKey:@"agreementUrl"];
  [coderCopy encodeBool:self->_userConsented forKey:@"userConsented"];
}

@end