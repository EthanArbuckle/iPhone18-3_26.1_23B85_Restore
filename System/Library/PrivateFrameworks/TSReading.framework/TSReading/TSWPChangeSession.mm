@interface TSWPChangeSession
- (void)dealloc;
- (void)setAuthor:(id)author;
- (void)setDate:(id)date;
@end

@implementation TSWPChangeSession

- (void)setAuthor:(id)author
{
  [(TSPObject *)self willModify];
  authorCopy = author;

  self->_author = author;
}

- (void)setDate:(id)date
{
  [(TSPObject *)self willModify];
  dateCopy = date;

  self->_date = date;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPChangeSession;
  [(TSWPChangeSession *)&v3 dealloc];
}

@end