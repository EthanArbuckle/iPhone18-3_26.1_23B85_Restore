@interface ISO18013ReaderAuthInfo
- (ISO18013ReaderAuthInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISO18013ReaderAuthInfo

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_organization forKey:@"organization"];
  [coderCopy encodeObject:self->_organizationUnit forKey:@"organizationUnit"];
  [coderCopy encodeObject:self->_iconData forKey:@"iconData"];
  [coderCopy encodeObject:self->_iconURL forKey:@"iconURL"];
  [coderCopy encodeObject:self->_iconMediaType forKey:@"iconMediaType"];
  [coderCopy encodeObject:self->_privacyPolicyURL forKey:@"privacyPolicyURL"];
  [coderCopy encodeObject:self->_merchantCategoryCode forKey:@"merchantCategoryCode"];
  [coderCopy encodeObject:self->_certificateData forKey:@"certificateData"];
  [coderCopy encodeObject:self->_readerAnalyticsData forKey:@"readerAnalytics"];
}

- (ISO18013ReaderAuthInfo)initWithCoder:(id)coder
{
  if (self)
  {
    coderCopy = coder;
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = self->_identifier;
    self->_identifier = v5;

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organization"];
    organization = self->_organization;
    self->_organization = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizationUnit"];
    organizationUnit = self->_organizationUnit;
    self->_organizationUnit = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconData"];
    iconData = self->_iconData;
    self->_iconData = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconURL"];
    iconURL = self->_iconURL;
    self->_iconURL = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconMediaType"];
    iconMediaType = self->_iconMediaType;
    self->_iconMediaType = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyURL"];
    privacyPolicyURL = self->_privacyPolicyURL;
    self->_privacyPolicyURL = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantCategoryCode"];
    merchantCategoryCode = self->_merchantCategoryCode;
    self->_merchantCategoryCode = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"certificateData"];
    certificateData = self->_certificateData;
    self->_certificateData = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerAnalytics"];

    readerAnalyticsData = self->_readerAnalyticsData;
    self->_readerAnalyticsData = v23;
  }

  return self;
}

@end