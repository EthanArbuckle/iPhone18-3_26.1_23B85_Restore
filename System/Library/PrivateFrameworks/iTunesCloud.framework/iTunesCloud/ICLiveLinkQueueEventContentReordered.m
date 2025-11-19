@interface ICLiveLinkQueueEventContentReordered
- (ICLiveLinkQueueEventContentReordered)initWithItemIdentifier:(id)a3;
@end

@implementation ICLiveLinkQueueEventContentReordered

- (ICLiveLinkQueueEventContentReordered)initWithItemIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICLiveLinkQueueEventContentReordered;
  v5 = [(ICLiveLinkQueueEventContentReordered *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;
  }

  return v5;
}

@end