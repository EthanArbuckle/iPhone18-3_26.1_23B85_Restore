@interface ICMutablePlayActivityEventItemIDs
- (id)copyWithZone:(_NSZone *)a3;
- (void)setLyricsID:(id)a3;
@end

@implementation ICMutablePlayActivityEventItemIDs

- (void)setLyricsID:(id)a3
{
  v4 = [a3 copy];
  lyricsID = self->super._lyricsID;
  self->super._lyricsID = v4;

  MEMORY[0x1EEE66BB8](v4, lyricsID);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(ICPlayActivityEventItemIDs *)self _copyWithClass:v4];
}

@end