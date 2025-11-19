@interface RequestContextData
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RequestContextData

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2230DB5E8();
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_223200314();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v5 = self;
  }

  sub_223182F7C();
  v7 = v6;

  sub_2230D40E0(v9, &qword_27D0580F8, &unk_223208E30);
  return v7 & 1;
}

- (NSString)debugDescription
{
  v2 = self;
  sub_223183630();

  v3 = sub_2232000A4();

  return v3;
}

@end