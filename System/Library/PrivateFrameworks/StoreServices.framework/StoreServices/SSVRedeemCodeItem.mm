@interface SSVRedeemCodeItem
- (SSVRedeemCodeItem)initWithLookupItem:(id)item;
- (SSVRedeemCodeItem)initWithRedeemCodeDictionary:(id)dictionary;
- (int64_t)itemIdentifier;
@end

@implementation SSVRedeemCodeItem

- (SSVRedeemCodeItem)initWithLookupItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = SSVRedeemCodeItem;
  v5 = [(SSVRedeemCodeItem *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    iTunesStoreIdentifier = [itemCopy ITunesStoreIdentifier];
    if (iTunesStoreIdentifier)
    {
      [(NSMutableDictionary *)v5->_dictionary setObject:iTunesStoreIdentifier forKey:@"salableAdamId"];
    }
  }

  return v5;
}

- (SSVRedeemCodeItem)initWithRedeemCodeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SSVRedeemCodeItem;
  v5 = [(SSVRedeemCodeItem *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"salableAdamId"];

    if (v6)
    {
      v7 = [dictionaryCopy mutableCopy];
      dictionary = v5->_dictionary;
      v5->_dictionary = v7;
    }

    else
    {
      dictionary = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (int64_t)itemIdentifier
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"salableAdamId"];
  if (objc_opt_respondsToSelector())
  {
    longLongValue = [v2 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

@end