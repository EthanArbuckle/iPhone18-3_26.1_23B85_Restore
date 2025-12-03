@interface AXPBackedAccessibilityServerPrimitives
- (_TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives)init;
- (id)accessibilityTranslationTransportAddReceiveDataHandler:(id)handler;
- (void)accessibilityTranslationTransportCancel;
- (void)accessibilityTranslationTransportSendData:(NSData *)data completionHandler:(id)handler;
@end

@implementation AXPBackedAccessibilityServerPrimitives

- (_TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpTransportDataHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_accessibilityDataSubject;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8B470, qword_264B4BB60);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(&self->super.isa + v4) = sub_264B409D4();
  *(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpManager) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for AXPBackedAccessibilityServerPrimitives();
  return [(AXPBackedAccessibilityServerPrimitives *)&v9 init];
}

- (void)accessibilityTranslationTransportSendData:(NSData *)data completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = data;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_264B41274();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_264B507B0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_264B507C0;
  v15[5] = v14;
  dataCopy = data;
  selfCopy = self;
  sub_264A9F958(0, 0, v10, &unk_264B507D0, v15);
}

- (id)accessibilityTranslationTransportAddReceiveDataHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpTransportDataHandler);
  v7 = *(&self->super.isa + OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpTransportDataHandler);
  v8 = *&self->axpTransportDataHandler[OBJC_IVAR____TtC16ScreenSharingKit38AXPBackedAccessibilityServerPrimitives_axpTransportDataHandler];
  *v6 = sub_264A9FFB4;
  v6[1] = v5;
  selfCopy = self;
  sub_2649CB67C(v7);

  return selfCopy;
}

- (void)accessibilityTranslationTransportCancel
{
  v0 = sub_264B3FFD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF88400 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FF8AE58);
  v6 = sub_264B41484();
  sub_264B3FF94();
  v7 = sub_264B3FFA4();
  v9 = v8;
  (*(v1 + 8))(v4, v0);

  v10 = sub_264B40944();

  if (os_log_type_enabled(v10, v6))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446722;
    v13 = sub_2649CC004(v7, v9, &v15);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    *(v11 + 14) = 67;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2649CC004(0xD000000000000029, 0x8000000264B5EEB0, &v15);
    _os_log_impl(&dword_2649C6000, v10, v6, "%{public}s:%{public}ld %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }
}

@end