@interface SKUIMediaPlayerItemStatus
- (SKUIMediaPlayerItemStatus)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)init;
@end

@implementation SKUIMediaPlayerItemStatus

- (SKUIMediaPlayerItemStatus)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMediaPlayerItemStatus init];
  }

  v4.receiver = self;
  v4.super_class = SKUIMediaPlayerItemStatus;
  return [(SKUIMediaPlayerItemStatus *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 40) = self->_currentTime;
  *(v5 + 40) = self->_duration;
  v6 = [(NSString *)self->_itemIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 56) = self->_itemType;
  *(v5 + 64) = self->_playState;
  v8 = [(NSString *)self->_storeID copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_storeAlbumID copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUIMediaPlayerItemStatus;
  v4 = [(SKUIMediaPlayerItemStatus *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [duration: %f  currentTime: %f state:%li storeId:%@ storeAlbumId:%@ itemIdentifier:%@]", v4, *&self->_duration, *&self->_currentTime, self->_playState, self->_storeID, self->_storeAlbumID, self->_itemIdentifier];

  return v5;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMediaPlayerItemStatus init]";
}

@end