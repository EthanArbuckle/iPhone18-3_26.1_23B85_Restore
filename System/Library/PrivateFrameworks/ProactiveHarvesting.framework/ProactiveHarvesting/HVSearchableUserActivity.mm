@interface HVSearchableUserActivity
+ (id)uniqueIdForPersistentIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HVSearchableUserActivity)initWithUserActivity:(id)a3 searchableItem:(id)a4;
- (double)absoluteTimestamp;
@end

@implementation HVSearchableUserActivity

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      userActivity = self->_userActivity;
      v7 = [(HVSearchableUserActivity *)v5 userActivity];
      if ([(NSUserActivity *)userActivity isEqual:v7]&& [(NSString *)self->_persistentIdentifierOrFallback isEqual:v5->_persistentIdentifierOrFallback])
      {
        searchableItem = self->_searchableItem;
        v9 = [(HVSearchableUserActivity *)v5 searchableItem];
        v10 = [(CSSearchableItem *)searchableItem isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (double)absoluteTimestamp
{
  v2 = [(CSSearchableItem *)self->_searchableItem attributeSet];
  v3 = [v2 contentCreationDate];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (HVSearchableUserActivity)initWithUserActivity:(id)a3 searchableItem:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = HVSearchableUserActivity;
  v9 = [(HVSearchableUserActivity *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userActivity, a3);
    objc_storeStrong(&v10->_searchableItem, a4);
    v11 = [v7 persistentIdentifier];
    persistentIdentifierOrFallback = v10->_persistentIdentifierOrFallback;
    v10->_persistentIdentifierOrFallback = v11;

    v13 = v10->_persistentIdentifierOrFallback;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v22 = 0;
      __buf = 0;
      arc4random_buf(&__buf, 9uLL);
      v15 = objc_autoreleasePoolPush();
      v16 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&__buf length:9];
      v14 = [v16 base64EncodedStringWithOptions:0];

      objc_autoreleasePoolPop(v15);
    }

    v17 = v10->_persistentIdentifierOrFallback;
    v10->_persistentIdentifierOrFallback = v14;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)uniqueIdForPersistentIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [@"__ProactiveHarvesting__persistentIdentifier:" stringByAppendingString:v3];
  objc_autoreleasePoolPop(v4);

  return v5;
}

@end