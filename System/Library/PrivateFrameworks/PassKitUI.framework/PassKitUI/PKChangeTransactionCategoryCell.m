@interface PKChangeTransactionCategoryCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9PassKitUI31PKChangeTransactionCategoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithSelectedTransactionCategory:(int64_t)a3 canUpdate:(BOOL)a4 updateCategoryHandler:(id)a5;
- (void)layoutSubviews;
@end

@implementation PKChangeTransactionCategoryCell

- (_TtC9PassKitUI31PKChangeTransactionCategoryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1BD4883EC(a3, a4, v6);
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for PKChangeTransactionCategoryCell();
  v2 = v12.receiver;
  [(PKChangeTransactionCategoryCell *)&v12 layoutSubviews];
  v3 = [v2 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_1BD4888D8(0, v5, v7, v9, v11);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1BD4888D8(1, 0.0, 0.0, width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)configureWithSelectedTransactionCategory:(int64_t)a3 canUpdate:(BOOL)a4 updateCategoryHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = self;
  sub_1BD488E1C(a3, a4, sub_1BD139BD4, v9);
}

@end