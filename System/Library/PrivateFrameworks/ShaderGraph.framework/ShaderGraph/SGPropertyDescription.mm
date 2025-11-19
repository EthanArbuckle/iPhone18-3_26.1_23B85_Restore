@interface SGPropertyDescription
+ (id)create:(id)a3 type:(id)a4;
- (NSString)description;
- (NSString)name;
- (SGPropertyDescription)init;
@end

@implementation SGPropertyDescription

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___SGPropertyDescription_name);
  v3 = *(self + OBJC_IVAR___SGPropertyDescription_name + 8);

  v4 = MEMORY[0x266771450](v2, v3);

  return v4;
}

+ (id)create:(id)a3 type:(id)a4
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = objc_allocWithZone(ObjCClassMetadata);
  v10 = &v9[OBJC_IVAR___SGPropertyDescription_name];
  *v10 = v6;
  v10[1] = v8;
  *&v9[OBJC_IVAR___SGPropertyDescription_type] = a4;
  v9[OBJC_IVAR___SGPropertyDescription_visible] = 1;
  v14.receiver = v9;
  v14.super_class = ObjCClassMetadata;
  v11 = a4;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

- (NSString)description
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return @objc SGTypeDescription.description.getter(self, a2, closure #1 in SGPropertyDescription.description.getter);
}

- (SGPropertyDescription)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end