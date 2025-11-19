@interface ImageElement
- (_TtC8RemoteUI12ImageElement)init;
- (_TtC8RemoteUI12ImageElement)initWithAttributes:(id)a3 parent:(id)a4;
- (id)sourceURL;
- (void)setImage:(id)a3;
- (void)setImageSize:(CGSize)a3;
- (void)setTintColor:(id)a3;
@end

@implementation ImageElement

- (void)setImage:(id)a3
{
  v5 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x78);
  v6 = a3;
  v7 = self;
  v5(a3);
}

- (void)setImageSize:(CGSize)a3
{
  width = a3.width;
  height = a3.height;
  v5 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xA8);
  v6 = self;
  v5(*&width, *&height, 0);
}

- (void)setTintColor:(id)a3
{
  v5 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0xD8);
  v6 = a3;
  v7 = self;
  v5(a3);
}

- (id)sourceURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9DBA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x100);
  v7 = self;
  v6();

  v8 = sub_21BA864AC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_21BA8641C();
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  return v11;
}

- (_TtC8RemoteUI12ImageElement)initWithAttributes:(id)a3 parent:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8RemoteUI12ImageElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end