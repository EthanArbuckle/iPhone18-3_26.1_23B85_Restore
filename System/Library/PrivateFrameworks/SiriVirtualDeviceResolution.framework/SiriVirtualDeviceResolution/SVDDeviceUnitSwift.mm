@interface SVDDeviceUnitSwift
- (NSString)description;
- (SVDDeviceUnitSwift)initWithIdentifier:(id)identifier assistantId:(id)id builder:(id)builder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVDDeviceUnitSwift

- (SVDDeviceUnitSwift)initWithIdentifier:(id)identifier assistantId:(id)id builder:(id)builder
{
  v5 = _Block_copy(builder);
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2698DD7D8(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_2698DDAE4();

  v3 = sub_2699038FC();

  return v3;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_2698DDEA4();

  return v3;
}

@end