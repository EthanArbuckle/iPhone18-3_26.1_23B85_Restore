@interface SSVMutableMediaContentTasteItem
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPlaylistGlobalID:(id)a3;
@end

@implementation SSVMutableMediaContentTasteItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SSVMediaContentTasteItem *)self _copyWithMediaContentTasteItemClass:v4];
}

- (void)setPlaylistGlobalID:(id)a3
{
  if (self->super._playlistGlobalID != a3)
  {
    v5 = [a3 copy];
    playlistGlobalID = self->super._playlistGlobalID;
    self->super._playlistGlobalID = v5;
  }
}

@end