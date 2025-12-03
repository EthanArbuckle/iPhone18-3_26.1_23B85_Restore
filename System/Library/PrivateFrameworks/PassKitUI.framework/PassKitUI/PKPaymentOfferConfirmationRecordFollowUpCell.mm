@interface PKPaymentOfferConfirmationRecordFollowUpCell
- (_TtC9PassKitUI44PKPaymentOfferConfirmationRecordFollowUpCell)initWithCoder:(id)coder;
- (_TtC9PassKitUI44PKPaymentOfferConfirmationRecordFollowUpCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWithConfirmationRecord:(id)record paymentPass:(id)pass presentPaymentOfferInstallmentSelection:(id)selection shouldTapButtonOnAppear:(BOOL)appear;
@end

@implementation PKPaymentOfferConfirmationRecordFollowUpCell

- (void)configureWithConfirmationRecord:(id)record paymentPass:(id)pass presentPaymentOfferInstallmentSelection:(id)selection shouldTapButtonOnAppear:(BOOL)appear
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA50);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21[-v14];
  v16 = _Block_copy(selection);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  recordCopy = record;
  passCopy = pass;
  v24 = sub_1BD1995C4;
  v25 = v17;
  appearCopy = appear;
  sub_1BD198CAC();
  recordCopy2 = record;
  passCopy2 = pass;
  selfCopy = self;
  sub_1BE04FCE4();
  sub_1BE0501D4();
  v27[3] = v11;
  v27[4] = sub_1BD0DE4F4(&qword_1EBD3BA60, &qword_1EBD3BA50);
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1BE04FCD4();
  (*(v12 + 8))(v15, v11);
  MEMORY[0x1BFB3FD10](v27);
}

- (_TtC9PassKitUI44PKPaymentOfferConfirmationRecordFollowUpCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_1BE052434();
    identifier = sub_1BE052404();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PKPaymentOfferConfirmationRecordFollowUpCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC9PassKitUI44PKPaymentOfferConfirmationRecordFollowUpCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(PKPaymentOfferConfirmationRecordFollowUpCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end