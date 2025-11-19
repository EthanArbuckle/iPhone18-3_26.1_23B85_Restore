@interface TSWPArchivedSelection
- (TSWPArchivedSelection)initWithContext:(id)a3;
- (void)dealloc;
- (void)setSelection:(id)a3;
@end

@implementation TSWPArchivedSelection

- (TSWPArchivedSelection)initWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSWPArchivedSelection;
  v3 = [(TSPObject *)&v5 initWithContext:a3];
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

- (void)setSelection:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->_selection = a3;
}

@end