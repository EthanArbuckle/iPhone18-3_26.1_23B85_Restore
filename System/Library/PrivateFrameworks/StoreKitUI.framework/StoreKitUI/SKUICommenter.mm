@interface SKUICommenter
- (SKUICommenter)initWithAuthor:(id)a3;
@end

@implementation SKUICommenter

- (SKUICommenter)initWithAuthor:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICommenter *)v5 initWithAuthor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v19.receiver = self;
  v19.super_class = SKUICommenter;
  v13 = [(SKUICommenter *)&v19 init];
  if (v13)
  {
    v14 = [v4 thumbnailImageURL];
    [(SKUIMediaSocialAuthor *)v13 setThumbnailImageURL:v14];

    v15 = [v4 name];
    [(SKUIMediaSocialAuthor *)v13 setName:v15];

    v16 = [v4 authorType];
    [(SKUIMediaSocialAuthor *)v13 setAuthorType:v16];

    v17 = [v4 identifier];
    [(SKUIMediaSocialAuthor *)v13 setIdentifier:v17];
  }

  return v13;
}

@end