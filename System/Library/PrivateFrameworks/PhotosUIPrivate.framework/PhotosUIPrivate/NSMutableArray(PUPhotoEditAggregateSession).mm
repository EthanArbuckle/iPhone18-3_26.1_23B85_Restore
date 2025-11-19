@interface NSMutableArray(PUPhotoEditAggregateSession)
- (void)pu_addCFString:()PUPhotoEditAggregateSession;
- (void)pu_valuesChanged:()PUPhotoEditAggregateSession forKey:;
@end

@implementation NSMutableArray(PUPhotoEditAggregateSession)

- (void)pu_valuesChanged:()PUPhotoEditAggregateSession forKey:
{
  if (a3)
  {
    return [a1 pu_addCFString:a4];
  }

  return a1;
}

- (void)pu_addCFString:()PUPhotoEditAggregateSession
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

@end