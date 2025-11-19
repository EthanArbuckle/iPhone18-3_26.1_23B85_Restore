@interface BindingImpl
- (NSArray)enumCases;
- (NSData)rawValue;
- (NSString)bindingName;
- (NSString)enumName;
- (NSString)identifier;
- (NSString)objectName;
- (NSString)userManual;
- (void)setBindingName:(id)a3;
- (void)setEnumCases:(id)a3;
- (void)setEnumName:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setObjectName:(id)a3;
- (void)setRawValue:(id)a3;
- (void)setUserManual:(id)a3;
@end

@implementation BindingImpl

- (NSString)identifier
{

  v2 = sub_1AFDFCEC8();

  return v2;
}

- (void)setIdentifier:(id)a3
{
  *(self + 3) = sub_1AFDFCEF8();
  *(self + 4) = v4;
}

- (NSString)objectName
{

  v2 = sub_1AFDFCEC8();

  return v2;
}

- (void)setObjectName:(id)a3
{
  *(self + 6) = sub_1AFDFCEF8();
  *(self + 7) = v4;
}

- (NSString)bindingName
{

  v2 = sub_1AFDFCEC8();

  return v2;
}

- (void)setBindingName:(id)a3
{
  *(self + 8) = sub_1AFDFCEF8();
  *(self + 9) = v4;
}

- (NSString)userManual
{

  v2 = sub_1AFDFCEC8();

  return v2;
}

- (void)setUserManual:(id)a3
{
  *(self + 10) = sub_1AFDFCEF8();
  *(self + 11) = v4;
}

- (NSString)enumName
{
  if (*(self + 18))
  {

    v2 = sub_1AFDFCEC8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setEnumName:(id)a3
{
  if (a3)
  {
    v4 = sub_1AFDFCEF8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *(self + 17) = v4;
  *(self + 18) = v5;
}

- (NSArray)enumCases
{
  if (*(self + 19))
  {

    v2 = sub_1AFDFD3F8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setEnumCases:(id)a3
{
  if (a3)
  {
    v4 = sub_1AFDFD418();
  }

  else
  {
    v4 = 0;
  }

  *(self + 19) = v4;
}

- (NSData)rawValue
{

  v2 = sub_1AFC4B954();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = sub_1AFDFC1A8();
    sub_1AF587E7C(v2, v4);
    v5 = v6;
  }

  return v5;
}

- (void)setRawValue:(id)a3
{
  v3 = a3;
  if (a3)
  {

    v4 = v3;
    v3 = sub_1AFDFC1B8();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  sub_1AFC4BB8C(v3, v6);
}

@end