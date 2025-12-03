@interface TSSPropertySetChangeDetails
- (TSSPropertySetChangeDetails)initWithChangedProperties:(id)properties;
@end

@implementation TSSPropertySetChangeDetails

- (TSSPropertySetChangeDetails)initWithChangedProperties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = TSSPropertySetChangeDetails;
  v7 = [(TSSPropertySetChangeDetails *)&v11 init];
  if (v7)
  {
    if (propertiesCopy)
    {
      v8 = objc_msgSend_mutableCopy(propertiesCopy, v5, v6);
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