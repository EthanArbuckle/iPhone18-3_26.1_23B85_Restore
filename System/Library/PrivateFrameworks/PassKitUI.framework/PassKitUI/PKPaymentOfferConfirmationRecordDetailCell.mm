@interface PKPaymentOfferConfirmationRecordDetailCell
+ (int64_t)statusForRecord:(id)a3 transaction:(id)a4 installmentCriteria:(id)a5;
- (_TtC9PassKitUI42PKPaymentOfferConfirmationRecordDetailCell)initWithCoder:(id)a3;
- (_TtC9PassKitUI42PKPaymentOfferConfirmationRecordDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithConfirmationRecord:(id)a3 transaction:(id)a4 installmentCriteria:(id)a5;
@end

@implementation PKPaymentOfferConfirmationRecordDetailCell

- (void)configureWithConfirmationRecord:(id)a3 transaction:(id)a4 installmentCriteria:(id)a5
{
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD471F8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19[-v13];
  v20 = a3;
  v21 = a5;
  v22 = a4;
  v23 = ObjectType;
  sub_1BD4881B0();
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = self;
  sub_1BE04FCE4();
  sub_1BE0501D4();
  v24[3] = v10;
  v24[4] = sub_1BD0DE4F4(&qword_1EBD47208, &qword_1EBD471F8);
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_1BE04FCD4();
  (*(v11 + 8))(v14, v10);
  MEMORY[0x1BFB3FD10](v24);
}

+ (int64_t)statusForRecord:(id)a3 transaction:(id)a4 installmentCriteria:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(a3, v9, a5);

  return v11;
}

- (_TtC9PassKitUI42PKPaymentOfferConfirmationRecordDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1BE052434();
    a4 = sub_1BE052404();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PKPaymentOfferConfirmationRecordDetailCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC9PassKitUI42PKPaymentOfferConfirmationRecordDetailCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(PKPaymentOfferConfirmationRecordDetailCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end