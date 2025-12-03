@interface TSSPropertySetChangeDetails
- (TSSPropertySetChangeDetails)initWithChangedProperties:(id)properties;
- (void)dealloc;
@end

@implementation TSSPropertySetChangeDetails

- (TSSPropertySetChangeDetails)initWithChangedProperties:(id)properties
{
  v7.receiver = self;
  v7.super_class = TSSPropertySetChangeDetails;
  v4 = [(TSSPropertySetChangeDetails *)&v7 init];
  if (v4)
  {
    if (properties)
    {
      v5 = [properties mutableCopy];
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