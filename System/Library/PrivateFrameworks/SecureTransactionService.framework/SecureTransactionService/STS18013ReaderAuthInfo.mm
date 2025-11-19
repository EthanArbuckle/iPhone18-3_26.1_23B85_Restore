@interface STS18013ReaderAuthInfo
- (STS18013ReaderAuthInfo)initWithIdentifier:(id)a3 organization:(id)a4 organizationUnit:(id)a5 iconData:(id)a6 iconURL:(id)a7 iconMediaType:(id)a8 privacyPolicyURL:(id)a9 merchantCategoryCode:(id)a10 certificateData:(id)a11 readerAnalyticsData:(id)a12;
@end

@implementation STS18013ReaderAuthInfo

- (STS18013ReaderAuthInfo)initWithIdentifier:(id)a3 organization:(id)a4 organizationUnit:(id)a5 iconData:(id)a6 iconURL:(id)a7 iconMediaType:(id)a8 privacyPolicyURL:(id)a9 merchantCategoryCode:(id)a10 certificateData:(id)a11 readerAnalyticsData:(id)a12
{
  v35 = a3;
  obj = a4;
  v34 = a4;
  v27 = a5;
  v33 = a5;
  v32 = a6;
  v28 = a7;
  v31 = a7;
  v29 = a8;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v36.receiver = self;
  v36.super_class = STS18013ReaderAuthInfo;
  v23 = [(STS18013ReaderAuthInfo *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_identifier, a3);
    objc_storeStrong(&v24->_organization, obj);
    objc_storeStrong(&v24->_organizationUnit, v27);
    objc_storeStrong(&v24->_iconData, a6);
    objc_storeStrong(&v24->_iconURL, v28);
    objc_storeStrong(&v24->_iconMediaType, v29);
    objc_storeStrong(&v24->_privacyPolicyURL, a9);
    objc_storeStrong(&v24->_merchantCategoryCode, a10);
    objc_storeStrong(&v24->_certificateData, a11);
    objc_storeStrong(&v24->_readerAnalyticsData, a12);
  }

  return v24;
}

@end