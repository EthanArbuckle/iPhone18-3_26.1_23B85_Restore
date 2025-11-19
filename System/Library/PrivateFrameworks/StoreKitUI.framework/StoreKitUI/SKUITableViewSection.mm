@interface SKUITableViewSection
- (SKUITableViewSectionDelegate)delegate;
- (int64_t)numberOfRowsInSection;
- (void)numberOfRowsInSection;
@end

@implementation SKUITableViewSection

- (int64_t)numberOfRowsInSection
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITableViewSection numberOfRowsInSection];
  }

  return 0;
}

- (SKUITableViewSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)numberOfRowsInSection
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITableViewSection numberOfRowsInSection]";
}

@end