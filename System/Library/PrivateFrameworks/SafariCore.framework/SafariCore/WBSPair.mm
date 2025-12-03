@interface WBSPair
- (BOOL)isEqual:(id)equal;
- (WBSPair)initWithFirst:(id)first second:(id)second;
@end

@implementation WBSPair

- (WBSPair)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v13.receiver = self;
  v13.super_class = WBSPair;
  v9 = [(WBSPair *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, first);
    objc_storeStrong(&v10->_second, second);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      first = [(WBSPair *)v5 first];
      if (WBSIsEqual(first, self->_first))
      {
        second = [(WBSPair *)v5 second];
        v8 = WBSIsEqual(second, self->_second);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end