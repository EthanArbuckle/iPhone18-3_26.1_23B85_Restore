@interface SKUICommenter
- (SKUICommenter)initWithAuthor:(id)author;
@end

@implementation SKUICommenter

- (SKUICommenter)initWithAuthor:(id)author
{
  authorCopy = author;
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
    thumbnailImageURL = [authorCopy thumbnailImageURL];
    [(SKUIMediaSocialAuthor *)v13 setThumbnailImageURL:thumbnailImageURL];

    name = [authorCopy name];
    [(SKUIMediaSocialAuthor *)v13 setName:name];

    authorType = [authorCopy authorType];
    [(SKUIMediaSocialAuthor *)v13 setAuthorType:authorType];

    identifier = [authorCopy identifier];
    [(SKUIMediaSocialAuthor *)v13 setIdentifier:identifier];
  }

  return v13;
}

@end