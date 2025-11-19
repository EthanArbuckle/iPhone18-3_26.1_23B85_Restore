@interface ReaderAnalyticsData
- (ReaderAnalyticsData)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ReaderAnalyticsData

- (ReaderAnalyticsData)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ReaderAnalyticsData;
  v5 = [(ReaderAnalyticsData *)&v15 init];
  if (v5)
  {
    v5->_trusted = [v4 decodeBoolForKey:@"trusted"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"untrustedIdentifier"];
    untrustedIdentifier = v5->_untrustedIdentifier;
    v5->_untrustedIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"untrustedOrganization"];
    untrustedOrganization = v5->_untrustedOrganization;
    v5->_untrustedOrganization = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"untrustedIssuerIdentifier"];
    untrustedIssuerIdentifier = v5->_untrustedIssuerIdentifier;
    v5->_untrustedIssuerIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"untrustedIssuerOrganization"];
    untrustedIssuerOrganization = v5->_untrustedIssuerOrganization;
    v5->_untrustedIssuerOrganization = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  trusted = self->_trusted;
  v5 = a3;
  [v5 encodeBool:trusted forKey:@"trusted"];
  [v5 encodeObject:self->_untrustedIdentifier forKey:@"untrustedIdentifier"];
  [v5 encodeObject:self->_untrustedOrganization forKey:@"untrustedOrganization"];
  [v5 encodeObject:self->_untrustedIssuerIdentifier forKey:@"untrustedIssuerIdentifier"];
  [v5 encodeObject:self->_untrustedIssuerOrganization forKey:@"untrustedIssuerOrganization"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = @"NO";
  if (self)
  {
    if (self->_trusted)
    {
      v6 = @"YES";
    }

    v7 = self->_untrustedIdentifier;
    v8 = self->_untrustedOrganization;
    v9 = self->_untrustedIssuerIdentifier;
    untrustedIssuerOrganization = self->_untrustedIssuerOrganization;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
    untrustedIssuerOrganization = 0;
  }

  v11 = [v3 stringWithFormat:@"<%@ trusted = %@; untrustedIdentifier = %@; untrustedOrganization = %@; untrustedIssuerIdentifier = %@; untrustedIssuerOrganization = %@>", v5, v6, v7, v8, v9, untrustedIssuerOrganization];;

  return v11;
}

@end