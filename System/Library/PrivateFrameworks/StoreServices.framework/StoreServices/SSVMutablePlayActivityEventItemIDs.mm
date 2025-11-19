@interface SSVMutablePlayActivityEventItemIDs
- (id)copyWithZone:(_NSZone *)a3;
- (void)setLyricsID:(id)a3;
@end

@implementation SSVMutablePlayActivityEventItemIDs

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SSVPlayActivityEventItemIDs *)self _copyWithClass:v4];
}

- (void)setLyricsID:(id)a3
{
  v4 = [a3 copy];
  lyricsID = self->super._lyricsID;
  self->super._lyricsID = v4;
}

@end