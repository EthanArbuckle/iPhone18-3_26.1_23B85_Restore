@interface SVDDeviceUnitSwift
- (NSString)description;
- (SVDDeviceUnitSwift)initWithIdentifier:(id)a3 assistantId:(id)a4 builder:(id)a5;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVDDeviceUnitSwift

- (SVDDeviceUnitSwift)initWithIdentifier:(id)a3 assistantId:(id)a4 builder:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = sub_26990390C();
  v8 = v7;
  v9 = sub_26990390C();
  v11 = v10;
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v12 = sub_2698E0D40;
  }

  else
  {
    v12 = 0;
  }

  return DeviceUnit.init(identifier:assistantId:builder:)(v6, v8, v9, v11, v12);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2698DD7D8(v4);
}

- (NSString)description
{
  v2 = self;
  sub_2698DDAE4();

  v3 = sub_2699038FC();

  return v3;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_2698DDEA4();

  return v3;
}

@end