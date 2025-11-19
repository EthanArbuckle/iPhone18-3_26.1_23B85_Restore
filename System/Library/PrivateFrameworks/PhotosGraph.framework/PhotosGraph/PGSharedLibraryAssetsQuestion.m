@interface PGSharedLibraryAssetsQuestion
- (BOOL)isEquivalentToPersistedQuestion:(id)a3;
- (BOOL)isEquivalentToQuestion:(id)a3;
- (PGSharedLibraryAssetsQuestion)initWithAssetUUID:(id)a3;
@end

@implementation PGSharedLibraryAssetsQuestion

- (BOOL)isEquivalentToPersistedQuestion:(id)a3
{
  v4 = a3;
  v5 = [v4 entityIdentifier];
  v6 = [(PGSharedLibraryAssetsQuestion *)self entityIdentifier];
  if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(v4, "entityType"), v7 == -[PGSharedLibraryAssetsQuestion entityType](self, "entityType")))
  {
    v8 = [v4 type];
    v9 = v8 == -[PGSharedLibraryAssetsQuestion type](self, "type") || [v4 type] == 23;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEquivalentToQuestion:(id)a3
{
  v4 = a3;
  v5 = [v4 entityIdentifier];
  v6 = [(PGSharedLibraryAssetsQuestion *)self entityIdentifier];
  if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(v4, "entityType"), v7 == -[PGSharedLibraryAssetsQuestion entityType](self, "entityType")))
  {
    v8 = [v4 type];
    v9 = v8 == [(PGSharedLibraryAssetsQuestion *)self type];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PGSharedLibraryAssetsQuestion)initWithAssetUUID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PGSharedLibraryAssetsQuestion;
  v5 = [(PGSharedLibraryAssetsQuestion *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    entityIdentifier = v5->_entityIdentifier;
    v5->_entityIdentifier = v6;

    v5->_state = 0;
  }

  return v5;
}

@end