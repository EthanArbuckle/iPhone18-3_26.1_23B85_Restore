@interface SKAError
+ (id)errorWithCode:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3 customDescription:(id)a4;
+ (id)errorWithCode:(int64_t)a3 customDescription:(id)a4 underlyingError:(id)a5;
+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4;
+ (id)errorWithResponseStatus:(int)a3;
+ (id)errorWithResponseStatus:(int)a3 retryInterval:(unsigned int)a4;
- (NSString)description;
- (SKAError)init;
@end

@implementation SKAError

+ (id)errorWithCode:(int64_t)a3
{
  v3 = specialized static SKAError.errorWithCode(_:)(a3);

  return v3;
}

+ (id)errorWithCode:(int64_t)a3 customDescription:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = specialized static SKAError.errorWithCode(_:customDescription:)(a3, v5, v6);

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v6 = a4;
  v7 = specialized static SKAError.errorWithCode(_:underlyingError:)(a3, a4);

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 customDescription:(id)a4 underlyingError:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = a5;
  v11 = specialized static SKAError.errorWithCode(_:customDescription:underlyingError:)(a3, v7, v9, a5);

  return v11;
}

- (NSString)description
{
  v2 = self;
  v3 = SKAError.description.getter();
  v5 = v4;

  v6 = MEMORY[0x223D76B00](v3, v5);

  return v6;
}

- (SKAError)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)errorWithResponseStatus:(int)a3
{
  v3 = specialized static SKAError.errorWithResponseStatus(_:)(a3);

  return v3;
}

+ (id)errorWithResponseStatus:(int)a3 retryInterval:(unsigned int)a4
{
  v4 = specialized static SKAError.errorWithResponseStatus(_:retryInterval:)(a3, a4);

  return v4;
}

@end