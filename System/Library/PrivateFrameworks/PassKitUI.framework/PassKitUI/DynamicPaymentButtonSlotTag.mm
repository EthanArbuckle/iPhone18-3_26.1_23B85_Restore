@interface DynamicPaymentButtonSlotTag
- (_TtC9PassKitUI27DynamicPaymentButtonSlotTag)init;
- (_TtC9PassKitUI27DynamicPaymentButtonSlotTag)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DynamicPaymentButtonSlotTag

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1BD39792C(coderCopy);
}

- (_TtC9PassKitUI27DynamicPaymentButtonSlotTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1BD397E3C(coderCopy);

  return v4;
}

- (_TtC9PassKitUI27DynamicPaymentButtonSlotTag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end