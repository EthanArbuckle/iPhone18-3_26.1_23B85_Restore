@interface SSVMutablePlayActivityEventItemIDs
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLyricsID:(id)d;
@end

@implementation SSVMutablePlayActivityEventItemIDs

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SSVPlayActivityEventItemIDs *)self _copyWithClass:v4];
}

- (void)setLyricsID:(id)d
{
  v4 = [d copy];
  lyricsID = self->super._lyricsID;
  self->super._lyricsID = v4;
}

@end