@interface ICLiveLinkQueueEventContentPlayedNow
- (ICLiveLinkQueueEventContentPlayedNow)initWithItemIdentifiers:(id)identifiers containerKind:(int64_t)kind containerIdentifier:(id)identifier containerMediaIdentifier:(id)mediaIdentifier startItemIdentifier:(id)itemIdentifier;
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

- (ICLiveLinkQueueEventContentPlayedNow)initWithItemIdentifiers:(id)identifiers containerKind:(int64_t)kind containerIdentifier:(id)identifier containerMediaIdentifier:(id)mediaIdentifier startItemIdentifier:(id)itemIdentifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  itemIdentifierCopy = itemIdentifier;
  v26.receiver = self;
  v26.super_class = ICLiveLinkQueueEventContentPlayedNow;
  v16 = [(ICLiveLinkQueueEventContentPlayedNow *)&v26 init];
  if (v16)
  {
    v17 = [identifiersCopy copy];
    itemIdentifiers = v16->_itemIdentifiers;
    v16->_itemIdentifiers = v17;

    v19 = [identifierCopy copy];
    containerIdentifier = v16->_containerIdentifier;
    v16->_containerIdentifier = v19;

    v16->_containerKind = kind;
    v21 = [mediaIdentifierCopy copy];
    containerMediaIdentifier = v16->_containerMediaIdentifier;
    v16->_containerMediaIdentifier = v21;

    v23 = [itemIdentifierCopy copy];
    startItemIdentifier = v16->_startItemIdentifier;
    v16->_startItemIdentifier = v23;
  }

  return v16;
}

@end