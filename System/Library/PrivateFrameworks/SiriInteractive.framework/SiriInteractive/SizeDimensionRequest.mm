@interface SizeDimensionRequest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SizeDimensionRequest

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_267533C74();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_26750A970(v8);

  sub_26750AAA4(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  sub_26750ABEC();

  v3 = sub_2675339C4();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_26750AD24(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_267533E24();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_26750AE14(coderCopy);
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_26750B210(dictionary);
  swift_unknownObjectRelease();
}

@end