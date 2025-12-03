@interface PXPeopleFaceTile
- (BOOL)isEqual:(id)equal;
- (BOOL)isUserDefined;
- (PXPeopleFaceTile)initWithFace:(id)face asset:(id)asset person:(id)person;
- (id)description;
@end

@implementation PXPeopleFaceTile

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    person = [(PXPeopleFaceTile *)self person];
    person2 = [v5 person];
    if (person == person2 || [person isEqual:person2])
    {
      face = [(PXPeopleFaceTile *)self face];
      face2 = [v5 face];
      if (face == face2 || [face isEqual:face2])
      {
        asset = [(PXPeopleFaceTile *)self asset];
        asset2 = [v5 asset];
        if (asset == asset2)
        {
          v12 = 1;
        }

        else
        {
          v12 = [asset isEqual:asset2];
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isUserDefined
{
  face = [(PXPeopleFaceTile *)self face];
  manual = [face manual];

  return manual;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  face = [(PXPeopleFaceTile *)self face];
  localIdentifier = [face localIdentifier];
  person = [(PXPeopleFaceTile *)self person];
  name = [person name];
  person2 = [(PXPeopleFaceTile *)self person];
  localIdentifier2 = [person2 localIdentifier];
  asset = [(PXPeopleFaceTile *)self asset];
  localIdentifier3 = [asset localIdentifier];
  v12 = [v3 stringWithFormat:@"face:%@, person:%@(%@), asset:%@", localIdentifier, name, localIdentifier2, localIdentifier3];

  return v12;
}

- (PXPeopleFaceTile)initWithFace:(id)face asset:(id)asset person:(id)person
{
  faceCopy = face;
  assetCopy = asset;
  personCopy = person;
  v15.receiver = self;
  v15.super_class = PXPeopleFaceTile;
  v12 = [(PXPeopleFaceTile *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_face, face);
    objc_storeStrong(&v13->_asset, asset);
    objc_storeStrong(&v13->_person, person);
  }

  return v13;
}

@end