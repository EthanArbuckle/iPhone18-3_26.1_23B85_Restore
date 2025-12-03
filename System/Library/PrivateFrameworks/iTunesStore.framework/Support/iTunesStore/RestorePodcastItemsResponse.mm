@interface RestorePodcastItemsResponse
- (id)errorForItemIdentifier:(id)identifier;
- (void)dealloc;
- (void)setError:(id)error forItemIdentifier:(id)identifier;
@end

@implementation RestorePodcastItemsResponse

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RestorePodcastItemsResponse;
  [(RestorePodcastItemsResponse *)&v3 dealloc];
}

- (id)errorForItemIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_itemErrors objectForKey:identifier];

  return v3;
}

- (void)setError:(id)error forItemIdentifier:(id)identifier
{
  itemErrors = self->_itemErrors;
  if (error)
  {
    if (!itemErrors)
    {
      itemErrors = objc_alloc_init(NSMutableDictionary);
      self->_itemErrors = itemErrors;
    }

    [(NSMutableDictionary *)itemErrors setObject:error forKey:identifier];
  }

  else
  {

    [(NSMutableDictionary *)itemErrors removeObjectForKey:identifier];
  }
}

@end