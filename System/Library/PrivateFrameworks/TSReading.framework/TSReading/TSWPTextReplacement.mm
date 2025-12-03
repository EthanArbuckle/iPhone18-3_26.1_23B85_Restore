@interface TSWPTextReplacement
- (TSWPTextReplacement)initWithSelection:(id)selection string:(id)string;
- (_NSRange)insertedRange;
- (int64_t)delta;
- (void)dealloc;
- (void)performWithStorage:(id)storage delta:(int64_t)delta undoTransaction:(TSWPStorageTransaction *)transaction replaceBlock:(id)block;
@end

@implementation TSWPTextReplacement

- (TSWPTextReplacement)initWithSelection:(id)selection string:(id)string
{
  v8.receiver = self;
  v8.super_class = TSWPTextReplacement;
  v6 = [(TSWPTextReplacement *)&v8 init];
  if (v6)
  {
    v6->_selection = selection;
    v6->_string = string;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPTextReplacement;
  [(TSWPTextReplacement *)&v3 dealloc];
}

- (void)performWithStorage:(id)storage delta:(int64_t)delta undoTransaction:(TSWPStorageTransaction *)transaction replaceBlock:(id)block
{
  selection = self->_selection;
  if (delta)
  {
    range = [(TSWPSelection *)self->_selection range];
    [(TSWPSelection *)self->_selection range];
    selection = [(TSWPSelection *)selection copyWithNewRange:range + delta, v13];

    self->_selection = selection;
  }

  (*(block + 2))(block, selection, self->_string);
  insertedRange = [(TSWPTextReplacement *)self insertedRange];

  [storage p_handleChangeSplittingForInsertedRange:insertedRange changeSession:v14 undoTransaction:{0, transaction}];
}

- (int64_t)delta
{
  v3 = [(NSString *)self->_string length];
  [(TSWPSelection *)self->_selection range];
  return v3 - v4;
}

- (_NSRange)insertedRange
{
  range = [(TSWPSelection *)self->_selection range];
  v4 = [(NSString *)self->_string length];
  v5 = range;
  result.length = v4;
  result.location = v5;
  return result;
}

@end