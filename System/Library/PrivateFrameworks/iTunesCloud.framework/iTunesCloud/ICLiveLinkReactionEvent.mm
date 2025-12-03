@interface ICLiveLinkReactionEvent
- (ICLiveLinkReactionEvent)initWithReaction:(id)reaction reactionIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier;
@end

@implementation ICLiveLinkReactionEvent

- (ICLiveLinkReactionEvent)initWithReaction:(id)reaction reactionIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier
{
  reactionCopy = reaction;
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  v19.receiver = self;
  v19.super_class = ICLiveLinkReactionEvent;
  v11 = [(ICLiveLinkReactionEvent *)&v19 init];
  if (v11)
  {
    v12 = [reactionCopy copy];
    reaction = v11->_reaction;
    v11->_reaction = v12;

    v14 = [identifierCopy copy];
    reactionIdentifier = v11->_reactionIdentifier;
    v11->_reactionIdentifier = v14;

    v16 = [itemIdentifierCopy copy];
    itemIdentifier = v11->_itemIdentifier;
    v11->_itemIdentifier = v16;
  }

  return v11;
}

@end