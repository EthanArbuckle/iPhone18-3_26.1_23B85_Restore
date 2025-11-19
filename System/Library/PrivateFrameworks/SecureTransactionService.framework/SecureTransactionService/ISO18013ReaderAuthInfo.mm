@interface ISO18013ReaderAuthInfo
- (ISO18013ReaderAuthInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISO18013ReaderAuthInfo

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_organization forKey:@"organization"];
  [v5 encodeObject:self->_organizationUnit forKey:@"organizationUnit"];
  [v5 encodeObject:self->_iconData forKey:@"iconData"];
  [v5 encodeObject:self->_iconURL forKey:@"iconURL"];
  [v5 encodeObject:self->_iconMediaType forKey:@"iconMediaType"];
  [v5 encodeObject:self->_privacyPolicyURL forKey:@"privacyPolicyURL"];
  [v5 encodeObject:self->_merchantCategoryCode forKey:@"merchantCategoryCode"];
  [v5 encodeObject:self->_certificateData forKey:@"certificateData"];
  [v5 encodeObject:self->_readerAnalyticsData forKey:@"readerAnalytics"];
}

- (ISO18013ReaderAuthInfo)initWithCoder:(id)a3
{
  if (self)
  {
    v4 = a3;
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = self->_identifier;
    self->_identifier = v5;

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"organization"];
    organization = self->_organization;
    self->_organization = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"organizationUnit"];
    organizationUnit = self->_organizationUnit;
    self->_organizationUnit = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
    iconData = self->_iconData;
    self->_iconData = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconURL"];
    iconURL = self->_iconURL;
    self->_iconURL = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconMediaType"];
    iconMediaType = self->_iconMediaType;
    self->_iconMediaType = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyURL"];
    privacyPolicyURL = self->_privacyPolicyURL;
    self->_privacyPolicyURL = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantCategoryCode"];
    merchantCategoryCode = self->_merchantCategoryCode;
    self->_merchantCategoryCode = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"certificateData"];
    certificateData = self->_certificateData;
    self->_certificateData = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerAnalytics"];

    readerAnalyticsData = self->_readerAnalyticsData;
    self->_readerAnalyticsData = v23;
  }

  return self;
}

@end