@interface SKAError
+ (id)errorWithCode:(int64_t)code;
+ (id)errorWithCode:(int64_t)code customDescription:(id)description;
+ (id)errorWithCode:(int64_t)code customDescription:(id)description underlyingError:(id)error;
+ (id)errorWithCode:(int64_t)code underlyingError:(id)error;
+ (id)errorWithResponseStatus:(int)status;
+ (id)errorWithResponseStatus:(int)status retryInterval:(unsigned int)interval;
- (NSString)description;
- (SKAError)init;
@end

@implementation SKAError

+ (id)errorWithCode:(int64_t)code
{
  v3 = specialized static SKAError.errorWithCode(_:)(code);

  return v3;
}

+ (id)errorWithCode:(int64_t)code customDescription:(id)description
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = specialized static SKAError.errorWithCode(_:customDescription:)(code, v5, v6);

  return v7;
}

+ (id)errorWithCode:(int64_t)code underlyingError:(id)error
{
  errorCopy = error;
  v7 = specialized static SKAError.errorWithCode(_:underlyingError:)(code, error);

  return v7;
}

+ (id)errorWithCode:(int64_t)code customDescription:(id)description underlyingError:(id)error
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  errorCopy = error;
  v11 = specialized static SKAError.errorWithCode(_:customDescription:underlyingError:)(code, v7, v9, error);

  return v11;
}

- (NSString)description
{
  selfCopy = self;
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

+ (id)errorWithResponseStatus:(int)status
{
  v3 = specialized static SKAError.errorWithResponseStatus(_:)(status);

  return v3;
}

+ (id)errorWithResponseStatus:(int)status retryInterval:(unsigned int)interval
{
  v4 = specialized static SKAError.errorWithResponseStatus(_:retryInterval:)(status, interval);

  return v4;
}

@end