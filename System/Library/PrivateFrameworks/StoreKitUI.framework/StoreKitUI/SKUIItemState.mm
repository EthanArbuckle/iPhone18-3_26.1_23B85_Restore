@interface SKUIItemState
- (BOOL)activeStateIsPreview;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)activeStateIsPreview;
@end

@implementation SKUIItemState

- (BOOL)activeStateIsPreview
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIItemState activeStateIsPreview];
  }

  if (([(SKUIItemState *)self state]& 3) != 0)
  {
    downloadContentFlags = [(SKUIItemState *)self downloadContentFlags];
  }

  else if (([(SKUIItemState *)self state]& 0x40) != 0)
  {
    downloadContentFlags = [(SKUIItemState *)self libraryContentFlags];
  }

  else
  {
    downloadContentFlags = 0;
  }

  return downloadContentFlags & 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUIItemState;
  v4 = [(SKUIItemState *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: ID: [%@ / %@], State: %ld, Download: [%@, %.2f, %ld], Library: [%ld, %ld]", v4, self->_itemIdentifier, self->_variantIdentifier, self->_state, self->_downloadPhase, self->_downloadProgress, self->_downloadContentFlags, self->_mediaCategory, self->_libraryContentFlags];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_downloadContentFlags;
  v6 = [(NSString *)self->_downloadPhase copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_downloadProgress;
  v8 = [(NSNumber *)self->_itemIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(SKUIStoreIdentifier *)self->_storeIdentifier copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  *(v5 + 56) = self->_libraryContentFlags;
  *(v5 + 64) = self->_mediaCategory;
  *(v5 + 72) = self->_state;
  v12 = [(NSString *)self->_variantIdentifier copyWithZone:zone];
  v13 = *(v5 + 80);
  *(v5 + 80) = v12;

  v14 = [(NSArray *)self->_downloadIdentifiers copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  return v5;
}

- (void)activeStateIsPreview
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIItemState activeStateIsPreview]";
}

@end