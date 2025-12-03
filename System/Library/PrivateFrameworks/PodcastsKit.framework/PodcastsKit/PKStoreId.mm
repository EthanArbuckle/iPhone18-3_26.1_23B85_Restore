@interface PKStoreId
- (NSNumber)numberValue;
- (NSString)stringValue;
- (PKStoreId)init;
- (int64_t)longValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKStoreId

- (NSNumber)numberValue
{
  selfCopy = self;
  sub_25EA0A620();
  v4 = v3;

  return v4;
}

- (NSString)stringValue
{
  v2 = *(&self->super.isa + OBJC_IVAR___PKStoreId_underlyingStoreId);
  v3 = *&self->underlyingStoreId[OBJC_IVAR___PKStoreId_underlyingStoreId];

  v4 = sub_25EA1E638();

  return v4;
}

- (int64_t)longValue
{
  selfCopy = self;
  sub_25EA0A9D0();
  v4 = v3;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR___PKStoreId_underlyingStoreId);
  v5 = *&self->underlyingStoreId[OBJC_IVAR___PKStoreId_underlyingStoreId];
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_25EA1E638();
  v8 = sub_25EA1E638();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (PKStoreId)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end