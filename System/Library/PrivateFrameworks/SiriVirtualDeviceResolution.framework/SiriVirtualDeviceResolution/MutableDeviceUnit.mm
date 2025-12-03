@interface MutableDeviceUnit
- (NSString)homeKitAccessoryIdentifier;
- (NSString)mediaRouteIdentifier;
- (NSString)name;
- (NSString)roomName;
- (void)setHomeKitAccessoryIdentifier:(id)identifier;
- (void)setMediaRouteIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setRoomName:(id)name;
@end

@implementation MutableDeviceUnit

- (NSString)name
{
  if (*(self + 3))
  {
    v2 = *(self + 2);
    v3 = *(self + 3);

    v4 = sub_2699038FC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setName:(id)name
{
  if (name)
  {
    v4 = sub_26990390C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(self + 3);
  *(self + 2) = v4;
  *(self + 3) = v5;
}

- (NSString)roomName
{
  if (*(self + 5))
  {
    v2 = *(self + 4);
    v3 = *(self + 5);

    v4 = sub_2699038FC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRoomName:(id)name
{
  if (name)
  {
    v4 = sub_26990390C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(self + 5);
  *(self + 4) = v4;
  *(self + 5) = v5;
}

- (NSString)mediaRouteIdentifier
{
  if (*(self + 8))
  {
    v2 = *(self + 7);
    v3 = *(self + 8);

    v4 = sub_2699038FC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMediaRouteIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_26990390C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(self + 8);
  *(self + 7) = v4;
  *(self + 8) = v5;
}

- (NSString)homeKitAccessoryIdentifier
{
  if (*(self + 11))
  {
    v2 = *(self + 10);
    v3 = *(self + 11);

    v4 = sub_2699038FC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHomeKitAccessoryIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_26990390C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(self + 11);
  *(self + 10) = v4;
  *(self + 11) = v5;
}

@end