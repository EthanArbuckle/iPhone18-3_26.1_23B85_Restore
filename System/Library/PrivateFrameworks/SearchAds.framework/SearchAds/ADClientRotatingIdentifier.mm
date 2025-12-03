@interface ADClientRotatingIdentifier
- (ADClientRotatingIdentifier)init;
- (ADClientRotatingIdentifier)initWithRotatingIdentifier:(id)identifier;
- (NSString)value;
- (int64_t)type;
- (void)setType:(int64_t)type;
- (void)setValue:(id)value;
@end

@implementation ADClientRotatingIdentifier

- (NSString)value
{
  v2 = (self + OBJC_IVAR___ADClientRotatingIdentifier_value);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_264E56384();

  return v5;
}

- (void)setValue:(id)value
{
  v4 = sub_264E56394();
  v6 = v5;
  v7 = (self + OBJC_IVAR___ADClientRotatingIdentifier_value);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)type
{
  v3 = OBJC_IVAR___ADClientRotatingIdentifier_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int64_t)type
{
  v5 = OBJC_IVAR___ADClientRotatingIdentifier_type;
  swift_beginAccess();
  *(self + v5) = type;
}

- (ADClientRotatingIdentifier)initWithRotatingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = sub_264E53B58();

  return v4;
}

- (ADClientRotatingIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end