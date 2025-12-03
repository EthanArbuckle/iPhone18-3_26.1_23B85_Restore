@interface PNPromoterFaceGroup
- (PNPromoterFaceGroup)initWithGroupIdentifier:(id)identifier andFaceIdentifiers:(id)identifiers;
@end

@implementation PNPromoterFaceGroup

- (PNPromoterFaceGroup)initWithGroupIdentifier:(id)identifier andFaceIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = PNPromoterFaceGroup;
  v9 = [(PNPromoterFaceGroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_groupIdentifier, identifier);
    objc_storeStrong(&v10->_faceIdentifiers, identifiers);
  }

  return v10;
}

@end