@interface PommesRenderOptions
- (_TtC21SiriInformationSearch19PommesRenderOptions)init;
- (_TtC21SiriInformationSearch19PommesRenderOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (_TtC21SiriInformationSearch19PommesRenderOptions)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized PommesRenderOptions.init(coder:)(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  PommesRenderOptions.encode(with:)(v4);
}

@end