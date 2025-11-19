uint64_t sub_260F98DB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2610BCA04();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_260F98E04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_260F98E14(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_260F98E2C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_260F98EB4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE63E90;
  return result;
}

uint64_t sub_260F98F00(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE63E90 = v1;
  return result;
}

id sub_260F98F48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_dsid;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_260F990BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_isMe;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_260F99114(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_isMe;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_260F99198()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F991D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_260F99220(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_260F99278@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 144);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_260F992C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 144) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_260F99320()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 112) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  v8 = *(v0 + 10);

  v9 = *(v0 + 12);

  v10 = *(v0 + 13);

  (*(v2 + 8))(&v0[v4], v1);
  v11 = *&v0[v5];

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_260F99410()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_260F99450()
{
  v1 = *(v0 + 3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v2 = sub_2610BCC24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 96) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 6);

  v8 = *(v0 + 8);

  v9 = *(v0 + 10);

  v10 = *(v0 + 11);

  (*(v3 + 8))(&v0[v5], v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_260F99554()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_260F9959C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[18];

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

void *sub_260F99624()
{
  v1 = *(*v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_260F99650()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_260F996F0(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260F9970C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F997D8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_260F99874()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_260FDD3C0(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_260F9995C()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_260F999B4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE647B0;
  return result;
}

uint64_t sub_260F99A00(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE647B0 = v1;
  return result;
}

id sub_260F99AC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_flowStepAllSetContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_260F99B48()
{
  v1 = *(v0 + 4);
  v2 = *(sub_2610BCE64() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2610BC5D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 5);

  v12 = *(v1 - 8);
  if (!(*(v12 + 48))(&v0[v4], 1, v1))
  {
    (*(v12 + 8))(&v0[v4], v1);
  }

  v13 = v3 | v8;
  v14 = (v4 + v5 + v8) & ~v8;
  (*(v7 + 8))(&v0[v14], v6);

  return MEMORY[0x2821FE8E8](v0, v14 + v9, v13 | 7);
}

uint64_t sub_260F99CEC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE64970;
  return result;
}

uint64_t sub_260F99D38(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE64970 = v1;
  return result;
}

uint64_t sub_260F99E04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_imageColor;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_260F99E60(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_imageColor;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_260F99EC0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F99EF8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE64A30;
  return result;
}

uint64_t sub_260F99F44(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE64A30 = v1;
  return result;
}

uint64_t sub_260F99F8C(uint64_t result)
{
  v1 = *(result + 168) & 3;
  *(result + 80) &= 3uLL;
  *(result + 168) = v1;
  return result;
}

double sub_260F99FB0(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_260F99FD4(uint64_t result)
{
  v1 = *(result + 168) & 3 | 0x4000000000000000;
  *(result + 80) &= 3uLL;
  *(result + 168) = v1;
  return result;
}

uint64_t sub_260F9A004()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9A040()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64D98, &qword_2610C4550);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_260F9A118()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64DB8, qword_2610C4560);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_260F9A210()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9A248()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_260F9A288()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260F9A2D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_260F9A2E8()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_260F9A330()
{
  v1 = *(v0 + 48);

  if (*(v0 + 56))
  {
    v2 = *(v0 + 64);
  }

  if (*(v0 + 72))
  {
    v3 = *(v0 + 80);
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_260F9A390(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2610BC614();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_260F9A43C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2610BC614();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_260F9A4E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65258, &qword_2610C5970);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_260F9A57C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9A5B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_260F9A618()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260F9A658()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260F9A800@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27FE654D0;
}

uint64_t sub_260F9A86C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260F9A910()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_260F9A950()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9A98C()
{
  if (*(v0 + 64))
  {
  }

  else
  {
    if (*(v0 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    }

    v1 = *(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_260F9A9EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_260F9AA3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_260F9AAA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9AADC()
{
  if (*(v0 + 64))
  {
  }

  else
  {
    if (*(v0 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    }

    v1 = *(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_260F9AB38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_260F9AB88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_260F9ABE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_260F9AC28(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_260F9AC70()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_260F9ACE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260F9AD38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);
  v3 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_260F9AD88()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_260F9ADD0()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_260F9AE94()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v8 = *&v0[v5 + 8];

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_260F9AF70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260F9AFA8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_260F9B064()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260F9B0A4()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 4))
  {
    v5 = *(v0 + 5);
  }

  v6 = (v3 + 48) & ~v3;
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(&v0[v6], v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_260F9B174()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9B1C8()
{
  v1 = sub_2610BC5D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  if (*(v0 + 5))
  {
    v7 = *(v0 + 6);
  }

  v8 = (v3 + 56) & ~v3;
  (*(v2 + 8))(&v0[v8], v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v4, v3 | 7);
}

uint64_t sub_260F9B2BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_26104E3D0(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_260F9B308()
{
  v1 = *(v0 + 16);

  sub_26104E3D0(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

__n128 sub_260F9B3A0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_260F9B52C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260F9B564()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9B59C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  sub_26104E3D0(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_260F9B620()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260F9B660()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260F9B698()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_260F9B6D0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE65B10;
  return result;
}

uint64_t sub_260F9B71C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE65B10 = v1;
  return result;
}

uint64_t sub_260F9B794()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9B7D0()
{
  v1 = 0x6E496E676973;
  if (*v0 != 1)
  {
    v1 = 0x69746E6568747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B616873646E6168;
  }
}

uint64_t sub_260F9B834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261062658(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260F9B85C(uint64_t result)
{
  v1 = *(result + 168) & 3 | 0x8000000000000000;
  *(result + 80) &= 3uLL;
  *(result + 168) = v1;
  return result;
}

uint64_t sub_260F9B87C()
{
  sub_260FF3654(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_260FF3654(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 105, 7);
}

uint64_t sub_260F9B8E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 168) & 3 | (a2 << 62);
  *(result + 80) &= 3uLL;
  *(result + 168) = v2;
  return result;
}

uint64_t sub_260F9B91C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_260FDD3C0(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_260F9BA08()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_260F9BA60()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_260F9BAAC()
{
  MEMORY[0x2666F87E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9BAE4()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v2 = sub_2610BCC24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_260F9BB94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260F9BBCC()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260F9BC18()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_260F9BC50()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_260F9BCE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260F9BD28()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);
  }

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_260F9BD88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_260F9BDF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260F9BE28()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_260F9BE70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260F9BEB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260F9BEE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_260F9BF30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260F9BF74()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9BFAC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE66650;
  return result;
}

uint64_t sub_260F9BFF8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE66650 = v1;
  return result;
}

uint64_t sub_260F9C09C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_260F9C0E0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_260F9C120()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_260F9C168()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9C1A8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_260F9C1F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_260F9C258()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260F9C290()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_260F9C2F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_260F9C304()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v2 = sub_2610BCC24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = *(v0 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_260F9C400()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260F9C438()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_260F9C490()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t get_enum_tag_for_layout_string_xq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyxxIsegHirzo_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_260F9C55C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_260F9C578@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_2610BCE64();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_260F9C624(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_2610BCE64();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t PASService.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  (*(*(*(*v3 + 80) - 8) + 56))(v3 + *(*v3 + 88), 1, 1);
  return v3;
}

uint64_t sub_260F9C7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - v7;
  v9 = sub_2610BCE64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  sub_260F9C578(&v15 - v12);
  if ((*(v5 + 48))(v13, 1, v4) != 1)
  {
    return (*(v5 + 32))(a2, v13, v4);
  }

  (*(v10 + 8))(v13, v9);
  type metadata accessor for PASServices();
  sub_260F9CA04(v4, v8);
  (*(v5 + 16))(a2, v8, v4);
  sub_260F9CA70(v2, v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_260F9CA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27FE637E0 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a2 = v4;
    a1 = v3;
  }

  return sub_260FA2770(a1, a2);
}

uint64_t sub_260F9CA70(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 80);
  v4 = sub_2610BCE64();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a2, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  return sub_260F9C624(v7);
}

uint64_t PASService.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_2610BCE64();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t PASService.__deallocating_deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_2610BCE64();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

unint64_t sub_260F9CCB8()
{
  type metadata accessor for PASServices();
  v0 = swift_allocObject();
  result = sub_260FA907C(MEMORY[0x277D84F90], &qword_27FE66760, &unk_2610CE620);
  *(v0 + 16) = result;
  qword_27FE637E8 = v0;
  return result;
}

uint64_t static PASServices.shared.getter()
{
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_260F9CD6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C50, &qword_2610BEE18);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C58, &qword_2610BEE20);
  v26 = v1;
  sub_260FA3F5C(&v26, v25);
  v2 = sub_2610BCA34();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (*(v5 + 16) && (v6 = sub_260FA5FBC(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    swift_unknownObjectRetain_n();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      swift_unknownObjectRelease();

      return v8;
    }

    swift_unknownObjectRelease();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v16 = sub_2610BC7B4();
    __swift_project_value_buffer(v16, qword_27FE65900);

    swift_unknownObjectRetain();
    v17 = sub_2610BC794();
    v18 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_260FA5970(v2, v4, &v26);
      *(v19 + 12) = 2082;
      swift_getObjectType();
      v21 = sub_2610BD634();
      v23 = sub_260FA5970(v21, v22, &v26);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_260F97000, v17, v18, "PASServices getService for %{public}s - wrong type: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v20, -1, -1);
      MEMORY[0x2666F8720](v19, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v24 = sub_2610BD634();
    MEMORY[0x2666F7380](v24);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v11 = sub_2610BC7B4();
    __swift_project_value_buffer(v11, qword_27FE65900);

    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_260FA5970(v2, v4, &v26);
      _os_log_impl(&dword_260F97000, v12, v13, "PASServices getService for %{public}s - not registered", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260F9D258@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C60, &qword_2610BEE28);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C68, &unk_2610BEE30);
  *&v26 = v3;
  sub_260FA3F5C(&v26, v29);
  v4 = sub_2610BCA34();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_260FA5FBC(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v29[0] = v10;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      return sub_260F98E14(&v26, a1);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_260FA9980(&v26, &qword_27FE63C70, &unk_2610C0780);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    swift_unknownObjectRetain();
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_260FA5970(v4, v6, &v26);
      *(v20 + 12) = 2082;
      swift_getObjectType();
      v22 = sub_2610BD634();
      v24 = sub_260FA5970(v22, v23, &v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_260F97000, v18, v19, "PASServices getService for %{public}s - wrong type: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v25 = sub_2610BD634();
    MEMORY[0x2666F7380](v25);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_260FA5970(v4, v6, &v26);
      _os_log_impl(&dword_260F97000, v13, v14, "PASServices getService for %{public}s - not registered", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260F9D764()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C78, &qword_2610BEE40);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C80, &qword_2610BEE48);
  v26 = v1;
  sub_260FA3F5C(&v26, v25);
  v2 = sub_2610BCA34();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (*(v5 + 16) && (v6 = sub_260FA5FBC(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    swift_unknownObjectRetain_n();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      swift_unknownObjectRelease();

      return v8;
    }

    swift_unknownObjectRelease();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v16 = sub_2610BC7B4();
    __swift_project_value_buffer(v16, qword_27FE65900);

    swift_unknownObjectRetain();
    v17 = sub_2610BC794();
    v18 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_260FA5970(v2, v4, &v26);
      *(v19 + 12) = 2082;
      swift_getObjectType();
      v21 = sub_2610BD634();
      v23 = sub_260FA5970(v21, v22, &v26);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_260F97000, v17, v18, "PASServices getService for %{public}s - wrong type: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v20, -1, -1);
      MEMORY[0x2666F8720](v19, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v24 = sub_2610BD634();
    MEMORY[0x2666F7380](v24);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v11 = sub_2610BC7B4();
    __swift_project_value_buffer(v11, qword_27FE65900);

    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_260FA5970(v2, v4, &v26);
      _os_log_impl(&dword_260F97000, v12, v13, "PASServices getService for %{public}s - not registered", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260F9DC50@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C88, &qword_2610BEE50);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63C90, &qword_2610BEE58);
  *&v26 = v3;
  sub_260FA3F5C(&v26, v29);
  v4 = sub_2610BCA34();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_260FA5FBC(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v29[0] = v10;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      return sub_260F98E14(&v26, a1);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_260FA9980(&v26, &qword_27FE65000, &qword_2610BEE60);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    swift_unknownObjectRetain();
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_260FA5970(v4, v6, &v26);
      *(v20 + 12) = 2082;
      swift_getObjectType();
      v22 = sub_2610BD634();
      v24 = sub_260FA5970(v22, v23, &v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_260F97000, v18, v19, "PASServices getService for %{public}s - wrong type: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v25 = sub_2610BD634();
    MEMORY[0x2666F7380](v25);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_260FA5970(v4, v6, &v26);
      _os_log_impl(&dword_260F97000, v13, v14, "PASServices getService for %{public}s - not registered", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260F9E15C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CA0, &qword_2610BEE68);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CA8, &unk_2610BEE70);
  *&v26 = v3;
  sub_260FA3F5C(&v26, v29);
  v4 = sub_2610BCA34();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_260FA5FBC(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v29[0] = v10;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      return sub_260F98E14(&v26, a1);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_260FA9980(&v26, &qword_27FE63CB0, &unk_2610BFDB0);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    swift_unknownObjectRetain();
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_260FA5970(v4, v6, &v26);
      *(v20 + 12) = 2082;
      swift_getObjectType();
      v22 = sub_2610BD634();
      v24 = sub_260FA5970(v22, v23, &v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_260F97000, v18, v19, "PASServices getService for %{public}s - wrong type: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v25 = sub_2610BD634();
    MEMORY[0x2666F7380](v25);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_260FA5970(v4, v6, &v26);
      _os_log_impl(&dword_260F97000, v13, v14, "PASServices getService for %{public}s - not registered", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260F9E668@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BF0, &qword_2610BEDC0);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BF8, &qword_2610BEDC8);
  *&v26 = v3;
  sub_260FA3F5C(&v26, v29);
  v4 = sub_2610BCA34();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_260FA5FBC(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v29[0] = v10;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      return sub_260F98E14(&v26, a1);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_260FA9980(&v26, &unk_27FE63C00, &qword_2610BEDD0);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    swift_unknownObjectRetain();
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_260FA5970(v4, v6, &v26);
      *(v20 + 12) = 2082;
      swift_getObjectType();
      v22 = sub_2610BD634();
      v24 = sub_260FA5970(v22, v23, &v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_260F97000, v18, v19, "PASServices getService for %{public}s - wrong type: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v25 = sub_2610BD634();
    MEMORY[0x2666F7380](v25);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_260FA5970(v4, v6, &v26);
      _os_log_impl(&dword_260F97000, v13, v14, "PASServices getService for %{public}s - not registered", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260F9EB74@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AC0, &qword_2610BECD8);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AC8, qword_2610BECE0);
  *&v26 = v3;
  sub_260FA3F5C(&v26, v29);
  v4 = sub_2610BCA34();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_260FA5FBC(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v29[0] = v10;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      return sub_260F98E14(&v26, a1);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_260FA9980(&v26, &qword_27FE63AD0, qword_2610C7BC0);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    swift_unknownObjectRetain();
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_260FA5970(v4, v6, &v26);
      *(v20 + 12) = 2082;
      swift_getObjectType();
      v22 = sub_2610BD634();
      v24 = sub_260FA5970(v22, v23, &v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_260F97000, v18, v19, "PASServices getService for %{public}s - wrong type: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v25 = sub_2610BD634();
    MEMORY[0x2666F7380](v25);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_260FA5970(v4, v6, &v26);
      _os_log_impl(&dword_260F97000, v13, v14, "PASServices getService for %{public}s - not registered", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260F9F080@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63B00, &qword_2610BED20);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63B08, &qword_2610BED28);
  *&v26 = v3;
  sub_260FA3F5C(&v26, v29);
  v4 = sub_2610BCA34();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_260FA5FBC(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v29[0] = v10;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      return sub_260F98E14(&v26, a1);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_260FA9980(&v26, &qword_27FE63B10, &qword_2610BED30);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    swift_unknownObjectRetain();
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_260FA5970(v4, v6, &v26);
      *(v20 + 12) = 2082;
      swift_getObjectType();
      v22 = sub_2610BD634();
      v24 = sub_260FA5970(v22, v23, &v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_260F97000, v18, v19, "PASServices getService for %{public}s - wrong type: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v25 = sub_2610BD634();
    MEMORY[0x2666F7380](v25);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_260FA5970(v4, v6, &v26);
      _os_log_impl(&dword_260F97000, v13, v14, "PASServices getService for %{public}s - not registered", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260F9F58C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63838, &qword_2610BE8E8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63840, &unk_2610BE8F0);
  v26 = v1;
  sub_260FA3F5C(&v26, v25);
  v2 = sub_2610BCA34();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (*(v5 + 16) && (v6 = sub_260FA5FBC(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    swift_unknownObjectRetain_n();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      swift_unknownObjectRelease();

      return v8;
    }

    swift_unknownObjectRelease();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v16 = sub_2610BC7B4();
    __swift_project_value_buffer(v16, qword_27FE65900);

    swift_unknownObjectRetain();
    v17 = sub_2610BC794();
    v18 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_260FA5970(v2, v4, &v26);
      *(v19 + 12) = 2082;
      swift_getObjectType();
      v21 = sub_2610BD634();
      v23 = sub_260FA5970(v21, v22, &v26);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_260F97000, v17, v18, "PASServices getService for %{public}s - wrong type: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v20, -1, -1);
      MEMORY[0x2666F8720](v19, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v24 = sub_2610BD634();
    MEMORY[0x2666F7380](v24);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v11 = sub_2610BC7B4();
    __swift_project_value_buffer(v11, qword_27FE65900);

    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_260FA5970(v2, v4, &v26);
      _os_log_impl(&dword_260F97000, v12, v13, "PASServices getService for %{public}s - not registered", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260F9FA78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE638A0, &qword_2610BE948);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE638A8, &qword_2610BE950);
  v26 = v1;
  sub_260FA3F5C(&v26, v25);
  v2 = sub_2610BCA34();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (*(v5 + 16) && (v6 = sub_260FA5FBC(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    swift_unknownObjectRetain_n();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      swift_unknownObjectRelease();

      return v8;
    }

    swift_unknownObjectRelease();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v16 = sub_2610BC7B4();
    __swift_project_value_buffer(v16, qword_27FE65900);

    swift_unknownObjectRetain();
    v17 = sub_2610BC794();
    v18 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_260FA5970(v2, v4, &v26);
      *(v19 + 12) = 2082;
      swift_getObjectType();
      v21 = sub_2610BD634();
      v23 = sub_260FA5970(v21, v22, &v26);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_260F97000, v17, v18, "PASServices getService for %{public}s - wrong type: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v20, -1, -1);
      MEMORY[0x2666F8720](v19, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v24 = sub_2610BD634();
    MEMORY[0x2666F7380](v24);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v11 = sub_2610BC7B4();
    __swift_project_value_buffer(v11, qword_27FE65900);

    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_260FA5970(v2, v4, &v26);
      _os_log_impl(&dword_260F97000, v12, v13, "PASServices getService for %{public}s - not registered", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260F9FF64@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63B80, &qword_2610BED40);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63B88, &qword_2610BED48);
  *&v26 = v3;
  sub_260FA3F5C(&v26, v29);
  v4 = sub_2610BCA34();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_260FA5FBC(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v29[0] = v10;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      return sub_260F98E14(&v26, a1);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_260FA9980(&v26, &unk_27FE63B90, &unk_2610BED50);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    swift_unknownObjectRetain();
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_260FA5970(v4, v6, &v26);
      *(v20 + 12) = 2082;
      swift_getObjectType();
      v22 = sub_2610BD634();
      v24 = sub_260FA5970(v22, v23, &v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_260F97000, v18, v19, "PASServices getService for %{public}s - wrong type: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v25 = sub_2610BD634();
    MEMORY[0x2666F7380](v25);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_260FA5970(v4, v6, &v26);
      _os_log_impl(&dword_260F97000, v13, v14, "PASServices getService for %{public}s - not registered", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260FA0470@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AE8, &qword_2610BED08);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63AF0, &unk_2610BED10);
  *&v26 = v3;
  sub_260FA3F5C(&v26, v29);
  v4 = sub_2610BCA34();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_260FA5FBC(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v29[0] = v10;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      return sub_260F98E14(&v26, a1);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_260FA9980(&v26, &qword_27FE664F0, &qword_2610CD6D0);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    swift_unknownObjectRetain();
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_260FA5970(v4, v6, &v26);
      *(v20 + 12) = 2082;
      swift_getObjectType();
      v22 = sub_2610BD634();
      v24 = sub_260FA5970(v22, v23, &v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_260F97000, v18, v19, "PASServices getService for %{public}s - wrong type: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v25 = sub_2610BD634();
    MEMORY[0x2666F7380](v25);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_260FA5970(v4, v6, &v26);
      _os_log_impl(&dword_260F97000, v13, v14, "PASServices getService for %{public}s - not registered", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260FA097C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BC0, &qword_2610BED80);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BC8, &qword_2610BED88);
  *&v26 = v3;
  sub_260FA3F5C(&v26, v29);
  v4 = sub_2610BCA34();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_260FA5FBC(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v29[0] = v10;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      return sub_260F98E14(&v26, a1);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_260FA9980(&v26, &qword_27FE63BD0, &qword_2610BED90);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    swift_unknownObjectRetain();
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_260FA5970(v4, v6, &v26);
      *(v20 + 12) = 2082;
      swift_getObjectType();
      v22 = sub_2610BD634();
      v24 = sub_260FA5970(v22, v23, &v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_260F97000, v18, v19, "PASServices getService for %{public}s - wrong type: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v25 = sub_2610BD634();
    MEMORY[0x2666F7380](v25);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_260FA5970(v4, v6, &v26);
      _os_log_impl(&dword_260F97000, v13, v14, "PASServices getService for %{public}s - not registered", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260FA0E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AD8, &qword_2610BECF8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AE0, &qword_2610BED00);
  v26 = v1;
  sub_260FA3F5C(&v26, v25);
  v2 = sub_2610BCA34();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (*(v5 + 16) && (v6 = sub_260FA5FBC(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    swift_unknownObjectRetain_n();
    v9 = swift_dynamicCastObjCProtocolConditional();
    swift_unknownObjectRelease();
    if (v9)
    {

      return v9;
    }

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v16 = sub_2610BC7B4();
    __swift_project_value_buffer(v16, qword_27FE65900);

    swift_unknownObjectRetain();
    v17 = sub_2610BC794();
    v18 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_260FA5970(v2, v4, &v26);
      *(v19 + 12) = 2082;
      swift_getObjectType();
      v21 = sub_2610BD634();
      v23 = sub_260FA5970(v21, v22, &v26);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_260F97000, v17, v18, "PASServices getService for %{public}s - wrong type: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v20, -1, -1);
      MEMORY[0x2666F8720](v19, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v24 = sub_2610BD634();
    MEMORY[0x2666F7380](v24);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v11 = sub_2610BC7B4();
    __swift_project_value_buffer(v11, qword_27FE65900);

    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_260FA5970(v2, v4, &v26);
      _os_log_impl(&dword_260F97000, v12, v13, "PASServices getService for %{public}s - not registered", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260FA135C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BA8, &qword_2610BED68);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63BB0, &unk_2610BED70);
  *&v26 = v3;
  sub_260FA3F5C(&v26, v29);
  v4 = sub_2610BCA34();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_260FA5FBC(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v29[0] = v10;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      return sub_260F98E14(&v26, a1);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_260FA9980(&v26, &unk_27FE658C0, qword_2610C8270);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    swift_unknownObjectRetain();
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_260FA5970(v4, v6, &v26);
      *(v20 + 12) = 2082;
      swift_getObjectType();
      v22 = sub_2610BD634();
      v24 = sub_260FA5970(v22, v23, &v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_260F97000, v18, v19, "PASServices getService for %{public}s - wrong type: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v25 = sub_2610BD634();
    MEMORY[0x2666F7380](v25);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_260FA5970(v4, v6, &v26);
      _os_log_impl(&dword_260F97000, v13, v14, "PASServices getService for %{public}s - not registered", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260FA1868()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63888, &qword_2610BE930);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63890, &qword_2610BE938);
  v26 = v1;
  sub_260FA3F5C(&v26, v25);
  v2 = sub_2610BCA34();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (*(v5 + 16) && (v6 = sub_260FA5FBC(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    swift_unknownObjectRetain_n();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      swift_unknownObjectRelease();

      return v8;
    }

    swift_unknownObjectRelease();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v16 = sub_2610BC7B4();
    __swift_project_value_buffer(v16, qword_27FE65900);

    swift_unknownObjectRetain();
    v17 = sub_2610BC794();
    v18 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_260FA5970(v2, v4, &v26);
      *(v19 + 12) = 2082;
      swift_getObjectType();
      v21 = sub_2610BD634();
      v23 = sub_260FA5970(v21, v22, &v26);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_260F97000, v17, v18, "PASServices getService for %{public}s - wrong type: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v20, -1, -1);
      MEMORY[0x2666F8720](v19, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v24 = sub_2610BD634();
    MEMORY[0x2666F7380](v24);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v11 = sub_2610BC7B4();
    __swift_project_value_buffer(v11, qword_27FE65900);

    v12 = sub_2610BC794();
    v13 = sub_2610BCD74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_260FA5970(v2, v4, &v26);
      _os_log_impl(&dword_260F97000, v12, v13, "PASServices getService for %{public}s - not registered", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2666F8720](v15, -1, -1);
      MEMORY[0x2666F8720](v14, -1, -1);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_2610BCF84();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v2, v4);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260FA1D7C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63878, &qword_2610BE920);
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63880, &qword_2610BE928);
  *&v26 = v3;
  sub_260FA3F5C(&v26, v29);
  v4 = sub_2610BCA34();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = sub_260FA5FBC(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
    v29[0] = v10;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      return sub_260F98E14(&v26, a1);
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_260FA9980(&v26, &unk_27FE63AB0, qword_2610C95B0);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v17 = sub_2610BC7B4();
    __swift_project_value_buffer(v17, qword_27FE65900);

    swift_unknownObjectRetain();
    v18 = sub_2610BC794();
    v19 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v26 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_260FA5970(v4, v6, &v26);
      *(v20 + 12) = 2082;
      swift_getObjectType();
      v22 = sub_2610BD634();
      v24 = sub_260FA5970(v22, v23, &v26);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_260F97000, v18, v19, "PASServices getService for %{public}s - wrong type: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v25 = sub_2610BD634();
    MEMORY[0x2666F7380](v25);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);

    v13 = sub_2610BC794();
    v14 = sub_2610BCD74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v26 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_260FA5970(v4, v6, &v26);
      _os_log_impl(&dword_260F97000, v13, v14, "PASServices getService for %{public}s - not registered", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x2666F8720](v16, -1, -1);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2610BCF84();

    *&v26 = 0xD00000000000001BLL;
    *(&v26 + 1) = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v4, v6);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260FA22B0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = a1(0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v31 = v6;
  sub_260FA3F5C(&v31, v30);
  v7 = sub_2610BCA34();
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  swift_beginAccess();
  v10 = *(v3 + 16);
  if (*(v10 + 16) && (v11 = sub_260FA5FBC(v7, v9), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
    swift_unknownObjectRetain_n();
    v14 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v14)
    {

      return v14;
    }

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v21 = sub_2610BC7B4();
    __swift_project_value_buffer(v21, qword_27FE65900);

    swift_unknownObjectRetain();
    v22 = sub_2610BC794();
    v23 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136446466;
      *(v24 + 4) = sub_260FA5970(v7, v9, &v31);
      *(v24 + 12) = 2082;
      swift_getObjectType();
      v26 = sub_2610BD634();
      v28 = sub_260FA5970(v26, v27, &v31);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_260F97000, v22, v23, "PASServices getService for %{public}s - wrong type: %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v25, -1, -1);
      MEMORY[0x2666F8720](v24, -1, -1);
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_2610BCF84();

    v31 = 0xD00000000000001BLL;
    v32 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v7, v9);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v29 = sub_2610BD634();
    MEMORY[0x2666F7380](v29);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v16 = sub_2610BC7B4();
    __swift_project_value_buffer(v16, qword_27FE65900);

    v17 = sub_2610BC794();
    v18 = sub_2610BCD74();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_260FA5970(v7, v9, &v31);
      _os_log_impl(&dword_260F97000, v17, v18, "PASServices getService for %{public}s - not registered", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x2666F8720](v20, -1, -1);
      MEMORY[0x2666F8720](v19, -1, -1);
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    sub_2610BCF84();

    v31 = 0xD00000000000001BLL;
    v32 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v7, v9);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

uint64_t sub_260FA2770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2610BCE64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-v8];
  MetatypeMetadata = swift_getMetatypeMetadata();
  v34 = a1;
  sub_260FA3F5C(&v34, v33);
  v10 = sub_2610BCA34();
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_0Tm(&v34);
  swift_beginAccess();
  v13 = *(v2 + 16);
  if (*(v13 + 16) && (v14 = sub_260FA5FBC(v10, v12), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
    v34 = v16;
    swift_unknownObjectRetain_n();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();

      v17 = *(a1 - 8);
      (*(v17 + 56))(v9, 0, 1, a1);
      return (*(v17 + 32))(a2, v9, a1);
    }

    (*(*(a1 - 8) + 56))(v9, 1, 1, a1);
    (*(v6 + 8))(v9, v5);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v24 = sub_2610BC7B4();
    __swift_project_value_buffer(v24, qword_27FE65900);
    swift_unknownObjectRetain();

    v25 = sub_2610BC794();
    v26 = sub_2610BCD74();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136446466;
      *(v27 + 4) = sub_260FA5970(v10, v12, &v34);
      *(v27 + 12) = 2082;
      swift_getObjectType();
      v29 = sub_2610BD634();
      v31 = sub_260FA5970(v29, v30, &v34);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_260F97000, v25, v26, "PASServices getService for %{public}s - wrong type: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v28, -1, -1);
      MEMORY[0x2666F8720](v27, -1, -1);
    }

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_2610BCF84();

    v34 = 0xD00000000000001BLL;
    v35 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v10, v12);
    MEMORY[0x2666F7380](0x676E6F7277202D20, 0xEF203A6570797420);
    swift_getObjectType();
    v32 = sub_2610BD634();
    MEMORY[0x2666F7380](v32);
  }

  else
  {
    swift_endAccess();
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v19 = sub_2610BC7B4();
    __swift_project_value_buffer(v19, qword_27FE65900);

    v20 = sub_2610BC794();
    v21 = sub_2610BCD74();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_260FA5970(v10, v12, &v34);
      _os_log_impl(&dword_260F97000, v20, v21, "PASServices getService for %{public}s - not registered", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x2666F8720](v23, -1, -1);
      MEMORY[0x2666F8720](v22, -1, -1);
    }

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_2610BCF84();

    v34 = 0xD00000000000001BLL;
    v35 = 0x80000002610D1DA0;
    MEMORY[0x2666F7380](v10, v12);
    MEMORY[0x2666F7380](0xD000000000000011, 0x80000002610D1DC0);
  }

  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

id sub_260FA2D6C()
{
  type metadata accessor for PASFeatureFlags();
  v0 = swift_allocObject();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BF0, &qword_2610BEDC0);
  *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BF8, &qword_2610BEDC8);
  *&v67 = v1;
  PASServices.register(service:as:overwrite:)(v0, &v67, 0);

  sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
  type metadata accessor for PASAnalyticsFactory();
  v2 = swift_allocObject();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AC0, &qword_2610BECD8);
  *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AC8, qword_2610BECE0);
  *&v67 = v3;
  PASServices.register(service:as:overwrite:)(v2, &v67, 0);

  sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
  v4 = type metadata accessor for PASDeviceProvider();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_261015BB8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C78, &qword_2610BEE40);
  *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C80, &qword_2610BEE48);
  *&v67 = v8;
  PASServices.register(service:as:overwrite:)(v7, &v67, 0);
  sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
  v9 = [objc_opt_self() sharedNetworkObserver];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AE8, &qword_2610BED08);
  *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63AF0, &unk_2610BED10);
  *&v67 = v10;
  PASServices.register(service:as:overwrite:)(v9, &v67, 0);

  sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v12 = result;
    v65 = v7;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CB8, &qword_2610BEE80);
    *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CC0, &qword_2610BEE88);
    *&v67 = v13;
    v14 = v12;
    PASServices.register(service:as:overwrite:)(v14, &v67, 0);

    sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
    v15 = [objc_opt_self() sharedInstance];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63B00, &qword_2610BED20);
    *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63B08, &qword_2610BED28);
    *&v67 = v16;
    v17 = v15;
    PASServices.register(service:as:overwrite:)(v17, &v67, 0);

    sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
    type metadata accessor for PASAccountStore();
    v18 = swift_allocObject();
    v18[5] = sub_260FA9AB4(0, &qword_27FE63CC8, 0x277CB8F48);
    v18[6] = &protocol witness table for ACAccountStore;
    v18[2] = v14;
    v18[10] = sub_260FA9AB4(0, &unk_27FE63CD0, 0x277CF0130);
    v18[11] = &protocol witness table for AKAccountManager;
    v18[7] = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C88, &qword_2610BEE50);
    *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63C90, &qword_2610BEE58);
    *&v67 = v19;
    v64 = v14;
    v63 = v17;

    PASServices.register(service:as:overwrite:)(v20, &v67, 0);

    sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
    v21 = objc_allocWithZone(MEMORY[0x277CF0178]);

    result = [v21 init];
    if (result)
    {
      v22 = result;
      type metadata accessor for PASAuthenticator();
      v23 = swift_allocObject();
      v24 = sub_260FA88F4(v22, v18, v23);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BC0, &qword_2610BED80);
      *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BC8, &qword_2610BED88);
      *&v67 = v25;
      PASServices.register(service:as:overwrite:)(v24, &v67, 0);

      sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
      *(&v68 + 1) = &type metadata for PASHeartbeatParameters;
      v69 = &off_2873865A8;
      v26 = type metadata accessor for PASHeartbeatController();
      v27 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(&v67, &type metadata for PASHeartbeatParameters);
      *(v27 + 56) = &type metadata for PASHeartbeatParameters;
      *(v27 + 64) = &off_2873865A8;
      *(v27 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v27 + 72) = 0;
      *(v27 + 80) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
      v28 = swift_allocObject();
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
      *(v28 + 48) = 0;
      *(v27 + 88) = v28;
      __swift_destroy_boxed_opaque_existential_0Tm(&v67);
      *(&v68 + 1) = v26;
      v69 = &off_2873863D8;
      *&v67 = v27;
      v29 = type metadata accessor for PASMessageSessionProvider();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      v32 = swift_allocObject();
      v33 = __swift_mutable_project_boxed_opaque_existential_1(&v67, v26);
      v34 = *(*(v26 - 8) + 64);
      MEMORY[0x28223BE20](v33);
      v36 = (&v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v37 + 16))(v36);
      v38 = sub_260FA846C(*v36, v32);
      __swift_destroy_boxed_opaque_existential_0Tm(&v67);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CA0, &qword_2610BEE68);
      *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CA8, &unk_2610BEE70);
      *&v67 = v39;

      PASServices.register(service:as:overwrite:)(v40, &v67, 0);

      sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
      type metadata accessor for PASAnisetteDataRequester();
      v41 = swift_allocObject();

      v43 = sub_260FA87B4(v42, v41);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AD8, &qword_2610BECF8);
      *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63AE0, &qword_2610BED00);
      *&v67 = v44;
      PASServices.register(service:as:overwrite:)(v43, &v67, 0);

      sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
      v45 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CE0, &qword_2610BEE98);
      *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CE8, &unk_2610BEEA0);
      *&v67 = v46;
      PASServices.register(service:as:overwrite:)(v45, &v67, 0);
      sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
      v47 = objc_allocWithZone(type metadata accessor for PASAnisetteRemoteRequestHandler());

      v48 = v45;
      v49 = sub_260FA8614(v38, v48, v47);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BA8, &qword_2610BED68);
      *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63BB0, &unk_2610BED70);
      *&v67 = v50;
      PASServices.register(service:as:overwrite:)(v49, &v67, 0);

      sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
      type metadata accessor for PASLockProvider();
      v51 = swift_allocObject();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63B80, &qword_2610BED40);
      *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63B88, &qword_2610BED48);
      *&v67 = v52;
      PASServices.register(service:as:overwrite:)(v51, &v67, 0);

      sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
      v53 = type metadata accessor for PASAccountProvider();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      v56 = sub_260FC56D8();
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C60, &qword_2610BEE28);
      *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C68, &unk_2610BEE30);
      *&v67 = v57;
      PASServices.register(service:as:overwrite:)(v56, &v67, 0);

      sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
      v58 = type metadata accessor for PASTargetAccountOptionsProvider();
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      v61 = swift_allocObject();
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
      sub_260FA9918(&v67, v66, &qword_27FE63CF0, &qword_2610C2510);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63CF0, &qword_2610C2510);
      sub_2610BC804();
      sub_260FA9980(&v67, &qword_27FE63CF0, &qword_2610C2510);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C50, &qword_2610BEE18);
      *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C58, &qword_2610BEE20);
      *&v67 = v62;
      PASServices.register(service:as:overwrite:)(v61, &v67, 0);

      return sub_260FA9980(&v67, &qword_27FE63830, &qword_2610BE8E0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void PASServices.register(service:as:overwrite:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v48[0] = ObjectType;
  sub_260FA3F5C(v48, v46);
  v9 = sub_2610BCA34();
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  if ((a3 & 1) == 0)
  {
    swift_beginAccess();
    if (*(*(v3 + 16) + 16))
    {
      sub_260FA5FBC(v9, v11);
      if (v12)
      {
        swift_endAccess();
        if (qword_27FE63808 != -1)
        {
          swift_once();
        }

        v13 = sub_2610BC7B4();
        __swift_project_value_buffer(v13, qword_27FE65900);

        v14 = sub_2610BC794();
        v15 = sub_2610BCD54();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v48[0] = v17;
          *v16 = 136446210;
          v18 = sub_260FA5970(v9, v11, v48);

          *(v16 + 4) = v18;
          _os_log_impl(&dword_260F97000, v14, v15, "PASServices register service won't overwrite existing registered service for %{public}s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v17);
          MEMORY[0x2666F8720](v17, -1, -1);
          MEMORY[0x2666F8720](v16, -1, -1);
        }

        else
        {
        }

        return;
      }
    }

    swift_endAccess();
  }

  sub_260FA9918(a2, v46, &qword_27FE63830, &qword_2610BE8E0);
  if (!v47)
  {
    sub_260FA9980(v46, &qword_27FE63830, &qword_2610BE8E0);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v29 = sub_2610BC7B4();
    __swift_project_value_buffer(v29, qword_27FE65900);

    v30 = sub_2610BC794();
    v31 = sub_2610BCD54();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_260FA5970(v9, v11, v48);
      _os_log_impl(&dword_260F97000, v30, v31, "PASServices register service %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x2666F8720](v33, -1, -1);
      MEMORY[0x2666F8720](v32, -1, -1);
    }

    goto LABEL_28;
  }

  sub_260FA6A84(v46, v48);
  sub_260FA3F5C(v48, v46);
  v19 = sub_2610BCA34();
  v21 = v20;
  if (a3)
  {
LABEL_23:
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v34 = sub_2610BC7B4();
    __swift_project_value_buffer(v34, qword_27FE65900);

    v35 = sub_2610BC794();
    v36 = sub_2610BCD54();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v9;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v38 = 136446466;
      *(v38 + 4) = sub_260FA5970(v37, v11, v46);
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_260FA5970(v19, v21, v46);
      _os_log_impl(&dword_260F97000, v35, v36, "PASServices register service %{public}s and proto %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F8720](v39, -1, -1);
      v40 = v38;
      v9 = v37;
      MEMORY[0x2666F8720](v40, -1, -1);
    }

    swift_beginAccess();
    swift_unknownObjectRetain();
    v41 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_260FA7088(a1, v19, v21, isUniquelyReferenced_nonNull_native, sub_261098BEC, sub_261097064, sub_26109BFE8);

    *(v4 + 16) = v45;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
LABEL_28:
    swift_beginAccess();
    swift_unknownObjectRetain();
    v43 = *(v4 + 16);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v46[0] = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_260FA7088(a1, v9, v11, v44, sub_261098BEC, sub_261097064, sub_26109BFE8);

    *(v4 + 16) = v46[0];
    swift_endAccess();
    return;
  }

  swift_beginAccess();
  if (!*(*(v3 + 16) + 16) || (sub_260FA5FBC(v19, v21), (v22 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_23;
  }

  swift_endAccess();

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v23 = sub_2610BC7B4();
  __swift_project_value_buffer(v23, qword_27FE65900);

  v24 = sub_2610BC794();
  v25 = sub_2610BCD54();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v46[0] = v27;
    *v26 = 136446210;
    v28 = sub_260FA5970(v9, v11, v46);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_260F97000, v24, v25, "PASServices register service won't overwrite existing registered proto for %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x2666F8720](v27, -1, -1);
    MEMORY[0x2666F8720](v26, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v48);
}

uint64_t sub_260FA3F5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall PASServices.registerSourceServices()()
{
  swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD84();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_260F97000, v2, v3, "PASServices.registerSourceServices called again!", v4, 2u);
      MEMORY[0x2666F8720](v4, -1, -1);
    }
  }

  else
  {
    sub_260FA2D6C();
    if (qword_27FE637E0 != -1)
    {
      swift_once();
    }

    sub_260F9E15C(&v43);
    sub_260F9DC50(&v40);
    v5 = sub_260F9D764();
    v7 = v6;
    sub_260F9D258(v39);
    v8 = sub_260F9CD6C();
    v10 = v9;
    type metadata accessor for PASSourceAppleIDExchanger();
    v11 = swift_allocObject();
    *(v11 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 184) = 0;
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = sub_2610BC7B4();
    __swift_project_value_buffer(v12, qword_27FE65900);
    v13 = sub_2610BC794();
    v14 = sub_2610BCD54();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_260F97000, v13, v14, "PASSourceAppleIDExchanger init", v15, 2u);
      MEMORY[0x2666F8720](v15, -1, -1);
    }

    sub_260F98E14(&v43, v11 + 32);
    sub_260F98E14(&v40, v11 + 72);
    *(v11 + 112) = v5;
    *(v11 + 120) = v7;
    sub_260F98E14(v39, v11 + 128);
    *(v11 + 168) = v8;
    *(v11 + 176) = v10;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63838, &qword_2610BE8E8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63840, &unk_2610BE8F0);
    *&v43 = v16;

    PASServices.register(service:as:overwrite:)(v17, &v43, 0);

    sub_260FA9980(&v43, &qword_27FE63830, &qword_2610BE8E0);
    sub_260F9D764();
    v19 = v18;
    ObjectType = swift_getObjectType();
    if (qword_27FE637F8 != -1)
    {
      swift_once();
    }

    v44 = &type metadata for PASDevice;
    v45 = &protocol witness table for PASDevice;
    *&v43 = swift_allocObject();
    sub_260FA6AE0(qword_27FE65498, v43 + 16);
    swift_beginAccess();

    v22 = sub_260FA93B4(v21);

    v23 = type metadata accessor for PASDeviceContext();
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    v41 = v23;
    v42 = sub_260FA95E8(&qword_27FE63848, type metadata accessor for PASDeviceContext);
    *&v40 = v24;
    (*(v19 + 80))(&v43, &v40, ObjectType, v19);
    sub_260FA9980(&v40, &qword_27FE63850, qword_2610CC240);
    sub_260FA9980(&v43, &qword_27FE63858, &unk_2610BE900);
    type metadata accessor for PASExtensionCache();
    v25 = swift_allocObject();
    swift_defaultActor_initialize();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
    v26 = swift_allocObject();
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0;
    v25[16] = v26;
    v25[17] = 0;
    v25[14] = &unk_2610C8350;
    v25[15] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63868, &qword_2610BE910);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63870, &qword_2610BE918);
    *&v43 = v27;
    PASServices.register(service:as:overwrite:)(v25, &v43, 0);

    sub_260FA9980(&v43, &qword_27FE63830, &qword_2610BE8E0);
    type metadata accessor for PASExtensionKitFacade();
    v28 = swift_allocObject();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63878, &qword_2610BE920);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63880, &qword_2610BE928);
    *&v43 = v29;
    PASServices.register(service:as:overwrite:)(v28, &v43, 0);

    sub_260FA9980(&v43, &qword_27FE63830, &qword_2610BE8E0);
    sub_260F9E15C(&v43);
    sub_260F9DC50(&v40);
    v30 = sub_260F9D764();
    v32 = v31;
    sub_260F9D258(v39);
    type metadata accessor for PASDeviceInfoExchanger();
    v33 = swift_allocObject();
    v34 = swift_allocObject();
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0;
    *(v33 + 16) = v34;
    v35 = sub_2610BC794();
    v36 = sub_2610BCD54();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_260F97000, v35, v36, "PASDeviceInfoExchanger init", v37, 2u);
      MEMORY[0x2666F8720](v37, -1, -1);
    }

    sub_260F98E14(&v43, v33 + 24);
    sub_260F98E14(&v40, v33 + 64);
    *(v33 + 104) = v30;
    *(v33 + 112) = v32;
    sub_260F98E14(v39, v33 + 120);
    *(v33 + 160) = 0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63888, &qword_2610BE930);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63890, &qword_2610BE938);
    *&v43 = v38;
    PASServices.register(service:as:overwrite:)(v33, &v43, 0);
    swift_unknownObjectRelease();

    sub_260FA9980(&v43, &qword_27FE63830, &qword_2610BE8E0);
  }
}

Swift::Void __swiftcall PASServices.registerTargetServices()()
{
  swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD84();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_260F97000, v2, v3, "PASServices.registerTargetServices called again!", v4, 2u);
      MEMORY[0x2666F8720](v4, -1, -1);
    }
  }

  else
  {
    sub_260FA2D6C();
    if (qword_27FE637E0 != -1)
    {
      swift_once();
    }

    sub_260F9E15C(&v36);
    v5 = sub_260F9D764();
    v7 = v6;
    sub_260F9DC50(&v33);
    type metadata accessor for PASTargetAppleIDExchanger();
    v8 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
    v9 = swift_allocObject();
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0;
    *(v8 + 128) = v9;
    *(v8 + 144) = 0;
    swift_unknownObjectWeakInit();
    *(v8 + 152) = 0;
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v10 = sub_2610BC7B4();
    __swift_project_value_buffer(v10, qword_27FE65900);
    v11 = sub_2610BC794();
    v12 = sub_2610BCD54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_260F97000, v11, v12, "PASTargetAppleIDExchanger init", v13, 2u);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    sub_260F98E14(&v36, v8 + 16);
    *(v8 + 56) = v5;
    *(v8 + 64) = v7;
    *(v8 + 72) = sub_260FA4D2C;
    *(v8 + 80) = 0;
    sub_260F98E14(&v33, v8 + 88);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE638A0, &qword_2610BE948);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE638A8, &qword_2610BE950);
    *&v36 = v14;
    PASServices.register(service:as:overwrite:)(v8, &v36, 0);
    sub_260FA9980(&v36, &qword_27FE63830, &qword_2610BE8E0);
    sub_260F9E15C(&v36);
    sub_260F9DC50(&v33);
    v15 = sub_260F9D764();
    v17 = v16;
    sub_260F9D258(v32);
    type metadata accessor for PASDeviceInfoExchanger();
    v18 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
    v19 = swift_allocObject();
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0;
    *(v18 + 16) = v19;
    v20 = sub_2610BC794();
    v21 = sub_2610BCD54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_260F97000, v20, v21, "PASDeviceInfoExchanger init", v22, 2u);
      MEMORY[0x2666F8720](v22, -1, -1);
    }

    sub_260F98E14(&v36, v18 + 24);
    sub_260F98E14(&v33, v18 + 64);
    *(v18 + 104) = v15;
    *(v18 + 112) = v17;
    sub_260F98E14(v32, v18 + 120);
    *(v18 + 160) = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63888, &qword_2610BE930);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63890, &qword_2610BE938);
    *&v36 = v23;

    PASServices.register(service:as:overwrite:)(v24, &v36, 0);

    sub_260FA9980(&v36, &qword_27FE63830, &qword_2610BE8E0);
    sub_260F9D764();
    v26 = v25;
    ObjectType = swift_getObjectType();
    if (qword_27FE637F8 != -1)
    {
      swift_once();
    }

    v37 = &type metadata for PASDevice;
    v38 = &protocol witness table for PASDevice;
    *&v36 = swift_allocObject();
    sub_260FA6AE0(qword_27FE65498, v36 + 16);
    swift_beginAccess();

    v29 = sub_260FA93B4(v28);

    v30 = type metadata accessor for PASDeviceContext();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    v34 = v30;
    v35 = sub_260FA95E8(&qword_27FE63848, type metadata accessor for PASDeviceContext);
    *&v33 = v31;
    (*(v26 + 72))(&v36, &v33, ObjectType, v26);
    swift_unknownObjectRelease();

    sub_260FA9980(&v33, &qword_27FE63850, qword_2610CC240);
    sub_260FA9980(&v36, &qword_27FE63858, &unk_2610BE900);
  }
}

id sub_260FA4D2C()
{
  v0 = [objc_opt_self() currentDevice];

  return v0;
}

Swift::Void __swiftcall PASServices.unregisterAllServices()()
{
  v1 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260F97000, v3, v4, "PASServices unregisterAllServices", v5, 2u);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v6 = sub_260FA907C(MEMORY[0x277D84F90], &qword_27FE66760, &unk_2610CE620);
  swift_beginAccess();
  v7 = *(v1 + 16);
  *(v1 + 16) = v6;
}

uint64_t PASServices.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PASServices.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_260FA4EE8(uint64_t a1, id *a2)
{
  result = sub_2610BC9E4();
  *a2 = 0;
  return result;
}

uint64_t sub_260FA4F60(uint64_t a1, id *a2)
{
  v3 = sub_2610BC9F4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_260FA4FE0@<X0>(uint64_t *a1@<X8>)
{
  sub_2610BCA04();
  v2 = sub_2610BC9D4();

  *a1 = v2;
  return result;
}

uint64_t sub_260FA5038()
{
  v1 = *v0;
  sub_2610BD514();
  MEMORY[0x2666F7E40](v1);
  return sub_2610BD574();
}

uint64_t sub_260FA50AC()
{
  v1 = *v0;
  sub_2610BD514();
  MEMORY[0x2666F7E40](v1);
  return sub_2610BD574();
}

_DWORD *sub_260FA50F8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_260FA5124(uint64_t a1)
{
  v2 = sub_260FA95E8(&qword_27FE63DA8, type metadata accessor for LAError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_260FA5190(uint64_t a1)
{
  v2 = sub_260FA95E8(&qword_27FE63DA8, type metadata accessor for LAError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_260FA51FC(void *a1, uint64_t a2)
{
  v4 = sub_260FA95E8(&qword_27FE63DA8, type metadata accessor for LAError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_260FA52B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_260FA95E8(&qword_27FE63DA8, type metadata accessor for LAError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_260FA532C()
{
  v2 = *v0;
  sub_2610BD514();
  sub_2610BC994();
  return sub_2610BD574();
}

uint64_t sub_260FA538C(uint64_t a1)
{
  v2 = sub_260FA95E8(&qword_27FE63A88, type metadata accessor for AIDAServiceType);
  v3 = sub_260FA95E8(&qword_27FE63A90, type metadata accessor for AIDAServiceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260FA5448@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2610BC9D4();

  *a2 = v5;
  return result;
}

uint64_t sub_260FA5490(uint64_t a1)
{
  v2 = sub_260FA95E8(&qword_27FE63DB0, type metadata accessor for AKAppleIDAuthenticationAppProvidedContext);
  v3 = sub_260FA95E8(&qword_27FE63DB8, type metadata accessor for AKAppleIDAuthenticationAppProvidedContext);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_260FA554C(uint64_t a1)
{
  v2 = sub_260FA95E8(&qword_27FE63D70, type metadata accessor for LAError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_260FA55B8(uint64_t a1)
{
  v2 = sub_260FA95E8(&qword_27FE63D70, type metadata accessor for LAError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_260FA5624(uint64_t a1)
{
  v2 = sub_260FA95E8(&qword_27FE63DA8, type metadata accessor for LAError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_260FA5690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260FA95E8(&qword_27FE63DA8, type metadata accessor for LAError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_260FA5714()
{
  v1 = *v0;
  v2 = sub_2610BCA04();
  v3 = MEMORY[0x2666F73A0](v2);

  return v3;
}

uint64_t sub_260FA5750()
{
  v1 = *v0;
  sub_2610BCA04();
  sub_2610BCA54();
}

uint64_t sub_260FA57A4()
{
  v1 = *v0;
  sub_2610BCA04();
  sub_2610BD514();
  sub_2610BCA54();
  v2 = sub_2610BD574();

  return v2;
}

uint64_t sub_260FA5818(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2610BCA04();
  v6 = v5;
  if (v4 == sub_2610BCA04() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2610BD384();
  }

  return v9 & 1;
}

uint64_t sub_260FA58A0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_260FA5914(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_260FA5970(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_260FA5970(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_260FA5A3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_260FA3F5C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_260FA5A3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_260FA5B48(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2610BD004();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_260FA5B48(uint64_t a1, unint64_t a2)
{
  v4 = sub_260FA5B94(a1, a2);
  sub_260FA5CC4(&unk_287382FD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_260FA5B94(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_260FA5DB0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2610BD004();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2610BCA74();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_260FA5DB0(v10, 0);
        result = sub_2610BCF74();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_260FA5CC4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_260FA5E24(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_260FA5DB0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D20, &qword_2610BEEC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_260FA5E24(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D20, &qword_2610BEEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_260FA5F18(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_260FA5F28(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2610BCA04();
  sub_2610BD514();
  sub_2610BCA54();
  v4 = sub_2610BD574();

  return sub_260FA6278(a1, v4);
}

unint64_t sub_260FA5FBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2610BD514();
  sub_2610BCA54();
  v6 = sub_2610BD574();

  return sub_260FA637C(a1, a2, v6);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_260FA60B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2610BCF04();

  return sub_260FA6434(a1, v5);
}

unint64_t sub_260FA60F8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2610BD514();
  sub_260FAE3AC(a1);
  sub_2610BCA54();

  v4 = sub_2610BD574();

  return sub_260FA64FC(a1, v4);
}

unint64_t sub_260FA6180(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2610BD514();
  sub_2610BCA54();

  v4 = sub_2610BD574();

  return sub_260FA68C8(a1, v4);
}

unint64_t sub_260FA6278(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2610BCA04();
      v9 = v8;
      if (v7 == sub_2610BCA04() && v9 == v10)
      {
        break;
      }

      v12 = sub_2610BD384();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_260FA637C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2610BD384())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_260FA6434(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_260FA9708(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2666F7830](v9, a1);
      sub_260FA9764(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_260FA64FC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0x654D796C696D6166;
    v26 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v29 = v4;
      if (v6 <= 4)
      {
        v9 = 0xE900000000000061;
        if (v6 == 3)
        {
          v10 = v5;
        }

        else
        {
          v10 = 0x7461446567616D69;
        }

        if (v6 == 3)
        {
          v9 = 0xEC0000007265626DLL;
        }

        if (v6 == 2)
        {
          v10 = 0x7573655268747561;
          v9 = 0xEB0000000073746CLL;
        }

        v11 = *(*(v27 + 48) + v4) ? 0x54746E756F636361 : 0x44746E756F636361;
        v12 = v6 ? 0xEB00000000657079 : 0xEB00000000617461;
        v8 = v6 <= 1 ? v11 : v10;
        v7 = v6 <= 1 ? v12 : v9;
      }

      else if (*(*(v27 + 48) + v4) > 7u)
      {
        if (v6 == 8)
        {
          v8 = 0x4974736575716572;
          v7 = 0xE900000000000044;
        }

        else if (v6 == 9)
        {
          v7 = 0xE900000000000070;
          v8 = 0x6D617473656D6974;
        }

        else
        {
          v8 = 0x6F43656369766564;
          v7 = 0xED0000747865746ELL;
        }
      }

      else if (v6 == 5)
      {
        v8 = 0x44646569786F7270;
        v7 = 0xED00006563697665;
      }

      else if (v6 == 6)
      {
        v7 = 0xE600000000000000;
        v8 = 0x737574617473;
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x726F727265;
      }

      v13 = 0xE900000000000070;
      v14 = 0x6F43656369766564;
      if (v26 == 9)
      {
        v14 = 0x6D617473656D6974;
      }

      else
      {
        v13 = 0xED0000747865746ELL;
      }

      if (v26 == 8)
      {
        v14 = 0x4974736575716572;
        v13 = 0xE900000000000044;
      }

      v15 = 0x737574617473;
      if (v26 != 6)
      {
        v15 = 0x726F727265;
      }

      v16 = 0xE600000000000000;
      if (v26 != 6)
      {
        v16 = 0xE500000000000000;
      }

      if (v26 == 5)
      {
        v15 = 0x44646569786F7270;
        v16 = 0xED00006563697665;
      }

      if (v26 <= 7)
      {
        v14 = v15;
        v13 = v16;
      }

      v17 = 0xE900000000000061;
      if (v26 == 3)
      {
        v18 = v5;
      }

      else
      {
        v18 = 0x7461446567616D69;
      }

      if (v26 == 3)
      {
        v17 = 0xEC0000007265626DLL;
      }

      if (v26 == 2)
      {
        v18 = 0x7573655268747561;
        v17 = 0xEB0000000073746CLL;
      }

      if (v26)
      {
        v19 = 0x54746E756F636361;
      }

      else
      {
        v19 = 0x44746E756F636361;
      }

      if (v26)
      {
        v20 = 0xEB00000000657079;
      }

      else
      {
        v20 = 0xEB00000000617461;
      }

      if (v26 <= 1)
      {
        v18 = v19;
        v17 = v20;
      }

      v21 = v26 <= 4 ? v18 : v14;
      v22 = v26 <= 4 ? v17 : v13;
      if (v8 == v21 && v7 == v22)
      {
        break;
      }

      v23 = v5;
      v28 = sub_2610BD384();

      if (v28)
      {
        return v29;
      }

      v4 = (v29 + 1) & v25;
      v5 = v23;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v29;
  }

  return v4;
}

unint64_t sub_260FA68C8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x7369766F72506F64 : 0x65757165526C7275;
      v8 = v6 == 2 ? 0xEB000000006E6F69 : 0xEE00617461447473;
      v9 = *(*(v23 + 48) + v4) ? 1684632420 : 0x617461446D6973;
      v10 = *(*(v23 + 48) + v4) ? 0xE400000000000000 : 0xE700000000000000;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x7369766F72506F64 : 0x65757165526C7275;
      v14 = v5 == 2 ? 0xEB000000006E6F69 : 0xEE00617461447473;
      v15 = v5 ? 1684632420 : 0x617461446D6973;
      v16 = v5 ? 0xE400000000000000 : 0xE700000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_2610BD384();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

_OWORD *sub_260FA6A84(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_260FA6B3C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_260FA5FBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_261098C00();
      v11 = v19;
      goto LABEL_8;
    }

    sub_261097078(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_260FA5FBC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2610BD444();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_260FA6A84(a1, v23);
  }

  else
  {
    sub_261098A54(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_260FA6C8C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_260FA60B4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_261098DA4();
      goto LABEL_7;
    }

    sub_261097330(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_260FA60B4(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_260FA9708(a2, v22);
      return sub_261098AC0(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_2610BD444();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);

  return sub_260FA6A84(a1, v17);
}

_OWORD *sub_260FA6DD8(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_260FA60F8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_261098F48();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2610975E8(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_260FA60F8(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_2610BD444();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);

    return sub_260FA6A84(a1, v21);
  }

  else
  {

    return sub_261098B3C(v9, a2, a1, v20);
  }
}

uint64_t sub_260FA6F04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_260FA5FBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2610990C4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_261097A0C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_260FA5FBC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      sub_2610BD444();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_261098BA4(v11, a2, a3, a1, v22);
}

uint64_t sub_260FA7088(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_260FA5FBC(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_260FA5FBC(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_2610BD444();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_260FA71F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2610BD514();
  sub_2610BCA54();
  v9 = sub_2610BD574();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2610BD384() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_260FA79CC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_260FA7344(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_2610BCA04();
  sub_2610BD514();
  sub_2610BCA54();
  v8 = sub_2610BD574();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_2610BCA04();
      v15 = v14;
      if (v13 == sub_2610BCA04() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_2610BD384();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_260FA7B4C(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_260FA74F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C48, &qword_2610BEE10);
  result = sub_2610BCF54();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2610BD514();
      sub_2610BCA54();
      result = sub_2610BD574();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_260FA7750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BE8, &qword_2610BEDB8);
  result = sub_2610BCF54();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2610BCA04();
      sub_2610BD514();
      sub_2610BCA54();
      v20 = sub_2610BD574();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_260FA79CC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_260FA74F0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_260FA7D34();
      goto LABEL_16;
    }

    sub_260FA7FE0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2610BD514();
  sub_2610BCA54();
  result = sub_2610BD574();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2610BD384();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2610BD434();
  __break(1u);
  return result;
}

uint64_t sub_260FA7B4C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_260FA7750(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_260FA7E90();
      goto LABEL_16;
    }

    sub_260FA8218(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_2610BCA04();
  sub_2610BD514();
  sub_2610BCA54();
  v11 = sub_2610BD574();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for AIDAServiceType(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_2610BCA04();
      v17 = v16;
      if (v15 == sub_2610BCA04() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_2610BD384();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_2610BD434();
  __break(1u);
  return result;
}

void *sub_260FA7D34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C48, &qword_2610BEE10);
  v2 = *v0;
  v3 = sub_2610BCF44();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_260FA7E90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BE8, &qword_2610BEDB8);
  v2 = *v0;
  v3 = sub_2610BCF44();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_260FA7FE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C48, &qword_2610BEE10);
  result = sub_2610BCF54();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2610BD514();

      sub_2610BCA54();
      result = sub_2610BD574();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_260FA8218(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BE8, &qword_2610BEDB8);
  result = sub_2610BCF54();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2610BCA04();
      sub_2610BD514();
      v20 = v18;
      sub_2610BCA54();
      v21 = sub_2610BD574();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_260FA846C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7 + 16;
  v17[3] = type metadata accessor for PASHeartbeatController();
  v17[4] = &off_2873863D8;
  v17[0] = a1;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup25PASMessageSessionProvider__messageSessionStatus;
  v16[0] = 0;
  sub_2610BC804();
  (*(v5 + 32))(a2 + v9, v8, v4);
  sub_260FA99E0(v17, v16);
  swift_beginAccess();
  sub_260FA9A44(v16, a2 + 56);
  v10 = *(a2 + 80);
  if (v10)
  {
    v11 = *(a2 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(a2 + 56, *(a2 + 80));
    v12 = *(v11 + 16);

    v12(v13, &off_287387088, v10, v11);
  }

  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  return a2;
}

id sub_260FA8614(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  v15[3] = type metadata accessor for PASMessageSessionProvider();
  v15[4] = &protocol witness table for PASMessageSessionProvider;
  v15[0] = a1;
  v14[3] = sub_260FA9AB4(0, &qword_27FE63CF8, 0x277CF0168);
  v14[4] = &protocol witness table for AKAnisetteProvisioningController;
  v14[0] = a2;
  a3[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_registered] = 0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v7 = sub_2610BC7B4();
  __swift_project_value_buffer(v7, qword_27FE65900);
  v8 = sub_2610BC794();
  v9 = sub_2610BCD54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_260F97000, v8, v9, "PASAnisetteRemoteRequestHandler init", v10, 2u);
    MEMORY[0x2666F8720](v10, -1, -1);
  }

  sub_260FA99E0(v15, &a3[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_messageSessionProvider]);
  sub_260FA99E0(v14, &a3[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_anisetteController]);
  v13.receiver = a3;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return v11;
}

id sub_260FA87B4(uint64_t a1, void *a2)
{
  v11[3] = type metadata accessor for PASMessageSessionProvider();
  v11[4] = &protocol witness table for PASMessageSessionProvider;
  v11[0] = a1;
  swift_defaultActor_initialize();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = sub_2610BC794();
  v6 = sub_2610BCD54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_260F97000, v5, v6, "PASAnisetteDataRequester init", v7, 2u);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  sub_260FA99E0(v11, a2 + 112);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for PASAnisetteDataRequester();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v8;
}

uint64_t sub_260FA88F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = sub_260FA9AB4(0, &unk_27FE63D10, 0x277CF0178);
  v18 = &protocol witness table for AKAppleIDAuthenticationController;
  *&v16 = a1;
  v14 = type metadata accessor for PASAccountStore();
  v15 = &protocol witness table for PASAccountStore;
  *&v13 = a2;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(a3 + 112) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648E0, &qword_2610BEEC0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(a3 + 120) = v7;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v8 = sub_2610BC7B4();
  __swift_project_value_buffer(v8, qword_27FE65900);
  v9 = sub_2610BC794();
  v10 = sub_2610BCD54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_260F97000, v9, v10, "PASAuthenticator init", v11, 2u);
    MEMORY[0x2666F8720](v11, -1, -1);
  }

  sub_260F98E14(&v16, a3 + 128);
  sub_260F98E14(&v13, a3 + 168);
  return a3;
}

unint64_t sub_260FA8A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C28, &unk_2610C2CD0);
    v3 = sub_2610BD114();
    v4 = a1 + 32;

    while (1)
    {
      sub_260FA9918(v4, &v13, &unk_27FE63C30, &unk_2610BEE00);
      v5 = v13;
      v6 = v14;
      result = sub_260FA5FBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_260FA6A84(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_260FA8BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C0, &qword_2610BEDD8);
    v3 = sub_2610BD114();
    v4 = a1 + 32;

    while (1)
    {
      sub_260FA9918(v4, v13, &qword_27FE63C10, &qword_2610BEDE0);
      result = sub_260FA60B4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_260FA6A84(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_260FA8D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C18, &qword_2610BEDE8);
    v3 = sub_2610BD114();
    v4 = a1 + 32;

    while (1)
    {
      sub_260FA9918(v4, v11, &qword_27FE63C20, &unk_2610BEDF0);
      v5 = v11[0];
      result = sub_260FA60F8(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_260FA6A84(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_260FA8E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66740, &qword_2610BECD0);
    v3 = sub_2610BD114();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_260FA5FBC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_260FA8F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66750, &unk_2610CE610);
    v3 = sub_2610BD114();
    v4 = a1 + 32;

    while (1)
    {
      sub_260FA9918(v4, &v13, &qword_27FE63BA0, &qword_2610BED60);
      v5 = v13;
      v6 = v14;
      result = sub_260FA5FBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_260F98E14(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_260FA907C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2610BD114();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_260FA5FBC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_260FA9178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63BD8, qword_2610BED98);
    v3 = sub_2610BD114();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_260FA5FBC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_260FA928C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63AA0, &qword_2610BECB8);
    v3 = sub_2610BD114();
    v4 = a1 + 32;

    while (1)
    {
      sub_260FA9918(v4, v11, &unk_27FE662F0, &unk_2610BECC0);
      v5 = v11[0];
      result = sub_260FA6180(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_260FA6A84(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_260FA93B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_260FA9874();
  result = MEMORY[0x2666F7630](v2, &type metadata for PASDeviceCapability, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_260FA71F4(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_260FA9450(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_2610BCE64();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_260FA95E8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_260FA97B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for AIDAServiceType(0);
  v4 = v3;
  v5 = sub_260FA95E8(&qword_27FE63A88, type metadata accessor for AIDAServiceType);
  result = MEMORY[0x2666F7630](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_260FA7344(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_260FA9874()
{
  result = qword_27FE63C40;
  if (!qword_27FE63C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE63C40);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_260FA9918(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_260FA9980(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_260FA99E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_260FA9A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D08, &unk_2610C65B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_260FA9AB4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_260FA9DD4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_260FA9E6C()
{
  result = qword_27FE63D98;
  if (!qword_27FE63D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE63D98);
  }

  return result;
}

void *PASExtensionPickedAccount.dsid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_dsid);
  v2 = v1;
  return v1;
}

uint64_t PASExtensionPickedAccount.altDSID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID + 8);

  return v1;
}

uint64_t PASExtensionPickedAccount.firstName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName + 8);

  return v1;
}

uint64_t PASExtensionPickedAccount.lastName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName + 8);

  return v1;
}

uint64_t PASExtensionPickedAccount.appleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID + 8);

  return v1;
}

uint64_t PASExtensionPickedAccount.accountUsername.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername + 8);

  return v1;
}

uint64_t PASExtensionPickedAccount.formattedUsername.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername + 8);

  return v1;
}

uint64_t PASExtensionPickedAccount.imageData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData);
  sub_260FAA174(v1, *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData + 8));
  return v1;
}

uint64_t sub_260FAA174(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260FAA188(a1, a2);
  }

  return a1;
}

uint64_t sub_260FAA188(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t PASExtensionPickedAccount.description.getter()
{
  sub_2610BCF84();
  MEMORY[0x2666F7380](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](8250, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](0x2064697364207B20, 0xEA0000000000203DLL);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_dsid);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63EE0, &unk_2610BF330);
  v3 = sub_2610BCA34();
  MEMORY[0x2666F7380](v3);

  MEMORY[0x2666F7380](0x495344746C61202CLL, 0xEC000000203D2044);
  v21 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID);
  v27 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66360, &qword_2610C2E00);
  v4 = sub_2610BCA34();
  MEMORY[0x2666F7380](v4);

  MEMORY[0x2666F7380](0x4E7473726966202CLL, 0xEE00203D20656D61);
  v22 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName);
  v28 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName + 8);

  v5 = sub_2610BCA34();
  MEMORY[0x2666F7380](v5);

  MEMORY[0x2666F7380](0x614E7473616C202CLL, 0xED0000203D20656DLL);
  v23 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName);
  v29 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName + 8);

  v6 = sub_2610BCA34();
  MEMORY[0x2666F7380](v6);

  MEMORY[0x2666F7380](0x49656C707061202CLL, 0xEC000000203D2044);
  v24 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID);
  v30 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID + 8);

  v7 = sub_2610BCA34();
  MEMORY[0x2666F7380](v7);

  MEMORY[0x2666F7380](0xD000000000000014, 0x80000002610D2050);
  v25 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername);
  v31 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername + 8);

  v8 = sub_2610BCA34();
  MEMORY[0x2666F7380](v8);

  MEMORY[0x2666F7380](0xD000000000000016, 0x80000002610D2070);
  v26 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername);
  v32 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername + 8);

  v9 = sub_2610BCA34();
  MEMORY[0x2666F7380](v9);

  MEMORY[0x2666F7380](0x3D20654D7369202CLL, 0xE900000000000020);
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_isMe))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_isMe))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x2666F7380](v10, v11);

  result = MEMORY[0x2666F7380](0xD000000000000014, 0x80000002610D2090);
  v13 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData + 8);
  if (v13 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v15 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData);
  v16 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_8;
    }

    v19 = v15 + 16;
    v17 = *(v15 + 16);
    v18 = *(v19 + 8);
    v20 = __OFSUB__(v18, v17);
    v15 = v18 - v17;
    if (!v20)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  else if (!v16)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63EF0, &unk_2610BF340);
    v14 = sub_2610BCA34();
    MEMORY[0x2666F7380](v14);

    MEMORY[0x2666F7380](1048387628, 0xE400000000000000);
    return 0;
  }

  if (!__OFSUB__(HIDWORD(v15), v15))
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t PASExtensionPickedAccount.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_260FAC380(a1, v29);
  if (!v30)
  {
    sub_260FAC3F0(v29);
    goto LABEL_55;
  }

  if (swift_dynamicCast())
  {
    v4 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_dsid);
    v5 = *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_dsid];
    if (v4)
    {
      if (!v5)
      {
        goto LABEL_54;
      }

      sub_260FA9AB4(0, &qword_27FE63F00, 0x277CCABB0);
      v6 = v5;
      v7 = v4;
      v8 = sub_2610BCE24();

      if ((v8 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v5)
    {
      goto LABEL_54;
    }

    v9 = *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID + 8);
    v10 = *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID + 8];
    if (v9)
    {
      if (!v10)
      {
        goto LABEL_54;
      }

      v11 = *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID) == *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID] && v9 == v10;
      if (!v11 && (sub_2610BD384() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v10)
    {
      goto LABEL_54;
    }

    v12 = *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName + 8);
    v13 = *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName + 8];
    if (v12)
    {
      if (!v13 || (*(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName) != *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName] || v12 != v13) && (sub_2610BD384() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v13)
    {
      goto LABEL_54;
    }

    v14 = *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName + 8);
    v15 = *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName + 8];
    if (v14)
    {
      if (!v15 || (*(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName) != *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName] || v14 != v15) && (sub_2610BD384() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v15)
    {
      goto LABEL_54;
    }

    v16 = *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID + 8);
    v17 = *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID + 8];
    if (v16)
    {
      if (!v17 || (*(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID) != *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID] || v16 != v17) && (sub_2610BD384() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v17)
    {
      goto LABEL_54;
    }

    v18 = *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername + 8);
    v19 = *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername + 8];
    if (v18)
    {
      if (!v19 || (*(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername) != *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername] || v18 != v19) && (sub_2610BD384() & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (v19)
    {
      goto LABEL_54;
    }

    v20 = *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername + 8);
    v21 = *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername + 8];
    if (v20)
    {
      if (!v21 || (*(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername) != *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername] || v20 != v21) && (sub_2610BD384() & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    if (!v21)
    {
LABEL_53:
      if (*(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_isMe) != v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_isMe])
      {
        goto LABEL_54;
      }

      v25 = *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData);
      v24 = *(v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData + 8);
      v26 = *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData];
      v27 = *&v28[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData + 8];
      if (v24 >> 60 == 15)
      {
        sub_260FAA174(v26, v27);
        sub_260FAA174(v25, v24);

        if (v27 >> 60 == 15)
        {
          sub_260FAC458(v25, v24);
          v22 = 1;
          return v22 & 1;
        }
      }

      else
      {
        sub_260FAA174(v26, v27);
        if (v27 >> 60 != 15)
        {
          sub_260FAA174(v26, v27);
          sub_260FAA174(v25, v24);
          v22 = sub_260FAC938(v25, v24, v26, v27);
          sub_260FAC458(v26, v27);
          sub_260FAC458(v26, v27);

          sub_260FAC458(v25, v24);
          return v22 & 1;
        }

        sub_260FAA174(v25, v24);
      }

      sub_260FAC458(v25, v24);
      sub_260FAC458(v26, v27);
      goto LABEL_55;
    }

LABEL_54:
  }

LABEL_55:
  v22 = 0;
  return v22 & 1;
}

uint64_t PASExtensionPickedAccount.hash.getter()
{
  v1 = v0;
  sub_2610BD584();
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_dsid);
  sub_2610BD534();
  if (v2)
  {
    v3 = v2;
    sub_2610BCE34();
  }

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID + 8))
  {
    v4 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID);
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName + 8))
  {
    v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName);
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName + 8))
  {
    v6 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName);
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID + 8))
  {
    v7 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID);
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername + 8))
  {
    v8 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername);
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername + 8))
  {
    v9 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername);
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  v10 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_isMe);
  sub_2610BD534();
  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData + 8) >> 60 == 15)
  {
    sub_2610BD534();
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData);
    sub_2610BD534();
    sub_2610BC544();
  }

  return sub_2610BD564();
}

uint64_t static PASExtensionPickedAccount.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE63E90 = a1;
  return result;
}

Swift::Void __swiftcall PASExtensionPickedAccount.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_dsid);
  v4 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID + 8))
  {
    v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID);
    v6 = sub_2610BC9D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName + 8))
  {
    v8 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName);
    v9 = sub_2610BC9D4();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName + 8))
  {
    v11 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName);
    v12 = sub_2610BC9D4();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID + 8))
  {
    v14 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID);
    v15 = sub_2610BC9D4();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername + 8))
  {
    v17 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername);
    v18 = sub_2610BC9D4();
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername + 8))
  {
    v20 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername);
    v21 = sub_2610BC9D4();
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();

  v23 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_isMe);
  v24 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v23 forKey:v24];

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData + 8) >> 60 == 15)
  {
    v25 = 0;
  }

  else
  {
    v26 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData);
    v25 = sub_2610BC514();
  }

  v27 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v27];
  swift_unknownObjectRelease();
}

id PASExtensionPickedAccount.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_260FACAA0(a1);

  return v4;
}

id PASExtensionPickedAccount.init(coder:)(void *a1)
{
  v2 = sub_260FACAA0(a1);

  return v2;
}

id PASExtensionPickedAccount.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASExtensionPickedAccount.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_260FAB5B0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_dsid);
  v2 = v1;
  return v1;
}

uint64_t sub_260FAB62C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_260FAB67C()
{
  v1 = *v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData;
  v2 = *v1;
  sub_260FAA174(*v1, *(v1 + 8));
  return v2;
}

void sub_260FAB6C0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_dsid;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_260FAB720()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_dsid;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_260FAB76C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_dsid;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_260FABA7C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_260FABAF0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_260FABB50(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_260FABC0C()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_isMe;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_260FABC50(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_isMe;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_260FABD00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_imageData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_260FAA174(v4, v5);
}

uint64_t sub_260FABD58(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_imageData);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_260FAA174(v2, v3);
  return sub_260FAC458(v5, v6);
}

uint64_t sub_260FABDD4()
{
  v1 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_imageData;
  swift_beginAccess();
  v2 = *v1;
  sub_260FAA174(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_260FABE30(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_imageData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_260FAC458(v6, v7);
}

id sub_260FABEF0()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_dsid;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_altDSID);
  swift_beginAccess();
  v35 = v3[1];
  v36 = *v3;
  v4 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_firstName);
  swift_beginAccess();
  v33 = v4[1];
  v34 = *v4;
  v5 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_lastName);
  swift_beginAccess();
  v6 = v5[1];
  v32 = *v5;
  v7 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_appleID);
  swift_beginAccess();
  v30 = v7[1];
  v31 = *v7;
  v8 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_accountUsername);
  swift_beginAccess();
  v27 = v8[1];
  v28 = *v8;
  v9 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_formattedUsername);
  swift_beginAccess();
  v10 = v9[1];
  v26 = *v9;
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_isMe;
  swift_beginAccess();
  v25 = *(v0 + v11);
  v12 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_imageData);
  swift_beginAccess();
  v13 = v12[1];
  v24 = *v12;
  v29 = type metadata accessor for PASExtensionPickedAccount();
  v14 = objc_allocWithZone(v29);
  *&v14[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_dsid] = v2;
  v15 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID];
  *v15 = v36;
  v15[1] = v35;
  v16 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName];
  *v16 = v34;
  v16[1] = v33;
  v17 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName];
  *v17 = v32;
  v17[1] = v6;
  v18 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID];
  *v18 = v31;
  v18[1] = v30;
  v19 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername];
  *v19 = v28;
  v19[1] = v27;
  v20 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername];
  *v20 = v26;
  v20[1] = v10;
  v14[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_isMe] = v25;
  v21 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData];
  *v21 = v24;
  v21[1] = v13;

  v22 = v2;

  sub_260FAA174(v24, v13);
  v37.receiver = v14;
  v37.super_class = v29;
  return objc_msgSendSuper2(&v37, sel_init);
}

id PASExtensionPickedAccountBuilder.init()()
{
  *&v0[OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_dsid] = 0;
  v1 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_altDSID];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_firstName];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_lastName];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_appleID];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_accountUsername];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_formattedUsername];
  *v6 = 0;
  v6[1] = 0;
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_isMe] = 0;
  *&v0[OBJC_IVAR____TtC21ProximityAppleIDSetup32PASExtensionPickedAccountBuilder_imageData] = xmmword_2610BF320;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PASExtensionPickedAccountBuilder();
  return objc_msgSendSuper2(&v8, sel_init);
}

id PASExtensionPickedAccountBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASExtensionPickedAccountBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_260FAC380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63830, &qword_2610BE8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260FAC3F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63830, &qword_2610BE8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260FAC458(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260FAC46C(a1, a2);
  }

  return a1;
}

uint64_t sub_260FAC46C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_260FAC4C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2610BC404();
    if (v10)
    {
      v11 = sub_2610BC424();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2610BC414();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2610BC404();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2610BC424();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2610BC414();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_260FAC6F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_260FAC880(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_260FAC46C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_260FAC4C0(v14, a3, a4, &v13);
  v10 = v4;
  sub_260FAC46C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_260FAC880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2610BC404();
  v11 = result;
  if (result)
  {
    result = sub_2610BC424();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2610BC414();
  sub_260FAC4C0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_260FAC938(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_260FAA188(a3, a4);
          return sub_260FAC6F0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

id sub_260FACAA0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_260FA9AB4(0, &qword_27FE63F00, 0x277CCABB0);
  *&v2[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_dsid] = sub_2610BCE14();
  sub_260FA9AB4(0, &qword_27FE63F58, 0x277CCACA8);
  v5 = sub_2610BCE14();
  if (v5)
  {
    v29 = 0;
    v6 = v5;
    sub_2610BC9F4();
  }

  v7 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_altDSID];
  *v7 = 0;
  v7[1] = 0;
  v8 = sub_2610BCE14();
  if (v8)
  {
    v29 = 0;
    v9 = v8;
    sub_2610BC9F4();
  }

  v10 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_firstName];
  *v10 = 0;
  v10[1] = 0;
  v11 = sub_2610BCE14();
  if (v11)
  {
    v29 = 0;
    v12 = v11;
    sub_2610BC9F4();
  }

  v13 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_lastName];
  *v13 = 0;
  v13[1] = 0;
  v14 = sub_2610BCE14();
  if (v14)
  {
    v29 = 0;
    v15 = v14;
    sub_2610BC9F4();
  }

  v16 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_appleID];
  *v16 = 0;
  v16[1] = 0;
  v17 = sub_2610BCE14();
  if (v17)
  {
    v29 = 0;
    v18 = v17;
    sub_2610BC9F4();
  }

  v19 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_accountUsername];
  *v19 = 0;
  v19[1] = 0;
  v20 = sub_2610BCE14();
  if (v20)
  {
    v29 = 0;
    v21 = v20;
    sub_2610BC9F4();
  }

  v22 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_formattedUsername];
  *v22 = 0;
  v22[1] = 0;
  v23 = sub_2610BC9D4();
  v24 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_isMe] = v24;
  sub_260FA9AB4(0, &unk_27FE63F60, 0x277CBEA90);
  v25 = sub_2610BCE14();
  if (v25)
  {
    v29 = 0;
    v26 = v25;
    sub_2610BC524();
  }

  v27 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup25PASExtensionPickedAccount_imageData];
  *v27 = 0;
  v27[1] = 0xF000000000000000;
  v30.receiver = v2;
  v30.super_class = ObjectType;
  return objc_msgSendSuper2(&v30, sel_init, v29);
}

unint64_t sub_260FACEB0(uint64_t a1)
{
  result = sub_260FACED8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FACED8()
{
  result = qword_27FE63F50;
  if (!qword_27FE63F50)
  {
    type metadata accessor for PASExtensionPickedAccount();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE63F50);
  }

  return result;
}

uint64_t keypath_get_8Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

_OWORD *sub_260FAD618(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_260FA6A84(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_260FA6DD8(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_260FA9980(a1, &qword_27FE63830, &qword_2610BE8E0);
    v8 = *v2;
    v9 = sub_260FA60F8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_261098F48();
        v14 = v16;
      }

      sub_260FA6A84((*(v14 + 56) + 32 * v11), v17);
      sub_26109857C(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_260FA9980(v17, &qword_27FE63830, &qword_2610BE8E0);
  }

  return result;
}

uint64_t sub_260FAD71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_260FA6F04(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_260FA5FBC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_2610990C4();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_2610988A4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_260FAD814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_260FA7048(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_260FA5FBC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_2610993D8();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);
      swift_unknownObjectRelease();
      result = sub_2610988A4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_260FAD90C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_2610BCF84();
    v7 = "oDelegate forMessage: ";
    v6 = 0xD000000000000037;
LABEL_6:
    v5 = v7 | 0x8000000000000000;
    goto LABEL_7;
  }

  if (a3 != 1)
  {
    sub_2610BCF84();
    v7 = "v20@?0B8@NSError12";
    v6 = 0xD00000000000003DLL;
    goto LABEL_6;
  }

  sub_2610BCF84();
  v5 = 0x80000002610D2530;
  v6 = 0xD000000000000036;
LABEL_7:
  MEMORY[0x2666F7380](v6, v5);
  MEMORY[0x2666F7380](a1, a2);
  return 0;
}

unint64_t sub_260FADA40()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v5 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v6;
  v7 = sub_260FAD90C(v1, v2, v3);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v9;
}

uint64_t sub_260FADB2C(uint64_t a1)
{
  v2 = sub_260FBF754();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_260FADB68(uint64_t a1)
{
  v2 = sub_260FBF754();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_260FADBA4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_2610BCF84();

    strcpy(v10, "local error: ");
    HIWORD(v10[1]) = -4864;
    swift_getErrorValue();
    v2 = Error.codeString.getter(v8);
    MEMORY[0x2666F7380](v2);

    MEMORY[0x2666F7380](2108704, 0xE300000000000000);
    swift_getErrorValue();
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_2610BCF84();

    v10[0] = 0xD00000000000001ALL;
    v10[1] = 0x80000002610D23D0;
    swift_getErrorValue();
    v1 = Error.codeString.getter(v9);
    MEMORY[0x2666F7380](v1);

    MEMORY[0x2666F7380](2108704, 0xE300000000000000);
    swift_getErrorValue();
LABEL_5:
    v3 = sub_2610BD4A4();
    MEMORY[0x2666F7380](v3);

    return v10[0];
  }

  v5 = __ROR8__(a1 ^ 0x8000000000000000, 3);
  v6 = 1684956531;
  v7 = 0x646E6F70736572;
  if (v5 != 2)
  {
    v7 = 0x6574656C706D6F63;
  }

  if (v5)
  {
    v6 = 0x65766965636572;
  }

  if (v5 <= 1)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_260FADDAC(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_260FADE6C(a1);
  v15 = v14;
  v16 = sub_261029554(a5, a6, a7);
  sub_260FAE028(v13, v15, a2, v16, v17, a3, a4, a5, a6, a7);
}

uint64_t sub_260FADE6C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x636E6143776F6C66;
    v6 = 0x65646E45776F6C66;
    if (a1 != 10)
    {
      v6 = 0xD000000000000024;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000013;
    v8 = 0x53746E756F636361;
    if (a1 != 7)
    {
      v8 = 0x65736552776F6C66;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x41646569786F7270;
    v2 = 0xD000000000000016;
    v3 = 0x6E49656369766564;
    if (a1 == 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000012;
    }

    if (!a1)
    {
      v1 = 0xD000000000000020;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_260FAE028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a8;
  v17[3] = a9;
  v17[4] = a10;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a1;
  v17[8] = a2;
  v17[9] = a6;
  v17[10] = a7;
  v18 = *(a10 + 32);

  v18(a1, a2, a3, sub_260FBEB40, v17, a8, a10);
}

uint64_t sub_260FAE12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a1;
  v42 = a4;
  v39 = a13;
  v40 = a3;
  v36 = a11;
  v37 = a9;
  v38 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v35 - v20;
  v46[0] = 0x4974736575716572;
  v46[1] = 0xE900000000000044;
  sub_2610BCF24();
  if (*(a2 + 16) && (v22 = sub_260FA60B4(v45), (v23 & 1) != 0))
  {
    sub_260FA3F5C(*(a2 + 56) + 32 * v22, v46);
    sub_260FA9764(v45);
    v24 = swift_dynamicCast();
    if (v24)
    {
      v25 = v43;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v44;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    sub_260FA9764(v45);
    v25 = 0;
    v26 = 0;
  }

  a5(a7, a8, v25, v26, 0x8000000000000008, a2);
  v27 = sub_2610BCC94();
  (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v29 = v38;
  v30 = v39;
  v28[4] = v36;
  v28[5] = v29;
  v31 = v37;
  v28[6] = v30;
  v28[7] = v31;
  v28[8] = a10;
  v32 = v40;
  v28[9] = v41;
  v28[10] = a2;
  v28[11] = a5;
  v28[12] = a6;
  v28[13] = a7;
  v28[14] = a8;
  v28[15] = v25;
  v28[16] = v26;
  v33 = v42;
  v28[17] = v32;
  v28[18] = v33;

  sub_261042434(0, 0, v21, &unk_2610BF968, v28);
}

uint64_t sub_260FAE3AC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x44746E756F636361;
    v7 = 0x7573655268747561;
    v8 = 0x654D796C696D6166;
    if (a1 != 3)
    {
      v8 = 0x7461446567616D69;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x54746E756F636361;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x4974736575716572;
    v2 = 0x6D617473656D6974;
    if (a1 != 9)
    {
      v2 = 0x6F43656369766564;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x44646569786F7270;
    v4 = 0x737574617473;
    if (a1 != 6)
    {
      v4 = 0x726F727265;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_260FAE544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 128) = v20;
  *(v8 + 104) = v17;
  *(v8 + 112) = v18;
  *(v8 + 88) = v16;
  *(v8 + 72) = v15;
  *(v8 + 56) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v9 = sub_2610BD594();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260FAE664, 0, 0);
}

uint64_t sub_260FAE664()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = *(v0 + 112);
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = sub_260FAE750;
  v7 = *(v0 + 160);
  v8 = *(v0 + 120);

  return Result<>.init(catching:)(v7, &unk_2610BF978);
}

uint64_t sub_260FAE750()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_260FAE868, 0, 0);
}

uint64_t sub_260FAE868()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 56);
  (*(v0 + 48))(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), 0x8000000000000010, *(v0 + 40));
  (*(v4 + 16))(v2, v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 152);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = *(v0 + 40);
    v15 = *v7;
    v16 = *v7;
    v13(v11, v10, v8, v9, v15, v14);
  }

  else
  {
    (*(*(v0 + 144) + 8))(v7, *(v0 + 136));
  }

  v17 = *(v0 + 160);
  v18 = *(v0 + 136);
  v19 = *(v0 + 144);
  v21 = *(v0 + 96);
  v20 = *(v0 + 104);
  v22 = sub_26100A520(v17, *(v0 + 120));
  v21(v22, 0, v23);

  (*(v19 + 8))(v17, v18);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_260FAE9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_260FAEA20, 0, 0);
}

uint64_t sub_260FAEA20()
{
  if (v0[5])
  {
    v1 = v0[5];
  }

  else
  {
    v1 = sub_260FA8BCC(MEMORY[0x277D84F90]);
  }

  v0[7] = v1;
  v2 = v0[3];

  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_260FAEB50;
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v1, v5);
}

uint64_t sub_260FAEB50()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (!v0)
  {
    v4 = v3[7];

    v5 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_260FAEC8C, 0, 0);
}

uint64_t sub_260FAEC8C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_260FAECF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 64) = v11;
  *(v9 + 72) = v8;
  *(v9 + 48) = a7;
  *(v9 + 56) = a8;
  *(v9 + 113) = a5;
  *(v9 + 32) = a4;
  *(v9 + 40) = a6;
  *(v9 + 112) = a2;
  *(v9 + 16) = a1;
  *(v9 + 24) = a3;
  return MEMORY[0x2822009F8](sub_260FAED2C, 0, 0);
}

uint64_t sub_260FAED2C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 113);
  v3 = sub_260FADE6C(*(v0 + 112));
  v5 = v4;
  *(v0 + 80) = v4;
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  v7 = *(v0 + 48);
  *(v6 + 16) = v7;
  *(v6 + 32) = v1;
  *(v6 + 40) = v7;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_260FAEE58;
  v9 = *(v0 + 72);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 16);
  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v15 = *(v0 + 40);

  return sub_260FAF070(v12, v3, v5, v10, v11, v2 & 1, sub_260FAE128, v6);
}

uint64_t sub_260FAEE58()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (!v0)
  {
    v5 = v3[10];
    v4 = v3[11];

    v6 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_260FAEFA0, 0, 0);
}

uint64_t sub_260FAEFA0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t (*sub_260FAF00C(uint64_t a1, uint64_t a2, uint64_t a3))(void, void, void, void, void, void, void, void, void, void)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a1;
  return sub_260FAE128;
}

uint64_t sub_260FAF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 96) = v13;
  *(v9 + 104) = v8;
  *(v9 + 88) = v12;
  *(v9 + 72) = v11;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 136) = a6;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  return MEMORY[0x2822009F8](sub_260FAF0B8, 0, 0);
}

uint64_t sub_260FAF0B8()
{
  v17 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 136);
  v16 = sub_260FA8A9C(MEMORY[0x277D84F90]);

  sub_260FBB1B8(v3, &v16, sub_260FAFD54, 0, v1);

  v4 = sub_260FDF608(v16);
  *(v0 + 112) = v4;

  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_260FAF1F0;
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  v21 = *(v0 + 96);
  v20 = v7;
  v19 = v4;

  return sub_260FAF390(v14, v12, v13, v10, v11, v2 & 1, v8, v9);
}

uint64_t sub_260FAF1F0()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (!v0)
  {
    v4 = v3[14];

    v5 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_260FAF32C, 0, 0);
}

uint64_t sub_260FAF32C()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_260FAF390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 104) = v23;
  *(v9 + 112) = v8;
  *(v9 + 88) = v21;
  *(v9 + 96) = v22;
  *(v9 + 72) = a8;
  *(v9 + 80) = v20;
  *(v9 + 240) = a6;
  *(v9 + 56) = a5;
  *(v9 + 64) = a7;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  v10 = sub_2610BCC34();
  *(v9 + 120) = v10;
  v11 = *(v10 - 8);
  *(v9 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 136) = swift_task_alloc();
  v13 = *(v21 - 8);
  *(v9 + 144) = v13;
  *(v9 + 152) = *(v13 + 64);
  *(v9 + 160) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910) - 8) + 64) + 15;
  *(v9 + 168) = swift_task_alloc();
  v15 = sub_2610BC614();
  *(v9 + 176) = v15;
  v16 = *(v15 - 8);
  *(v9 + 184) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260FAF560, 0, 0);
}

uint64_t sub_260FAF560()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 160);
  v31 = *(v0 + 152);
  v6 = *(v0 + 144);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v36 = *(v0 + 80);
  v34 = *(v0 + 64);
  v35 = *(v0 + 72);
  v38 = *(v0 + 240);
  v37 = *(v0 + 48);
  v32 = *(v0 + 32);
  v33 = *(v0 + 40);
  v39 = *(v0 + 96);
  sub_2610BC604();
  v9 = sub_2610BC5E4();
  v29 = v10;
  v30 = v9;
  (*(v2 + 8))(v1, v3);
  v26 = sub_2610BCC94();
  v27 = (*(v26 - 8) + 56);
  v28 = *v27;
  (*v27)(v4, 1, 1);
  (*(v6 + 16))(v5, v7, v8);
  v11 = (*(v6 + 80) + 112) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v39;
  *(v12 + 56) = v34;
  *(v12 + 64) = v35;
  *(v12 + 72) = v32;
  *(v12 + 80) = v33;
  *(v12 + 88) = v30;
  *(v12 + 96) = v29;
  *(v12 + 104) = v36;
  (*(v6 + 32))(v12 + v11, v5, v8);
  *(v12 + ((v31 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;

  v13 = sub_260FB0C50(0, 0, v4, &unk_2610BF920, v12);
  v14 = 0;
  *(v0 + 200) = v13;
  if ((v38 & 1) == 0)
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 104);
    v17 = *(v0 + 56);
    v40 = *(v0 + 88);
    (v28)(v15, 1, 1, v26);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v40;
    *(v18 + 48) = v16;
    *(v18 + 56) = v17;
    *(v18 + 64) = v13;

    v14 = sub_261042D5C(0, 0, v15, &unk_2610BF938, v18);
  }

  *(v0 + 208) = v14;
  v19 = *(MEMORY[0x277D857C8] + 4);
  v20 = swift_task_alloc();
  *(v0 + 216) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  *(v0 + 224) = v21;
  *v20 = v0;
  v20[1] = sub_260FAF898;
  v22 = *(v0 + 96);
  v23 = *(v0 + 24);
  v24 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v23, v13, v22, v21, v24);
}