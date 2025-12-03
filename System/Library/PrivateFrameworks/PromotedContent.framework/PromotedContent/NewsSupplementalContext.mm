@interface NewsSupplementalContext
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(void *)zone;
@end

@implementation NewsSupplementalContext

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1C1AA5ED0(v6);

  sub_1C1AAABE0(v6, v6[3]);
  v4 = sub_1C1B95878();
  sub_1C1AA86F8(v6);
  return v4;
}

- (NSDictionary)dictionaryRepresentation
{
  selfCopy = self;
  sub_1C1AB7364();

  sub_1C1AC1F08(&qword_1EBF08210, &qword_1C1BA4330);
  v3 = sub_1C1B94CA8();

  return v3;
}

@end