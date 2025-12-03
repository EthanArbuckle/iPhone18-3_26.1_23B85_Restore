@interface TSWPArchivedSelection
- (TSWPArchivedSelection)initWithContext:(id)context;
- (void)dealloc;
- (void)setSelection:(id)selection;
@end

@implementation TSWPArchivedSelection

- (TSWPArchivedSelection)initWithContext:(id)context
{
  v5.receiver = self;
  v5.super_class = TSWPArchivedSelection;
  v3 = [(TSPObject *)&v5 initWithContext:context];
  if (v3)
  {
    [(TSWPArchivedSelection *)v3 setSelection:[[TSWPSelection alloc] initWithRange:0, 0]];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPArchivedSelection;
  [(TSWPArchivedSelection *)&v3 dealloc];
}

- (void)setSelection:(id)selection
{
  [(TSPObject *)self willModify];
  selectionCopy = selection;

  self->_selection = selection;
}

@end