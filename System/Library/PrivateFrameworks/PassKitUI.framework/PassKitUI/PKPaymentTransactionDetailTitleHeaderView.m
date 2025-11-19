@interface PKPaymentTransactionDetailTitleHeaderView
+ (NSString)reuseIdentifier;
- (_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView)initWithCoder:(id)a3;
- (_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView)initWithReuseIdentifier:(id)a3;
- (void)configureWithTitle:(id)a3;
@end

@implementation PKPaymentTransactionDetailTitleHeaderView

+ (NSString)reuseIdentifier
{
  v2 = sub_1BE052404();

  return v2;
}

- (void)configureWithTitle:(id)a3
{
  sub_1BE052434();
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B950);
  v5[4] = sub_1BD0DE4F4(&qword_1EBD5B958, &qword_1EBD5B950);
  __swift_allocate_boxed_opaque_existential_1(v5);
  v4 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386A0);
  sub_1BD0DE43C();
  sub_1BE04FCE4();

  MEMORY[0x1BFB3FC20](v5);
  [(PKPaymentTransactionDetailTitleHeaderView *)v4 setNeedsUpdateConfiguration];
}

- (_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView)initWithReuseIdentifier:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_1BE052434();
    a3 = sub_1BE052404();
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(PKPaymentTransactionDetailTitleHeaderView *)&v8 initWithReuseIdentifier:a3];

  return v6;
}

- (_TtC9PassKitUI41PKPaymentTransactionDetailTitleHeaderView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(PKPaymentTransactionDetailTitleHeaderView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end