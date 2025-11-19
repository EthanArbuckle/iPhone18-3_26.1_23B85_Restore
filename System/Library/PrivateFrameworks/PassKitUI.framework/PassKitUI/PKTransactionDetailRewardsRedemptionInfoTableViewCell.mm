@interface PKTransactionDetailRewardsRedemptionInfoTableViewCell
- (_TtC9PassKitUI53PKTransactionDetailRewardsRedemptionInfoTableViewCell)initWithCoder:(id)a3;
- (_TtC9PassKitUI53PKTransactionDetailRewardsRedemptionInfoTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithRewardsRedemption:(id)a3 rewardsBalance:(id)a4;
@end

@implementation PKTransactionDetailRewardsRedemptionInfoTableViewCell

- (void)configureWithRewardsRedemption:(id)a3 rewardsBalance:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FE28);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15[-v10];
  v16 = a3;
  v17 = a4;
  sub_1BD5C355C();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_1BE04FCE4();
  sub_1BE0501D4();
  v18[3] = v7;
  v18[4] = sub_1BD0DE4F4(&qword_1EBD4FE30, &qword_1EBD4FE28);
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_1BE04FCD4();
  (*(v8 + 8))(v11, v7);
  MEMORY[0x1BFB3FD10](v18);
}

- (_TtC9PassKitUI53PKTransactionDetailRewardsRedemptionInfoTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1BE052434();
    a4 = sub_1BE052404();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PKTransactionDetailRewardsRedemptionInfoTableViewCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC9PassKitUI53PKTransactionDetailRewardsRedemptionInfoTableViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(PKTransactionDetailRewardsRedemptionInfoTableViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end