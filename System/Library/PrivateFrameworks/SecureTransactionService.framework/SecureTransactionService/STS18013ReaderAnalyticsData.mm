@interface STS18013ReaderAnalyticsData
- (STS18013ReaderAnalyticsData)initWithTrusted:(BOOL)a3 untrustedIdentifier:(id)a4 untrustedOrganization:(id)a5 untrustedIssuerIdentifier:(id)a6 untrustedIssuerOrganization:(id)a7;
- (id)description;
@end

@implementation STS18013ReaderAnalyticsData

- (STS18013ReaderAnalyticsData)initWithTrusted:(BOOL)a3 untrustedIdentifier:(id)a4 untrustedOrganization:(id)a5 untrustedIssuerIdentifier:(id)a6 untrustedIssuerOrganization:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = STS18013ReaderAnalyticsData;
  v17 = [(STS18013ReaderAnalyticsData *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_trusted = a3;
    objc_storeStrong(&v17->_untrustedIdentifier, a4);
    objc_storeStrong(&v18->_untrustedOrganization, a5);
    objc_storeStrong(&v18->_untrustedIssuerIdentifier, a6);
    objc_storeStrong(&v18->_untrustedIssuerOrganization, a7);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(STS18013ReaderAnalyticsData *)self isTrusted])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(STS18013ReaderAnalyticsData *)self untrustedIdentifier];
  v8 = [(STS18013ReaderAnalyticsData *)self untrustedOrganization];
  v9 = [(STS18013ReaderAnalyticsData *)self untrustedIssuerIdentifier];
  v10 = [(STS18013ReaderAnalyticsData *)self untrustedIssuerOrganization];
  v11 = [v3 stringWithFormat:@"<%@ trusted = %@; untrustedIdentifier = %@; untrustedOrganization = %@; untrustedIssuerIdentifier = %@; untrustedIssuerOrganization = %@>", v5, v6, v7, v8, v9, v10];;

  return v11;
}

@end