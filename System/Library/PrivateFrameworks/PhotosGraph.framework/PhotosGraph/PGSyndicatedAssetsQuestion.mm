@interface PGSyndicatedAssetsQuestion
- (BOOL)isEquivalentToPersistedQuestion:(id)question;
- (BOOL)isEquivalentToQuestion:(id)question;
- (PGSyndicatedAssetsQuestion)initWithAssetSyndicationIdentifier:(id)identifier;
@end

@implementation PGSyndicatedAssetsQuestion

- (BOOL)isEquivalentToPersistedQuestion:(id)question
{
  questionCopy = question;
  entityIdentifier = [questionCopy entityIdentifier];
  entityIdentifier2 = [(PGSyndicatedAssetsQuestion *)self entityIdentifier];
  if ([entityIdentifier isEqualToString:entityIdentifier2] && (v7 = objc_msgSend(questionCopy, "entityType"), v7 == -[PGSyndicatedAssetsQuestion entityType](self, "entityType")))
  {
    type = [questionCopy type];
    v9 = type == [(PGSyndicatedAssetsQuestion *)self type];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEquivalentToQuestion:(id)question
{
  questionCopy = question;
  entityIdentifier = [questionCopy entityIdentifier];
  entityIdentifier2 = [(PGSyndicatedAssetsQuestion *)self entityIdentifier];
  if ([entityIdentifier isEqualToString:entityIdentifier2] && (v7 = objc_msgSend(questionCopy, "entityType"), v7 == -[PGSyndicatedAssetsQuestion entityType](self, "entityType")))
  {
    type = [questionCopy type];
    v9 = type == [(PGSyndicatedAssetsQuestion *)self type];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PGSyndicatedAssetsQuestion)initWithAssetSyndicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PGSyndicatedAssetsQuestion;
  v6 = [(PGSyndicatedAssetsQuestion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entityIdentifier, identifier);
    v7->_state = 0;
  }

  return v7;
}

@end