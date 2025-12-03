@interface APOdmlSortableObject
- (APOdmlSortableObject)initWithRankable:(id)rankable andPTTR:(id)r;
@end

@implementation APOdmlSortableObject

- (APOdmlSortableObject)initWithRankable:(id)rankable andPTTR:(id)r
{
  rankableCopy = rankable;
  rCopy = r;
  v12.receiver = self;
  v12.super_class = APOdmlSortableObject;
  v9 = [(APOdmlSortableObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pTTR, r);
    objc_storeStrong(&v10->_rankable, rankable);
  }

  return v10;
}

@end