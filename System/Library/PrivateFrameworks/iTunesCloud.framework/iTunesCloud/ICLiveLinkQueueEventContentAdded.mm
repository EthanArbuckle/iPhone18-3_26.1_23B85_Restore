@interface ICLiveLinkQueueEventContentAdded
- (ICLiveLinkQueueEventContentAdded)initWithItemIdentifiers:(id)identifiers containerKind:(int64_t)kind containerIdentifier:(id)identifier containerMediaIdentifier:(id)mediaIdentifier;
- (id)description;
@end

@implementation ICLiveLinkQueueEventContentAdded

- (id)description
{
  containerKind = self->_containerKind;
  v4 = MEMORY[0x1E696AEC0];
  if (containerKind)
  {
    v5 = _NSStringFromICSharedListeningContainerKind(containerKind);
    v6 = [v4 stringWithFormat:@"<ICLiveLinkQueueEventContentAdded: %p %@(%@)=%@ itemIdentifiers=%@>", self, v5, self->_containerIdentifier, self->_containerMediaIdentifier, self->_itemIdentifiers];
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEventContentAdded: %p unknown itemIdentifiers=%@>", self, self->_itemIdentifiers];
  }

  return v6;
}

- (ICLiveLinkQueueEventContentAdded)initWithItemIdentifiers:(id)identifiers containerKind:(int64_t)kind containerIdentifier:(id)identifier containerMediaIdentifier:(id)mediaIdentifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  mediaIdentifierCopy = mediaIdentifier;
  v21.receiver = self;
  v21.super_class = ICLiveLinkQueueEventContentAdded;
  v13 = [(ICLiveLinkQueueEventContentAdded *)&v21 init];
  if (v13)
  {
    v14 = [identifiersCopy copy];
    itemIdentifiers = v13->_itemIdentifiers;
    v13->_itemIdentifiers = v14;

    v16 = [identifierCopy copy];
    containerIdentifier = v13->_containerIdentifier;
    v13->_containerIdentifier = v16;

    v13->_containerKind = kind;
    v18 = [mediaIdentifierCopy copy];
    containerMediaIdentifier = v13->_containerMediaIdentifier;
    v13->_containerMediaIdentifier = v18;
  }

  return v13;
}

@end