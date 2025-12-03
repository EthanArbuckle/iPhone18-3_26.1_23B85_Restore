@interface ICLiveLinkQueueEventContentReplaced
- (ICLiveLinkQueueEventContentReplaced)initWithStartItemIdentifier:(id)identifier;
@end

@implementation ICLiveLinkQueueEventContentReplaced

- (ICLiveLinkQueueEventContentReplaced)initWithStartItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = ICLiveLinkQueueEventContentReplaced;
  v5 = [(ICLiveLinkQueueEventContentReplaced *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    startItemIdentifier = v5->_startItemIdentifier;
    v5->_startItemIdentifier = v6;
  }

  return v5;
}

@end