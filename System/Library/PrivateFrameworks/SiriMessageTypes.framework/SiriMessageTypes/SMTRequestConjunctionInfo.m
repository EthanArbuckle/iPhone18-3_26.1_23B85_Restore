@interface SMTRequestConjunctionInfo
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMTRequestConjunctionInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  RequestConjunctionInfo.encode(with:)(v4);
}

- (NSString)debugDescription
{
  v2 = self;
  RequestConjunctionInfo.debugDescription.getter();

  v3 = sub_2232000A4();

  return v3;
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
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = RequestConjunctionInfo.isEqual(_:)(v8);

  sub_22318118C(v8);
  return v6;
}

@end