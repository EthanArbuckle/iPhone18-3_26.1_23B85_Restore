@interface PKPaymentOfferConfirmationRecordDetailCell
+ (int64_t)statusForRecord:(id)record transaction:(id)transaction installmentCriteria:(id)criteria;
- (_TtC9PassKitUI42PKPaymentOfferConfirmationRecordDetailCell)initWithCoder:(id)coder;
- (_TtC9PassKitUI42PKPaymentOfferConfirmationRecordDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithConfirmationRecord:(id)record transaction:(id)transaction installmentCriteria:(id)criteria;
@end

@implementation PKPaymentOfferConfirmationRecordDetailCell

- (void)configureWithConfirmationRecord:(id)record transaction:(id)transaction installmentCriteria:(id)criteria
{
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD471F8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19[-v13];
  recordCopy = record;
  criteriaCopy = criteria;
  transactionCopy = transaction;
  v23 = ObjectType;
  sub_1BD4881B0();
  recordCopy2 = record;
  transactionCopy2 = transaction;
  criteriaCopy2 = criteria;
  selfCopy = self;
  sub_1BE04FCE4();
  sub_1BE0501D4();
  v24[3] = v10;
  v24[4] = sub_1BD0DE4F4(&qword_1EBD47208, &qword_1EBD471F8);
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_1BE04FCD4();
  (*(v11 + 8))(v14, v10);
  MEMORY[0x1BFB3FD10](v24);
}

+ (int64_t)statusForRecord:(id)record transaction:(id)transaction installmentCriteria:(id)criteria
{
  recordCopy = record;
  transactionCopy = transaction;
  criteriaCopy = criteria;
  v11 = _s9PassKitUI42PKPaymentOfferConfirmationRecordDetailCellC6status3for11transaction19installmentCriteriaAA0defghI6StatusOSo0defG0CSg_So0D11TransactionCSo0de11InstallmentN0CSgtFZ_0(record, transactionCopy, criteria);

  return v11;
}

- (_TtC9PassKitUI42PKPaymentOfferConfirmationRecordDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_1BE052434();
    identifier = sub_1BE052404();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PKPaymentOfferConfirmationRecordDetailCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC9PassKitUI42PKPaymentOfferConfirmationRecordDetailCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(PKPaymentOfferConfirmationRecordDetailCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end