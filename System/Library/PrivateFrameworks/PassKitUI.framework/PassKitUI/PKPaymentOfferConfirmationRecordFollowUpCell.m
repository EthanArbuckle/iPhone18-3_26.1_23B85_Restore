@interface PKPaymentOfferConfirmationRecordFollowUpCell
- (_TtC9PassKitUI44PKPaymentOfferConfirmationRecordFollowUpCell)initWithCoder:(id)a3;
- (_TtC9PassKitUI44PKPaymentOfferConfirmationRecordFollowUpCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithConfirmationRecord:(id)a3 paymentPass:(id)a4 presentPaymentOfferInstallmentSelection:(id)a5 shouldTapButtonOnAppear:(BOOL)a6;
@end

@implementation PKPaymentOfferConfirmationRecordFollowUpCell

- (void)configureWithConfirmationRecord:(id)a3 paymentPass:(id)a4 presentPaymentOfferInstallmentSelection:(id)a5 shouldTapButtonOnAppear:(BOOL)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BA50);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21[-v14];
  v16 = _Block_copy(a5);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v22 = a3;
  v23 = a4;
  v24 = sub_1BD1995C4;
  v25 = v17;
  v26 = a6;
  sub_1BD198CAC();
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1BE04FCE4();
  sub_1BE0501D4();
  v27[3] = v11;
  v27[4] = sub_1BD0DE4F4(&qword_1EBD3BA60, &qword_1EBD3BA50);
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_1BE04FCD4();
  (*(v12 + 8))(v15, v11);
  MEMORY[0x1BFB3FD10](v27);
}

- (_TtC9PassKitUI44PKPaymentOfferConfirmationRecordFollowUpCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1BE052434();
    a4 = sub_1BE052404();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PKPaymentOfferConfirmationRecordFollowUpCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC9PassKitUI44PKPaymentOfferConfirmationRecordFollowUpCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(PKPaymentOfferConfirmationRecordFollowUpCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end