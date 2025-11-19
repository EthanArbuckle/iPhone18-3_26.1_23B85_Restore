@interface SKUIApplicationLicensePage
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SKUIApplicationLicensePage

- (id)copyWithZone:(_NSZone *)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIApplicationLicensePage copyWithZone:];
  }

  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setLicenseAgreementHTML:self->_licenseAgreementHTML];
  [v5 setTitle:self->_title];
  return v5;
}

- (void)copyWithZone:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIApplicationLicensePage copyWithZone:]";
}

@end