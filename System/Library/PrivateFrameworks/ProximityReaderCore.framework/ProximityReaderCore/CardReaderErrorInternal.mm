@interface CardReaderErrorInternal
- (NSString)description;
- (_TtC19ProximityReaderCore23CardReaderErrorInternal)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CardReaderErrorInternal

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2611D036C(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_2611D054C();

  v3 = sub_26121CC50();

  return v3;
}

- (_TtC19ProximityReaderCore23CardReaderErrorInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end