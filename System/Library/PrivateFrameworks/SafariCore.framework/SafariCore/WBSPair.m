@interface WBSPair
- (BOOL)isEqual:(id)a3;
- (WBSPair)initWithFirst:(id)a3 second:(id)a4;
@end

@implementation WBSPair

- (WBSPair)initWithFirst:(id)a3 second:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WBSPair;
  v9 = [(WBSPair *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, a3);
    objc_storeStrong(&v10->_second, a4);
    v11 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WBSPair *)v5 first];
      if (WBSIsEqual(v6, self->_first))
      {
        v7 = [(WBSPair *)v5 second];
        v8 = WBSIsEqual(v7, self->_second);
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