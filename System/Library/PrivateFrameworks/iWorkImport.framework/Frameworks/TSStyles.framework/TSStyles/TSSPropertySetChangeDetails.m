@interface TSSPropertySetChangeDetails
- (TSSPropertySetChangeDetails)initWithChangedProperties:(id)a3;
@end

@implementation TSSPropertySetChangeDetails

- (TSSPropertySetChangeDetails)initWithChangedProperties:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSSPropertySetChangeDetails;
  v7 = [(TSSPropertySetChangeDetails *)&v11 init];
  if (v7)
  {
    if (v4)
    {
      v8 = objc_msgSend_mutableCopy(v4, v5, v6);
    }

    else
    {
      v8 = objc_alloc_init(TSSMutablePropertySet);
    }

    mChangedProperties = v7->mChangedProperties;
    v7->mChangedProperties = v8;
  }

  return v7;
}

@end