@interface HVSearchableUserActivity
+ (id)uniqueIdForPersistentIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (HVSearchableUserActivity)initWithUserActivity:(id)activity searchableItem:(id)item;
- (double)absoluteTimestamp;
@end

@implementation HVSearchableUserActivity

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      userActivity = self->_userActivity;
      userActivity = [(HVSearchableUserActivity *)v5 userActivity];
      if ([(NSUserActivity *)userActivity isEqual:userActivity]&& [(NSString *)self->_persistentIdentifierOrFallback isEqual:v5->_persistentIdentifierOrFallback])
      {
        searchableItem = self->_searchableItem;
        searchableItem = [(HVSearchableUserActivity *)v5 searchableItem];
        v10 = [(CSSearchableItem *)searchableItem isEqual:searchableItem];
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
  attributeSet = [(CSSearchableItem *)self->_searchableItem attributeSet];
  contentCreationDate = [attributeSet contentCreationDate];
  [contentCreationDate timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (HVSearchableUserActivity)initWithUserActivity:(id)activity searchableItem:(id)item
{
  v23 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = HVSearchableUserActivity;
  v9 = [(HVSearchableUserActivity *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userActivity, activity);
    objc_storeStrong(&v10->_searchableItem, item);
    persistentIdentifier = [activityCopy persistentIdentifier];
    persistentIdentifierOrFallback = v10->_persistentIdentifierOrFallback;
    v10->_persistentIdentifierOrFallback = persistentIdentifier;

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

+ (id)uniqueIdForPersistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_autoreleasePoolPush();
  v5 = [@"__ProactiveHarvesting__persistentIdentifier:" stringByAppendingString:identifierCopy];
  objc_autoreleasePoolPop(v4);

  return v5;
}

@end