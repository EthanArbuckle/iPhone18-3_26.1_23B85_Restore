@interface SKUIProductPage
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SKUIProductPage

- (id)copyWithZone:(_NSZone *)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPage copyWithZone:];
  }

  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setDefaultPageFragment:self->_defaultPageFragment];
  [v5 setItem:self->_item];
  [v5 setITMLData:self->_itmlData];
  [v5 setITMLResponse:self->_itmlResponse];
  [v5 setMetricsConfiguration:self->_metricsConfiguration];
  [v5 setMetricsPageDescription:self->_metricsPageDescription];
  [v5 setPageURL:self->_pageURL];
  [v5 setProductInformation:self->_productInformation];
  [v5 setRelatedContentSwooshes:self->_relatedContentSwooshes];
  [v5 setReviewConfiguration:self->_reviewConfiguration];
  [v5 setUber:self->_uber];
  return v5;
}

- (void)copyWithZone:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPage copyWithZone:]";
}

@end