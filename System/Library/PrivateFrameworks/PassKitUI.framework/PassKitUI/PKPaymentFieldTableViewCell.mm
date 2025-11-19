@interface PKPaymentFieldTableViewCell
- (_TtC9PassKitUI27PKPaymentFieldTableViewCell)initWithCoder:(id)a3;
- (_TtC9PassKitUI27PKPaymentFieldTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureWith:(id)a3 useGroupedFormStyle:(BOOL)a4 onValueChange:(id)a5;
@end

@implementation PKPaymentFieldTableViewCell

- (void)configureWith:(id)a3 useGroupedFormStyle:(BOOL)a4 onValueChange:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *MEMORY[0x1E69DC5C0];
  v11 = *(MEMORY[0x1E69DC5C0] + 8);
  v12 = *(MEMORY[0x1E69DC5C0] + 16);
  v13 = *(MEMORY[0x1E69DC5C0] + 24);
  v14 = a3;
  v18 = self;
  [(PKPaymentFieldTableViewCell *)v18 setDirectionalLayoutMargins:v10, v11, v12, v13];
  [(PKPaymentFieldTableViewCell *)v18 setSeparatorInset:0.0, 16.0, 0.0, 16.0];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  *(v16 + 32) = a4;
  *(v16 + 40) = sub_1BD166E88;
  *(v16 + 48) = v9;
  v17 = v14;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE052C94();

  [(PKPaymentFieldTableViewCell *)v18 setNeedsUpdateConfiguration];
}

- (_TtC9PassKitUI27PKPaymentFieldTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_1BE052434();
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for PKPaymentFieldTableViewCell();
  v7 = [(PKPaymentFieldTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC9PassKitUI27PKPaymentFieldTableViewCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PKPaymentFieldTableViewCell();
  v4 = a3;
  v5 = [(PKPaymentFieldTableViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end