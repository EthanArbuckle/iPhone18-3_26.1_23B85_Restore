@interface ICLiveLinkQueueEventContentReplaced
- (ICLiveLinkQueueEventContentReplaced)initWithStartItemIdentifier:(id)a3;
@end

@implementation ICLiveLinkQueueEventContentReplaced

- (ICLiveLinkQueueEventContentReplaced)initWithStartItemIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICLiveLinkQueueEventContentReplaced;
  v5 = [(ICLiveLinkQueueEventContentReplaced *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    startItemIdentifier = v5->_startItemIdentifier;
    v5->_startItemIdentifier = v6;
  }

  return v5;
}

@end