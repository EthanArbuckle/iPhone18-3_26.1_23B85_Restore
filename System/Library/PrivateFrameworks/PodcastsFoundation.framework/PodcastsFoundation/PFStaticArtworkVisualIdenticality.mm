@interface PFStaticArtworkVisualIdenticality
- (BOOL)isEqual:(id)equal;
- (PFStaticArtworkVisualIdenticality)initWithArtworkIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PFStaticArtworkVisualIdenticality

- (PFStaticArtworkVisualIdenticality)initWithArtworkIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PFStaticArtworkVisualIdenticality;
  v5 = [(PFStaticArtworkVisualIdenticality *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    artworkIdentifier = v5->_artworkIdentifier;
    v5->_artworkIdentifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_artworkIdentifier isEqualToString:equalCopy->_artworkIdentifier];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PFStaticArtworkVisualIdenticality allocWithZone:zone];
  artworkIdentifier = self->_artworkIdentifier;

  return [(PFStaticArtworkVisualIdenticality *)v4 initWithArtworkIdentifier:artworkIdentifier];
}

@end