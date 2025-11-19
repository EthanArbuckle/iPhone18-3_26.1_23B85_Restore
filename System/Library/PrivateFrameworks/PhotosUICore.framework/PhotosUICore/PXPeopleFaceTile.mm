@interface PXPeopleFaceTile
- (BOOL)isEqual:(id)a3;
- (BOOL)isUserDefined;
- (PXPeopleFaceTile)initWithFace:(id)a3 asset:(id)a4 person:(id)a5;
- (id)description;
@end

@implementation PXPeopleFaceTile

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PXPeopleFaceTile *)self person];
    v7 = [v5 person];
    if (v6 == v7 || [v6 isEqual:v7])
    {
      v8 = [(PXPeopleFaceTile *)self face];
      v9 = [v5 face];
      if (v8 == v9 || [v8 isEqual:v9])
      {
        v10 = [(PXPeopleFaceTile *)self asset];
        v11 = [v5 asset];
        if (v10 == v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = [v10 isEqual:v11];
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
  v2 = [(PXPeopleFaceTile *)self face];
  v3 = [v2 manual];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PXPeopleFaceTile *)self face];
  v5 = [v4 localIdentifier];
  v6 = [(PXPeopleFaceTile *)self person];
  v7 = [v6 name];
  v8 = [(PXPeopleFaceTile *)self person];
  v9 = [v8 localIdentifier];
  v10 = [(PXPeopleFaceTile *)self asset];
  v11 = [v10 localIdentifier];
  v12 = [v3 stringWithFormat:@"face:%@, person:%@(%@), asset:%@", v5, v7, v9, v11];

  return v12;
}

- (PXPeopleFaceTile)initWithFace:(id)a3 asset:(id)a4 person:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PXPeopleFaceTile;
  v12 = [(PXPeopleFaceTile *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_face, a3);
    objc_storeStrong(&v13->_asset, a4);
    objc_storeStrong(&v13->_person, a5);
  }

  return v13;
}

@end