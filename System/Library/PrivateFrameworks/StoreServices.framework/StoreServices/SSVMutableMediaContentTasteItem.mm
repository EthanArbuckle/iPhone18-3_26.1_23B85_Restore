@interface SSVMutableMediaContentTasteItem
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPlaylistGlobalID:(id)d;
@end

@implementation SSVMutableMediaContentTasteItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SSVMediaContentTasteItem *)self _copyWithMediaContentTasteItemClass:v4];
}

- (void)setPlaylistGlobalID:(id)d
{
  if (self->super._playlistGlobalID != d)
  {
    v5 = [d copy];
    playlistGlobalID = self->super._playlistGlobalID;
    self->super._playlistGlobalID = v5;
  }
}

@end