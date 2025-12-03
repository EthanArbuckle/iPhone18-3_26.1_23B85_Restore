@interface STS18013ReaderAuthInfo
- (STS18013ReaderAuthInfo)initWithIdentifier:(id)identifier organization:(id)organization organizationUnit:(id)unit iconData:(id)data iconURL:(id)l iconMediaType:(id)type privacyPolicyURL:(id)rL merchantCategoryCode:(id)self0 certificateData:(id)self1 readerAnalyticsData:(id)self2;
@end

@implementation STS18013ReaderAuthInfo

- (STS18013ReaderAuthInfo)initWithIdentifier:(id)identifier organization:(id)organization organizationUnit:(id)unit iconData:(id)data iconURL:(id)l iconMediaType:(id)type privacyPolicyURL:(id)rL merchantCategoryCode:(id)self0 certificateData:(id)self1 readerAnalyticsData:(id)self2
{
  identifierCopy = identifier;
  obj = organization;
  organizationCopy = organization;
  unitCopy = unit;
  unitCopy2 = unit;
  dataCopy = data;
  lCopy = l;
  lCopy2 = l;
  typeCopy = type;
  typeCopy2 = type;
  rLCopy = rL;
  codeCopy = code;
  certificateDataCopy = certificateData;
  analyticsDataCopy = analyticsData;
  v36.receiver = self;
  v36.super_class = STS18013ReaderAuthInfo;
  v23 = [(STS18013ReaderAuthInfo *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_identifier, identifier);
    objc_storeStrong(&v24->_organization, obj);
    objc_storeStrong(&v24->_organizationUnit, unitCopy);
    objc_storeStrong(&v24->_iconData, data);
    objc_storeStrong(&v24->_iconURL, lCopy);
    objc_storeStrong(&v24->_iconMediaType, typeCopy);
    objc_storeStrong(&v24->_privacyPolicyURL, rL);
    objc_storeStrong(&v24->_merchantCategoryCode, code);
    objc_storeStrong(&v24->_certificateData, certificateData);
    objc_storeStrong(&v24->_readerAnalyticsData, analyticsData);
  }

  return v24;
}

@end