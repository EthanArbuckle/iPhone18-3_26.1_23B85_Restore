@interface PKStoreId
- (NSNumber)numberValue;
- (NSString)stringValue;
- (PKStoreId)init;
- (int64_t)longValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKStoreId

- (NSNumber)numberValue
{
  v2 = self;
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
  v2 = self;
  sub_25EA0A9D0();
  v4 = v3;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___PKStoreId_underlyingStoreId);
  v5 = *&self->underlyingStoreId[OBJC_IVAR___PKStoreId_underlyingStoreId];
  v6 = a3;
  v9 = self;
  v7 = sub_25EA1E638();
  v8 = sub_25EA1E638();
  [v6 encodeObject:v7 forKey:v8];
}

- (PKStoreId)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end