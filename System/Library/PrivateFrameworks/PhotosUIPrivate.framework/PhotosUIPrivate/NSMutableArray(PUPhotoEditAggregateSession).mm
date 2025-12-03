@interface NSMutableArray(PUPhotoEditAggregateSession)
- (void)pu_addCFString:()PUPhotoEditAggregateSession;
- (void)pu_valuesChanged:()PUPhotoEditAggregateSession forKey:;
@end

@implementation NSMutableArray(PUPhotoEditAggregateSession)

- (void)pu_valuesChanged:()PUPhotoEditAggregateSession forKey:
{
  if (a3)
  {
    return [self pu_addCFString:a4];
  }

  return self;
}

- (void)pu_addCFString:()PUPhotoEditAggregateSession
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end