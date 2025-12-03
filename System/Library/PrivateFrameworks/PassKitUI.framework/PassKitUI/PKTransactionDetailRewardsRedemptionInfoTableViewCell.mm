@interface PKTransactionDetailRewardsRedemptionInfoTableViewCell
- (_TtC9PassKitUI53PKTransactionDetailRewardsRedemptionInfoTableViewCell)initWithCoder:(id)coder;
- (_TtC9PassKitUI53PKTransactionDetailRewardsRedemptionInfoTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithRewardsRedemption:(id)redemption rewardsBalance:(id)balance;
@end

@implementation PKTransactionDetailRewardsRedemptionInfoTableViewCell

- (void)configureWithRewardsRedemption:(id)redemption rewardsBalance:(id)balance
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE28);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15[-v10];
  redemptionCopy = redemption;
  balanceCopy = balance;
  sub_1BD5C355C();
  redemptionCopy2 = redemption;
  balanceCopy2 = balance;
  selfCopy = self;
  sub_1BE04FCE4();
  sub_1BE0501D4();
  v18[3] = v7;
  v18[4] = sub_1BD0DE4F4(&qword_1EBD4FE30, &qword_1EBD4FE28);
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_1BE04FCD4();
  (*(v8 + 8))(v11, v7);
  MEMORY[0x1BFB3FD10](v18);
}

- (_TtC9PassKitUI53PKTransactionDetailRewardsRedemptionInfoTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_1BE052434();
    identifier = sub_1BE052404();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PKTransactionDetailRewardsRedemptionInfoTableViewCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC9PassKitUI53PKTransactionDetailRewardsRedemptionInfoTableViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(PKTransactionDetailRewardsRedemptionInfoTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end