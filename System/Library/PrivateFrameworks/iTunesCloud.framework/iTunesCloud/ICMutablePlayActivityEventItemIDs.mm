@interface ICMutablePlayActivityEventItemIDs
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLyricsID:(id)d;
@end

@implementation ICMutablePlayActivityEventItemIDs

- (void)setLyricsID:(id)d
{
  v4 = [d copy];
  lyricsID = self->super._lyricsID;
  self->super._lyricsID = v4;

  MEMORY[0x1EEE66BB8](v4, lyricsID);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(ICPlayActivityEventItemIDs *)self _copyWithClass:v4];
}

@end