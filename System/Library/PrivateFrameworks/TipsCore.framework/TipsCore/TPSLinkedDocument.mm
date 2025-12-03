@interface TPSLinkedDocument
+ (id)linkedDocumentFromDictionary:(id)dictionary;
- (TPSLinkedDocument)init;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSLinkedDocument

+ (id)linkedDocumentFromDictionary:(id)dictionary
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C00FB2F4(coderCopy);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1C00FB694(zone, v7);

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