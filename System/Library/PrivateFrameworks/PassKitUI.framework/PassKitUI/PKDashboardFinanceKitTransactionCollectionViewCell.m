@interface PKDashboardFinanceKitTransactionCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell)initWithCoder:(id)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PKDashboardFinanceKitTransactionCollectionViewCell

- (_TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_transactionView;
  *(&self->super.super.super.super.super.super.isa + v4) = [objc_allocWithZone(PKPaymentTransactionView) init];
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_iconTask) = 0;
  v5 = OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_currentTransactionID;
  v6 = sub_1BE04AFE4();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1BD44408C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_transactionView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell();
  v2 = v13.receiver;
  [(PKDashboardCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9PassKitUI50PKDashboardFinanceKitTransactionCollectionViewCell_transactionView];
  v4 = [v2 contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for PKDashboardFinanceKitTransactionCollectionViewCell();
  v4 = a3;
  v5 = v10.receiver;
  v6 = [(PKDashboardFinanceKitTransactionCollectionViewCell *)&v10 preferredLayoutAttributesFittingAttributes:v4];
  [v4 size];
  v8 = v7;
  [v6 size];
  [v6 setSize_];

  return v6;
}

@end