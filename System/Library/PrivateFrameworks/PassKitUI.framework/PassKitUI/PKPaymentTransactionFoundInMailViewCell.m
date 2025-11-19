@interface PKPaymentTransactionFoundInMailViewCell
- (_TtC9PassKitUI39PKPaymentTransactionFoundInMailViewCell)initWithCoder:(id)a3;
- (_TtC9PassKitUI39PKPaymentTransactionFoundInMailViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWithMessageID:(id)a3 senderEmailAddress:(id)a4 dateSent:(id)a5 title:(id)a6 subject:(id)a7 subtitle:(id)a8 deeplinkURL:(id)a9;
@end

@implementation PKPaymentTransactionFoundInMailViewCell

- (void)configureWithMessageID:(id)a3 senderEmailAddress:(id)a4 dateSent:(id)a5 title:(id)a6 subject:(id)a7 subtitle:(id)a8 deeplinkURL:(id)a9
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v40 - v14;
  v16 = sub_1BE04AF64();
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE052434();
  v47 = v21;
  v43 = sub_1BE052434();
  v46 = v22;
  sub_1BE04AEE4();
  v42 = sub_1BE052434();
  v45 = v23;
  if (a7)
  {
    a7 = sub_1BE052434();
    v44 = v24;
    v25 = a9;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v41 = 0;
    v27 = 0;
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_7:
    v34 = sub_1BE04AA64();
    (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
    v32 = self;
    goto LABEL_8;
  }

  v44 = 0;
  v25 = a9;
  if (!a8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v41 = sub_1BE052434();
  v27 = v26;
  if (!v25)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1BE04A9F4();
  v28 = sub_1BE04AA64();
  v29 = v20;
  v30 = *(*(v28 - 8) + 56);
  v31 = self;
  v32 = v30(v15, 0, 1, v28);
  v20 = v29;
LABEL_8:
  v40[1] = v40;
  MEMORY[0x1EEE9AC00](v32, v33);
  v36 = v46;
  v35 = v47;
  v40[-12] = v20;
  v40[-11] = v35;
  v37 = v42;
  v40[-10] = v43;
  v40[-9] = v36;
  v40[-8] = v19;
  v40[-7] = v37;
  v38 = v44;
  v40[-6] = v45;
  v40[-5] = a7;
  v39 = v41;
  v40[-4] = v38;
  v40[-3] = v39;
  v43 = v19;
  v40[-2] = v27;
  v40[-1] = v15;
  v50[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B2B8);
  v50[4] = sub_1BD9DD8F4();
  __swift_allocate_boxed_opaque_existential_1(v50);
  type metadata accessor for FinanceKitFoundInMailRowView();
  sub_1BD9DD958();
  sub_1BE04FCE4();

  MEMORY[0x1BFB3FD10](v50);
  [(PKPaymentTransactionFoundInMailViewCell *)self setNeedsUpdateConfiguration];

  sub_1BD226BBC(v15);
  (*(v48 + 8))(v43, v49);
}

- (_TtC9PassKitUI39PKPaymentTransactionFoundInMailViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1BE052434();
    a4 = sub_1BE052404();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PKPaymentTransactionFoundInMailViewCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC9PassKitUI39PKPaymentTransactionFoundInMailViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(PKPaymentTransactionFoundInMailViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end