@interface APOdmlSortableObject
- (APOdmlSortableObject)initWithRankable:(id)a3 andPTTR:(id)a4;
@end

@implementation APOdmlSortableObject

- (APOdmlSortableObject)initWithRankable:(id)a3 andPTTR:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = APOdmlSortableObject;
  v9 = [(APOdmlSortableObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pTTR, a4);
    objc_storeStrong(&v10->_rankable, a3);
  }

  return v10;
}

@end