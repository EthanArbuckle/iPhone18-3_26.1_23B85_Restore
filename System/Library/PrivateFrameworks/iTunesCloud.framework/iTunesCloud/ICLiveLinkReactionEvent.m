@interface ICLiveLinkReactionEvent
- (ICLiveLinkReactionEvent)initWithReaction:(id)a3 reactionIdentifier:(id)a4 itemIdentifier:(id)a5;
@end

@implementation ICLiveLinkReactionEvent

- (ICLiveLinkReactionEvent)initWithReaction:(id)a3 reactionIdentifier:(id)a4 itemIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ICLiveLinkReactionEvent;
  v11 = [(ICLiveLinkReactionEvent *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    reaction = v11->_reaction;
    v11->_reaction = v12;

    v14 = [v9 copy];
    reactionIdentifier = v11->_reactionIdentifier;
    v11->_reactionIdentifier = v14;

    v16 = [v10 copy];
    itemIdentifier = v11->_itemIdentifier;
    v11->_itemIdentifier = v16;
  }

  return v11;
}

@end