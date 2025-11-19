@interface XPCServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)dealloc;
- (void)transport:(unsigned int)a3 completionHandler:(id)a4;
- (void)transport:(unsigned int)a3 data:(NSData *)a4 completionHandler:(id)a5;
@end

@implementation XPCServer

- (void)dealloc
{
  v2 = qword_2814EAD90;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_2330F23C0();
  __swift_project_value_buffer(v4, qword_2814EBDB0);
  sub_2330C0140(0xD000000000000057, 0x80000002330F8AB0, 0x6164696C61766E69, 0xEC00000029286574);
  v5 = OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener;
  [*(&v3->super.isa + OBJC_IVAR____TtC15VisionCompanion9XPCServer_listener) setDelegate_];
  [*(&v3->super.isa + v5) invalidate];
  v6.receiver = v3;
  v6.super_class = type metadata accessor for XPCServer();
  [(XPCServer *)&v6 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2330DB990(v7);

  return v9 & 1;
}

- (void)transport:(unsigned int)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = v12;
  *(v13 + 32) = self;
  v14 = sub_2330F2890();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2330F68B0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2330F68B8;
  v16[5] = v15;
  v17 = self;
  sub_2330DB440(0, 0, v11, &unk_2330F68C0, v16);
}

- (void)transport:(unsigned int)a3 data:(NSData *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = v14;
  *(v15 + 40) = self;
  v16 = sub_2330F2890();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2330F6868;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2330F6878;
  v18[5] = v17;
  v19 = a4;
  v20 = self;
  sub_2330DB440(0, 0, v13, &unk_2330F6888, v18);
}

@end