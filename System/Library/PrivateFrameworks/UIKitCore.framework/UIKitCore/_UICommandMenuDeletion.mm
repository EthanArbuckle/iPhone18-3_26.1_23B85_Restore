@interface _UICommandMenuDeletion
+ (id)deletionWithAnchor:(id)anchor;
- (BOOL)acceptBoolItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit;
- (_UICommandMenuDeletion)initWithAnchor:(id)anchor;
- (void)acceptItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit;
@end

@implementation _UICommandMenuDeletion

+ (id)deletionWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v4 = [[_UICommandMenuDeletion alloc] initWithAnchor:anchorCopy];

  return v4;
}

- (_UICommandMenuDeletion)initWithAnchor:(id)anchor
{
  v4.receiver = self;
  v4.super_class = _UICommandMenuDeletion;
  return [(_UICommandChange *)&v4 initWithAnchor:anchor];
}

- (void)acceptItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit
{
  if (menuDeletionVisit)
  {
    (*(menuDeletionVisit + 2))(menuDeletionVisit, self);
  }
}

- (BOOL)acceptBoolItemInsertionVisit:(id)visit itemDeletionVisit:(id)deletionVisit menuInsertionVisit:(id)insertionVisit menuDeletionVisit:(id)menuDeletionVisit
{
  if (menuDeletionVisit)
  {
    return (*(menuDeletionVisit + 2))(menuDeletionVisit, self);
  }

  else
  {
    return 0;
  }
}

@end