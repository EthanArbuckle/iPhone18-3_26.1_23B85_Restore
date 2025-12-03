@interface _UICommandItemDeletion
+ (id)deletionWithAnchor:(id)anchor;
- (BOOL)acceptBoolItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit;
- (_UICommandItemDeletion)initWithAnchor:(id)anchor;
- (void)acceptItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit;
@end

@implementation _UICommandItemDeletion

+ (id)deletionWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v4 = [[_UICommandItemDeletion alloc] initWithAnchor:anchorCopy];

  return v4;
}

- (_UICommandItemDeletion)initWithAnchor:(id)anchor
{
  v4.receiver = self;
  v4.super_class = _UICommandItemDeletion;
  return [(_UICommandChange *)&v4 initWithAnchor:anchor];
}

- (void)acceptItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit
{
  if (deletionVisit)
  {
    (*(deletionVisit + 2))(deletionVisit, self);
  }
}

- (BOOL)acceptBoolItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit
{
  if (deletionVisit)
  {
    return (*(deletionVisit + 2))(deletionVisit, self);
  }

  else
  {
    return 0;
  }
}

@end