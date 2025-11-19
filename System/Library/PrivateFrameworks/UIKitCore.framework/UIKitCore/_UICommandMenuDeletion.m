@interface _UICommandMenuDeletion
+ (id)deletionWithAnchor:(id)a3;
- (BOOL)acceptBoolItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6;
- (_UICommandMenuDeletion)initWithAnchor:(id)a3;
- (void)acceptItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6;
@end

@implementation _UICommandMenuDeletion

+ (id)deletionWithAnchor:(id)a3
{
  v3 = a3;
  v4 = [[_UICommandMenuDeletion alloc] initWithAnchor:v3];

  return v4;
}

- (_UICommandMenuDeletion)initWithAnchor:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UICommandMenuDeletion;
  return [(_UICommandChange *)&v4 initWithAnchor:a3];
}

- (void)acceptItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6, self);
  }
}

- (BOOL)acceptBoolItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6
{
  if (a6)
  {
    return (*(a6 + 2))(a6, self);
  }

  else
  {
    return 0;
  }
}

@end