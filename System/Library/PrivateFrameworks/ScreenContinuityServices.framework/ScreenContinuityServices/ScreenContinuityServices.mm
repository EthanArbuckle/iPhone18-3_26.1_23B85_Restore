uint64_t sub_264888994()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264888A58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264888A98()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264888B64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264888BA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2648B88D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE0, &unk_2648B9CD0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[16];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_264888D34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2648B88D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE0, &unk_2648B9CD0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[16];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_264888EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2648B8874();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264888FC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2648B8874();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2648890C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2648891AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB8, &qword_2648BA538);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA0, &qword_2648BA518);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_264889364()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2648893B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2648893F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D78, &qword_2648BAA08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D60, &unk_2648BA9E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_2648895A0()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_264889708()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_264889878()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26488990C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264889944()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E38, &qword_2648BACC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E20, &qword_2648BACA8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_264889AAC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2648B88D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_264889B50(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_2648B88D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_264889BFC()
{
  MEMORY[0x266743A70](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264889C44()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264889C84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264889CBC()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264889D80()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82070, &qword_2648BB248);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_264889DB0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82078, &qword_2648BB250);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_264889E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2648B8874();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_264889EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2648B8874();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_264889F98()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_26488A120()
{
  v0 = swift_allocObject();
  sub_26488A158();
  return v0;
}

void *sub_26488A158()
{
  v1 = v0;
  v15 = sub_2648B8E54();
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2648B8EB4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2648B8B54();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2648910A8(0, &qword_280F78F88, 0x277D85C90);
  v14[0] = "ility";
  v14[1] = v10;
  sub_2648B8B44();
  v16 = MEMORY[0x277D84F90];
  sub_26488BBE0(&qword_280F78F90, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B60, &unk_2648B9A90);
  sub_26488E39C(&qword_280F78FA8, &qword_27FF81B60, &unk_2648B9A90);
  sub_2648B8F24();
  (*(v2 + 104))(v5, *MEMORY[0x277D85268], v15);
  v11 = sub_2648B8EC4();
  v12 = MEMORY[0x277D84F98];
  v1[3] = v11;
  v1[4] = v12;
  v1[2] = [objc_allocWithZone(MEMORY[0x277D54C10]) initWithQueue_];
  return v1;
}

uint64_t sub_26488A418()
{
  v1 = *v0;
  sub_2648B91D4();
  MEMORY[0x2667433E0](v1);
  return sub_2648B9214();
}

uint64_t sub_26488A48C()
{
  v1 = *v0;
  sub_2648B91D4();
  MEMORY[0x2667433E0](v1);
  return sub_2648B9214();
}

uint64_t sub_26488A4D0()
{
  v1[26] = v0;
  v2 = sub_2648B8B14();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  type metadata accessor for SharingController();
  sub_26488BBE0(&qword_280F78F70, v5, type metadata accessor for SharingController);
  v7 = sub_2648B8CB4();
  v1[32] = v7;
  v1[33] = v6;

  return MEMORY[0x2822009F8](sub_26488A5F8, v7, v6);
}

uint64_t sub_26488A5F8()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v4 = sub_2648A5874();
  v0[34] = v4;
  v5 = *(v3 + 16);
  v0[35] = v5;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Will fetch list of eligible devices", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  v9 = v0[31];
  v10 = v0[27];
  v11 = v0[28];
  v12 = v0[26];

  v13 = *(v11 + 8);
  v0[37] = v13;
  v13(v9, v10);
  v14 = *(v12 + 16);
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_26488A7F0;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B88, &qword_2648B9AD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26488AE24;
  v0[13] = &block_descriptor_37;
  v0[14] = v15;
  [v14 listCandidateDevicesForType:5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26488A7F0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  v4 = *(v1 + 264);
  v5 = *(v1 + 256);
  if (v3)
  {
    v6 = sub_26488AC58;
  }

  else
  {
    v6 = sub_26488A920;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

void sub_26488A920()
{
  v34 = v0;
  v1 = *(v0 + 184);
  if ((v1 & 0xC000000000000001) == 0)
  {
    if (*(v1 + 16))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v1 < 0)
  {
    v2 = *(v0 + 184);
  }

  if (!sub_2648B8F54())
  {
LABEL_7:
    v3 = *(v0 + 288);
    (*(v0 + 280))(*(v0 + 240), *(v0 + 272), *(v0 + 216));
    v4 = sub_2648B8AF4();
    v5 = sub_2648B8E44();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_264887000, v4, v5, "No devices are eligible", v6, 2u);
      MEMORY[0x2667439C0](v6, -1, -1);
    }

    v7 = *(v0 + 296);
    v8 = *(v0 + 240);
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);

    v7(v8, v9);
  }

LABEL_10:
  v32 = MEMORY[0x277D84F98];
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2648B8F44();
    sub_2648910A8(0, &qword_280F78EB8, 0x277D54C08);
    sub_2648910F0();
    sub_2648B8E14();
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
  }

  else
  {
    v16 = -1 << *(v1 + 32);
    v11 = v1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v1 + 56);

    v14 = 0;
    v12 = v1;
  }

  v19 = (v13 + 64) >> 6;
  if (v12 < 0)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v20 = v14;
    v21 = v15;
    v22 = v14;
    if (!v15)
    {
      break;
    }

LABEL_21:
    v23 = (v21 - 1) & v21;
    v24 = *(*(v12 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
LABEL_27:
      sub_264891158();

      v26 = v32;
      v28 = *(v0 + 240);
      v27 = *(v0 + 248);
      v29 = *(v0 + 232);
      v30 = *(v0 + 304) != 0;

      v31 = *(v0 + 8);

      v31(v26, v30);
      return;
    }

    while (1)
    {
      v33 = v24;
      sub_26488AF20(&v32, &v33);

      v14 = v22;
      v15 = v23;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_23:
      v25 = sub_2648B8F64();
      if (v25)
      {
        *(v0 + 200) = v25;
        sub_2648910A8(0, &qword_280F78EB8, 0x277D54C08);
        swift_dynamicCast();
        v24 = *(v0 + 192);
        v22 = v14;
        v23 = v15;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      goto LABEL_27;
    }

    v21 = *(v11 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t sub_26488AC58()
{
  v1 = v0[38];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  v5 = v0[29];
  v6 = v0[27];
  swift_willThrow();
  v3(v5, v4, v6);
  v7 = v1;
  v8 = sub_2648B8AF4();
  v9 = sub_2648B8E34();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[38];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_264887000, v8, v9, "Failed to list candidate devices: %@", v11, 0xCu);
    sub_264891214(v12, &qword_27FF81BC0, &qword_2648BA080);
    MEMORY[0x2667439C0](v12, -1, -1);
    MEMORY[0x2667439C0](v11, -1, -1);
  }

  v15 = v0[37];
  v17 = v0[28];
  v16 = v0[29];
  v18 = v0[27];

  v15(v16, v18);
  v19 = v0[38];
  v21 = v0[30];
  v20 = v0[31];
  v22 = v0[29];

  v23 = v0[1];

  return v23(v19, v19 != 0);
}

uint64_t sub_26488AE24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BB8, &unk_2648B9C80);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_2648910A8(0, &qword_280F78EB8, 0x277D54C08);
    sub_2648910F0();
    **(*(v4 + 64) + 40) = sub_2648B8E04();

    return MEMORY[0x282200950](v4);
  }
}

void sub_26488AF20(uint64_t *a1, void **a2)
{
  v4 = sub_2648B8B14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v65 = &v63 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BD0, &unk_2648BAEC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v63 - v16;
  v18 = sub_2648B88D4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  v24 = [v23 uniqueID];
  if (!v24)
  {
    goto LABEL_4;
  }

  v66 = v22;
  v67 = v5;
  v64 = a1;
  v25 = v4;
  v26 = v24;
  sub_2648B8C24();

  sub_2648B8884();

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_264891214(v17, &qword_27FF81BD0, &unk_2648BAEC0);
    v4 = v25;
    v5 = v67;
LABEL_4:
    v27 = sub_2648A5874();
    (*(v5 + 16))(v9, v27, v4);
    v28 = v23;
    v29 = sub_2648B8AF4();
    v30 = sub_2648B8E34();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v5;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v68 = v33;
      *v32 = 136446210;
      v34 = [v28 uniqueID];

      if (v34)
      {
        v35 = sub_2648B8C24();
        v37 = v36;

        v38 = sub_26488EB20(v35, v37, &v68);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_264887000, v29, v30, "Device ID is not a UUID: %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x2667439C0](v33, -1, -1);
        MEMORY[0x2667439C0](v32, -1, -1);

        (*(v31 + 8))(v9, v4);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    return;
  }

  v39 = v18;
  (*(v19 + 32))(v66, v17, v18);
  v40 = [v23 enabledAsKey];
  v41 = sub_2648A5874();
  v42 = *(v67 + 16);
  v43 = v25;
  if (v40)
  {
    v42(v13, v41, v25);
    v44 = v23;
    v45 = sub_2648B8AF4();
    v46 = sub_2648B8E44();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138543362;
      *(v47 + 4) = v44;
      *v48 = v44;
      v49 = v44;
      _os_log_impl(&dword_264887000, v45, v46, "Unlock enabled for device %{public}@", v47, 0xCu);
      sub_264891214(v48, &qword_27FF81BC0, &qword_2648BA080);
      MEMORY[0x2667439C0](v48, -1, -1);
      MEMORY[0x2667439C0](v47, -1, -1);
    }

    (*(v67 + 8))(v13, v25);
    v50 = v64;
    v51 = *v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *v50;
    v53 = 1;
  }

  else
  {
    v54 = v65;
    v42(v65, v41, v43);
    v55 = v23;
    v56 = sub_2648B8AF4();
    v57 = sub_2648B8E44();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138543362;
      *(v58 + 4) = v55;
      *v59 = v55;
      v60 = v55;
      _os_log_impl(&dword_264887000, v56, v57, "Unlock not enabled for device %{public}@", v58, 0xCu);
      sub_264891214(v59, &qword_27FF81BC0, &qword_2648BA080);
      MEMORY[0x2667439C0](v59, -1, -1);
      MEMORY[0x2667439C0](v58, -1, -1);
    }

    (*(v67 + 8))(v54, v43);
    v50 = v64;
    v61 = *v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *v50;
    v53 = 0;
  }

  v62 = v66;
  sub_26488FEE8(v53, v66, isUniquelyReferenced_nonNull_native);
  (*(v19 + 8))(v62, v39);
  *v50 = v68;
}

uint64_t sub_26488B5AC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BA0, &qword_2648B9C38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_264891214(a1, &qword_27FF81BA0, &qword_2648B9C38);
    sub_26488F0C8(a2, v8);
    v14 = sub_2648B88D4();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_264891214(v8, &qword_27FF81BA0, &qword_2648B9C38);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_264890088(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2648B88D4();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_26488B7E0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  v2 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B70, &qword_2648B9AA0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B80, &qword_2648B9AB0);
  (*(v6 + 104))(v9, *MEMORY[0x277D858A0], v5);
  sub_2648B8D94();
  (*(v6 + 8))(v9, v5);
  v17 = sub_2648B8D14();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  (*(v11 + 16))(v14, v16, v10);
  v19 = sub_26488BBE0(&qword_280F78F70, v18, type metadata accessor for SharingController);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v22 = v25;
  *(v21 + 2) = v25;
  *(v21 + 3) = v19;
  *(v21 + 4) = v22;
  (*(v11 + 32))(&v21[v20], v14, v10);
  swift_retain_n();
  sub_26488BD30(0, 0, v4, &unk_2648B9AC0, v21);

  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_26488BB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2648913EC;

  return sub_26488D194(a5);
}

uint64_t sub_26488BBE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26488BC4C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_26488BB44(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26488BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_2648911A4(a3, v26 - v10);
  v12 = sub_2648B8D14();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_264891214(v11, &qword_27FF81B68, &qword_2648BA520);
  }

  else
  {
    sub_2648B8D04();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2648B8CB4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2648B8C44() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_264891214(a3, &qword_27FF81B68, &qword_2648BA520);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_264891214(a3, &qword_27FF81B68, &qword_2648BA520);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26488C030(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_2648B88D4();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v6 = sub_2648B8B14();
  v2[24] = v6;
  v7 = *(v6 - 8);
  v2[25] = v7;
  v8 = *(v7 + 64) + 15;
  v2[26] = swift_task_alloc();
  type metadata accessor for SharingController();
  sub_26488BBE0(&qword_280F78F70, v9, type metadata accessor for SharingController);
  v11 = sub_2648B8CB4();
  v2[27] = v11;
  v2[28] = v10;

  return MEMORY[0x2822009F8](sub_26488C19C, v11, v10);
}

uint64_t sub_26488C19C()
{
  v1 = *(v0[20] + 16);
  v0[29] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26488C2C4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B88, &qword_2648B9AD0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26488AE24;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 listCandidateDevicesForType:5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26488C2C4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 224);
  v5 = *(v1 + 216);
  if (v3)
  {
    v6 = sub_26488C6B8;
  }

  else
  {
    v6 = sub_26488C3F4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

id sub_26488C3F4()
{
  v1 = v0[18];
  if ((v1 & 0xC000000000000001) == 0)
  {
    if (*(v1 + 16))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v1 < 0)
  {
    v2 = v0[18];
  }

  if (!sub_2648B8F54())
  {
LABEL_7:
    v4 = v0[25];
    v3 = v0[26];
    v5 = v0[24];
    v6 = sub_2648A5874();
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_2648B8AF4();
    v8 = sub_2648B8E44();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_264887000, v7, v8, "No devices are eligible", v9, 2u);
      MEMORY[0x2667439C0](v9, -1, -1);
    }

    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[24];

    (*(v11 + 8))(v10, v12);
  }

LABEL_10:
  v13 = v0[19];
  v14 = swift_task_alloc();
  *(v14 + 16) = v13;
  sub_26488C8C8(sub_26488C7F8, v14, v1);
  v16 = v15;

  if (v16)
  {
    result = [v16 idsDeviceID];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    v19 = v0[29];
    v20 = v0[26];
    v22 = v0[22];
    v21 = v0[23];
    v23 = v0[21];

    v24 = [v19 disableForType:5 withIDSDeviceID:v18];

    sub_2648B88B4();
    (*(v22 + 8))(v21, v23);

    v25 = v0[1];
  }

  else
  {
    v26 = v0[21];
    v27 = v0[22];
    v28 = v0[19];

    type metadata accessor for SharingController.SharingError();
    sub_26488CB58();
    swift_allocError();
    (*(v27 + 16))(v29, v28, v26);
    swift_willThrow();
    v30 = v0[26];
    v31 = v0[23];

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_26488C6B8()
{
  v1 = v0[30];
  swift_willThrow();
  v2 = v0[30];
  v3 = v0[26];
  v4 = v0[23];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26488C748(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26488C7F8(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 uniqueID];
  if (!v3)
  {
    sub_2648B8894();
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_2648B8C24();
  v7 = v6;

  v8 = sub_2648B8894();
  if (!v7)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_11;
  }

  if (v5 == v8 && v7 == v9)
  {

    v11 = 1;
  }

  else
  {
    v11 = sub_2648B9144();
  }

LABEL_11:

  return v11 & 1;
}

void sub_26488C8C8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2648B8F44();
    sub_2648910A8(0, &qword_280F78EB8, 0x277D54C08);
    sub_2648910F0();
    sub_2648B8E14();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_2648B8F64())
        {
          sub_2648910A8(0, &qword_280F78EB8, 0x277D54C08);
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_264891158();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for SharingController.SharingError()
{
  result = qword_27FF82280;
  if (!qword_27FF82280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26488CB58()
{
  result = qword_27FF82170[0];
  if (!qword_27FF82170[0])
  {
    type metadata accessor for SharingController.SharingError();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82170);
  }

  return result;
}

uint64_t sub_26488CBB0(uint64_t *a1, int a2)
{
  v20 = a2;
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  swift_beginAccess();
  v8 = *(v2 + 32);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = *(v2 + 32);

  for (i = 0; v11; result = (*(v4 + 8))(v7, v3))
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    (*(v4 + 16))(v7, *(v8 + 56) + *(v4 + 72) * (v17 | (v16 << 6)), v3);
    sub_264890BE4(v19, v20 & 1, v7);
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
    }

    v11 = *(v8 + 64 + 8 * v16);
    ++i;
    if (v11)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26488CD7C()
{
  v1[2] = v0;
  v2 = sub_2648B8B14();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  type metadata accessor for SharingController();
  sub_26488BBE0(&qword_280F78F70, v5, type metadata accessor for SharingController);
  v7 = sub_2648B8CB4();
  v1[6] = v7;
  v1[7] = v6;

  return MEMORY[0x2822009F8](sub_26488CE8C, v7, v6);
}

uint64_t sub_26488CE8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2648A5874();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2648B8AF4();
  v6 = sub_2648B8E44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_264887000, v5, v6, "Authentication state changed", v7, 2u);
    MEMORY[0x2667439C0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_26488CFD8;
  v12 = v0[2];

  return sub_26488A4D0();
}

uint64_t sub_26488CFD8(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v9 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  v6 = *(v3 + 56);
  v7 = *(v3 + 48);

  return MEMORY[0x2822009F8](sub_26488D104, v7, v6);
}

uint64_t sub_26488D104()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 80);
  sub_26488CBB0(v1, v4 & 1);
  sub_26488E84C(v1, v4 & 1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26488D194(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BA0, &qword_2648B9C38) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v7 = sub_2648B88D4();
  v2[22] = v7;
  v8 = *(v7 - 8);
  v2[23] = v8;
  v2[24] = *(v8 + 64);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  type metadata accessor for SharingController();
  v2[27] = sub_26488BBE0(&qword_280F78F70, v9, type metadata accessor for SharingController);
  v11 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_26488D39C, v11, v10);
}

uint64_t sub_26488D39C()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  sub_2648B88C4();
  swift_beginAccess();
  v33 = *(v4 + 16);
  v34 = *(*(v9 + 32) + 16);
  v33(v1, v2, v3);
  v36 = *(v7 + 16);
  v36(v5, v8, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  swift_beginAccess();
  sub_26488B5AC(v5, v1);
  swift_endAccess();
  if (!v34)
  {
    v10 = v0[15];
    v11 = *(v10 + 16);
    v0[6] = sub_26488E798;
    v0[7] = v10;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26488DA30;
    v0[5] = &block_descriptor_23;
    v12 = _Block_copy(v0 + 2);
    v13 = v0[7];

    [v11 startObservingForAuthenticationStateChanges:v12 queue:*(v10 + 24)];
    _Block_release(v12);
  }

  v14 = v0[25];
  v16 = v0[22];
  v15 = v0[23];
  v35 = v0[21];
  v28 = v0[20];
  v29 = v0[19];
  v30 = v0[18];
  v31 = v0[27];
  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[14];
  v20 = v0[15];
  v32 = v0[26];
  (v33)(v14);
  v21 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v15 + 32))(v22 + v21, v14, v16);

  sub_2648B8DA4();
  v23 = sub_2648B8D14();
  (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
  v36(v29, v19, v18);
  v24 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v20;
  *(v25 + 3) = v31;
  *(v25 + 4) = v20;
  (*(v17 + 32))(&v25[v24], v29, v18);
  swift_retain_n();
  sub_26488BD30(0, 0, v28, &unk_2648B9C48, v25);

  (*(v15 + 8))(v32, v16);

  v26 = v0[1];

  return v26();
}

uint64_t sub_26488D764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_2648B8D14();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v8 = sub_26488BBE0(&qword_280F78F70, v7, type metadata accessor for SharingController);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v8;
  v9[4] = a1;
  swift_retain_n();
  sub_26488BD30(0, 0, v5, &unk_2648B9C58, v9);
}

uint64_t sub_26488D8AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26488D93C;

  return sub_26488CD7C();
}

uint64_t sub_26488D93C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26488DA30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26488DA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2648B88D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_2648B8D14();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a1;
  (*(v5 + 32))(&v13[v12], &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_26488BD30(0, 0, v10, &unk_2648B9C70, v13);
}

uint64_t sub_26488DC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BA0, &qword_2648B9C38) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  type metadata accessor for SharingController();
  sub_26488BBE0(&qword_280F78F70, v7, type metadata accessor for SharingController);
  v9 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_26488DD44, v9, v8);
}

uint64_t sub_26488DD44()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  swift_beginAccess();
  sub_26488F0C8(v2, v1);
  sub_264891214(v1, &qword_27FF81BA0, &qword_2648B9C38);
  swift_endAccess();
  if (!*(*(v3 + 32) + 16))
  {
    [*(v0[5] + 16) stopObservingForAuthenticationStateChanges];
  }

  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26488DE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BA8, &qword_2648B9C60);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[9] = v9;
  *v9 = v5;
  v9[1] = sub_26488DF14;

  return sub_26488A4D0();
}

uint64_t sub_26488DF14(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 32);
  v10 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 25) = a2;

  type metadata accessor for SharingController();
  sub_26488BBE0(&qword_280F78F70, v6, type metadata accessor for SharingController);
  v8 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_26488E080, v8, v7);
}

uint64_t sub_26488E080()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  *(v0 + 16) = v1;
  v6 = *(v0 + 25) & 1;
  *(v0 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  sub_2648B8DB4();
  (*(v3 + 8))(v2, v5);
  sub_26488E84C(v1, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26488E160()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_26488E1D0()
{
  result = qword_27FF81B90;
  if (!qword_27FF81B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81B90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingController.Unlockability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingController.Unlockability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26488E39C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26488E3E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2648B88D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26488E450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2648B88D4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_26488E4D4(uint64_t a1)
{
  result = sub_2648B88D4();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_26488E578()
{
  v1 = *(sub_2648B88D4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_26488DA74(v2, v3);
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26488E6B4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_26488DE18(v5, v6, v7, v4, v0 + v3);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26488E7B8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2648913EC;

  return sub_26488D8AC();
}

void sub_26488E84C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_26488E858()
{
  v2 = *(sub_2648B88D4() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26488D93C;

  return sub_26488DC54(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26488E930(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26488EA28;

  return v7(a1);
}

uint64_t sub_26488EA28()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26488EB20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26488EBEC(v11, 0, 0, 1, a1, a2);
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
    sub_26488C748(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26488EBEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26488ECF8(a5, a6);
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
    result = sub_2648B8FD4();
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

uint64_t sub_26488ECF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_26488ED44(a1, a2);
  sub_26488EE74(&unk_28762E700);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26488ED44(uint64_t a1, unint64_t a2)
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

  v6 = sub_26488EF60(v5, 0);
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

  result = sub_2648B8FD4();
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
        v10 = sub_2648B8C84();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26488EF60(v10, 0);
        result = sub_2648B8F94();
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

uint64_t sub_26488EE74(uint64_t result)
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

  result = sub_26488EFD4(result, v12, 1, v3);
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

void *sub_26488EF60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BC8, &unk_2648B9C90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26488EFD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BC8, &unk_2648B9C90);
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

uint64_t sub_26488F0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26488F280(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_264890888();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2648B88D4();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_26488FB94(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_26488F280(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2648B88D4();
  sub_26488BBE0(&qword_280F796E0, 255, MEMORY[0x277CC95F0]);
  v5 = sub_2648B8BC4();

  return sub_264890454(a1, v5);
}

uint64_t sub_26488F31C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2648B88D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BD8, &unk_2648B9CA0);
  v44 = a2;
  result = sub_2648B9024();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_26488BBE0(&qword_280F796E0, 255, MEMORY[0x277CC95F0]);
      result = sub_2648B8BC4();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_26488F6E0(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v8;
  v9 = sub_2648B88D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BB0, &qword_2648B9C78);
  v52 = a2;
  result = sub_2648B9024();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_26488BBE0(&qword_280F796E0, 255, MEMORY[0x277CC95F0]);
      result = sub_2648B8BC4();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

unint64_t sub_26488FB94(int64_t a1, uint64_t a2)
{
  v4 = sub_2648B88D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_2648B8F34();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_26488BBE0(&qword_280F796E0, 255, MEMORY[0x277CC95F0]);
      v24 = sub_2648B8BC4();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26488FEE8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2648B88D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26488F280(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_264890618();
    goto LABEL_7;
  }

  sub_26488F31C(result, a3 & 1);
  v22 = *v4;
  result = sub_26488F280(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_2648B9174();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_264890298(v15, v12, a1 & 1, v21);
}

uint64_t sub_264890088(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2648B88D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26488F280(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_264890888();
      goto LABEL_7;
    }

    sub_26488F6E0(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_26488F280(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_264890354(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2648B9174();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_264890298(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2648B88D4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3 & 1;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_264890354(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2648B88D4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_264890454(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2648B88D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_26488BBE0(&qword_280F796D8, 255, MEMORY[0x277CC95F0]);
      v16 = sub_2648B8BE4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_264890618()
{
  v1 = v0;
  v32 = sub_2648B88D4();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BD8, &unk_2648B9CA0);
  v4 = *v0;
  v5 = sub_2648B9014();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_264890888()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v3;
  v41 = sub_2648B88D4();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BB0, &qword_2648B9C78);
  v6 = *v0;
  v7 = sub_2648B9014();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_264890BE4(uint64_t *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BA8, &qword_2648B9C60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = sub_2648B8B14();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  if (a2)
  {
    v46 = a1;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BB8, &unk_2648B9C80);
    swift_willThrowTypedImpl();
    v20 = sub_2648A5874();
    (*(v12 + 16))(v16, v20, v11);
    v21 = a1;
    v22 = sub_2648B8AF4();
    v23 = sub_2648B8E34();
    sub_26488E84C(a1, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = a1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_264887000, v22, v23, "Failed to get info about device unlockability: %{public}@", v24, 0xCu);
      sub_264891214(v25, &qword_27FF81BC0, &qword_2648BA080);
      MEMORY[0x2667439C0](v25, -1, -1);
      MEMORY[0x2667439C0](v24, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
    v46 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
    return sub_2648B8DD4();
  }

  else
  {
    v29 = sub_2648A5874();
    (*(v12 + 16))(v18, v29, v11);

    v30 = sub_2648B8AF4();
    v31 = sub_2648B8E44();
    sub_26488E84C(a1, 0);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45 = a3;
      v33 = v32;
      v42 = v32;
      v43 = swift_slowAlloc();
      v46 = v43;
      *v33 = 136315138;
      sub_2648B88D4();
      v44 = v6;
      sub_26488BBE0(&qword_280F796E0, 255, MEMORY[0x277CC95F0]);
      v34 = sub_2648B8BB4();
      LOBYTE(v33) = v31;
      v36 = v7;
      v37 = sub_26488EB20(v34, v35, &v46);
      v6 = v44;

      v38 = v42;
      *(v42 + 4) = v37;
      v7 = v36;
      v39 = v38;
      _os_log_impl(&dword_264887000, v30, v33, "Got info about device unlockability: %s", v38, 0xCu);
      v40 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x2667439C0](v40, -1, -1);
      MEMORY[0x2667439C0](v39, -1, -1);
    }

    (*(v12 + 8))(v18, v11);
    v46 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B78, &qword_2648B9AA8);
    sub_2648B8DC4();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_2648910A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_2648910F0()
{
  result = qword_280F78EB0;
  if (!qword_280F78EB0)
  {
    sub_2648910A8(255, &qword_280F78EB8, 0x277D54C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F78EB0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2648911A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264891214(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_264891274(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2648913EC;

  return sub_26488E930(a1, v5);
}

uint64_t sub_26489132C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26488D93C;

  return sub_26488E930(a1, v5);
}

uint64_t CompanionDevice.idsDeviceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CompanionDevice(0) + 20);
  v4 = sub_2648B88D4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CompanionDevice.name.getter()
{
  v1 = (v0 + *(type metadata accessor for CompanionDevice(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CompanionDevice.marketingName.getter()
{
  v1 = (v0 + *(type metadata accessor for CompanionDevice(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CompanionDevice.PairingState.hashValue.getter()
{
  v1 = *v0;
  sub_2648B91D4();
  MEMORY[0x2667433E0](v1);
  return sub_2648B9214();
}

double CompanionDevice.Screen.size.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t CompanionDevice.Screen.cornerRadius.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t CompanionDevice.Screen.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x266743400](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x266743400](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x266743400](*&v7);
  if (v5 == 1)
  {
    return sub_2648B91F4();
  }

  sub_2648B91F4();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x266743400](v9);
}

uint64_t CompanionDevice.Screen.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_2648B91D4();
  CompanionDevice.Screen.hash(into:)();
  return sub_2648B9214();
}

uint64_t sub_2648917A0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_2648917B8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_2648B91D4();
  CompanionDevice.Screen.hash(into:)();
  return sub_2648B9214();
}

uint64_t sub_264891820()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_2648B91D4();
  CompanionDevice.Screen.hash(into:)();
  return sub_2648B9214();
}

uint64_t CompanionDevice.replicatorPairing.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CompanionDevice(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

__n128 CompanionDevice.deviceScreen.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CompanionDevice(0) + 52);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  return result;
}

uint64_t CompanionDevice.remoteScreenPairing.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CompanionDevice(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t CompanionDevice.Proximity.hashValue.getter()
{
  v1 = *v0;
  sub_2648B91D4();
  MEMORY[0x2667433E0](v1);
  return sub_2648B9214();
}

uint64_t CompanionDevice.proximity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CompanionDevice(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t CompanionDevice.SessionInfo.hash(into:)()
{
  v1 = sub_2648B8874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_264893AE0(&qword_27FF81BF0, MEMORY[0x277CC9578]);
  sub_2648B8BD4();
  v10 = type metadata accessor for CompanionDevice.SessionInfo(0);
  sub_264893A10(v0 + *(v10 + 20), v9, &qword_27FF81BE8, &qword_2648BB0C0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_2648B91F4();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_2648B91F4();
  sub_2648B8BD4();
  return (*(v2 + 8))(v5, v1);
}

uint64_t CompanionDevice.SessionInfo.hashValue.getter()
{
  v1 = sub_2648B8874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_2648B91D4();
  sub_264893AE0(&qword_27FF81BF0, MEMORY[0x277CC9578]);
  sub_2648B8BD4();
  v10 = type metadata accessor for CompanionDevice.SessionInfo(0);
  sub_264893A10(v0 + *(v10 + 20), v9, &qword_27FF81BE8, &qword_2648BB0C0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_2648B91F4();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_2648B91F4();
    sub_2648B8BD4();
    (*(v2 + 8))(v5, v1);
  }

  return sub_2648B9214();
}

uint64_t sub_264891E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2648B8874();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for CompanionDevice.SessionInfo(0);
  return sub_264893A78(a2, a3 + *(v7 + 20), &qword_27FF81BE8, &qword_2648BB0C0);
}

uint64_t sub_264891F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2648B8874();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_264893AE0(&qword_27FF81BF0, MEMORY[0x277CC9578]);
  sub_2648B8BD4();
  sub_264893A10(v2 + *(a2 + 20), v12, &qword_27FF81BE8, &qword_2648BB0C0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_2648B91F4();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_2648B91F4();
  sub_2648B8BD4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_264892110(uint64_t a1, uint64_t a2)
{
  v4 = sub_2648B8874();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_2648B91D4();
  sub_264893AE0(&qword_27FF81BF0, MEMORY[0x277CC9578]);
  sub_2648B8BD4();
  sub_264893A10(v2 + *(a2 + 20), v12, &qword_27FF81BE8, &qword_2648BB0C0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_2648B91F4();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_2648B91F4();
    sub_2648B8BD4();
    (*(v5 + 8))(v8, v4);
  }

  return sub_2648B9214();
}

uint64_t sub_264892378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char *a12, __int128 *a13, char *a14, char *a15, uint64_t a16)
{
  v31 = *a12;
  v32 = *(a13 + 33);
  v33 = *(a13 + 32);
  v34 = *a14;
  v36 = *a15;
  v22 = sub_2648B88D4();
  v23 = *(*(v22 - 8) + 32);
  v29 = a13[1];
  v30 = *a13;
  v23(a9, a1, v22);
  v24 = type metadata accessor for CompanionDevice(0);
  v23(a9 + v24[5], a2, v22);
  v25 = (a9 + v24[6]);
  *v25 = a3;
  v25[1] = a4;
  sub_264893A78(a5, a9 + v24[7], &qword_27FF81BE0, &unk_2648B9CD0);
  v26 = (a9 + v24[8]);
  *v26 = a6;
  v26[1] = a7;
  *(a9 + v24[9]) = a8;
  *(a9 + v24[10]) = a10;
  *(a9 + v24[11]) = a11;
  *(a9 + v24[12]) = v31;
  v27 = a9 + v24[13];
  *v27 = v30;
  *(v27 + 16) = v29;
  *(v27 + 32) = v33;
  *(v27 + 33) = v32;
  *(a9 + v24[14]) = v34;
  *(a9 + v24[15]) = v36;
  return sub_264893A78(a16, a9 + v24[16], &qword_27FF81BF8, &qword_2648B9CE0);
}

uint64_t CompanionDevice.hash(into:)()
{
  v1 = v0;
  v2 = sub_2648B8874();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v54 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = &v54 - v7;
  v8 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v8);
  v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v54 - v13;
  v14 = sub_2648B8AE4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE0, &unk_2648B9CD0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v54 - v21;
  sub_2648B88D4();
  sub_264893AE0(&qword_280F796E0, MEMORY[0x277CC95F0]);
  sub_2648B8BD4();
  v23 = type metadata accessor for CompanionDevice(0);
  v24 = v0 + v23[5];
  sub_2648B8BD4();
  v25 = (v1 + v23[6]);
  v26 = *v25;
  v27 = v25[1];
  sub_2648B8C54();
  sub_264893A10(v1 + v23[7], v22, &qword_27FF81BE0, &unk_2648B9CD0);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    sub_2648B91F4();
  }

  else
  {
    (*(v15 + 32))(v18, v22, v14);
    sub_2648B91F4();
    sub_264893AE0(&qword_27FF81C00, MEMORY[0x277D85578]);
    sub_2648B8BD4();
    (*(v15 + 8))(v18, v14);
  }

  v28 = (v1 + v23[8]);
  v29 = v61;
  if (v28[1])
  {
    v30 = *v28;
    sub_2648B91F4();
    sub_2648B8C54();
  }

  else
  {
    sub_2648B91F4();
  }

  v31 = *(v1 + v23[9]);
  sub_2648B91F4();
  v32 = *(v1 + v23[10]);
  sub_2648B91F4();
  v33 = *(v1 + v23[11]);
  sub_2648B91F4();
  v34 = *(v1 + v23[12]);
  sub_2648B91F4();
  if (v34 != 4)
  {
    MEMORY[0x2667433E0](v34);
  }

  v35 = v1 + v23[13];
  if (*(v35 + 33) == 1)
  {
    goto LABEL_20;
  }

  v36 = *(v35 + 32);
  v38 = *(v35 + 16);
  v37 = *(v35 + 24);
  v40 = *v35;
  v39 = *(v35 + 8);
  sub_2648B91F4();
  v41 = v40 == 0.0 ? 0.0 : v40;
  MEMORY[0x266743400](*&v41);
  v42 = v39 == 0.0 ? 0.0 : v39;
  MEMORY[0x266743400](*&v42);
  v43 = (v38 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v38 : 0;
  MEMORY[0x266743400](v43);
  if (v36)
  {
LABEL_20:
    sub_2648B91F4();
  }

  else
  {
    sub_2648B91F4();
    if ((v37 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v44 = v37;
    }

    else
    {
      v44 = 0;
    }

    MEMORY[0x266743400](v44);
  }

  v45 = *(v1 + v23[14]);
  sub_2648B91F4();
  if (v45 != 4)
  {
    MEMORY[0x2667433E0](v45);
  }

  v46 = *(v1 + v23[15]);
  sub_2648B91F4();
  if (v46 != 2)
  {
    MEMORY[0x2667433E0](v46 & 1);
  }

  v47 = v59;
  sub_264893A10(v1 + v23[16], v59, &qword_27FF81BF8, &qword_2648B9CE0);
  if ((*(v60 + 48))(v47, 1, v29) == 1)
  {
    return sub_2648B91F4();
  }

  v49 = v56;
  sub_264893B28(v47, v56);
  sub_2648B91F4();
  sub_264893AE0(&qword_27FF81BF0, MEMORY[0x277CC9578]);
  v50 = v58;
  sub_2648B8BD4();
  v51 = v55;
  sub_264893A10(v49 + *(v29 + 20), v55, &qword_27FF81BE8, &qword_2648BB0C0);
  v52 = v57;
  if ((*(v57 + 48))(v51, 1, v50) == 1)
  {
    sub_2648B91F4();
  }

  else
  {
    v53 = v54;
    (*(v52 + 32))(v54, v51, v50);
    sub_2648B91F4();
    sub_2648B8BD4();
    (*(v52 + 8))(v53, v50);
  }

  return sub_264893B8C(v49);
}

uint64_t CompanionDevice.hashValue.getter()
{
  sub_2648B91D4();
  CompanionDevice.hash(into:)();
  return sub_2648B9214();
}

uint64_t sub_264892CDC()
{
  sub_2648B91D4();
  CompanionDevice.hash(into:)();
  return sub_2648B9214();
}

uint64_t sub_264892D20()
{
  sub_2648B91D4();
  CompanionDevice.hash(into:)();
  return sub_2648B9214();
}

uint64_t sub_264892D5C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_264892DCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2648B88D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL _s24ScreenContinuityServices15CompanionDeviceV0A0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }
}

uint64_t sub_264892EB0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL _s24ScreenContinuityServices15CompanionDeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v88 = *(v4 - 8);
  v5 = *(v88 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v82 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C38, &qword_2648BA050);
  v11 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v89 = &v82 - v12;
  v13 = sub_2648B8AE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE0, &unk_2648B9CD0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v82 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C40, &qword_2648BA058);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v82 - v24;
  if ((sub_2648B88A4() & 1) == 0)
  {
    return 0;
  }

  v85 = v14;
  v26 = type metadata accessor for CompanionDevice(0);
  v27 = *(v26 + 20);
  if ((sub_2648B88A4() & 1) == 0)
  {
    return 0;
  }

  v28 = *(v26 + 24);
  v84 = a1;
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = a2;
  v32 = (a2 + v28);
  v33 = v32[1];
  v34 = v29 == *v32;
  v35 = v26;
  if (!v34 || v30 != v33)
  {
    v36 = sub_2648B9144();
    v35 = v26;
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  v82 = v7;
  v83 = v4;
  v37 = v35;
  v38 = *(v35 + 28);
  v39 = *(v22 + 48);
  sub_264893A10(v84 + v38, v25, &qword_27FF81BE0, &unk_2648B9CD0);
  v40 = v31 + v38;
  v41 = v31;
  sub_264893A10(v40, &v25[v39], &qword_27FF81BE0, &unk_2648B9CD0);
  v42 = *(v85 + 48);
  if (v42(v25, 1, v13) == 1)
  {
    if (v42(&v25[v39], 1, v13) == 1)
    {
      sub_264891214(v25, &qword_27FF81BE0, &unk_2648B9CD0);
      goto LABEL_17;
    }

LABEL_12:
    v43 = &qword_27FF81C40;
    v44 = &qword_2648BA058;
    v45 = v25;
LABEL_13:
    sub_264891214(v45, v43, v44);
    return 0;
  }

  sub_264893A10(v25, v21, &qword_27FF81BE0, &unk_2648B9CD0);
  if (v42(&v25[v39], 1, v13) == 1)
  {
    (*(v85 + 8))(v21, v13);
    goto LABEL_12;
  }

  v47 = v85;
  (*(v85 + 32))(v17, &v25[v39], v13);
  sub_264893AE0(&qword_27FF81C48, MEMORY[0x277D85578]);
  v48 = sub_2648B8BE4();
  v49 = *(v47 + 8);
  v49(v17, v13);
  v49(v21, v13);
  sub_264891214(v25, &qword_27FF81BE0, &unk_2648B9CD0);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v50 = v37;
  v51 = v37[8];
  v52 = v84;
  v53 = (v84 + v51);
  v54 = *(v84 + v51 + 8);
  v55 = (v41 + v51);
  v56 = v55[1];
  if (v54)
  {
    if (!v56)
    {
      return 0;
    }

    if (*v53 != *v55 || v54 != v56)
    {
      v57 = sub_2648B9144();
      v50 = v37;
      if ((v57 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v56)
  {
    return 0;
  }

  if (*(v52 + v50[9]) != *(v41 + v50[9]) || *(v52 + v50[10]) != *(v41 + v50[10]) || *(v52 + v50[11]) != *(v41 + v50[11]))
  {
    return 0;
  }

  v58 = v50[12];
  v59 = *(v52 + v58);
  v60 = *(v41 + v58);
  if (v59 == 4)
  {
    if (v60 != 4)
    {
      return 0;
    }
  }

  else if (v59 != v60)
  {
    return 0;
  }

  v61 = v50[13];
  v62 = v52 + v61;
  v63 = *(v52 + v61 + 33);
  v64 = v41 + v61;
  v65 = *(v64 + 33);
  if (v63)
  {
    goto LABEL_32;
  }

  if (*(v64 + 33))
  {
    return 0;
  }

  result = 0;
  if (*v62 == *v64 && *(v62 + 8) == *(v64 + 8) && *(v62 + 16) == *(v64 + 16))
  {
    v65 = *(v64 + 32);
    if (*(v62 + 32))
    {
LABEL_32:
      if ((v65 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_33;
    }

    result = 0;
    if ((*(v64 + 32) & 1) == 0 && *(v62 + 24) == *(v64 + 24))
    {
LABEL_33:
      v66 = v50[14];
      v67 = *(v52 + v66);
      v68 = *(v41 + v66);
      if (v67 == 4)
      {
        if (v68 != 4)
        {
          return 0;
        }
      }

      else if (v67 != v68)
      {
        return 0;
      }

      v69 = v50[15];
      v70 = *(v52 + v69);
      v71 = *(v41 + v69);
      if (v70 == 2)
      {
        if (v71 != 2)
        {
          return 0;
        }
      }

      else if (v71 == 2 || ((v71 ^ v70) & 1) != 0)
      {
        return 0;
      }

      v72 = v50[16];
      v73 = *(v87 + 48);
      v74 = v52 + v72;
      v75 = v89;
      sub_264893A10(v74, v89, &qword_27FF81BF8, &qword_2648B9CE0);
      sub_264893A10(v41 + v72, v75 + v73, &qword_27FF81BF8, &qword_2648B9CE0);
      v76 = *(v88 + 48);
      v77 = v83;
      if (v76(v75, 1, v83) == 1)
      {
        if (v76(v75 + v73, 1, v77) == 1)
        {
          sub_264891214(v75, &qword_27FF81BF8, &qword_2648B9CE0);
          return 1;
        }
      }

      else
      {
        sub_264893A10(v75, v86, &qword_27FF81BF8, &qword_2648B9CE0);
        if (v76(v75 + v73, 1, v77) != 1)
        {
          v78 = v89;
          v79 = v82;
          sub_264893B28(v89 + v73, v82);
          v80 = v86;
          v81 = _s24ScreenContinuityServices15CompanionDeviceV11SessionInfoV2eeoiySbAE_AEtFZ_0(v86, v79);
          sub_264893B8C(v79);
          sub_264893B8C(v80);
          sub_264891214(v78, &qword_27FF81BF8, &qword_2648B9CE0);
          return v81;
        }

        sub_264893B8C(v86);
        v75 = v89;
      }

      v43 = &qword_27FF81C38;
      v44 = &qword_2648BA050;
      v45 = v75;
      goto LABEL_13;
    }
  }

  return result;
}

BOOL _s24ScreenContinuityServices15CompanionDeviceV11SessionInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2648B8874();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C50, &unk_2648BA060);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if ((sub_2648B8854() & 1) == 0)
  {
    return 0;
  }

  v25 = v8;
  v17 = *(type metadata accessor for CompanionDevice.SessionInfo(0) + 20);
  v18 = *(v13 + 48);
  sub_264893A10(a1 + v17, v16, &qword_27FF81BE8, &qword_2648BB0C0);
  sub_264893A10(a2 + v17, &v16[v18], &qword_27FF81BE8, &qword_2648BB0C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_264891214(v16, &qword_27FF81BE8, &qword_2648BB0C0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_264893A10(v16, v12, &qword_27FF81BE8, &qword_2648BB0C0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_264891214(v16, &qword_27FF81C50, &unk_2648BA060);
    return 0;
  }

  v21 = v25;
  (*(v5 + 32))(v25, &v16[v18], v4);
  sub_264893AE0(&qword_27FF81C58, MEMORY[0x277CC9578]);
  v22 = sub_2648B8BE4();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v12, v4);
  sub_264891214(v16, &qword_27FF81BE8, &qword_2648BB0C0);
  return (v22 & 1) != 0;
}

uint64_t sub_264893A10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_264893A78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_264893AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264893B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice.SessionInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264893B8C(uint64_t a1)
{
  v2 = type metadata accessor for CompanionDevice.SessionInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_264893BEC()
{
  result = qword_27FF81C08;
  if (!qword_27FF81C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C08);
  }

  return result;
}

unint64_t sub_264893C44()
{
  result = qword_27FF81C10;
  if (!qword_27FF81C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C10);
  }

  return result;
}

unint64_t sub_264893C9C()
{
  result = qword_27FF81C18;
  if (!qword_27FF81C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C18);
  }

  return result;
}

void sub_264893DF0()
{
  sub_2648B88D4();
  if (v0 <= 0x3F)
  {
    sub_264893FD4(319, &qword_280F796D0, MEMORY[0x277D85578]);
    if (v1 <= 0x3F)
    {
      sub_264894348(319, &qword_280F78FB0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_264894348(319, qword_280F79408, &type metadata for CompanionDevice.PairingState, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_264894348(319, qword_280F79498, &type metadata for CompanionDevice.Screen, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_264894348(319, &qword_280F79400, &type metadata for CompanionDevice.Proximity, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_264893FD4(319, qword_280F79468, type metadata accessor for CompanionDevice.SessionInfo);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_264893FD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2648B8F04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CompanionDevice.PairingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CompanionDevice.PairingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264894194(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2648941B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

void sub_26489422C()
{
  sub_2648B8874();
  if (v0 <= 0x3F)
  {
    sub_264893FD4(319, &qword_280F796E8, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2648942D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2648942F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_264894348(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t ContinuityLaunchRequest.type.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContinuityLaunchRequest.payload.getter()
{
  v1 = *(v0 + 16);
  sub_264894464(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_264894464(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2648944C0()
{
  if (*v0)
  {
    result = 0x64616F6C796170;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_2648944F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2648B9144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2648B9144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2648945E8(uint64_t a1)
{
  v2 = sub_264895C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264894624(uint64_t a1)
{
  v2 = sub_264895C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_264894660(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C88, &qword_2648BA3F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_264895C58();
  sub_2648B9234();
  LOBYTE(v16) = 0;
  sub_2648B90F4();
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_264894464(v14, v15);
    sub_2648958D8();
    sub_2648B9104();
    sub_264894BFC(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2648947FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_264895CAC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t ContinuityLaunchRequest.init(type:payload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double ContinuityLaunchRequest.init(forAppLaunch:encodedRemoteAppIdentifier:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_2648B8B14();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  if (!a1 && a3 >> 60 == 15)
  {
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v10 = sub_2648B8714();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_264894B80(a2, a3);
    sub_2648B8704();
    sub_264894B94();
    v13 = sub_2648B86F4();
    v15 = v14;

    sub_264894BE8(a2, a3);

    sub_264894BE8(a2, a3);
    *a4 = xmmword_2648BA070;
    *(a4 + 16) = v13;
    *(a4 + 24) = v15;

    sub_264894464(v13, v15);

    sub_264894BFC(v13, v15);
  }

  return result;
}

uint64_t ContinuityAppLaunchRequest.init(bundleIdentifier:encodedRemoteAppIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_264894B80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_264894464(a1, a2);
  }

  return a1;
}

unint64_t sub_264894B94()
{
  result = qword_27FF81C60;
  if (!qword_27FF81C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C60);
  }

  return result;
}

uint64_t sub_264894BE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_264894BFC(a1, a2);
  }

  return a1;
}

uint64_t sub_264894BFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ContinuityLaunchRequest.translateIfNeeded()@<X0>(void *a1@<X8>)
{
  v3 = sub_2648B8B14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v12 = v9 == 0x697463416576696CLL && v8 == 0xEC00000079746976;
  if (v12 || (sub_2648B9144() & 1) != 0)
  {
    v13 = v10;
    v14 = sub_2648A572C();
    (*(v4 + 16))(v7, v14, v3);
    v15 = sub_2648B8AF4();
    v16 = sub_2648B8E44();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_264887000, v15, v16, "Translating live activity launch type to 'widget'", v17, 2u);
      MEMORY[0x2667439C0](v17, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    *a1 = 0x746567646977;
    a1[1] = 0xE600000000000000;
    a1[2] = v11;
    a1[3] = v13;
    return sub_264894464(v11, v13);
  }

  else
  {
    *a1 = v9;
    a1[1] = v8;
    a1[2] = v11;
    a1[3] = v10;

    return sub_264894464(v11, v10);
  }
}

uint64_t ContinuityLaunchRequest.encode()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_2648B8714();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  sub_264894464(v3, v4);
  sub_2648B8704();
  sub_2648957DC();
  v8 = sub_2648B86F4();

  sub_264894BFC(v3, v4);
  return v8;
}

uint64_t ContinuityLaunchRequest.init(decoding:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_2648B8B14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2648B86E4();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_2648B86D4();
  sub_264895830();
  sub_2648B86C4();
  if (v3)
  {

    v15 = sub_2648A572C();
    (*(v8 + 16))(v11, v15, v7);
    v16 = sub_2648B8AF4();
    v17 = sub_2648B8E34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = a2;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_264887000, v16, v17, "Error decoding ContinuityLaunchRequest, falling back to legacy notification.", v18, 2u);
      v20 = v19;
      a2 = v25;
      MEMORY[0x2667439C0](v20, -1, -1);
    }

    (*(v8 + 8))(v11, v7);

    v22 = 0x6163696669746F6ELL;
    v23 = 0xEC0000006E6F6974;
  }

  else
  {

    sub_264894BFC(a1, a2);
    v22 = v24[0];
    v23 = v24[1];
    a1 = v24[2];
    a2 = v24[3];

    sub_264894464(a1, a2);

    result = sub_264894BFC(a1, a2);
  }

  *a3 = v22;
  a3[1] = v23;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

uint64_t ContinuityAppLaunchRequest.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContinuityAppLaunchRequest.encodedRemoteAppIdentifier.getter()
{
  v1 = *(v0 + 16);
  sub_264894B80(v1, *(v0 + 24));
  return v1;
}

unint64_t sub_264895204()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_264895244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002648BBA80 == a2 || (sub_2648B9144() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002648BBAA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2648B9144();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_264895328(uint64_t a1)
{
  v2 = sub_264895884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264895364(uint64_t a1)
{
  v2 = sub_264895884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContinuityAppLaunchRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C68, &qword_2648BA088);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_264895884();
  sub_2648B9234();
  LOBYTE(v18) = 0;
  v12 = v17;
  sub_2648B90D4();
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    sub_264894B80(v16, v15);
    sub_2648958D8();
    sub_2648B90E4();
    sub_264894BE8(v18, v19);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ContinuityAppLaunchRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C78, &qword_2648BA090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_264895884();
  sub_2648B9224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v18[0]) = 0;
  v11 = sub_2648B9074();
  v13 = v12;
  v14 = v11;
  v19 = 1;
  sub_26489592C();
  sub_2648B9084();
  (*(v6 + 8))(v9, v5);
  v15 = v18[0];
  v16 = v18[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v16;

  sub_264894B80(v15, v16);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_264894BE8(v15, v16);
}

uint64_t sub_264895774(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BC0, &qword_2648BA080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2648957DC()
{
  result = qword_27FF82890;
  if (!qword_27FF82890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82890);
  }

  return result;
}

unint64_t sub_264895830()
{
  result = qword_27FF82898;
  if (!qword_27FF82898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82898);
  }

  return result;
}

unint64_t sub_264895884()
{
  result = qword_27FF828A0[0];
  if (!qword_27FF828A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF828A0);
  }

  return result;
}

unint64_t sub_2648958D8()
{
  result = qword_27FF81C70;
  if (!qword_27FF81C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C70);
  }

  return result;
}

unint64_t sub_26489592C()
{
  result = qword_27FF81C80;
  if (!qword_27FF81C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81C80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2648959E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_264895A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_264895AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264895B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264895B54()
{
  result = qword_27FF82AB0[0];
  if (!qword_27FF82AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82AB0);
  }

  return result;
}

unint64_t sub_264895BAC()
{
  result = qword_27FF82BC0;
  if (!qword_27FF82BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82BC0);
  }

  return result;
}

unint64_t sub_264895C04()
{
  result = qword_27FF82BC8[0];
  if (!qword_27FF82BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82BC8);
  }

  return result;
}

unint64_t sub_264895C58()
{
  result = qword_27FF82D50[0];
  if (!qword_27FF82D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82D50);
  }

  return result;
}

uint64_t sub_264895CAC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C90, &qword_2648BA3F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_264895C58();
  sub_2648B9224();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v13) = 0;
    v8 = sub_2648B9094();
    v12[15] = 1;
    sub_26489592C();
    sub_2648B90A4();
    (*(v4 + 8))(v7, v3);
    v10 = v13;
    v11 = v14;

    sub_264894464(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(a1);

    sub_264894BFC(v10, v11);
  }

  return v8;
}

unint64_t sub_264895EE4()
{
  result = qword_27FF82E60[0];
  if (!qword_27FF82E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82E60);
  }

  return result;
}

unint64_t sub_264895F3C()
{
  result = qword_27FF82F70;
  if (!qword_27FF82F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82F70);
  }

  return result;
}

unint64_t sub_264895F94()
{
  result = qword_27FF82F78[0];
  if (!qword_27FF82F78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF82F78);
  }

  return result;
}

void *CompanionDeviceManager.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for ReplicatorController();
  v0[14] = sub_2648A4A7C();
  type metadata accessor for SharingController();
  v0[15] = sub_26488A120();
  type metadata accessor for RapportController();
  v0[16] = sub_2648A59C0();
  type metadata accessor for SessionManager(0);
  v0[17] = sub_2648ABAF4();
  return v0;
}

void *CompanionDeviceManager.init()()
{
  swift_defaultActor_initialize();
  type metadata accessor for ReplicatorController();
  v0[14] = sub_2648A4A7C();
  type metadata accessor for SharingController();
  v0[15] = sub_26488A120();
  type metadata accessor for RapportController();
  v0[16] = sub_2648A59C0();
  type metadata accessor for SessionManager(0);
  v0[17] = sub_2648ABAF4();
  return v0;
}

BOOL sub_264896190(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2648961C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2648961EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2648962D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26489630C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_264896364@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81C98, &qword_2648BA510);
  v67 = *(v69 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v66 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA0, &qword_2648BA518);
  v70 = *(v5 - 8);
  v71 = v5;
  v72 = *(v70 + 64);
  v6 = MEMORY[0x28223BE20](v5);
  v68 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA8, &qword_2648BA528);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
  v18 = *(v74 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v74);
  v21 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB8, &qword_2648BA538);
  v62 = *(v64 - 8);
  v63 = *(v62 + 64);
  v24 = MEMORY[0x28223BE20](v64);
  v61 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v75 = *a1;
  v76 = &v55 - v26;
  v58 = *MEMORY[0x277D858A0];
  (*(v14 + 104))(v17);
  sub_2648B8D94();
  (*(v14 + 8))(v17, v13);
  v27 = sub_2648B8D14();
  v28 = *(v27 - 8);
  v56 = *(v28 + 56);
  v57 = v28 + 56;
  v56(v12, 1, 1, v27);
  v29 = v18;
  v30 = *(v18 + 16);
  v59 = v23;
  v31 = v74;
  v30(v21, v23, v74);
  v33 = sub_26489D9E0(qword_280F790C0, v32, type metadata accessor for CompanionDeviceManager);
  v34 = *(v18 + 80);
  v60 = v18;
  v35 = (v34 + 40) & ~v34;
  v36 = (v19 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v65;
  *(v37 + 2) = v65;
  *(v37 + 3) = v33;
  *(v37 + 4) = v38;
  (*(v29 + 32))(&v37[v35], v21, v31);
  *&v37[v36] = v75;
  swift_retain_n();
  v55 = v12;
  v65 = sub_26488BD30(0, 0, v12, &unk_2648BA548, v37);

  sub_2648B8DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CC0, &qword_2648BA550);
  v40 = v66;
  v39 = v67;
  v41 = v69;
  (*(v67 + 104))(v66, v58, v69);
  v42 = v77;
  sub_2648B8D94();
  (*(v39 + 8))(v40, v41);
  v56(v12, 1, 1, v27);
  v43 = v61;
  v44 = v62;
  v45 = v64;
  (*(v62 + 16))(v61, v76, v64);
  v46 = v70;
  v47 = v71;
  v48 = v68;
  (*(v70 + 16))(v68, v42, v71);
  v49 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v50 = (v63 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (*(v46 + 80) + v50 + 8) & ~*(v46 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  (*(v44 + 32))(v52 + v49, v43, v45);
  *(v52 + v50) = v75;
  (*(v46 + 32))(v52 + v51, v48, v47);
  sub_26488BD30(0, 0, v55, &unk_2648BA560, v52);
  v53 = v77;
  sub_2648B8DA4();

  (*(v46 + 8))(v53, v47);
  (*(v60 + 8))(v59, v74);
  return (*(v44 + 8))(v76, v45);
}

uint64_t sub_264896B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_264896B44, a4, 0);
}

uint64_t sub_264896B44(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = sub_26489D9E0(qword_280F790C0, a2, type metadata accessor for CompanionDeviceManager);
  v5 = swift_task_alloc();
  *(v2 + 48) = v5;
  v12 = *(v2 + 24);
  *(v5 + 16) = v12;
  *(v5 + 32) = v3;
  v6 = *(MEMORY[0x277D859E8] + 4);
  v7 = swift_task_alloc();
  *(v2 + 56) = v7;
  *v7 = v2;
  v7[1] = sub_264896C74;
  v8 = *(v2 + 16);
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007C0](v8, v9, v12, v4, &unk_2648BA8E8, v5, v10);
}

uint64_t sub_264896C74()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_264896DA8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2648913EC;

  return sub_264896B20(a1, v8, v9, v6, v1 + v5, v7);
}

uint64_t sub_264896ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v5[8] = *(v8 + 64);
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264896FE4, a3, 0);
}

uint64_t sub_264896FE4()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v31 = v0[5];
  v6 = v0[4];
  v7 = v0[2];
  v8 = *(v0[3] + 112);
  v9 = sub_2648B8D14();
  v34 = *(*(v9 - 8) + 56);
  v35 = v9;
  v34(v1, 1, 1);
  v33 = *(v4 + 16);
  v33(v2, v6, v5);
  v10 = *(v4 + 80);
  v11 = (v10 + 40) & ~v10;
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v8;
  v32 = *(v4 + 32);
  v32(&v12[v11], v2, v5);

  sub_264897908(v1, &unk_2648BA8F8, v12);
  sub_264891214(v1, &qword_27FF81B68, &qword_2648BA520);
  if (v31)
  {
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[6];
    v16 = v0[4];
    v17 = v0[2];
    v18 = *(v0[3] + 120);
    (v34)(v13, 1, 1, v35);
    v33(v14, v16, v15);
    v19 = swift_allocObject();
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    *(v19 + 4) = v18;
    v32(&v19[v11], v14, v15);

    sub_264897908(v13, &unk_2648BA918, v19);
    sub_264891214(v13, &qword_27FF81B68, &qword_2648BA520);
  }

  if ((v0[5] & 4) != 0)
  {
    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[6];
    v23 = v0[4];
    v24 = v0[2];
    v25 = *(v0[3] + 136);
    (v34)(v20, 1, 1, v35);
    v33(v21, v23, v22);
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v25;
    v32(&v26[(v10 + 40) & ~v10], v21, v22);

    sub_264897908(v20, &unk_2648BA908, v26);
    sub_264891214(v20, &qword_27FF81B68, &qword_2648BA520);
  }

  v28 = v0[9];
  v27 = v0[10];

  v29 = v0[1];

  return v29();
}

uint64_t sub_26489733C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D18, &unk_2648BA920);
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D38, &qword_2648BA958);
  v4[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D40, &unk_2648BA960);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = (*a3 + 88) & 0xFFFFFFFFFFFFLL | 0xB12C000000000000;
  v4[15] = *(*a3 + 88);
  v4[16] = v14;

  return MEMORY[0x2822009F8](sub_2648974CC, a3, 0);
}

uint64_t sub_2648974CC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  (*(v0 + 120))();

  return MEMORY[0x2822009F8](sub_26489753C, 0, 0);
}

uint64_t sub_26489753C()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v0[17] = swift_getOpaqueTypeConformance2();
  sub_2648B8D84();
  v4 = v0[17];
  v5 = v0[12];
  v6 = v0[10];
  swift_getAssociatedConformanceWitness();
  v7 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_26489764C;
  v9 = v0[14];
  v10 = v0[12];

  return MEMORY[0x282200310](v0 + 4, 0, 0);
}

uint64_t sub_26489764C()
{
  v2 = *(*v1 + 144);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_26489775C, 0, 0);
  }

  return result;
}

uint64_t sub_26489775C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
    sub_2648B8DC4();
    (*(v3 + 8))(v2, v5);
    v6 = *(v0 + 136);
    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    swift_getAssociatedConformanceWitness();
    v9 = *(MEMORY[0x277D856D8] + 4);
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_26489764C;
    v11 = *(v0 + 112);
    v12 = *(v0 + 96);

    return MEMORY[0x282200310](v0 + 32, 0, 0);
  }

  else
  {
    v13 = *(v0 + 88);
    v14 = *(v0 + 72);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_264897908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_2648911A4(a1, v22 - v10);
  v12 = sub_2648B8D14();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_264891214(v11, &qword_27FF81B68, &qword_2648BA520);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_2648B8CB4();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2648B8D04();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_264897B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D18, &unk_2648BA920);
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B98, &qword_2648B9BE0);
  v4[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D20, &qword_2648BA930);
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v14 = (*a3 + 128) & 0xFFFFFFFFFFFFLL | 0xC1F000000000000;
  v4[17] = *(*a3 + 128);
  v4[18] = v14;
  type metadata accessor for SharingController();
  sub_26489D9E0(&qword_280F78F70, 255, type metadata accessor for SharingController);
  v16 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_264897CF8, v16, v15);
}

uint64_t sub_264897CF8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);
  (*(v0 + 136))();

  return MEMORY[0x2822009F8](sub_264897D68, 0, 0);
}

uint64_t sub_264897D68()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  sub_26488E39C(&qword_280F78EC0, &qword_27FF81B98, &qword_2648B9BE0);
  sub_2648B8D84();
  sub_26488E39C(qword_280F78ED0, &qword_27FF81D20, &qword_2648BA930);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_264897E9C;
  v6 = v0[16];
  v7 = v0[14];

  return MEMORY[0x282200310](v0 + 4, 0, 0);
}

uint64_t sub_264897E9C()
{
  v2 = *(*v1 + 152);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_264898170;
  }

  else
  {
    v3 = sub_264897FAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264897FAC()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    *(v0 + 16) = v1;
    *(v0 + 24) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
    sub_2648B8DC4();
    (*(v3 + 8))(v2, v5);
    sub_26488E39C(qword_280F78ED0, &qword_27FF81D20, &qword_2648BA930);
    v6 = *(MEMORY[0x277D856D8] + 4);
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_264897E9C;
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);

    return MEMORY[0x282200310](v0 + 32, 0, 0);
  }

  else
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v10 = *(v0 + 128);
    v11 = *(v0 + 104);
    v12 = *(v0 + 88);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_264898170()
{
  v1 = v0[8];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v0[6] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
  sub_2648B8DD4();
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_264898230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D18, &unk_2648BA920);
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D28, &qword_2648BA938);
  v4[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D30, &qword_2648BA940);
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v14 = *a3;
  v4[17] = *(*a3 + 400);
  v4[18] = (v14 + 400) & 0xFFFFFFFFFFFFLL | 0xAEB9000000000000;
  type metadata accessor for SessionManager(0);
  sub_26489D9E0(&qword_280F78F80, 255, type metadata accessor for SessionManager);
  v16 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_264898430, v16, v15);
}

uint64_t sub_264898430()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);
  (*(v0 + 136))();

  return MEMORY[0x2822009F8](sub_2648984A0, 0, 0);
}

uint64_t sub_2648984A0()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v0[19] = swift_getOpaqueTypeConformance2();
  sub_2648B8D84();
  v4 = v0[19];
  v5 = v0[14];
  v6 = v0[12];
  swift_getAssociatedConformanceWitness();
  v7 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_2648985B4;
  v9 = v0[16];
  v10 = v0[14];

  return MEMORY[0x282200310](v0 + 4, 0, 0);
}

uint64_t sub_2648985B4()
{
  v2 = *(*v1 + 160);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_26489DC0C;
  }

  else
  {
    v3 = sub_2648986C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2648986C4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    *(v0 + 16) = v1;
    *(v0 + 24) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
    sub_2648B8DC4();
    (*(v3 + 8))(v2, v5);
    v6 = *(v0 + 152);
    v7 = *(v0 + 112);
    v8 = *(v0 + 96);
    swift_getAssociatedConformanceWitness();
    v9 = *(MEMORY[0x277D856D8] + 4);
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_2648985B4;
    v11 = *(v0 + 128);
    v12 = *(v0 + 112);

    return MEMORY[0x282200310](v0 + 32, 0, 0);
  }

  else
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v13 = *(v0 + 128);
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_26489889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v8 = type metadata accessor for CompanionDevice(0);
  v6[17] = v8;
  v9 = *(v8 - 8);
  v6[18] = v9;
  v10 = *(v9 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v11 = sub_2648B88D4();
  v6[22] = v11;
  v12 = *(v11 - 8);
  v6[23] = v12;
  v13 = *(v12 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CF8, &qword_2648BA8B8);
  v6[28] = v14;
  v15 = *(v14 - 8);
  v6[29] = v15;
  v16 = *(v15 + 64) + 15;
  v6[30] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D00, &qword_2648BA8C0);
  v6[31] = v17;
  v18 = *(v17 - 8);
  v6[32] = v18;
  v19 = *(v18 + 64) + 15;
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264898B00, 0, 0);
}

uint64_t sub_264898B00()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB8, &qword_2648BA538);
  sub_2648B8D54();
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  v3 = *(MEMORY[0x277D858B8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v4[1] = sub_264898BD8;
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);

  return MEMORY[0x2822005A8](v0 + 56, 0, 0, v6, v0 + 72);
}

uint64_t sub_264898BD8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 272);

    v5 = sub_2648996DC;
  }

  else
  {
    v5 = sub_264898CF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264898CF0()
{
  v2 = v0 + 56;
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  if (v3 <= 1)
  {
    if (!*(v0 + 64))
    {
      v7 = *(v0 + 272);

      v8 = v1;
      v5 = *(v0 + 288);
      v1 = *(v0 + 296);
      v4 = *(v0 + 280);
      v9 = *(v0 + 112);
      if ((v9 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v6 = (v0 + 296);
    v4 = *(v0 + 280);
    v5 = *(v0 + 288);
  }

  else if (v3 == 2)
  {
    v5 = *(v0 + 56);
    v1 = *(v0 + 296);
    v6 = (v0 + 288);
    v4 = *(v0 + 280);
  }

  else
  {
    if (v3 != 3)
    {
      v10 = *(v0 + 288);
      v11 = *(v0 + 296);
      v13 = *(v0 + 272);
      v12 = *(v0 + 280);
      (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

      v14 = *(v0 + 264);
      v15 = *(v0 + 240);
      v17 = *(v0 + 208);
      v16 = *(v0 + 216);
      v19 = *(v0 + 192);
      v18 = *(v0 + 200);
      v21 = *(v0 + 160);
      v20 = *(v0 + 168);
      v22 = *(v0 + 152);
      v23 = *(v0 + 128);

      v24 = *(v0 + 8);

      return v24();
    }

    v4 = *(v0 + 56);
    v5 = *(v0 + 288);
    v1 = *(v0 + 296);
    v6 = (v0 + 280);
  }

  v26 = *v6;
  v27 = *(v0 + 272);

  if (!v27)
  {
    v8 = 0;
    goto LABEL_74;
  }

  v8 = *(v0 + 272);
  v9 = *(v0 + 112);
  if ((v9 & 1) == 0)
  {
LABEL_16:
    if ((v9 & 4) != 0 && !v4)
    {
      goto LABEL_74;
    }

    v125 = v1;
    v126 = v5;
    v123 = *(v8 + 16);
    v124 = v4;
    v116 = v8;
    if (v123)
    {
      v28 = 0;
      v29 = *(v0 + 144);
      v122 = v8 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v30 = *(v29 + 72);
      v129 = *(*(v0 + 184) + 16);
      v31 = MEMORY[0x277D84F98];
      v121 = v30;
      while (1)
      {
        v36 = *(v0 + 168);
        v37 = *(v0 + 184) + 16;
        v38 = v122 + v28 * v30;
        v127 = *(*(v0 + 136) + 20);
        (v129)(*(v0 + 216), v38 + v127, *(v0 + 176));
        sub_26489D20C(v38, v36, type metadata accessor for CompanionDevice);
        if (v1)
        {
          if (*(v1 + 16))
          {
            v39 = sub_26488F280(*(v0 + 216));
            if (v40)
            {
              *(*(v0 + 168) + *(*(v0 + 136) + 60)) = *(*(v1 + 56) + v39);
            }
          }
        }

        if (v5 && *(v5 + 16) && (v41 = sub_26488F280(*(v0 + 216)), (v42 & 1) != 0))
        {
          v43 = *(*(v5 + 56) + v41) ? 2 : 0;
        }

        else
        {
          v43 = 4;
        }

        *(*(v0 + 168) + *(*(v0 + 136) + 56)) = v43;
        if (!v4)
        {
          break;
        }

        v44 = *(v0 + 208);
        CompanionDevice.id.getter();
        v45 = *(v0 + 208);
        if (!*(v4 + 16))
        {
          v54 = *(v0 + 128);
          (*(*(v0 + 184) + 8))(v45, *(v0 + 176));
          goto LABEL_39;
        }

        v46 = sub_26488F280(v45);
        v47 = *(v0 + 208);
        v48 = *(v0 + 176);
        v49 = *(v0 + 128);
        v50 = (*(v0 + 184) + 8);
        if (v51)
        {
          v52 = v46;
          v117 = *(v4 + 56);
          v119 = type metadata accessor for CompanionDevice.SessionInfo(0);
          v53 = *(v119 - 8);
          sub_26489D20C(v117 + *(v53 + 72) * v52, v49, type metadata accessor for CompanionDevice.SessionInfo);
          (*v50)(v47, v48);
          (*(v53 + 56))(v49, 0, 1, v119);
        }

        else
        {
          (*v50)(*(v0 + 208), *(v0 + 176));
          v56 = type metadata accessor for CompanionDevice.SessionInfo(0);
          (*(*(v56 - 8) + 56))(v49, 1, 1, v56);
        }

LABEL_41:
        v57 = *(v0 + 200);
        v59 = *(v0 + 168);
        v58 = *(v0 + 176);
        v60 = *(v0 + 160);
        sub_26489CCBC(*(v0 + 128), v59 + *(*(v0 + 136) + 64));
        (v129)(v57, v38 + v127, v58);
        sub_26489D20C(v59, v60, type metadata accessor for CompanionDevice);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 88) = v31;
        v62 = sub_26488F280(v57);
        v67 = *(v31 + 16);
        v68 = (v63 & 1) == 0;
        v69 = __OFADD__(v67, v68);
        v70 = v67 + v68;
        if (v69)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return MEMORY[0x2822005A8](v62, v63, v64, v65, v66);
        }

        v71 = v63;
        if (*(v31 + 24) < v70)
        {
          v72 = *(v0 + 200);
          sub_26489CD90(v70, isUniquelyReferenced_nonNull_native);
          v31 = *(v0 + 88);
          v62 = sub_26488F280(v72);
          v5 = v126;
          if ((v71 & 1) != (v73 & 1))
          {
            v113 = *(v0 + 176);

            return sub_2648B9174();
          }

LABEL_46:
          if (v71)
          {
            goto LABEL_20;
          }

          goto LABEL_47;
        }

        v5 = v126;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_46;
        }

        v114 = v62;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D08, &qword_2648BA8C8);
        v128 = sub_2648B9014();
        v81 = *(v31 + 16);
        if (v81)
        {
          v62 = v128 + 64;
          v82 = ((1 << *(v128 + 32)) + 63) >> 6;
          if (v128 != v31 || v62 >= v31 + 64 + 8 * v82)
          {
            v62 = memmove(v62, (v31 + 64), 8 * v82);
            v81 = *(v31 + 16);
          }

          v83 = 0;
          *(v128 + 16) = v81;
          v84 = 1 << *(v31 + 32);
          if (v84 < 64)
          {
            v85 = ~(-1 << v84);
          }

          else
          {
            v85 = -1;
          }

          v86 = v85 & *(v31 + 64);
          v87 = (v84 + 63) >> 6;
          if (v86)
          {
            do
            {
              v88 = __clz(__rbit64(v86));
              v120 = (v86 - 1) & v86;
LABEL_63:
              v91 = v88 | (v83 << 6);
              v92 = *(v0 + 184);
              v118 = *(v0 + 176);
              v93 = *(v0 + 152);
              v115 = *(v0 + 192);
              v94 = *(v92 + 72) * v91;
              v95 = *(v31 + 48) + v94;
              v129();
              v96 = v91 * v121;
              sub_26489D20C(*(v31 + 56) + v96, v93, type metadata accessor for CompanionDevice);
              (*(v92 + 32))(*(v128 + 48) + v94, v115, v118);
              v62 = sub_26489CAE4(v93, *(v128 + 56) + v96);
              v5 = v126;
              v86 = v120;
            }

            while (v120);
          }

          v89 = v83;
          while (1)
          {
            v83 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              goto LABEL_82;
            }

            if (v83 >= v87)
            {
              break;
            }

            v90 = *(v31 + 64 + 8 * v83);
            ++v89;
            if (v90)
            {
              v88 = __clz(__rbit64(v90));
              v120 = (v90 - 1) & v90;
              goto LABEL_63;
            }
          }
        }

        v31 = v128;
        v62 = v114;
        if (v71)
        {
LABEL_20:
          v30 = v121;
          sub_26489CD2C(*(v0 + 160), *(v31 + 56) + v62 * v121);
          goto LABEL_21;
        }

LABEL_47:
        v74 = *(v0 + 200);
        v75 = *(v0 + 176);
        v76 = *(v0 + 184);
        v77 = *(v0 + 160);
        *(v31 + 8 * (v62 >> 6) + 64) |= 1 << v62;
        v78 = v62;
        (v129)(*(v31 + 48) + *(v76 + 72) * v62, v74, v75);
        v30 = v121;
        v62 = sub_26489CAE4(v77, *(v31 + 56) + v78 * v121);
        v79 = *(v31 + 16);
        v69 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v69)
        {
          goto LABEL_81;
        }

        *(v31 + 16) = v80;
LABEL_21:
        ++v28;
        v32 = *(v0 + 216);
        v33 = *(v0 + 176);
        v34 = *(v0 + 168);
        v35 = *(*(v0 + 184) + 8);
        v35(*(v0 + 200), v33);
        v35(v32, v33);
        sub_26489CB48(v34);
        v4 = v124;
        v1 = v125;
        if (v28 == v123)
        {
          goto LABEL_69;
        }
      }

      v54 = *(v0 + 128);
LABEL_39:
      v55 = type metadata accessor for CompanionDevice.SessionInfo(0);
      (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
      goto LABEL_41;
    }

    v31 = MEMORY[0x277D84F98];
LABEL_69:
    v97 = *(v31 + 16);
    if (v97)
    {
      v2 = v0 + 56;
      v98 = *(v0 + 144);
      v99 = sub_26489D274(*(v31 + 16), 0);
      v100 = sub_26489D370((v0 + 16), v99 + ((*(v98 + 80) + 32) & ~*(v98 + 80)), v97, v31);
      v101 = *(v0 + 16);
      v102 = *(v0 + 24);
      v103 = *(v0 + 32);
      v104 = *(v0 + 40);
      v105 = *(v0 + 48);
      sub_264891158();
      if (v100 == v97)
      {
LABEL_73:
        v107 = *(v0 + 232);
        v106 = *(v0 + 240);
        v108 = *(v0 + 224);
        v109 = *(v0 + 120);
        *(v0 + 96) = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA0, &qword_2648BA518);
        sub_2648B8DC4();
        (*(v107 + 8))(v106, v108);
        v4 = v124;
        v1 = v125;
        v5 = v126;
        v8 = v116;
        goto LABEL_74;
      }

      __break(1u);
    }

    v99 = MEMORY[0x277D84F90];
    v2 = v0 + 56;
    goto LABEL_73;
  }

LABEL_15:
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_74:
  *(v0 + 288) = v5;
  *(v0 + 296) = v1;
  *(v0 + 272) = v8;
  *(v0 + 280) = v4;
  v110 = *(MEMORY[0x277D858B8] + 4);
  v111 = swift_task_alloc();
  *(v0 + 304) = v111;
  *v111 = v0;
  v111[1] = sub_264898BD8;
  v112 = *(v0 + 264);
  v65 = *(v0 + 248);
  v66 = v0 + 72;
  v62 = v2;
  v63 = 0;
  v64 = 0;

  return MEMORY[0x2822005A8](v62, v63, v64, v65, v66);
}

uint64_t sub_2648996DC()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[15];
  (*(v0[32] + 8))(v0[33], v0[31]);

  v0[10] = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA0, &qword_2648BA518);
  sub_2648B8DD4();
  v5 = v0[33];
  v6 = v0[30];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[19];
  v14 = v0[16];

  v15 = v0[1];

  return v15();
}

uint64_t sub_264899824()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB8, &qword_2648BA538) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CA0, &qword_2648BA518) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_26488D93C;

  return sub_26489889C(v8, v9, v10, v0 + v3, v7, v0 + v6);
}

uint64_t sub_26489997C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26489999C, v1, 0);
}

uint64_t sub_26489999C()
{
  v1 = *(**(v0[3] + 112) + 96);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_264899ABC;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_264899ABC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264899BB0(uint64_t a1)
{
  v2[2] = v1;
  v4 = sub_2648B88D4();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_264899CB8;

  return sub_26489A3B8(v7, a1);
}

uint64_t sub_264899CB8()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_26489A0AC;
  }

  else
  {
    v4 = sub_264899DE0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264899DE0()
{
  v1 = *(**(v0[2] + 120) + 136);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_264899F00;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_264899F00()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_26489A110;
  }

  else
  {
    v6 = sub_26489A02C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26489A02C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26489A0AC()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26489A110()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26489A1AC()
{
  v1 = *(**(*(v0 + 16) + 112) + 112);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_26489A2C4;

  return v5();
}

uint64_t sub_26489A2C4()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26489A3B8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CE0, &qword_2648BA8A0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for CompanionDevice(0);
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CE8, &unk_2648BA8A8);
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CD8, &qword_2648BA7F0);
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26489A590, v2, 0);
}

uint64_t sub_26489A590()
{
  v5 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 40);
  v4 = 0;
  (*(*v2 + 128))(&v4);

  return MEMORY[0x2822009F8](sub_26489A624, 0, 0);
}

uint64_t sub_26489A624()
{
  v1 = v0[12];
  (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  sub_26488E39C(&qword_280F78F98, &qword_27FF81CD8, &qword_2648BA7F0);
  sub_2648B8D84();
  v2 = sub_26488E39C(&qword_27FF81CF0, &qword_27FF81CE8, &unk_2648BA8A8);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_26489A768;
  v5 = v0[12];
  v6 = v0[10];

  return MEMORY[0x282200308](v0 + 2, v6, v2);
}

uint64_t sub_26489A768()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v4 = sub_26489AA7C;
  }

  else
  {
    v4 = sub_26489A894;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26489A894()
{
  v1 = v0[2];
  v0[19] = v1;
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[5];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v4 + 8))(v2, v3);
  if (v1)
  {
    v6 = sub_26489AB98;
  }

  else
  {
    v6 = sub_26489A95C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26489A95C()
{
  v1 = v0[4];
  type metadata accessor for CompanionDeviceManager.CompanionDeviceError();
  sub_26489CA3C();
  swift_allocError();
  v3 = v2;
  v4 = sub_2648B88D4();
  (*(*(v4 - 8) + 16))(v3, v1, v4);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26489AA7C()
{
  v1 = v0[5];
  (*(v0[14] + 8))(v0[16], v0[13]);

  return MEMORY[0x2822009F8](sub_26489AAF8, v1, 0);
}

uint64_t sub_26489AAF8()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26489AB98()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[4];
  *(swift_task_alloc() + 16) = v6;
  sub_26489ADF0(sub_26489CBA4, v1, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_264891214(v0[6], &qword_27FF81CE0, &qword_2648BA8A0);
    v7 = v0[4];
    type metadata accessor for CompanionDeviceManager.CompanionDeviceError();
    sub_26489CA3C();
    swift_allocError();
    v9 = v8;
    v10 = sub_2648B88D4();
    (*(*(v10 - 8) + 16))(v9, v7, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[12];
    v14 = v0[9];
    v15 = v0[6];
  }

  else
  {
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[12];
    v20 = v0[9];
    v21 = v0[7];
    v22 = v0[3];
    sub_26489CAE4(v0[6], v20);
    v23 = *(v21 + 20);
    v24 = sub_2648B88D4();
    (*(*(v24 - 8) + 16))(v22, v20 + v23, v24);
    sub_26489CB48(v20);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_26489ADF0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CompanionDevice(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_26489D20C(v13, v11, type metadata accessor for CompanionDevice);
      v15 = a1(v11);
      if (v3)
      {
        return sub_26489CB48(v11);
      }

      if (v15)
      {
        break;
      }

      sub_26489CB48(v11);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_26489CAE4(v11, v19);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_26489AF80(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CE0, &qword_2648BA8A0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for CompanionDevice(0);
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CE8, &unk_2648BA8A8);
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CD8, &qword_2648BA7F0);
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26489B158, v2, 0);
}

uint64_t sub_26489B158()
{
  v5 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 40);
  v4 = 0;
  (*(*v2 + 128))(&v4);

  return MEMORY[0x2822009F8](sub_26489B1EC, 0, 0);
}

uint64_t sub_26489B1EC()
{
  v1 = v0[12];
  (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  sub_26488E39C(&qword_280F78F98, &qword_27FF81CD8, &qword_2648BA7F0);
  sub_2648B8D84();
  v2 = sub_26488E39C(&qword_27FF81CF0, &qword_27FF81CE8, &unk_2648BA8A8);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_26489B330;
  v5 = v0[12];
  v6 = v0[10];

  return MEMORY[0x282200308](v0 + 2, v6, v2);
}

uint64_t sub_26489B330()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v4 = sub_26489B644;
  }

  else
  {
    v4 = sub_26489B45C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26489B45C()
{
  v1 = v0[2];
  v0[19] = v1;
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[5];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v4 + 8))(v2, v3);
  if (v1)
  {
    v6 = sub_26489B6C0;
  }

  else
  {
    v6 = sub_26489B524;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26489B524()
{
  v1 = v0[4];
  type metadata accessor for CompanionDeviceManager.CompanionDeviceError();
  sub_26489CA3C();
  swift_allocError();
  v3 = v2;
  v4 = sub_2648B88D4();
  (*(*(v4 - 8) + 16))(v3, v1, v4);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26489B644()
{
  v1 = v0[5];
  (*(v0[14] + 8))(v0[16], v0[13]);

  return MEMORY[0x2822009F8](sub_26489DC04, v1, 0);
}

uint64_t sub_26489B6C0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[4];
  *(swift_task_alloc() + 16) = v6;
  sub_26489ADF0(sub_26489CA94, v1, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_264891214(v0[6], &qword_27FF81CE0, &qword_2648BA8A0);
    v7 = v0[4];
    type metadata accessor for CompanionDeviceManager.CompanionDeviceError();
    sub_26489CA3C();
    swift_allocError();
    v9 = v8;
    v10 = sub_2648B88D4();
    (*(*(v10 - 8) + 16))(v9, v7, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[12];
    v14 = v0[9];
    v15 = v0[6];
  }

  else
  {
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[12];
    v20 = v0[9];
    v21 = v0[3];
    sub_26489CAE4(v0[6], v20);
    v22 = sub_2648B88D4();
    (*(*(v22 - 8) + 16))(v21, v20, v22);
    sub_26489CB48(v20);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_26489B914(uint64_t a1)
{
  v2[2] = v1;
  v4 = sub_2648B88D4();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_26489BA1C;

  return sub_26489AF80(v7, a1);
}

uint64_t sub_26489BA1C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_26489DC00;
  }

  else
  {
    v4 = sub_26489BB44;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26489BB44()
{
  v1 = *(v0[2] + 136);
  v0[8] = v1;
  v2 = *v1 + 480;
  v0[9] = *v2;
  v0[10] = v2 & 0xFFFFFFFFFFFFLL | 0x3CAE000000000000;
  type metadata accessor for SessionManager(0);
  sub_26489D9E0(&qword_280F78F80, 255, type metadata accessor for SessionManager);
  v4 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_26489BC2C, v4, v3);
}

uint64_t sub_26489BC2C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  (*(v0 + 72))(*(v0 + 40));
  *(v0 + 88) = v3;
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = sub_26489DBFC;
  }

  else
  {
    v5 = sub_26489DBF0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26489BCBC(uint64_t a1)
{
  v2[2] = v1;
  v4 = sub_2648B88D4();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_26489BDC4;

  return sub_26489AF80(v7, a1);
}

uint64_t sub_26489BDC4()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_26489DC00;
  }

  else
  {
    v4 = sub_26489BEEC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26489BEEC()
{
  v1 = *(v0[2] + 136);
  v0[8] = v1;
  v2 = *v1 + 488;
  v0[9] = *v2;
  v0[10] = v2 & 0xFFFFFFFFFFFFLL | 0xDEA8000000000000;
  type metadata accessor for SessionManager(0);
  sub_26489D9E0(&qword_280F78F80, 255, type metadata accessor for SessionManager);
  v4 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_26489BFD4, v4, v3);
}

uint64_t sub_26489BFD4()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  (*(v0 + 72))(*(v0 + 40));
  *(v0 + 88) = v3;
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = sub_26489C064;
  }

  else
  {
    v5 = sub_26489DBF0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26489C064()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[11];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

void *CompanionDeviceManager.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CompanionDeviceManager.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  v4 = v0[17];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_26489C180()
{
  result = qword_27FF81CC8;
  if (!qword_27FF81CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81CC8);
  }

  return result;
}

unint64_t sub_26489C1D8()
{
  result = qword_27FF81CD0;
  if (!qword_27FF81CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81CD0);
  }

  return result;
}

unint64_t sub_26489C230()
{
  result = qword_280F78F68;
  if (!qword_280F78F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F78F68);
  }

  return result;
}

unint64_t sub_26489C288()
{
  result = qword_280F78F60;
  if (!qword_280F78F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F78F60);
  }

  return result;
}

uint64_t dispatch thunk of CompanionDeviceManager.pairDevice(with:)(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2648913EC;

  return v8(a1);
}

uint64_t dispatch thunk of CompanionDeviceManager.unpairDevice(with:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2648913EC;

  return v8(a1);
}

uint64_t dispatch thunk of CompanionDeviceManager.retryStuckRemoteScreenRelationships()()
{
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26488D93C;

  return v6();
}

uint64_t dispatch thunk of CompanionDeviceManager.startSession(for:)(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2648913EC;

  return v8(a1);
}

uint64_t dispatch thunk of CompanionDeviceManager.endSession(for:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2648913EC;

  return v8(a1);
}

uint64_t getEnumTagSinglePayload for CompanionDeviceManager.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CompanionDeviceManager.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26489C94C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26489C994(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for CompanionDeviceManager.CompanionDeviceError()
{
  result = qword_27FF83108;
  if (!qword_27FF83108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26489CA3C()
{
  result = qword_27FF83100;
  if (!qword_27FF83100)
  {
    type metadata accessor for CompanionDeviceManager.CompanionDeviceError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF83100);
  }

  return result;
}

uint64_t sub_26489CA94()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for CompanionDevice(0) + 20);
  return sub_2648B88A4() & 1;
}

uint64_t sub_26489CAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26489CB48(uint64_t a1)
{
  v2 = type metadata accessor for CompanionDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26489CBD4(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26488EA28;

  return v5();
}

uint64_t sub_26489CCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26489CD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26489CD90(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CompanionDevice(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2648B88D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D08, &qword_2648BA8C8);
  v48 = a2;
  result = sub_2648B9024();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26489CAE4(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26489D20C(v33 + v32 * v28, v52, type metadata accessor for CompanionDevice);
      }

      v34 = *(v16 + 40);
      sub_26489D9E0(&qword_280F796E0, 255, MEMORY[0x277CC95F0]);
      result = sub_2648B8BC4();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_26489CAE4(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_26489D20C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

size_t sub_26489D274(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D10, &unk_2648BA8D0);
  v4 = *(type metadata accessor for CompanionDevice(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26489D370(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for CompanionDevice(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = *(v33 + 72);
      sub_26489D20C(v26 + v27 * (v25 | (v20 << 6)), v12, type metadata accessor for CompanionDevice);
      sub_26489CAE4(v12, v15);
      sub_26489CAE4(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26489D5AC(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2648913EC;

  return sub_264896ED0(v8, a2, v5, v6, v7);
}

uint64_t sub_26489D65C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_26489733C(v5, v6, v4, v0 + v3);
}

uint64_t sub_26489D740()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_264898230(v5, v6, v4, v0 + v3);
}

uint64_t objectdestroy_48Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26489D8FC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CB0, &qword_2648BA530) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_264897B10(v5, v6, v4, v0 + v3);
}

uint64_t sub_26489D9E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26489DA28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2648913EC;

  return sub_26489CBD4(v2);
}

void sub_26489DB24()
{
  sub_26489DBA8(319, &qword_27FF81D48);
  if (v0 <= 0x3F)
  {
    sub_26489DBA8(319, &qword_27FF81D50);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26489DBA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2648B88D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_26489DC18()
{
  sub_2648B91D4();
  MEMORY[0x2667433E0](0);
  return sub_2648B9214();
}

uint64_t sub_26489DC84()
{
  sub_2648B91D4();
  MEMORY[0x2667433E0](0);
  return sub_2648B9214();
}

uint64_t sub_26489DCC4@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D58, &qword_2648BA9E0);
  v63 = *(v65 - 8);
  v1 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v51 - v2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D60, &unk_2648BA9E8);
  v66 = *(v68 - 8);
  v67 = *(v66 + 64);
  v3 = MEMORY[0x28223BE20](v68);
  v64 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v61 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v51 - v8;
  v76 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D68, &qword_2648BA9F8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00);
  v16 = *(v15 - 8);
  v53 = *(v16 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D78, &qword_2648BAA08);
  v58 = *(v60 - 8);
  v59 = *(v58 + 64);
  v22 = MEMORY[0x28223BE20](v60);
  v57 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v75 = &v51 - v24;
  v25 = sub_2648B8944();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v77 = sub_2648B8934();
  v55 = *MEMORY[0x277D85778];
  (*(v11 + 104))(v14);
  v72 = v21;
  sub_2648B8D24();
  (*(v11 + 8))(v14, v10);
  v74 = sub_2648B8D14();
  v28 = *(v74 - 8);
  v73 = *(v28 + 56);
  v70 = v28 + 56;
  v73(v9, 1, 1, v74);
  v52 = *(v16 + 16);
  v52(v19, v21, v15);
  v29 = *(v16 + 80);
  v56 = v16;
  v30 = (v29 + 40) & ~v29;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = v77;
  v51 = *(v16 + 32);
  v51(&v31[v30], v19, v15);

  v32 = v76;
  v71 = sub_26488BD30(0, 0, v76, &unk_2648BAA18, v31);
  v73(v32, 1, 1, v74);
  v52(v19, v72, v15);
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = v77;
  v54 = v15;
  v51(&v33[v30], v19, v15);

  v34 = v76;
  v35 = sub_26488BD30(0, 0, v76, &unk_2648BAA28, v33);
  v53 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v71;
  *(v36 + 24) = v35;

  sub_2648B8D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CC0, &qword_2648BA550);
  v38 = v62;
  v37 = v63;
  v39 = v65;
  (*(v63 + 104))(v62, v55, v65);
  v40 = v61;
  sub_2648B8D24();
  (*(v37 + 8))(v38, v39);
  v73(v34, 1, 1, v74);
  v41 = v57;
  v42 = v58;
  v43 = v60;
  (*(v58 + 16))(v57, v75, v60);
  v44 = v66;
  v45 = v64;
  v46 = v68;
  (*(v66 + 16))(v64, v40, v68);
  v47 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v48 = (v59 + *(v44 + 80) + v47) & ~*(v44 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  (*(v42 + 32))(v49 + v47, v41, v43);
  (*(v44 + 32))(v49 + v48, v45, v46);
  sub_26488BD30(0, 0, v76, &unk_2648BAA40, v49);
  sub_2648B8D34();

  (*(v44 + 8))(v40, v46);
  (*(v56 + 8))(v72, v54);
  return (*(v42 + 8))(v75, v43);
}

uint64_t sub_26489E554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DF0, &qword_2648BAC68);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E08, &qword_2648BAC88);
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E10, &unk_2648BAC90);
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v15 = sub_2648B8B14();
  v5[15] = v15;
  v16 = *(v15 - 8);
  v5[16] = v16;
  v17 = *(v16 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26489E764, 0, 0);
}

uint64_t sub_26489E764()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = sub_2648A57B8();
  v0[20] = v4;
  v5 = *(v3 + 16);
  v0[21] = v5;
  v0[22] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Will wait for enabled state updates", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  v9 = v0[19];
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[14];
  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];
  v16 = v0[4];

  v17 = *(v11 + 8);
  v0[23] = v17;
  v17(v9, v10);
  sub_2648B88F4();
  sub_2648B8D54();
  (*(v14 + 8))(v13, v15);
  v18 = *(MEMORY[0x277D85798] + 4);
  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_26489E934;
  v20 = v0[14];
  v21 = v0[12];

  return MEMORY[0x2822003E8](v0 + 25, 0, 0, v21);
}

uint64_t sub_26489E934()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26489EA30, 0, 0);
}

uint64_t sub_26489EA30()
{
  v1 = *(v0 + 25);
  if (v1 == 2)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v4 = *(v0 + 136);
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v7 = *(v0 + 8);

    return v7();
  }

  v30 = *(v0 + 25);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);
  v12 = *(v0 + 120);
  if ((v1 & 1) == 0)
  {
    v13 = (v0 + 136);
    v10(*(v0 + 136), v11, v12);
    v14 = sub_2648B8AF4();
    v15 = sub_2648B8E44();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Replicator is disabled";
      goto LABEL_10;
    }

LABEL_11:
    v18 = *v13;
    goto LABEL_12;
  }

  v13 = (v0 + 144);
  v10(*(v0 + 144), v11, v12);
  v14 = sub_2648B8AF4();
  v15 = sub_2648B8E44();
  if (!os_log_type_enabled(v14, v15))
  {
    goto LABEL_11;
  }

  v16 = swift_slowAlloc();
  *v16 = 0;
  v17 = "Replicator is enabled";
LABEL_10:
  _os_log_impl(&dword_264887000, v14, v15, v17, v16, 2u);
  v18 = *v13;
  MEMORY[0x2667439C0](v16, -1, -1);
LABEL_12:
  v19 = *(v0 + 184);
  v20 = *(v0 + 120);
  v21 = *(v0 + 128);
  v22 = *(v0 + 56);
  v23 = *(v0 + 64);
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);

  v19(v18, v20);
  *(v0 + 16) = v30 & 1;
  *(v0 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00);
  sub_2648B8D44();
  (*(v22 + 8))(v23, v25);
  v26 = *(MEMORY[0x277D85798] + 4);
  v27 = swift_task_alloc();
  *(v0 + 192) = v27;
  *v27 = v0;
  v27[1] = sub_26489E934;
  v28 = *(v0 + 112);
  v29 = *(v0 + 96);

  return MEMORY[0x2822003E8](v0 + 25, 0, 0, v29);
}

uint64_t sub_26489ED08()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_26489E554(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26489EDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DF0, &qword_2648BAC68);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DF8, &qword_2648BAC70);
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E00, &qword_2648BAC78);
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v15 = sub_2648B8B14();
  v5[16] = v15;
  v16 = *(v15 - 8);
  v5[17] = v16;
  v17 = *(v16 + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26489EFF0, 0, 0);
}

uint64_t sub_26489EFF0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = sub_2648A57B8();
  v0[20] = v4;
  v5 = *(v3 + 16);
  v0[21] = v5;
  v0[22] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Will wait for device updates", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  v9 = v0[19];
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[15];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];
  v16 = v0[5];

  v17 = *(v11 + 8);
  v0[23] = v17;
  v17(v9, v10);
  sub_2648B88E4();
  sub_2648B8D54();
  (*(v14 + 8))(v13, v15);
  v18 = *(MEMORY[0x277D85798] + 4);
  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_26489F1C0;
  v20 = v0[15];
  v21 = v0[13];

  return MEMORY[0x2822003E8](v0 + 4, 0, 0, v21);
}

uint64_t sub_26489F1C0()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26489F2BC, 0, 0);
}

uint64_t sub_26489F2BC()
{
  v33 = v0;
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 176);
    (*(v0 + 168))(*(v0 + 144), *(v0 + 160), *(v0 + 128));

    v3 = sub_2648B8AF4();
    v4 = sub_2648B8E44();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 184);
    v7 = *(v0 + 144);
    v8 = *(v0 + 128);
    if (v5)
    {
      v31 = *(v0 + 136) + 8;
      v30 = *(v0 + 184);
      v9 = swift_slowAlloc();
      v29 = v7;
      v10 = swift_slowAlloc();
      v32 = v10;
      *v9 = 136446210;
      v11 = sub_2648B8A54();
      v12 = MEMORY[0x266742EA0](v1, v11);
      v14 = sub_26488EB20(v12, v13, &v32);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_264887000, v3, v4, "Got devices: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2667439C0](v10, -1, -1);
      MEMORY[0x2667439C0](v9, -1, -1);

      v30(v29, v8);
    }

    else
    {

      v6(v7, v8);
    }

    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = *(v0 + 48);
    v24 = *(v0 + 56);
    *(v0 + 16) = v1;
    *(v0 + 24) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00);
    sub_2648B8D44();
    (*(v22 + 8))(v21, v24);
    v25 = *(MEMORY[0x277D85798] + 4);
    v26 = swift_task_alloc();
    *(v0 + 192) = v26;
    *v26 = v0;
    v26[1] = sub_26489F1C0;
    v27 = *(v0 + 120);
    v28 = *(v0 + 104);

    return MEMORY[0x2822003E8](v0 + 32, 0, 0, v28);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 152);
    v17 = *(v0 + 96);
    v18 = *(v0 + 72);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26489F694()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D70, &qword_2648BAA00) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2648913EC;

  return sub_26489EDEC(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_26489F778()
{
  v0 = sub_2648B8B14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2648A57B8();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Change accumulator terminated", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_2648B8D74();
  return sub_2648B8D74();
}

uint64_t sub_26489F918()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26489F778();
}

uint64_t sub_26489F920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DD0, &qword_2648BAC38);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = sub_2648B8A54();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v12 = type metadata accessor for CompanionDevice(0);
  v5[19] = v12;
  v13 = *(v12 - 8);
  v5[20] = v13;
  v14 = *(v13 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DD8, &unk_2648BAC40);
  v5[24] = v15;
  v16 = *(v15 - 8);
  v5[25] = v16;
  v17 = *(v16 + 64) + 15;
  v5[26] = swift_task_alloc();
  v18 = sub_2648B8B14();
  v5[27] = v18;
  v19 = *(v18 - 8);
  v5[28] = v19;
  v20 = *(v19 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26489FBEC, 0, 0);
}

uint64_t sub_26489FBEC()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = sub_2648A57B8();
  *(v0 + 304) = v4;
  v5 = *(v3 + 16);
  *(v0 + 312) = v5;
  *(v0 + 320) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Will wait for changes", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  v9 = *(v0 + 296);
  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  v12 = *(v0 + 208);
  v13 = *(v0 + 80);

  v14 = *(v11 + 8);
  *(v0 + 328) = v14;
  v14(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D78, &qword_2648BAA08);
  sub_2648B8D54();
  *(v0 + 336) = 0;
  *(v0 + 27) = 2;
  v15 = *(MEMORY[0x277D85798] + 4);
  v16 = swift_task_alloc();
  *(v0 + 344) = v16;
  *v16 = v0;
  v16[1] = sub_26489FD9C;
  v17 = *(v0 + 208);
  v18 = *(v0 + 192);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v18);
}

uint64_t sub_26489FD9C()
{
  v1 = *(*v0 + 344);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26489FE98, 0, 0);
}

uint64_t sub_26489FE98()
{
  v165 = v0;
  v1 = *(v0 + 16);
  LODWORD(v2) = *(v0 + 24);
  if (v2 != 255)
  {
    v3 = *(v0 + 320);
    (*(v0 + 312))(*(v0 + 288), *(v0 + 304), *(v0 + 216));
    sub_2648A55E4(v1, v2 & 1);
    v4 = sub_2648B8AF4();
    v5 = sub_2648B8E44();
    sub_2648A55F0(v1, v2);
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 328);
    v8 = *(v0 + 288);
    v9 = *(v0 + 216);
    if (v6)
    {
      v158 = *(v0 + 224) + 8;
      v10 = swift_slowAlloc();
      v153 = v8;
      v11 = swift_slowAlloc();
      v164 = v11;
      *v10 = 136446210;
      *(v0 + 32) = v1;
      *(v0 + 40) = v2 & 1;
      sub_2648A55E4(v1, v2 & 1);
      v12 = sub_2648B8C34();
      v149 = v7;
      v14 = v2;
      v2 = sub_26488EB20(v12, v13, &v164);

      *(v10 + 4) = v2;
      LOBYTE(v2) = v14;
      _os_log_impl(&dword_264887000, v4, v5, "Got change: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x2667439C0](v11, -1, -1);
      MEMORY[0x2667439C0](v10, -1, -1);

      v15 = v149(v153, v9);
      if ((v14 & 1) == 0)
      {
LABEL_4:
        v19 = *(v0 + 27);
        v20 = v0 + 16;
        if (v19 != 2 && ((v1 ^ v19) & 1) == 0)
        {
          v21 = *(v0 + 320);
          v22 = (v0 + 280);
          (*(v0 + 312))(*(v0 + 280), *(v0 + 304), *(v0 + 216));
          v23 = sub_2648B8AF4();
          v24 = sub_2648B8E44();
          if (!os_log_type_enabled(v23, v24))
          {

            goto LABEL_55;
          }

          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_264887000, v23, v24, "ignoring no-op enablement change", v25, 2u);
          MEMORY[0x2667439C0](v25, -1, -1);

          v26 = v1;
          v27 = v2;
LABEL_46:
          sub_2648A55F0(v26, v27);
LABEL_55:
          v125 = *(v0 + 224) + 8;
          (*(v0 + 328))(*v22, *(v0 + 216));
          goto LABEL_64;
        }

        v66 = *(v0 + 336);
        LOBYTE(v67) = v1 & 1;
        if (!v66)
        {
          v126 = *(v0 + 320);
          (*(v0 + 312))(*(v0 + 256), *(v0 + 304), *(v0 + 216));
          v127 = sub_2648B8AF4();
          v128 = sub_2648B8E44();
          v129 = os_log_type_enabled(v127, v128);
          v130 = *(v0 + 328);
          v131 = *(v0 + 256);
          v132 = *(v0 + 216);
          if (v129)
          {
            v133 = *(v0 + 224) + 8;
            v134 = swift_slowAlloc();
            *v134 = 0;
            _os_log_impl(&dword_264887000, v127, v128, "Waiting for devices", v134, 2u);
            MEMORY[0x2667439C0](v134, -1, -1);
          }

          v130(v131, v132);
          v66 = 0;
          goto LABEL_63;
        }

        v68 = *(v0 + 336);

        if ((v1 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_52;
      }
    }

    else
    {

      v15 = v7(v8, v9);
      if ((v2 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v147 = v2;
    v38 = *(v1 + 16);
    v39 = MEMORY[0x277D84F90];
    v145 = v1;
    if (v38)
    {
      v40 = *(v0 + 128);
      *(v0 + 48) = MEMORY[0x277D84F90];
      sub_2648A5004(0, v38, 0);
      v39 = *(v0 + 48);
      v41 = v1 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v42 = *(v40 + 16);
      v151 = v42;
      v155 = *(v40 + 72);
      do
      {
        v160 = v38;
        v43 = *(v0 + 184);
        v45 = *(v0 + 136);
        v44 = *(v0 + 144);
        v47 = *(v0 + 120);
        v46 = *(v0 + 128);
        v151(v44, v41, v47);
        v151(v45, v44, v47);
        sub_2648A0D3C(v45, v43);
        (*(v46 + 8))(v44, v47);
        *(v0 + 48) = v39;
        v49 = *(v39 + 16);
        v48 = *(v39 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_2648A5004(v48 > 1, v49 + 1, 1);
          v39 = *(v0 + 48);
        }

        v50 = *(v0 + 184);
        v51 = *(v0 + 160);
        *(v39 + 16) = v49 + 1;
        v15 = sub_26489CAE4(v50, v39 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49);
        v41 += v155;
        v38 = v160 - 1;
      }

      while (v160 != 1);
    }

    v52 = *(v39 + 16);
    v161 = v39;
    if (v52)
    {
      v53 = v39;
      v54 = 0;
      v55 = MEMORY[0x277D84F90];
      v20 = v0 + 16;
      while (v54 < *(v53 + 16))
      {
        v56 = *(v0 + 176);
        v58 = *(v0 + 152);
        v57 = *(v0 + 160);
        v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v60 = *(v57 + 72);
        sub_2648A4FA0(v53 + v59 + v60 * v54, v56);
        v61 = *(v56 + *(v58 + 48));
        if (v61 == 4 || (*(v20 + 9) = v61, *(v20 + 10) = 3, sub_264893BEC(), (sub_2648B8BE4() & 1) == 0))
        {
          v15 = sub_26489CB48(*(v0 + 176));
        }

        else
        {
          sub_26489CAE4(*(v0 + 176), *(v0 + 168));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 56) = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2648A5004(0, *(v55 + 16) + 1, 1);
            v55 = *(v20 + 40);
          }

          v64 = *(v55 + 16);
          v63 = *(v55 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_2648A5004(v63 > 1, v64 + 1, 1);
            v55 = *(v0 + 56);
          }

          v65 = *(v0 + 168);
          *(v55 + 16) = v64 + 1;
          v15 = sub_26489CAE4(v65, v55 + v59 + v64 * v60);
          v20 = v0 + 16;
        }

        ++v54;
        v53 = v161;
        if (v52 == v54)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      return MEMORY[0x2822003E8](v15, v16, v17, v18);
    }

    v55 = MEMORY[0x277D84F90];
    v20 = v0 + 16;
LABEL_35:
    if (*(v55 + 16))
    {
      v84 = *(v0 + 320);
      (*(v0 + 312))(*(v0 + 272), *(v0 + 304), *(v0 + 216));

      v85 = sub_2648B8AF4();
      v86 = sub_2648B8E44();
      v87 = v147;
      if (os_log_type_enabled(v85, v86))
      {
        v88 = swift_slowAlloc();
        *v88 = 134217984;
        v89 = *(v55 + 16);

        *(v88 + 4) = v89;

        _os_log_impl(&dword_264887000, v85, v86, "Replicator has %ld migrating devices.", v88, 0xCu);
        MEMORY[0x2667439C0](v88, -1, -1);
      }

      else
      {
      }

      v67 = v145;

      v91 = *(v0 + 224) + 8;
      (*(v0 + 328))(*(v0 + 272), *(v0 + 216));
      v90 = *(v0 + 336);
      if (v90)
      {
        goto LABEL_42;
      }
    }

    else
    {

      v67 = v145;
      v87 = v147;
      v90 = *(v0 + 336);
      if (v90)
      {
LABEL_42:

        v92 = sub_2648A4AB4(v161, v90);

        if (v92)
        {
          v94 = *(v0 + 312);
          v93 = *(v0 + 320);
          v95 = *(v0 + 304);
          v22 = (v0 + 264);
          v96 = *(v0 + 264);
          v97 = *(v0 + 216);

          v94(v96, v95, v97);
          v98 = sub_2648B8AF4();
          v99 = sub_2648B8E44();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&dword_264887000, v98, v99, "ignoring no-op devices change", v100, 2u);
            MEMORY[0x2667439C0](v100, -1, -1);
          }

          v26 = v67;
          v27 = v147;
          goto LABEL_46;
        }

        v101 = *(v0 + 336);
      }
    }

    sub_2648A55F0(v67, v87);
    LODWORD(v67) = *(v0 + 27);
    if (v67 == 2)
    {
      v102 = *(v0 + 320);
      (*(v0 + 312))(*(v0 + 248), *(v0 + 304), *(v0 + 216));
      v103 = sub_2648B8AF4();
      v104 = sub_2648B8E44();
      v105 = os_log_type_enabled(v103, v104);
      v106 = *(v0 + 328);
      v107 = *(v0 + 248);
      v108 = *(v0 + 216);
      if (v105)
      {
        v109 = *(v0 + 224) + 8;
        LOBYTE(v67) = 2;
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&dword_264887000, v103, v104, "Waiting for enablement", v110, 2u);
        MEMORY[0x2667439C0](v110, -1, -1);

        v106(v107, v108);
      }

      else
      {

        v106(v107, v108);
        LOBYTE(v67) = 2;
      }

      v66 = v161;
      goto LABEL_63;
    }

    v66 = v161;

    if ((v67 & 1) == 0)
    {
LABEL_31:
      v156 = v67;
      v162 = v66;
      v70 = *(v0 + 312);
      v69 = *(v0 + 320);
      v71 = *(v0 + 304);
      v72 = *(v0 + 232);
      v73 = *(v0 + 216);

      v70(v72, v71, v73);
      v74 = sub_2648B8AF4();
      v75 = sub_2648B8E44();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_264887000, v74, v75, "Disabled", v76, 2u);
        MEMORY[0x2667439C0](v76, -1, -1);
      }

      v77 = *(v0 + 328);
      v78 = *(v0 + 224);
      v79 = *(v0 + 232);
      v80 = *(v0 + 216);
      v67 = *(v0 + 104);
      v81 = *(v0 + 112);
      v82 = *(v0 + 88);
      v83 = *(v0 + 96);

      v77(v79, v80);
      *(v0 + 64) = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D60, &unk_2648BA9E8);
      v20 = v0 + 16;
      sub_2648B8D44();
      (*(v67 + 8))(v81, v83);
      LOBYTE(v67) = v156;
      v66 = v162;
      goto LABEL_63;
    }

LABEL_52:
    v111 = *(v0 + 320);
    (*(v0 + 312))(*(v0 + 240), *(v0 + 304), *(v0 + 216));

    v112 = sub_2648B8AF4();
    v113 = sub_2648B8E44();

    v114 = os_log_type_enabled(v112, v113);
    v115 = *(v0 + 328);
    v116 = *(v0 + 240);
    v117 = *(v0 + 216);
    if (v114)
    {
      v118 = *(v0 + 152);
      v163 = *(v0 + 224) + 8;
      v152 = *(v0 + 240);
      v119 = swift_slowAlloc();
      v157 = v67;
      v67 = swift_slowAlloc();
      v164 = v67;
      *v119 = 136315138;
      v120 = MEMORY[0x266742EA0](v66, v118);
      v122 = v115;
      v123 = sub_26488EB20(v120, v121, &v164);
      v20 = v0 + 16;

      *(v119 + 4) = v123;
      _os_log_impl(&dword_264887000, v112, v113, "Returning devices: %s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      v124 = v67;
      LOBYTE(v67) = v157;
      MEMORY[0x2667439C0](v124, -1, -1);
      MEMORY[0x2667439C0](v119, -1, -1);

      v122(v152, v117);
    }

    else
    {

      v115(v116, v117);
    }

    v135 = *(v0 + 104);
    v136 = *(v0 + 112);
    v137 = *(v0 + 88);
    v138 = *(v0 + 96);
    *(v0 + 72) = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D60, &unk_2648BA9E8);
    sub_2648B8D44();
    (*(v135 + 8))(v136, v138);
LABEL_63:
    *(v0 + 336) = v66;
    *(v0 + 27) = v67;
LABEL_64:
    v139 = *(MEMORY[0x277D85798] + 4);
    v140 = swift_task_alloc();
    *(v0 + 344) = v140;
    *v140 = v0;
    v140[1] = sub_26489FD9C;
    v141 = *(v0 + 208);
    v18 = *(v0 + 192);
    v15 = v20;
    v16 = 0;
    v17 = 0;

    return MEMORY[0x2822003E8](v15, v16, v17, v18);
  }

  v28 = *(v0 + 336);
  v30 = *(v0 + 288);
  v29 = *(v0 + 296);
  v31 = *(v0 + 272);
  v32 = *(v0 + 280);
  v34 = *(v0 + 256);
  v33 = *(v0 + 264);
  v35 = *(v0 + 248);
  v142 = *(v0 + 240);
  v143 = *(v0 + 232);
  v144 = *(v0 + 184);
  v146 = *(v0 + 176);
  v148 = *(v0 + 168);
  v150 = *(v0 + 144);
  v154 = *(v0 + 136);
  v159 = *(v0 + 112);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

  v36 = *(v0 + 8);

  return v36();
}