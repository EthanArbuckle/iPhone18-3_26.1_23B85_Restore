@interface SizeDimensionRequest
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SizeDimensionRequest

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_267533C74();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_26750A970(v8);

  sub_26750AAA4(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  sub_26750ABEC();

  v3 = sub_2675339C4();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_26750AD24(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_267533E24();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26750AE14(v4);
}

- (void)encodeWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_26750B210(a3);
  swift_unknownObjectRelease();
}

@end