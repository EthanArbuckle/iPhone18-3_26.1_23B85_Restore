@interface MOEventSharedWithYou
- (MOEventSharedWithYou)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventSharedWithYou

- (void)encodeWithCoder:(id)coder
{
  itemURL = self->_itemURL;
  coderCopy = coder;
  [coderCopy encodeObject:itemURL forKey:@"itemURL"];
  [coderCopy encodeObject:self->_itemSenders forKey:@"itemSenders"];
  [coderCopy encodeObject:self->_itemRecipients forKey:@"itemRecipients"];
  [coderCopy encodeBool:self->_itemIsPinned forKey:@"itemIsPinned"];
  [coderCopy encodeBool:self->_itemShareDirection != 0 forKey:@"itemShareDirection"];
  [coderCopy encodeInteger:self->_itemSyndicationStatus forKey:@"itemSyndicationStatus"];
  [coderCopy encodeObject:self->_itemAttributionsCount forKey:@"itemAttributionsCount"];
}

- (MOEventSharedWithYou)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MOEventSharedWithYou;
  v5 = [(MOEventSharedWithYou *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemURL"];
    itemURL = v5->_itemURL;
    v5->_itemURL = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"itemSenders"];
    itemSenders = v5->_itemSenders;
    v5->_itemSenders = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"itemRecipients"];
    itemRecipients = v5->_itemRecipients;
    v5->_itemRecipients = v10;

    v5->_itemIsPinned = [coderCopy decodeBoolForKey:@"itemIsPinned"];
    v5->_itemShareDirection = [coderCopy decodeBoolForKey:@"itemShareDirection"];
    v5->_itemSyndicationStatus = [coderCopy decodeIntegerForKey:@"itemSyndicationStatus"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemAttributionsCount"];
    itemAttributionsCount = v5->_itemAttributionsCount;
    v5->_itemAttributionsCount = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOEventSharedWithYou);
  objc_storeStrong(&v4->_itemURL, self->_itemURL);
  objc_storeStrong(&v4->_itemSenders, self->_itemSenders);
  objc_storeStrong(&v4->_itemRecipients, self->_itemRecipients);
  v4->_itemIsPinned = self->_itemIsPinned;
  v4->_itemShareDirection = self->_itemShareDirection;
  v4->_itemSyndicationStatus = self->_itemSyndicationStatus;
  objc_storeStrong(&v4->_itemAttributionsCount, self->_itemAttributionsCount);
  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  absoluteString = [(NSURL *)self->_itemURL absoluteString];
  mask = [absoluteString mask];
  v6 = mask;
  if (self->_itemIsPinned)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  itemShareDirection = self->_itemShareDirection;
  v9 = [v3 initWithFormat:@"itemURL, %@, itemIsPinned, %@, itemShareDirection, %lu, itemAttributionsCount, %@", mask, v7, itemShareDirection, self->_itemAttributionsCount];

  return v9;
}

@end