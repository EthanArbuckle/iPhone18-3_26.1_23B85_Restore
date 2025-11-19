@interface SSVRedeemCodeItem
- (SSVRedeemCodeItem)initWithLookupItem:(id)a3;
- (SSVRedeemCodeItem)initWithRedeemCodeDictionary:(id)a3;
- (int64_t)itemIdentifier;
@end

@implementation SSVRedeemCodeItem

- (SSVRedeemCodeItem)initWithLookupItem:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SSVRedeemCodeItem;
  v5 = [(SSVRedeemCodeItem *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v8 = [v4 ITunesStoreIdentifier];
    if (v8)
    {
      [(NSMutableDictionary *)v5->_dictionary setObject:v8 forKey:@"salableAdamId"];
    }
  }

  return v5;
}

- (SSVRedeemCodeItem)initWithRedeemCodeDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SSVRedeemCodeItem;
  v5 = [(SSVRedeemCodeItem *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"salableAdamId"];

    if (v6)
    {
      v7 = [v4 mutableCopy];
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
    v3 = [v2 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end