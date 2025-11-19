@interface TSSPropertySetChangeDetails
- (TSSPropertySetChangeDetails)initWithChangedProperties:(id)a3;
- (void)dealloc;
@end

@implementation TSSPropertySetChangeDetails

- (TSSPropertySetChangeDetails)initWithChangedProperties:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSSPropertySetChangeDetails;
  v4 = [(TSSPropertySetChangeDetails *)&v7 init];
  if (v4)
  {
    if (a3)
    {
      v5 = [a3 mutableCopy];
    }

    else
    {
      v5 = objc_alloc_init(TSSMutablePropertySet);
    }

    v4->mChangedProperties = v5;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSSPropertySetChangeDetails;
  [(TSSPropertySetChangeDetails *)&v3 dealloc];
}

@end