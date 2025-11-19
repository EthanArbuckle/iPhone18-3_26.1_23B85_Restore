@interface PGSyndicatedAssetsQuestion
- (BOOL)isEquivalentToPersistedQuestion:(id)a3;
- (BOOL)isEquivalentToQuestion:(id)a3;
- (PGSyndicatedAssetsQuestion)initWithAssetSyndicationIdentifier:(id)a3;
@end

@implementation PGSyndicatedAssetsQuestion

- (BOOL)isEquivalentToPersistedQuestion:(id)a3
{
  v4 = a3;
  v5 = [v4 entityIdentifier];
  v6 = [(PGSyndicatedAssetsQuestion *)self entityIdentifier];
  if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(v4, "entityType"), v7 == -[PGSyndicatedAssetsQuestion entityType](self, "entityType")))
  {
    v8 = [v4 type];
    v9 = v8 == [(PGSyndicatedAssetsQuestion *)self type];
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
  v6 = [(PGSyndicatedAssetsQuestion *)self entityIdentifier];
  if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(v4, "entityType"), v7 == -[PGSyndicatedAssetsQuestion entityType](self, "entityType")))
  {
    v8 = [v4 type];
    v9 = v8 == [(PGSyndicatedAssetsQuestion *)self type];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PGSyndicatedAssetsQuestion)initWithAssetSyndicationIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGSyndicatedAssetsQuestion;
  v6 = [(PGSyndicatedAssetsQuestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entityIdentifier, a3);
    v7->_state = 0;
  }

  return v7;
}

@end