@interface PommesRenderOptions
- (_TtC21SiriInformationSearch19PommesRenderOptions)init;
- (_TtC21SiriInformationSearch19PommesRenderOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PommesRenderOptions

- (_TtC21SiriInformationSearch19PommesRenderOptions)init
{
  ObjectType = swift_getObjectType();
  v4 = (*(ObjectType + 128))(destructiveProjectEnumData for UserPromptExperience.PromptType, 0);
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x30);
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v4;
}

- (_TtC21SiriInformationSearch19PommesRenderOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized PommesRenderOptions.init(coder:)(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PommesRenderOptions.encode(with:)(coderCopy);
}

@end