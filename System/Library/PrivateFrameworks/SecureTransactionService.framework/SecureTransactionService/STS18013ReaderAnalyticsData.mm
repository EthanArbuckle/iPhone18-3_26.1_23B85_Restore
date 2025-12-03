@interface STS18013ReaderAnalyticsData
- (STS18013ReaderAnalyticsData)initWithTrusted:(BOOL)trusted untrustedIdentifier:(id)identifier untrustedOrganization:(id)organization untrustedIssuerIdentifier:(id)issuerIdentifier untrustedIssuerOrganization:(id)issuerOrganization;
- (id)description;
@end

@implementation STS18013ReaderAnalyticsData

- (STS18013ReaderAnalyticsData)initWithTrusted:(BOOL)trusted untrustedIdentifier:(id)identifier untrustedOrganization:(id)organization untrustedIssuerIdentifier:(id)issuerIdentifier untrustedIssuerOrganization:(id)issuerOrganization
{
  identifierCopy = identifier;
  organizationCopy = organization;
  issuerIdentifierCopy = issuerIdentifier;
  issuerOrganizationCopy = issuerOrganization;
  v20.receiver = self;
  v20.super_class = STS18013ReaderAnalyticsData;
  v17 = [(STS18013ReaderAnalyticsData *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_trusted = trusted;
    objc_storeStrong(&v17->_untrustedIdentifier, identifier);
    objc_storeStrong(&v18->_untrustedOrganization, organization);
    objc_storeStrong(&v18->_untrustedIssuerIdentifier, issuerIdentifier);
    objc_storeStrong(&v18->_untrustedIssuerOrganization, issuerOrganization);
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

  untrustedIdentifier = [(STS18013ReaderAnalyticsData *)self untrustedIdentifier];
  untrustedOrganization = [(STS18013ReaderAnalyticsData *)self untrustedOrganization];
  untrustedIssuerIdentifier = [(STS18013ReaderAnalyticsData *)self untrustedIssuerIdentifier];
  untrustedIssuerOrganization = [(STS18013ReaderAnalyticsData *)self untrustedIssuerOrganization];
  v11 = [v3 stringWithFormat:@"<%@ trusted = %@; untrustedIdentifier = %@; untrustedOrganization = %@; untrustedIssuerIdentifier = %@; untrustedIssuerOrganization = %@>", v5, v6, untrustedIdentifier, untrustedOrganization, untrustedIssuerIdentifier, untrustedIssuerOrganization];;

  return v11;
}

@end