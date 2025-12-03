@interface SMTRequestConjunctionInfo
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMTRequestConjunctionInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  RequestConjunctionInfo.encode(with:)(coderCopy);
}

- (NSString)debugDescription
{
  selfCopy = self;
  RequestConjunctionInfo.debugDescription.getter();

  v3 = sub_2232000A4();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_223200314();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = RequestConjunctionInfo.isEqual(_:)(v8);

  sub_22318118C(v8);
  return v6;
}

@end