@interface PGFeaturedPhotoQuestion
- (BOOL)isEquivalentToQuestion:(id)a3;
@end

@implementation PGFeaturedPhotoQuestion

- (BOOL)isEquivalentToQuestion:(id)a3
{
  v4 = a3;
  v5 = [v4 entityIdentifier];
  v6 = [(PGFeaturedPhotoQuestion *)self entityIdentifier];
  if ([v5 isEqualToString:v6] && (v7 = objc_msgSend(v4, "entityType"), v7 == -[PGFeaturedPhotoQuestion entityType](self, "entityType")))
  {
    v8 = [v4 type];
    v9 = v8 == [(PGFeaturedPhotoQuestion *)self type];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end