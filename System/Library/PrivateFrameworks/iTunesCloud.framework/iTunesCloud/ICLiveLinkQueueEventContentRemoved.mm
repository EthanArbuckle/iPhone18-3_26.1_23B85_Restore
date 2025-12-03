@interface ICLiveLinkQueueEventContentRemoved
- (ICLiveLinkQueueEventContentRemoved)initWithItemIdentifier:(id)identifier;
@end

@implementation ICLiveLinkQueueEventContentRemoved

- (ICLiveLinkQueueEventContentRemoved)initWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = ICLiveLinkQueueEventContentRemoved;
  v5 = [(ICLiveLinkQueueEventContentRemoved *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v6;
  }

  return v5;
}

@end