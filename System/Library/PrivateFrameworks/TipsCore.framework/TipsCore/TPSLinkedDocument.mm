@interface TPSLinkedDocument
+ (id)linkedDocumentFromDictionary:(id)a3;
- (TPSLinkedDocument)init;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSLinkedDocument

+ (id)linkedDocumentFromDictionary:(id)a3
{
  v3 = sub_1C014C170();
  v4 = _s8TipsCore14LinkedDocumentC06linkedD14FromDictionary10dictionarySDys11AnyHashableVypGSgAH_tFZ_0(v3);

  if (v4)
  {
    v5 = sub_1C014C160();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C00FB2F4(v4);
}

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_1C00FB694(a3, v7);

  __swift_project_boxed_opaque_existential_0(v7, v7[3]);
  v5 = sub_1C014C9E0();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

- (TPSLinkedDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end