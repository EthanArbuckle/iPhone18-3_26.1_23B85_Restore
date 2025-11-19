@interface SKAErrorUserInfoKey
+ (NSString)retryIntervalSeconds;
- (SKAErrorUserInfoKey)init;
@end

@implementation SKAErrorUserInfoKey

+ (NSString)retryIntervalSeconds
{
  v2 = MEMORY[0x223D76B00](0xD000000000000027, 0x80000002201AB570);

  return v2;
}

- (SKAErrorUserInfoKey)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SKAErrorUserInfoKey();
  return [(SKAErrorUserInfoKey *)&v3 init];
}

@end