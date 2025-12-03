@interface SKUIJSMediaSocialAuthor
- (SKUIJSMediaSocialAuthor)initWithSKUIMediaSocialAuthor:(id)author;
@end

@implementation SKUIJSMediaSocialAuthor

- (SKUIJSMediaSocialAuthor)initWithSKUIMediaSocialAuthor:(id)author
{
  authorCopy = author;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIJSMediaSocialAuthor initWithSKUIMediaSocialAuthor:];
  }

  v9.receiver = self;
  v9.super_class = SKUIJSMediaSocialAuthor;
  v6 = [(SKUIJSMediaSocialAuthor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaSocialAuthor, author);
  }

  return v7;
}

- (void)initWithSKUIMediaSocialAuthor:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSMediaSocialAuthor initWithSKUIMediaSocialAuthor:]";
}

@end