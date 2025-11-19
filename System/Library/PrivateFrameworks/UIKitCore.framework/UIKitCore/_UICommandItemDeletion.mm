@interface _UICommandItemDeletion
+ (id)deletionWithAnchor:(id)a3;
- (BOOL)acceptBoolItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6;
- (_UICommandItemDeletion)initWithAnchor:(id)a3;
- (void)acceptItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6;
@end

@implementation _UICommandItemDeletion

+ (id)deletionWithAnchor:(id)a3
{
  v3 = a3;
  v4 = [[_UICommandItemDeletion alloc] initWithAnchor:v3];

  return v4;
}

- (_UICommandItemDeletion)initWithAnchor:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UICommandItemDeletion;
  return [(_UICommandChange *)&v4 initWithAnchor:a3];
}

- (void)acceptItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6
{
  if (a4)
  {
    (*(a4 + 2))(a4, self);
  }
}

- (BOOL)acceptBoolItemInsertionVisit:(id)a3 itemDeletionVisit:(id)a4 menuInsertionVisit:(id)a5 menuDeletionVisit:(id)a6
{
  if (a4)
  {
    return (*(a4 + 2))(a4, self);
  }

  else
  {
    return 0;
  }
}

@end