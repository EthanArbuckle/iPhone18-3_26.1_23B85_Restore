@interface _SEExtensionProcess
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (_SEExtensionProcess)init;
- (id)makeLibXPCConnectionError:(id *)a3;
- (void)invalidate;
@end

@implementation _SEExtensionProcess

- (id)makeLibXPCConnectionError:(id *)a3
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x50))(v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v7);

  return v5;
}

- (void)invalidate
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x50))(v4);
  v2 = v5;
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v3 + 40))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  (*((*MEMORY[0x277D85000] & self->super.isa) + 0x50))(v17);
  v4 = v18;
  v5 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v6 = (*(v5 + 48))(v4, v5);
  v7 = v6;
  LODWORD(v4) = v8;
  LODWORD(v5) = v9;
  v11 = v10;
  v12 = HIDWORD(v6);
  v13 = HIDWORD(v8);
  v14 = HIDWORD(v9);
  v15 = HIDWORD(v10);
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  retstr->var0[0] = v7;
  retstr->var0[1] = v12;
  retstr->var0[2] = v4;
  retstr->var0[3] = v13;
  retstr->var0[4] = v5;
  retstr->var0[5] = v14;
  retstr->var0[6] = v11;
  retstr->var0[7] = v15;
  return result;
}

- (_SEExtensionProcess)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _SEExtensionProcess();
  return [(_SEExtensionProcess *)&v3 init];
}

@end