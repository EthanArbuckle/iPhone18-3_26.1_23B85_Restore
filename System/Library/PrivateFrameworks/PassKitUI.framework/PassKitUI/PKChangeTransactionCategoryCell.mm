@interface PKChangeTransactionCategoryCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC9PassKitUI31PKChangeTransactionCategoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithSelectedTransactionCategory:(int64_t)category canUpdate:(BOOL)update updateCategoryHandler:(id)handler;
- (void)layoutSubviews;
@end

@implementation PKChangeTransactionCategoryCell

- (_TtC9PassKitUI31PKChangeTransactionCategoryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1BD4883EC(style, identifier, v6);
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for PKChangeTransactionCategoryCell();
  v2 = v12.receiver;
  [(PKChangeTransactionCategoryCell *)&v12 layoutSubviews];
  contentView = [v2 contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_1BD4888D8(0, v5, v7, v9, v11);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1BD4888D8(1, 0.0, 0.0, width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)configureWithSelectedTransactionCategory:(int64_t)category canUpdate:(BOOL)update updateCategoryHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  sub_1BD488E1C(category, update, sub_1BD139BD4, v9);
}

@end