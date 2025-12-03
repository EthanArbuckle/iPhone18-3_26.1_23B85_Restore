@interface REMCustomSmartListFilterDescriptor
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMCustomSmartListFilterDescriptor

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  REMCustomSmartListFilterDescriptor.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2303105E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = REMCustomSmartListFilterDescriptor.isEqual(_:)(v8);

  sub_230061918(v8, &qword_27DB14810);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  REMCustomSmartListFilterDescriptor.description.getter();

  v3 = sub_23030F8B8();

  return v3;
}

@end