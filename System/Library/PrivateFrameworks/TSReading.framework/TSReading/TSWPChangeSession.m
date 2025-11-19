@interface TSWPChangeSession
- (void)dealloc;
- (void)setAuthor:(id)a3;
- (void)setDate:(id)a3;
@end

@implementation TSWPChangeSession

- (void)setAuthor:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->_author = a3;
}

- (void)setDate:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = a3;

  self->_date = a3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPChangeSession;
  [(TSWPChangeSession *)&v3 dealloc];
}

@end