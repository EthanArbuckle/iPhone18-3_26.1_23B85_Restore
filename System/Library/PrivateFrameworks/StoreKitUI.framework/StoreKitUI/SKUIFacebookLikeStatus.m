@interface SKUIFacebookLikeStatus
- (SKUIFacebookLikeStatus)initWithURL:(id)a3 likeStatusDictionary:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SKUIFacebookLikeStatus

- (SKUIFacebookLikeStatus)initWithURL:(id)a3 likeStatusDictionary:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFacebookLikeStatus initWithURL:likeStatusDictionary:];
  }

  v30.receiver = self;
  v30.super_class = SKUIFacebookLikeStatus;
  v8 = [(SKUIFacebookLikeStatus *)&v30 init];
  if (v8)
  {
    v9 = SKUISocialFramework();
    v10 = [v7 objectForKey:{*SKUIWeakLinkedSymbolForString("SLFacebookLikeInfoMeKey", v9)}];
    if (objc_opt_respondsToSelector())
    {
      v8->_userLiked = [v10 BOOLValue];
    }

    v11 = SKUISocialFramework();
    v12 = [v7 objectForKey:{*SKUIWeakLinkedSymbolForString("SLFacebookLikeInfoFriendsKey", v11)}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v6;
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          v18 = 0;
          do
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v26 + 1) + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 addObject:v19];
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v16);
      }

      v20 = [v13 copy];
      friends = v8->_friends;
      v8->_friends = v20;

      v6 = v25;
    }

    v22 = [v6 copy];
    url = v8->_url;
    v8->_url = v22;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSArray *)self->_friends copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSURL *)self->_url copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 24) = self->_userLiked;
  return v5;
}

- (void)initWithURL:likeStatusDictionary:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFacebookLikeStatus initWithURL:likeStatusDictionary:]";
}

@end