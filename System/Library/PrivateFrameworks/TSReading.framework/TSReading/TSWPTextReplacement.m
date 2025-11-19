@interface TSWPTextReplacement
- (TSWPTextReplacement)initWithSelection:(id)a3 string:(id)a4;
- (_NSRange)insertedRange;
- (int64_t)delta;
- (void)dealloc;
- (void)performWithStorage:(id)a3 delta:(int64_t)a4 undoTransaction:(TSWPStorageTransaction *)a5 replaceBlock:(id)a6;
@end

@implementation TSWPTextReplacement

- (TSWPTextReplacement)initWithSelection:(id)a3 string:(id)a4
{
  v8.receiver = self;
  v8.super_class = TSWPTextReplacement;
  v6 = [(TSWPTextReplacement *)&v8 init];
  if (v6)
  {
    v6->_selection = a3;
    v6->_string = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPTextReplacement;
  [(TSWPTextReplacement *)&v3 dealloc];
}

- (void)performWithStorage:(id)a3 delta:(int64_t)a4 undoTransaction:(TSWPStorageTransaction *)a5 replaceBlock:(id)a6
{
  selection = self->_selection;
  if (a4)
  {
    v12 = [(TSWPSelection *)self->_selection range];
    [(TSWPSelection *)self->_selection range];
    selection = [(TSWPSelection *)selection copyWithNewRange:v12 + a4, v13];

    self->_selection = selection;
  }

  (*(a6 + 2))(a6, selection, self->_string);
  v15 = [(TSWPTextReplacement *)self insertedRange];

  [a3 p_handleChangeSplittingForInsertedRange:v15 changeSession:v14 undoTransaction:{0, a5}];
}

- (int64_t)delta
{
  v3 = [(NSString *)self->_string length];
  [(TSWPSelection *)self->_selection range];
  return v3 - v4;
}

- (_NSRange)insertedRange
{
  v3 = [(TSWPSelection *)self->_selection range];
  v4 = [(NSString *)self->_string length];
  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

@end