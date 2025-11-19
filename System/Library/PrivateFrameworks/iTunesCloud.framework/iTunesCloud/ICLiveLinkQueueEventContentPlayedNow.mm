@interface ICLiveLinkQueueEventContentPlayedNow
- (ICLiveLinkQueueEventContentPlayedNow)initWithItemIdentifiers:(id)a3 containerKind:(int64_t)a4 containerIdentifier:(id)a5 containerMediaIdentifier:(id)a6 startItemIdentifier:(id)a7;
- (id)description;
@end

@implementation ICLiveLinkQueueEventContentPlayedNow

- (id)description
{
  containerKind = self->_containerKind;
  v4 = MEMORY[0x1E696AEC0];
  if (containerKind)
  {
    v5 = _NSStringFromICSharedListeningContainerKind(containerKind);
    v6 = [v4 stringWithFormat:@"<ICLiveLinkQueueEventContentPlayedNow: %p %@(%@)=%@ itemIdentifiers=%@ startItemID=%@>", self, v5, self->_containerIdentifier, self->_containerMediaIdentifier, self->_itemIdentifiers, self->_startItemIdentifier];
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEventContentPlayedNow: %p unknown itemIdentifiers=%@ startItemID=%@>", self, self->_itemIdentifiers, self->_startItemIdentifier];
  }

  return v6;
}

- (ICLiveLinkQueueEventContentPlayedNow)initWithItemIdentifiers:(id)a3 containerKind:(int64_t)a4 containerIdentifier:(id)a5 containerMediaIdentifier:(id)a6 startItemIdentifier:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = ICLiveLinkQueueEventContentPlayedNow;
  v16 = [(ICLiveLinkQueueEventContentPlayedNow *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    itemIdentifiers = v16->_itemIdentifiers;
    v16->_itemIdentifiers = v17;

    v19 = [v13 copy];
    containerIdentifier = v16->_containerIdentifier;
    v16->_containerIdentifier = v19;

    v16->_containerKind = a4;
    v21 = [v14 copy];
    containerMediaIdentifier = v16->_containerMediaIdentifier;
    v16->_containerMediaIdentifier = v21;

    v23 = [v15 copy];
    startItemIdentifier = v16->_startItemIdentifier;
    v16->_startItemIdentifier = v23;
  }

  return v16;
}

@end