@interface PGSharedLibraryAssetsQuestion
- (BOOL)isEquivalentToPersistedQuestion:(id)question;
- (BOOL)isEquivalentToQuestion:(id)question;
- (PGSharedLibraryAssetsQuestion)initWithAssetUUID:(id)d;
@end

@implementation PGSharedLibraryAssetsQuestion

- (BOOL)isEquivalentToPersistedQuestion:(id)question
{
  questionCopy = question;
  entityIdentifier = [questionCopy entityIdentifier];
  entityIdentifier2 = [(PGSharedLibraryAssetsQuestion *)self entityIdentifier];
  if ([entityIdentifier isEqualToString:entityIdentifier2] && (v7 = objc_msgSend(questionCopy, "entityType"), v7 == -[PGSharedLibraryAssetsQuestion entityType](self, "entityType")))
  {
    type = [questionCopy type];
    v9 = type == -[PGSharedLibraryAssetsQuestion type](self, "type") || [questionCopy type] == 23;
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
  entityIdentifier2 = [(PGSharedLibraryAssetsQuestion *)self entityIdentifier];
  if ([entityIdentifier isEqualToString:entityIdentifier2] && (v7 = objc_msgSend(questionCopy, "entityType"), v7 == -[PGSharedLibraryAssetsQuestion entityType](self, "entityType")))
  {
    type = [questionCopy type];
    v9 = type == [(PGSharedLibraryAssetsQuestion *)self type];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PGSharedLibraryAssetsQuestion)initWithAssetUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = PGSharedLibraryAssetsQuestion;
  v5 = [(PGSharedLibraryAssetsQuestion *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    entityIdentifier = v5->_entityIdentifier;
    v5->_entityIdentifier = v6;

    v5->_state = 0;
  }

  return v5;
}

@end