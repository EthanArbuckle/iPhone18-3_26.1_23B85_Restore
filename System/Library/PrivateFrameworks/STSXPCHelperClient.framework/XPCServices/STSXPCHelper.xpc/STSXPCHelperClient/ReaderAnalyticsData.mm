@interface ReaderAnalyticsData
- (ReaderAnalyticsData)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ReaderAnalyticsData

- (ReaderAnalyticsData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ReaderAnalyticsData;
  v5 = [(ReaderAnalyticsData *)&v15 init];
  if (v5)
  {
    v5->_trusted = [coderCopy decodeBoolForKey:@"trusted"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"untrustedIdentifier"];
    untrustedIdentifier = v5->_untrustedIdentifier;
    v5->_untrustedIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"untrustedOrganization"];
    untrustedOrganization = v5->_untrustedOrganization;
    v5->_untrustedOrganization = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"untrustedIssuerIdentifier"];
    untrustedIssuerIdentifier = v5->_untrustedIssuerIdentifier;
    v5->_untrustedIssuerIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"untrustedIssuerOrganization"];
    untrustedIssuerOrganization = v5->_untrustedIssuerOrganization;
    v5->_untrustedIssuerOrganization = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  trusted = self->_trusted;
  coderCopy = coder;
  [coderCopy encodeBool:trusted forKey:@"trusted"];
  [coderCopy encodeObject:self->_untrustedIdentifier forKey:@"untrustedIdentifier"];
  [coderCopy encodeObject:self->_untrustedOrganization forKey:@"untrustedOrganization"];
  [coderCopy encodeObject:self->_untrustedIssuerIdentifier forKey:@"untrustedIssuerIdentifier"];
  [coderCopy encodeObject:self->_untrustedIssuerOrganization forKey:@"untrustedIssuerOrganization"];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = @"NO";
  if (self)
  {
    if (self->_trusted)
    {
      v5 = @"YES";
    }

    v6 = self->_untrustedIdentifier;
    v7 = self->_untrustedOrganization;
    v8 = self->_untrustedIssuerIdentifier;
    untrustedIssuerOrganization = self->_untrustedIssuerOrganization;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = 0;
    untrustedIssuerOrganization = 0;
  }

  untrustedIssuerOrganization = [NSString stringWithFormat:@"<%@ trusted = %@; untrustedIdentifier = %@; untrustedOrganization = %@; untrustedIssuerIdentifier = %@; untrustedIssuerOrganization = %@>", v4, v5, v6, v7, v8, untrustedIssuerOrganization];;

  return untrustedIssuerOrganization;
}

@end