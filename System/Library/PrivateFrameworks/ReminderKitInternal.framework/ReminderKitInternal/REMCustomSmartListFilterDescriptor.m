@interface REMCustomSmartListFilterDescriptor
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMCustomSmartListFilterDescriptor

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  REMCustomSmartListFilterDescriptor.encode(with:)(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2303105E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = REMCustomSmartListFilterDescriptor.isEqual(_:)(v8);

  sub_230061918(v8, &qword_27DB14810);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  REMCustomSmartListFilterDescriptor.description.getter();

  v3 = sub_23030F8B8();

  return v3;
}

@end