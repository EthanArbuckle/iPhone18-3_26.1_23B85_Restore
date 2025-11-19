@interface _UISearchControllerInlineSearchFieldAccessoryView
- (CGSize)intrinsicContentSize;
- (_UISearchControllerInlineSearchFieldAccessoryView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setBorrowedSearchTextField:(id)a3;
@end

@implementation _UISearchControllerInlineSearchFieldAccessoryView

- (void)setBorrowedSearchTextField:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____UISearchControllerInlineSearchFieldAccessoryView_borrowedSearchTextField);
  *(&self->super.super.super.isa + OBJC_IVAR____UISearchControllerInlineSearchFieldAccessoryView_borrowedSearchTextField) = a3;
  v5 = a3;
  v6 = self;

  sub_188FEBD9C();
}

- (_UISearchControllerInlineSearchFieldAccessoryView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____UISearchControllerInlineSearchFieldAccessoryView_borrowedSearchTextField) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = -1.0;
  v3 = 45.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188FEC37C();
}

@end