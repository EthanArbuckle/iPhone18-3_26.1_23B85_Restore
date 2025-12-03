@interface PGFeaturedPhotoQuestion
- (BOOL)isEquivalentToQuestion:(id)question;
@end

@implementation PGFeaturedPhotoQuestion

- (BOOL)isEquivalentToQuestion:(id)question
{
  questionCopy = question;
  entityIdentifier = [questionCopy entityIdentifier];
  entityIdentifier2 = [(PGFeaturedPhotoQuestion *)self entityIdentifier];
  if ([entityIdentifier isEqualToString:entityIdentifier2] && (v7 = objc_msgSend(questionCopy, "entityType"), v7 == -[PGFeaturedPhotoQuestion entityType](self, "entityType")))
  {
    type = [questionCopy type];
    v9 = type == [(PGFeaturedPhotoQuestion *)self type];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end