@interface RestorePodcastItemsResponse
- (id)errorForItemIdentifier:(id)a3;
- (void)dealloc;
- (void)setError:(id)a3 forItemIdentifier:(id)a4;
@end

@implementation RestorePodcastItemsResponse

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RestorePodcastItemsResponse;
  [(RestorePodcastItemsResponse *)&v3 dealloc];
}

- (id)errorForItemIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_itemErrors objectForKey:a3];

  return v3;
}

- (void)setError:(id)a3 forItemIdentifier:(id)a4
{
  itemErrors = self->_itemErrors;
  if (a3)
  {
    if (!itemErrors)
    {
      itemErrors = objc_alloc_init(NSMutableDictionary);
      self->_itemErrors = itemErrors;
    }

    [(NSMutableDictionary *)itemErrors setObject:a3 forKey:a4];
  }

  else
  {

    [(NSMutableDictionary *)itemErrors removeObjectForKey:a4];
  }
}

@end