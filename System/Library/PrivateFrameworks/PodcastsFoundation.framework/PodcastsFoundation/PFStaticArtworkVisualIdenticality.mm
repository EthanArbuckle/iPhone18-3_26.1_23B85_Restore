@interface PFStaticArtworkVisualIdenticality
- (BOOL)isEqual:(id)a3;
- (PFStaticArtworkVisualIdenticality)initWithArtworkIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PFStaticArtworkVisualIdenticality

- (PFStaticArtworkVisualIdenticality)initWithArtworkIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PFStaticArtworkVisualIdenticality;
  v5 = [(PFStaticArtworkVisualIdenticality *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    artworkIdentifier = v5->_artworkIdentifier;
    v5->_artworkIdentifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_artworkIdentifier isEqualToString:v4->_artworkIdentifier];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PFStaticArtworkVisualIdenticality allocWithZone:a3];
  artworkIdentifier = self->_artworkIdentifier;

  return [(PFStaticArtworkVisualIdenticality *)v4 initWithArtworkIdentifier:artworkIdentifier];
}

@end