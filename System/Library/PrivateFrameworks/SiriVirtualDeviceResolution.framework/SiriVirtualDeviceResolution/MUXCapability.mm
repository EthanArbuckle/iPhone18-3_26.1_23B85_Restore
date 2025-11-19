@interface MUXCapability
+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3;
- (BOOL)matchesWithDescriptions:(id)a3;
- (NSString)key;
- (int64_t)supportsMUX;
- (void)encodeWithCoder:(id)a3;
- (void)setKey:(id)a3;
@end

@implementation MUXCapability

- (NSString)key
{
  sub_2698FAF48();
  v2 = sub_2699038FC();

  return v2;
}

- (void)setKey:(id)a3
{
  v4 = sub_26990390C();
  v6 = v5;
  v7 = self;
  sub_2698FB010(v4, v6);
}

- (int64_t)supportsMUX
{
  v2 = self;
  v3 = sub_2698FB2F8();

  return v3;
}

+ (id)capabilityDescriptionMatchingSupportStatus:(int64_t)a3
{
  v3 = sub_2698FB39C(a3);

  return v3;
}

- (BOOL)matchesWithDescriptions:(id)a3
{
  type metadata accessor for CapabilityDescription();
  v4 = sub_269903A0C();
  v5 = self;
  sub_2698FB414(v4);
  v7 = v6;

  return v7 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2698FB6E4(v4);
}

@end