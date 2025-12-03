@interface PKPaymentFieldTableViewCell
- (_TtC9PassKitUI27PKPaymentFieldTableViewCell)initWithCoder:(id)coder;
- (_TtC9PassKitUI27PKPaymentFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureWith:(id)with useGroupedFormStyle:(BOOL)style onValueChange:(id)change;
@end

@implementation PKPaymentFieldTableViewCell

- (void)configureWith:(id)with useGroupedFormStyle:(BOOL)style onValueChange:(id)change
{
  v8 = _Block_copy(change);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *MEMORY[0x1E69DC5C0];
  v11 = *(MEMORY[0x1E69DC5C0] + 8);
  v12 = *(MEMORY[0x1E69DC5C0] + 16);
  v13 = *(MEMORY[0x1E69DC5C0] + 24);
  withCopy = with;
  selfCopy = self;
  [(PKPaymentFieldTableViewCell *)selfCopy setDirectionalLayoutMargins:v10, v11, v12, v13];
  [(PKPaymentFieldTableViewCell *)selfCopy setSeparatorInset:0.0, 16.0, 0.0, 16.0];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = withCopy;
  *(v16 + 32) = style;
  *(v16 + 40) = sub_1BD166E88;
  *(v16 + 48) = v9;
  v17 = withCopy;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE052C94();

  [(PKPaymentFieldTableViewCell *)selfCopy setNeedsUpdateConfiguration];
}

- (_TtC9PassKitUI27PKPaymentFieldTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(PKPaymentFieldTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC9PassKitUI27PKPaymentFieldTableViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PKPaymentFieldTableViewCell();
  coderCopy = coder;
  v5 = [(PKPaymentFieldTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end