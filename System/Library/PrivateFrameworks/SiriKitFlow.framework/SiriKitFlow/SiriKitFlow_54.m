uint64_t sub_1DD03A018()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_10_81(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_72_20(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v0 = v4;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DD03A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v19 - v14;
  (*(v11 + 16))(&v19 - v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v15, v10);
  (*(a6 + 200))(a3, sub_1DD042070, v17, a5, a6);
}

uint64_t (*sub_1DD03A244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD040B3C;
}

void *sub_1DD03A370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10C010;
}

uint64_t sub_1DD03A49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a5, a6);
}

void *sub_1DD03A5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10C000;
}

uint64_t sub_1DD03A700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a5, a6);
}

void *sub_1DD03A838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFF0;
}

uint64_t sub_1DD03A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a5, a6);
}

void *sub_1DD03AA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFE0;
}

uint64_t sub_1DD03ABC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a5, a6);
}

void *sub_1DD03AD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFD0;
}

uint64_t sub_1DD03AE2C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy((v6 + 16), a2, 0x50uLL);
  v10 = *(a6 + 56);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v6 + 96) = v12;
  *v12 = v6;
  v12[1] = sub_1DD0335EC;

  return v14(a1, v6 + 16, a5, a6);
}

uint64_t (*sub_1DD03AF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD040774;
}

uint64_t (*sub_1DD03B098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD04071C;
}

void *sub_1DD03B1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFC0;
}

uint64_t sub_1DD03B2F0(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memcpy((v7 + 16), a2, 0x50uLL);
  v12 = *(a7 + 80);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v7 + 96) = v14;
  *v14 = v7;
  v14[1] = sub_1DD03B434;

  return v16(a1, v7 + 16, a3, a6, a7);
}

uint64_t sub_1DD03B434()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_130();

    return v13(v12);
  }
}

void *sub_1DD03B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFB0;
}

uint64_t sub_1DD03B678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a3 + 24);
  v13 = *(a3 + 32);
  *(v7 + 16) = *a3;
  v14 = *(a3 + 40);
  *(v7 + 24) = *(a3 + 8);
  *(v7 + 40) = v12;
  *(v7 + 48) = v13;
  *(v7 + 56) = v14;
  v15 = *(a7 + 88);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 64) = v17;
  *v17 = v7;
  v17[1] = sub_1DCE7A888;

  return v19(a1, a2, v7 + 16, a6, a7);
}

void *sub_1DD03B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BFA0;
}

uint64_t sub_1DD03B914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  *(v6 + 16) = *a2;
  v12 = *(a2 + 40);
  *(v6 + 24) = *(a2 + 8);
  *(v6 + 40) = v10;
  *(v6 + 48) = v11;
  *(v6 + 56) = v12;
  v13 = *(a6 + 96);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 64) = v15;
  *v15 = v6;
  v15[1] = sub_1DCE7A888;

  return v17(a1, v6 + 16, a5, a6);
}

void *sub_1DD03BA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF90;
}

uint64_t sub_1DD03BBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  *(v6 + 16) = *a2;
  v12 = *(a2 + 40);
  *(v6 + 24) = *(a2 + 8);
  *(v6 + 40) = v10;
  *(v6 + 48) = v11;
  *(v6 + 56) = v12;
  v13 = *(a6 + 104);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 64) = v15;
  *v15 = v6;
  v15[1] = sub_1DCE7A888;

  return v17(a1, v6 + 16, a5, a6);
}

void *sub_1DD03BD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF80;
}

uint64_t sub_1DD03BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  *(v6 + 16) = *a2;
  v12 = *(a2 + 40);
  *(v6 + 24) = *(a2 + 8);
  *(v6 + 40) = v10;
  *(v6 + 48) = v11;
  *(v6 + 56) = v12;
  v13 = *(a6 + 112);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 64) = v15;
  *v15 = v6;
  v15[1] = sub_1DCE7A888;

  return v17(a1, v6 + 16, a5, a6);
}

uint64_t (*sub_1DD03BF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1DD040340;
}

void *sub_1DD03C0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF70;
}

uint64_t sub_1DD03C1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 128);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a5, a6);
}

void *sub_1DD03C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF60;
}

uint64_t sub_1DD03C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a7 + 136);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCB4AE1C;

  return v17(a1, a2, a3, a6, a7);
}

void *sub_1DD03C590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF50;
}

uint64_t sub_1DD03C6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a7 + 144);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCB4AE1C;

  return v17(a1, a2, a3, a6, a7);
}

void *sub_1DD03C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF40;
}

uint64_t sub_1DD03C930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a7 + 152);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCB4AE1C;

  return v17(a1, a2, a3, a6, a7);
}

void *sub_1DD03CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF30;
}

uint64_t sub_1DD03CBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a7 + 160);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCB4AE1C;

  return v17(a1, a2, a3, a6, a7);
}

void *sub_1DD03CCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF20;
}

uint64_t sub_1DD03CE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a7 + 168);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1DCB4AE1C;

  return v17(a1, a2, a3, a6, a7);
}

void *sub_1DD03CF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF10;
}

uint64_t sub_1DD03D08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 176);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a5, a6);
}

void *sub_1DD03D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BF00;
}

uint64_t sub_1DD03D2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 184);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a5, a6);
}

void *sub_1DD03D428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BEF0;
}

uint64_t sub_1DD03D554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 192);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return v13(a1, a4, a5);
}

void *sub_1DD03D684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10BEE0;
}

uint64_t sub_1DD03D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 200);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return v15(a1, a2, a5, a6);
}

uint64_t sub_1DD03D8E8()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  memcpy(v1 + 2, v3, 0x50uLL);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DD03D950()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[13];
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_2_5(*(v1 + 96));
  v10 = v3;
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[14] = v6;
  *v6 = v7;
  v6[1] = sub_1DD03DA14;
  v8 = v0[12];

  return v10(v8, v0 + 2);
}

uint64_t sub_1DD03DA14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DD03DB2C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  return v1();
}

uint64_t sub_1DD03DB54()
{
  OUTLINED_FUNCTION_42();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  memcpy(v1 + 2, v4, 0x50uLL);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DD03DBC0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[14];
  v2 = *(v1 + 152);
  v8 = (*(v1 + 144) + **(v1 + 144));
  v3 = *(*(v1 + 144) + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1DD03DCB4;
  v6 = v0[12];
  v5 = v0[13];

  return v8(v6, v0 + 2, v5);
}

uint64_t sub_1DD03DCB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_130();

    return v13(v12);
  }
}

uint64_t sub_1DD03DDCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  v5 = *a3;
  *(v4 + 80) = v3;
  *(v4 + 88) = v5;
  *(v4 + 96) = *(a3 + 1);
  *(v4 + 57) = *(a3 + 24);
  *(v4 + 112) = a3[4];
  *(v4 + 58) = *(a3 + 40);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03DE08()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 58);
  v3 = *(v1 + 112);
  v4 = *(v1 + 57);
  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  v7 = *(v6 + 160);
  v8 = *(v6 + 168);
  OUTLINED_FUNCTION_95_9();
  *(v1 + 24) = *(v1 + 96);
  *(v1 + 40) = v9;
  *(v1 + 48) = v10;
  *(v1 + 56) = v11;
  v19 = (v12 + *v12);
  v13 = v12[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 120) = v14;
  *v14 = v15;
  v14[1] = sub_1DCE7CB88;
  v16 = *(v1 + 64);
  v17 = *(v1 + 72);

  return v19(v16, v17, v0);
}

uint64_t sub_1DD03DF44()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  OUTLINED_FUNCTION_95_9();
  *(v0 + 24) = *(v0 + 88);
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  OUTLINED_FUNCTION_2_5(v7);
  v15 = v8;
  v10 = *(v9 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v11;
  *v11 = v12;
  v11[1] = sub_1DD03DA14;
  v13 = *(v0 + 64);
  OUTLINED_FUNCTION_62_1();

  return v15();
}

uint64_t sub_1DD03E044()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  OUTLINED_FUNCTION_95_9();
  *(v0 + 24) = *(v0 + 88);
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  OUTLINED_FUNCTION_2_5(v7);
  v15 = v8;
  v10 = *(v9 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v11;
  *v11 = v12;
  v11[1] = sub_1DD03E120;
  v13 = *(v0 + 64);
  OUTLINED_FUNCTION_62_1();

  return v15();
}

uint64_t sub_1DD03E120()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DD03E258()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  v2 = *(v1 + 208);
  v3 = *(v1 + 216);
  OUTLINED_FUNCTION_95_9();
  *(v0 + 24) = *(v0 + 88);
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  OUTLINED_FUNCTION_2_5(v7);
  v15 = v8;
  v10 = *(v9 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v11;
  *v11 = v12;
  v11[1] = sub_1DD03E120;
  v13 = *(v0 + 64);
  OUTLINED_FUNCTION_62_1();

  return v15();
}

uint64_t sub_1DD03E334()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  return v1();
}

uint64_t sub_1DD03E35C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E374()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  v2 = *(v1 + 248);
  OUTLINED_FUNCTION_2_5(*(v1 + 240));
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_39_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_46_1(v6);

  return v9(v8);
}

uint64_t sub_1DD03E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E43C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  v2 = *(v1 + 264);
  OUTLINED_FUNCTION_9_78(*(v1 + 256));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 48) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_28_38(v5);

  return v8(v7);
}

uint64_t sub_1DD03E4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E508()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  v2 = *(v1 + 280);
  OUTLINED_FUNCTION_9_78(*(v1 + 272));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 48) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_28_38(v5);

  return v8(v7);
}

uint64_t sub_1DD03E5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E5D4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  v2 = *(v1 + 296);
  OUTLINED_FUNCTION_9_78(*(v1 + 288));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 48) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_28_38(v5);

  return v8(v7);
}

uint64_t sub_1DD03E688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E6A0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  v2 = *(v1 + 312);
  OUTLINED_FUNCTION_9_78(*(v1 + 304));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 48) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_28_38(v5);

  return v8(v7);
}

uint64_t sub_1DD03E754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E76C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  v2 = *(v1 + 328);
  OUTLINED_FUNCTION_9_78(*(v1 + 320));
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 48) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_28_38(v5);

  return v8(v7);
}

uint64_t sub_1DD03E820(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E838()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  v2 = *(v1 + 344);
  OUTLINED_FUNCTION_2_5(*(v1 + 336));
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_39_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_46_1(v6);

  return v9(v8);
}

uint64_t sub_1DD03E8E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E900()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  v2 = *(v1 + 360);
  OUTLINED_FUNCTION_2_5(*(v1 + 352));
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_39_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_46_1(v6);

  return v9(v8);
}

uint64_t sub_1DD03E9B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03E9C4()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[3];
  v2 = *(v1 + 376);
  v8 = (*(v1 + 368) + **(v1 + 368));
  v3 = *(*(v1 + 368) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[4] = v4;
  *v4 = v5;
  v4[1] = sub_1DCB3F98C;
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_1DD03EAB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD03EAC8()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);
  v2 = *(v1 + 392);
  v10 = *(v1 + 384) + **(v1 + 384);
  v3 = *(*(v1 + 384) + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_39_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_46_1(v5);

  return v8(v7);
}

uint64_t sub_1DD03EBA4()
{
  v1 = *(*v0 + 80);
  type metadata accessor for AnyUnsetRelationshipFlowStrategy();
  swift_getMetatypeMetadata();
  v2 = sub_1DD0DE02C();
  if (v0[50])
  {
    v7 = v0[50];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC360, &qword_1DD0FE290);
    v3 = sub_1DD0DE02C();
    v5 = v4;
  }

  else
  {
    v5 = 0xEB00000000656C62;
    v3 = 0x616C696176616E75;
  }

  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD12A430);
  MEMORY[0x1E12A6780](v3, v5);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return v2;
}

void *sub_1DD03ECF8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[25];

  v13 = v0[27];

  v14 = v0[29];

  v15 = v0[31];

  v16 = v0[33];

  v17 = v0[35];

  v18 = v0[37];

  v19 = v0[39];

  v20 = v0[41];

  v21 = v0[43];

  v22 = v0[45];

  v23 = v0[47];

  v24 = v0[49];

  return v0;
}

uint64_t sub_1DD03EDD0()
{
  sub_1DD03ECF8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD03EE40(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCE66CBC(a1, a2);
}

uint64_t sub_1DD03EEEC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCE66CD4(a1, a2);
}

uint64_t sub_1DD03EF98(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCE66D9C(a1, a2);
}

uint64_t sub_1DD03F044(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCE66E64(a1, a2);
}

uint64_t sub_1DD03F0F0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DD03D8E8();
}

uint64_t sub_1DD03F1C0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCBCF08C;

  return sub_1DD03DB54();
}

uint64_t sub_1DD03F270(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DD03DDCC(a1, a2, a3);
}

uint64_t sub_1DD03F324(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03DF20(a1, a2);
}

uint64_t sub_1DD03F3D0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03E020(a1, a2);
}

uint64_t sub_1DD03F47C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03E234(a1, a2);
}

uint64_t sub_1DD03F54C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03E35C(a1, a2);
}

uint64_t sub_1DD03F5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DD03E424(a1, a2, a3);
}

uint64_t sub_1DD03F6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DD03E4F0(a1, a2, a3);
}

uint64_t sub_1DD03F760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DD03E5BC(a1, a2, a3);
}

uint64_t sub_1DD03F814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DD03E688(a1, a2, a3);
}

uint64_t sub_1DD03F8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DD03E754(a1, a2, a3);
}

uint64_t sub_1DD03F97C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03E820(a1, a2);
}

uint64_t sub_1DD03FA28(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03E8E8(a1, a2);
}

uint64_t sub_1DD03FAD4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DD03E9B0(a1);
}

uint64_t sub_1DD03FB70(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DD03EAB0(a1, a2);
}

uint64_t sub_1DD03FC40()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03D7B0(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD03FCF0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_83_14();
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  v8 = OUTLINED_FUNCTION_44_34();

  return sub_1DD03D554(v8, v9, v0, v1, v2);
}

uint64_t sub_1DD03FDC0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03D2F0(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD03FE70()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03D08C(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD03FF20()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03CE18(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD03FFD0()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03CBA4(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD040080()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03C930(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD040130()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03C6BC(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD0401E0()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03C448(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD040290()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03C1E4(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD040340()
{
  OUTLINED_FUNCTION_41_34();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_40_37();
  return (*(v2 + 120))();
}

uint64_t sub_1DD040398()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03BE2C(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD040448()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03BBA0(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD0404F8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03B914(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD0405A8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03B678(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD040658()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_50_26();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DCBF9BCC;
  OUTLINED_FUNCTION_11_75();
  OUTLINED_FUNCTION_125_0();

  return sub_1DD03B2F0(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD04071C()
{
  OUTLINED_FUNCTION_41_34();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_40_37();
  return (*(v2 + 72))();
}

uint64_t sub_1DD040774()
{
  v1 = *(*(*(v0 + 24) - 8) + 80);
  OUTLINED_FUNCTION_86_13(*(v0 + 24), *(v0 + 32));
  return v2();
}

uint64_t sub_1DD0407CC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03AE2C(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD04087C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03ABC8(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD04092C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03A964(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD0409DC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03A700(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD040A8C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03A49C(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD040B3C()
{
  OUTLINED_FUNCTION_41_34();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_40_37();
  return (*(v2 + 16))();
}

uint64_t sub_1DD040B94()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD0367C8(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD040C44()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD036AF0(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD040CF4()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD036D44(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD040DA4()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD037038(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD040E54()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD03728C(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD040F04()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_50_26();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DCBF9BCC;
  OUTLINED_FUNCTION_11_75();
  OUTLINED_FUNCTION_125_0();

  return sub_1DD0377D0(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD040FC8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD037CA8(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD041078()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD037FFC(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD041128()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD038280(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD0411D8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD038620(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD041288()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD0389D0(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD041338()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD038CB8(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD0413E8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD038F24(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD041498()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD039190(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD041548()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD0393FC(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD0415F8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_7_84();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_50_26();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_118(v3);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD039668(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1DD0416A8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD0398D4(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD041758()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD039B28(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD041808()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_83_14();
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  v8 = OUTLINED_FUNCTION_44_34();

  return sub_1DD039D7C(v8, v9, v0, v1, v2);
}

uint64_t sub_1DD0418D8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_120();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_42_35();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2_117(v3);
  OUTLINED_FUNCTION_121();

  return sub_1DD039FF0(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DD041A7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC810, &qword_1DD10C160);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_79_1();

  return sub_1DD038C2C(v3);
}

uint64_t sub_1DD041AE8()
{
  OUTLINED_FUNCTION_41_34();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_40_37();
  return (*(v2 + 120))();
}

uint64_t sub_1DD041BB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC820, &qword_1DD10C170);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_79_1();

  return sub_1DD037F60(v3);
}

id sub_1DD041C1C(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DD041C3C(uint64_t a1, char a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  sub_1DD0DE40C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v8 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 80);

  return sub_1DD037C2C(a1, a2 & 1);
}

uint64_t sub_1DD041D10()
{
  OUTLINED_FUNCTION_41_34();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_40_37();
  return (*(v2 + 72))();
}

uint64_t sub_1DD041D68()
{
  v1 = *(*(*(v0 + 24) - 8) + 80);
  OUTLINED_FUNCTION_86_13(*(v0 + 24), *(v0 + 32));
  return v2();
}

uint64_t sub_1DD041E1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_79_1();
  return sub_1DD036F98(v3);
}

uint64_t objectdestroy_450Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DD041F20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC828, &qword_1DD10C178);
  OUTLINED_FUNCTION_20_0(v0);
  v2 = *(v1 + 80);
  v3 = OUTLINED_FUNCTION_79_1();

  return sub_1DD036A1C(v3);
}

uint64_t objectdestroy_236Tm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DD042004()
{
  OUTLINED_FUNCTION_41_34();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_40_37();
  return (*(v2 + 16))();
}

uint64_t sub_1DD042078()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 64) = v1;
  v9 = v2 + *v2;
  v3 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 72) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11_26(v4);

  return v7(v6);
}

uint64_t sub_1DD042158()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD042250()
{
  v1 = *(v0 + 64);
  *(v0 + 56) = 0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 25) = *(v0 + 41);
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1DD04226C()
{
  v1 = *(v0 + 64);
  *v1 = *(v0 + 80);
  *(v1 + 40) = 1;
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1DD042284()
{
  OUTLINED_FUNCTION_42();
  v8 = v1 + *v1;
  v2 = v1[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_26(v3);

  return v6(v5);
}

uint64_t sub_1DD042360()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t static UnsetRelationshipOutputFactory.makeMeCardNotFoundResponse(requestedRelationship:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_79_13(v3);
  v0[3] = v4;
  OUTLINED_FUNCTION_99(v4);
  v0[4] = v5;
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_38();
  v9 = OUTLINED_FUNCTION_78_1(v8);
  OUTLINED_FUNCTION_26_39(v9);
  v11 = *(v10 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_97(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_31_0(v13);

  return sub_1DD045488(v2);
}

uint64_t sub_1DD042588()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1DD042834()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t static UnsetRelationshipOutputFactory.makeContactNotFoundResponse(requestedPerson:)()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_78_1(v6);
  OUTLINED_FUNCTION_26_39(v7);
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_31_0(v11);

  return sub_1DD045714();
}

uint64_t sub_1DD042A0C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t static UnsetRelationshipOutputFactory.makeSaveRelationshipCompletedResponse(person:requestedRelationship:)()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_78_1(v6);
  OUTLINED_FUNCTION_26_39(v7);
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_31_0(v11);

  return sub_1DD045930();
}

uint64_t sub_1DD042DBC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 56);
  v2 = type metadata accessor for AceOutput();
  v1[3] = v2;
  v1[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v1);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v4 = v2[7];
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[9];
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v2[8];
  v15 = *MEMORY[0x1E69D0678];
  v16 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v16);
  (*(v17 + 104))(boxed_opaque_existential_1Tm + v14, v15);
  boxed_opaque_existential_1Tm[15] = 0;
  *(boxed_opaque_existential_1Tm + 13) = 0u;
  *(boxed_opaque_existential_1Tm + 11) = 0u;
  sub_1DCB6C5E8(v0 + 16, (boxed_opaque_existential_1Tm + 11));
  *(boxed_opaque_existential_1Tm + v2[10]) = 0;
  *boxed_opaque_existential_1Tm = MEMORY[0x1E69E7CC0];
  *(boxed_opaque_existential_1Tm + 1) = 0u;
  *(boxed_opaque_existential_1Tm + 3) = 0u;
  *(boxed_opaque_existential_1Tm + 5) = 0u;
  *(boxed_opaque_existential_1Tm + 7) = 0u;
  boxed_opaque_existential_1Tm[9] = 0;
  *(boxed_opaque_existential_1Tm + 80) = 3;
  OUTLINED_FUNCTION_29();

  return v18();
}

uint64_t static UnsetRelationshipOutputFactory.makeUnsupportedPlatformResponse(requestedRelationship:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_79_13(v3);
  v0[3] = v4;
  OUTLINED_FUNCTION_99(v4);
  v0[4] = v5;
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_38();
  v9 = OUTLINED_FUNCTION_78_1(v8);
  OUTLINED_FUNCTION_26_39(v9);
  v11 = *(v10 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_97(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_31_0(v13);

  return sub_1DD046074(v2);
}

uint64_t static UnsetRelationshipOutputFactory.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_42();
  v2 = OUTLINED_FUNCTION_79_13(v1);
  v0[3] = v2;
  OUTLINED_FUNCTION_99(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_78_1(v6);
  OUTLINED_FUNCTION_26_39(v7);
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_38();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_31_0(v11);

  return sub_1DCF65754();
}

uint64_t sub_1DD0430EC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  OUTLINED_FUNCTION_77_0(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_81();

    OUTLINED_FUNCTION_32_3();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1DD0433A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t static UnsetRelationshipOutputFactory.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDC444();
}

uint64_t static UnsetRelationshipOutputFactory.makeRepromptOnLowConfidence()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDBBA0();
}

void *sub_1DD0435B8()
{
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  result = ResponseFactory.init()();
  qword_1ECCD27E8 = result;
  return result;
}

uint64_t sub_1DD043618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DD04363C, 0, 0);
}

uint64_t sub_1DD04363C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_32_2(dword_1DD10C288);
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[12] = v4;
  *v4 = v5;
  v4[1] = sub_1DD043700;
  v6 = OUTLINED_FUNCTION_41_35();

  return v8(v6);
}

uint64_t sub_1DD043700()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DD043804()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 80);
  (*(v0 + 72))(v0 + 16);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DD04387C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return static UnsetRelationshipOutputFactory.makeMeCardNotFoundResponse(requestedRelationship:)();
}

void static UnsetRelationshipOutputFactory.makeContactNotFoundResponse(requestedPerson:_:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  memcpy(__dst, a1, sizeof(__dst));
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  memcpy(v15 + 4, __dst, 0x50uLL);
  v15[14] = a2;
  v15[15] = a3;
  sub_1DD02AB7C(__dst, v16);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD043A28()
{
  OUTLINED_FUNCTION_42();
  v0[28] = v1;
  v0[29] = v2;
  memcpy(v0 + 2, v3, 0x50uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[30] = v4;
  *v4 = v5;
  v4[1] = sub_1DD043AC8;

  return static UnsetRelationshipOutputFactory.makeContactNotFoundResponse(requestedPerson:)();
}

uint64_t sub_1DD043AC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD043BC0()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 184) = 0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 168);
  *(v0 + 192) = v2;
  *(v0 + 208) = v3;
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 120) = v3;
  *(v0 + 136) = 0;
  v4(v0 + 96);
  sub_1DCB0E9D8(v0 + 96, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DD043C60()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 256) = 1;
  *(v0 + 96) = *(v0 + 248);
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  *(v0 + 104) = *(v0 + 192);
  *(v0 + 120) = v3;
  *(v0 + 136) = 1;
  v1(v0 + 96);
  sub_1DCB0E9D8(v0 + 96, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v4();
}

void static UnsetRelationshipOutputFactory.makeSaveRelationshipCompletedResponse(person:requestedRelationship:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RelationshipLabel();
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_1DCC08BCC(a2, &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a1;
  sub_1DCCC3844(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = (v25 + ((v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = a3;
  v26[1] = a4;
  v27 = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD043E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DD043EA4, 0, 0);
}

uint64_t sub_1DD043EA4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *(v1 + 16) = *(v0 + 64);
  OUTLINED_FUNCTION_32_2(dword_1DD10C288);
  v7 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 104) = v3;
  *v3 = v4;
  v3[1] = sub_1DD043F64;
  v5 = OUTLINED_FUNCTION_41_35();

  return v7(v5);
}

uint64_t sub_1DD043F64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DD044068()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 88);
  (*(v0 + 80))(v0 + 16);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DD0440E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return static UnsetRelationshipOutputFactory.makeSaveRelationshipCompletedResponse(person:requestedRelationship:)();
}

uint64_t sub_1DD0441B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD0441C4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 40) = type metadata accessor for AceOutput();
  *(v0 + 48) = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = sub_1DCBB665C();
  *(v0 + 56) = 0;
  v1(v0 + 16, v3);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DD044284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RelationshipLabel();
  v7 = OUTLINED_FUNCTION_99(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  sub_1DCC08BCC(a1, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_1DCCC3844(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v24 = (v23 + ((v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = a2;
  v24[1] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD044410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DD044434, 0, 0);
}

uint64_t sub_1DD044434()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_32_2(dword_1DD10C288);
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[12] = v4;
  *v4 = v5;
  v4[1] = sub_1DD0444F8;
  v6 = OUTLINED_FUNCTION_41_35();

  return v8(v6);
}

uint64_t sub_1DD0444F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DD0445FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return static UnsetRelationshipOutputFactory.makeUnsupportedPlatformResponse(requestedRelationship:)();
}

uint64_t sub_1DD04469C()
{
  v2 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_99(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  OUTLINED_FUNCTION_37_3(*(v5 + 64));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  v7[1] = sub_1DCB4AE1C;
  v9 = OUTLINED_FUNCTION_8_1();

  return sub_1DD043618(v9, v10, v11, v12, v0, v1);
}

uint64_t sub_1DD04479C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[14];
  v4 = v0[15];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_8_1();

  return sub_1DD043A28();
}

uint64_t sub_1DD044848(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_99(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DCB4AE1C;

  return sub_1DD043E80(a1, v9, v10, v11, v1 + v7, v13, v14);
}

uint64_t sub_1DD04497C()
{
  v2 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_99(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  OUTLINED_FUNCTION_37_3(*(v5 + 64));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  v7[1] = sub_1DCB4AE1C;
  v9 = OUTLINED_FUNCTION_8_1();

  return sub_1DD044410(v9, v10, v11, v12, v0, v1);
}

uint64_t sub_1DD044A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = swift_task_alloc();
  v5[20] = v6;
  *v6 = v5;
  v6[1] = sub_1DD044B34;

  return static UnsetRelationshipOutputFactory.makeFlowCancelledResponse()();
}

uint64_t sub_1DD044B34()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD044C2C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;
  v5 = OUTLINED_FUNCTION_8_1();

  return sub_1DD044A9C(v5, v6, v7, v1, v0);
}

void static UnsetRelationshipOutputFactory.makeErrorResponse(_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  v16 = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD044DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v7 = swift_task_alloc();
  v6[20] = v7;
  *v7 = v6;
  v7[1] = sub_1DD044E54;

  return sub_1DCCDC444();
}

uint64_t sub_1DD044E54()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD044F4C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  v7[1] = sub_1DCB4AE1C;
  v9 = OUTLINED_FUNCTION_8_1();

  return sub_1DD044DBC(v9, v10, v11, v3, v4, v5);
}

void sub_1DD04501C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD0450E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = swift_task_alloc();
  v5[20] = v6;
  *v6 = v5;
  v6[1] = sub_1DD044E54;

  return sub_1DCCDBBA0();
}

uint64_t sub_1DD045180()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;
  v5 = OUTLINED_FUNCTION_8_1();

  return sub_1DD0450E8(v5, v6, v7, v1, v0);
}

_BYTE *storeEnumTagSinglePayload for UnsetRelationshipOutputFactory(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DD0452CC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_17(v3);

  return sub_1DD0445FC();
}

uint64_t sub_1DD045358()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_13_17(v4);

  return sub_1DD0440E0();
}

uint64_t sub_1DD0453F0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_17(v3);

  return sub_1DD04387C();
}

void sub_1DD0454A0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v3;
  sub_1DD0DDE9C();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v4 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_10_82(v4, v4, &off_1F58563F0);
}

uint64_t sub_1DD0455E8()
{
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 136);
  v8 = *(v6 + 128);
  v9 = *v2;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v4 + 144) = v0;

  if (!v0)
  {
    *(v4 + 152) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DD045728()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD04582C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DD045930()
{
  OUTLINED_FUNCTION_42();
  v5 = *MEMORY[0x1E69E9840];
  *(v0 + 392) = v1;
  *(v0 + 400) = v2;
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DD0459BC, 0, 0);
}

uint64_t sub_1DD0459BC()
{
  v44 = *MEMORY[0x1E69E9840];
  v1 = v0[49];
  v2 = sub_1DCC6E534(v1);
  v42 = v3;
  v43 = v2;
  v4 = sub_1DCC6E54C(v1);
  v6 = v5;
  v7 = sub_1DCC6E540(v1);
  v9 = v8;
  v10 = sub_1DCC6E558(v1);
  v12 = v11;
  v13 = [v1 fullName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1DD0DDFBC();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v0[18] = v7;
  v0[19] = v9;
  v0[20] = v4;
  v0[21] = v6;
  v0[22] = v43;
  v0[23] = v42;
  v0[24] = v10;
  v0[25] = v12;
  v0[26] = v15;
  v0[27] = v17;
  memcpy(v0 + 28, v0 + 18, 0x50uLL);
  if (qword_1ECCA1250 != -1)
  {
    swift_once();
  }

  sub_1DCCE6BD4();
  v18 = sub_1DD0DAADC();
  v20 = v19;
  sub_1DCCE6C28((v0 + 18));
  v24 = objc_opt_self();
  v25 = sub_1DD0DAEFC();
  v0[47] = 0;
  v26 = [v24 JSONObjectWithData:v25 options:0 error:v0 + 47];

  v27 = v0[47];
  if (v26)
  {
    v28 = v27;
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
    v30 = swift_dynamicCast();
    sub_1DCB21A14(v18, v20);
    if (v30)
    {
      v31 = v0[50];
      v32 = v0[48];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
      inited = swift_initStackObject();
      v34 = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E32B0);
      v35 = MEMORY[0x1E69E6158];
      inited[3].n128_u64[0] = v34;
      inited[3].n128_u64[1] = v36;
      inited[4].n128_u64[1] = v35;
      inited[5].n128_u64[0] = 0x6E6F73726570;
      inited[7].n128_u64[1] = v29;
      inited[5].n128_u64[1] = 0xE600000000000000;
      inited[6].n128_u64[0] = v32;
      v0[51] = sub_1DD0DDE9C();
      if (qword_1EDE48CE8 != -1)
      {
        OUTLINED_FUNCTION_1_7();
      }

      v37 = qword_1EDE57D40;
      v38 = type metadata accessor for CATTemplateExecutor();
      v0[41] = v38;
      v0[42] = &off_1F58563F0;
      v0[38] = v37;
      v39 = *__swift_project_boxed_opaque_existential_1(v0 + 38, v38);
      sub_1DD0DCF8C();
    }
  }

  else
  {
    v40 = v27;
    v41 = sub_1DD0DAE0C();

    swift_willThrow();
    sub_1DCB21A14(v18, v20);
  }

  sub_1DD0463C0();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_29();
  v22 = *MEMORY[0x1E69E9840];

  return v21();
}

uint64_t sub_1DD045DF4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  v7 = *(v4 + 416);
  *v6 = *v2;
  *(v5 + 424) = v1;

  v8 = *(v4 + 408);

  if (v1)
  {
    v9 = sub_1DD045FEC;
  }

  else
  {
    *(v5 + 432) = a1;
    v9 = sub_1DD045F5C;
  }

  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DD045F5C()
{
  OUTLINED_FUNCTION_42();
  v5 = *MEMORY[0x1E69E9840];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 38);
  v1 = v0[1];
  v2 = v0[54];
  v3 = *MEMORY[0x1E69E9840];

  return v1(v2);
}

uint64_t sub_1DD045FEC()
{
  OUTLINED_FUNCTION_42();
  v5 = *MEMORY[0x1E69E9840];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));
  v1 = *(v0 + 424);
  OUTLINED_FUNCTION_29();
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

void sub_1DD04608C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v3;
  sub_1DD0DDE9C();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v4 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_10_82(v4, v4, &off_1F58563F0);
}

uint64_t sub_1DD0461D4()
{
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 136);
  v8 = *(v6 + 128);
  v9 = *v2;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  *(v4 + 144) = v0;

  if (!v0)
  {
    *(v4 + 152) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD046300()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  v1 = v0[1];
  v2 = v0[19];

  return v1(v2);
}

uint64_t sub_1DD046364()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 144);

  return v1();
}

unint64_t sub_1DD0463C0()
{
  result = qword_1ECCAC830;
  if (!qword_1ECCAC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC830);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UnsetRelationshipPatterns.TemplatingError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD0464C4()
{
  result = qword_1ECCAC838[0];
  if (!qword_1ECCAC838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAC838);
  }

  return result;
}

void __swiftcall UnsetRelationshipPerson.init(firstName:lastName:middleName:fullName:nickname:)(SiriKitFlow::UnsetRelationshipPerson *__return_ptr retstr, Swift::String_optional firstName, Swift::String_optional lastName, Swift::String_optional middleName, Swift::String_optional fullName, Swift::String_optional nickname)
{
  retstr->firstName = firstName;
  retstr->lastName = lastName;
  retstr->middleName = middleName;
  retstr->fullName = fullName;
  retstr->nickname = nickname;
}

uint64_t static UnsetRelationshipPerson.from(personNode:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_1DD0DBE8C();
  v26 = v6;
  v27 = v5;
  v7 = a1[3];
  v8 = a1[4];
  OUTLINED_FUNCTION_0_129();
  v9 = sub_1DD0DBE6C();
  v11 = v10;
  v12 = a1[3];
  v13 = a1[4];
  OUTLINED_FUNCTION_0_129();
  v14 = sub_1DD0DBE4C();
  v16 = v15;
  v17 = a1[3];
  v18 = a1[4];
  OUTLINED_FUNCTION_0_129();
  v19 = sub_1DD0DBE5C();
  v21 = v20;
  v22 = a1[3];
  v23 = a1[4];
  OUTLINED_FUNCTION_0_129();
  result = sub_1DD0DBE7C();
  *a2 = v27;
  a2[1] = v26;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v14;
  a2[5] = v16;
  a2[6] = v19;
  a2[7] = v21;
  a2[8] = result;
  a2[9] = v25;
  return result;
}

uint64_t UnsetRelationshipPerson.firstName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t UnsetRelationshipPerson.lastName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t UnsetRelationshipPerson.middleName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t UnsetRelationshipPerson.fullName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t UnsetRelationshipPerson.nickname.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DD046718(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

void sub_1DD0467F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(v8 + 48);
  v15 = *(v8 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_77_12();
  sub_1DD046888(v16, v17, v18, a4, a5, a6, a7, a8);
}

void sub_1DD046888(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *v8;
  (*(*(*(*v8 + 80) - 8) + 32))(v8 + *(*v8 + 96), a1, *(*v8 + 80));
  OUTLINED_FUNCTION_66();
  *(v8 + *(v17 + 104)) = a3;
  OUTLINED_FUNCTION_66();
  *(v8 + *(v18 + 112)) = a4;
  OUTLINED_FUNCTION_66();
  v20 = (v8 + *(v19 + 120));
  *v20 = a5;
  v20[1] = a6;
  OUTLINED_FUNCTION_66();
  *(v8 + *(v21 + 128)) = a7;
  OUTLINED_FUNCTION_66();
  *(v8 + *(v22 + 136)) = a8;
  v23 = *(*(v16 + 88) + 8);
  swift_getAssociatedTypeWitness();
  ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)(a3, a4, a5, a6, a7, a8, v29);
  v25[0] = v29[0];
  v25[1] = v29[1];
  v26 = v30;
  v27 = v31;
  v28 = v32;
  sub_1DD046A7C(v25, a2, __src);
  OUTLINED_FUNCTION_66();
  memcpy(v8 + *(v24 + 144), __src, 0x60uLL);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD046A7C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
  return sub_1DCB18FF0(a2, a3 + 56);
}

uint64_t sub_1DD046AAC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_74_1();
  v3 = *(v2 + 96);
  v5 = *(v0 + v4[13]);
  v6 = *(v0 + v4[14]);
  v7 = v4[15];
  OUTLINED_FUNCTION_41_36();
  v9 = *(v0 + *(v8 + 128));
  OUTLINED_FUNCTION_74_1();
  v11 = *(v0 + *(v10 + 136));
  OUTLINED_FUNCTION_74_1();
  v13 = *(*(v12 + 88) + 80);
  OUTLINED_FUNCTION_74_1();
  v15 = *(v14 + 80);
  return v17(v16);
}

uint64_t sub_1DD046B90()
{
  OUTLINED_FUNCTION_27_39();
  v2 = *(v1 + 96);
  v4 = *(v0 + v3[13]);
  v5 = *(v0 + v3[14]);
  v6 = (v0 + v3[15]);
  v8 = *v6;
  v7 = v6[1];
  OUTLINED_FUNCTION_8_2();
  v10 = *(v0 + *(v9 + 128));
  OUTLINED_FUNCTION_8_2();
  v12 = *(v0 + *(v11 + 136));
  OUTLINED_FUNCTION_8_2();
  v14 = *(*(v13 + 88) + 88);
  OUTLINED_FUNCTION_8_2();
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_78_20();
  return v17();
}

void sub_1DD046DA0(char *a1, char *a2)
{
  v5 = type metadata accessor for SiriKitEventPayload(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  v12 = v2[11];
  v20[1] = __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  v20[0] = type metadata accessor for SiriKitEvent(0);
  v13 = [v2[1] typeName];
  v14 = sub_1DD0DDFBC();
  v16 = v15;

  v17 = *v2;
  v18 = v2[2];
  v19 = v2[3];
  *v9 = v10;
  *(v9 + 1) = v14;
  *(v9 + 2) = v16;
  *(v9 + 3) = v17;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  *(v9 + 6) = v18;
  *(v9 + 7) = v19;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  v9[96] = v11;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DD047040()
{
  OUTLINED_FUNCTION_27_39();
  v2 = *(v1 + 96);
  v4 = *(v0 + v3[13]);
  v5 = *(v0 + v3[14]);
  v6 = (v0 + v3[15]);
  v7 = *v6;
  v8 = v6[1];
  OUTLINED_FUNCTION_8_2();
  v10 = *(v0 + *(v9 + 128));
  OUTLINED_FUNCTION_8_2();
  v12 = *(v0 + *(v11 + 136));
  OUTLINED_FUNCTION_8_2();
  v14 = *(*(v13 + 88) + 72);
  OUTLINED_FUNCTION_8_2();
  v20 = *(v15 + 80);
  return v18(v16, v17);
}

void sub_1DD0474B4(void *__src, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_96();
  v23 = *(v7 + 96);
  OUTLINED_FUNCTION_96();
  v22 = *(v3 + *(v8 + 104));
  v21 = *(v3 + *(v6 + 112));
  v9 = (v3 + *(v6 + 120));
  v10 = v9[1];
  v20 = *v9;
  OUTLINED_FUNCTION_96();
  v12 = *(v3 + *(v11 + 128));
  OUTLINED_FUNCTION_96();
  v14 = *(v3 + *(v13 + 136));
  OUTLINED_FUNCTION_92_2();
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a2;
  v15[4] = a3;
  OUTLINED_FUNCTION_96();
  v17 = *(*(v16 + 88) + 120);
  OUTLINED_FUNCTION_96();
  v19 = *(v18 + 80);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD047640()
{
  v1 = *v0;
  OUTLINED_FUNCTION_74_1();
  v3 = *(v2 + 96);
  v5 = *(v0 + v4[13]);
  v6 = *(v0 + v4[14]);
  v7 = v4[15];
  OUTLINED_FUNCTION_41_36();
  v9 = *(v0 + *(v8 + 136));
  OUTLINED_FUNCTION_74_1();
  v11 = *(*(v10 + 88) + 128);
  OUTLINED_FUNCTION_74_1();
  v13 = *(v12 + 80);
  return v14();
}

void sub_1DD04785C(uint64_t a1, void (*a2)(void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v9 = &v19 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v10 = sub_1DD0DF22C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v19 - v13);
  (*(v15 + 16))(&v19 - v13, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    v17 = *v14;
    (a2)(v16, 1);
  }

  else
  {
    (*(v5 + 32))(v9, v14, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    a2();

    (*(v5 + 8))(v9, AssociatedTypeWitness);
  }
}

uint64_t sub_1DD047ACC()
{
  v1 = *v0;
  OUTLINED_FUNCTION_74_1();
  v3 = *(v2 + 96);
  v5 = *(v0 + v4[13]);
  v6 = *(v0 + v4[14]);
  v7 = v4[15];
  OUTLINED_FUNCTION_41_36();
  v9 = *(v0 + *(v8 + 128));
  OUTLINED_FUNCTION_74_1();
  v11 = *(v0 + *(v10 + 136));
  OUTLINED_FUNCTION_74_1();
  v13 = *(*(v12 + 88) + 136);
  OUTLINED_FUNCTION_74_1();
  v15 = *(v14 + 80);
  return v17(v16);
}

uint64_t sub_1DD047BB0(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *a2;
  v5 = *(a2 + 24);
  v6 = a2[4];
  v7 = *(a2 + 40);
  OUTLINED_FUNCTION_8_2();
  v9 = *(v8 + 96);
  v11 = *(v2 + *(v10 + 104));
  OUTLINED_FUNCTION_8_2();
  v13 = *(v2 + *(v12 + 112));
  OUTLINED_FUNCTION_8_2();
  v15 = (v2 + *(v14 + 120));
  v16 = *v15;
  v17 = v15[1];
  OUTLINED_FUNCTION_8_2();
  v19 = *(v2 + *(v18 + 128));
  OUTLINED_FUNCTION_8_2();
  v21 = *(v2 + *(v20 + 136));
  v42 = v22;
  v43 = *(v23 + 8);
  v44 = v24;
  v45 = v25;
  v46 = v26;
  OUTLINED_FUNCTION_8_2();
  v28 = *(*(v27 + 88) + 152);
  OUTLINED_FUNCTION_8_2();
  v41 = *(v29 + 80);
  return v39(v30, v36, v37, v38, v33, v34, v35, &v42, v31, v32);
}

uint64_t sub_1DD0480A8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_74_1();
  v3 = *(v2 + 96);
  v5 = *(v0 + v4[13]);
  v6 = *(v0 + v4[14]);
  v7 = v4[15];
  OUTLINED_FUNCTION_41_36();
  v9 = *(v0 + *(v8 + 128));
  OUTLINED_FUNCTION_74_1();
  v11 = *(v0 + *(v10 + 136));
  OUTLINED_FUNCTION_74_1();
  v13 = *(*(v12 + 88) + 184);
  OUTLINED_FUNCTION_74_1();
  v15 = *(v14 + 80);
  return v17(v16);
}

uint64_t sub_1DD04818C()
{
  OUTLINED_FUNCTION_27_39();
  v2 = *(v1 + 96);
  v4 = *(v0 + v3[13]);
  v5 = *(v0 + v3[14]);
  v6 = (v0 + v3[15]);
  v8 = *v6;
  v7 = v6[1];
  OUTLINED_FUNCTION_8_2();
  v10 = *(v0 + *(v9 + 128));
  OUTLINED_FUNCTION_8_2();
  v12 = *(v0 + *(v11 + 136));
  OUTLINED_FUNCTION_8_2();
  v14 = *(*(v13 + 88) + 192);
  OUTLINED_FUNCTION_8_2();
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_78_20();
  return v17();
}

void sub_1DD04872C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v6 = *a2;
  v7 = *(*a2 + 144);
  v12 = a5;
  v11 = a6;
  v8 = *(*(v6 + 88) + 8);
  OUTLINED_FUNCTION_8_2();
  v10 = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_25_38();
  sub_1DD046DA0(&v12, &v11);
}

uint64_t sub_1DD0487F4()
{
  OUTLINED_FUNCTION_27_39();
  v2 = *(v1 + 96);
  v4 = *(v0 + v3[13]);
  v5 = *(v0 + v3[14]);
  v6 = (v0 + v3[15]);
  v7 = *v6;
  v8 = v6[1];
  OUTLINED_FUNCTION_8_2();
  v10 = *(v0 + *(v9 + 128));
  OUTLINED_FUNCTION_8_2();
  v12 = *(v0 + *(v11 + 136));
  OUTLINED_FUNCTION_8_2();
  v14 = *(*(v13 + 88) + 232);
  OUTLINED_FUNCTION_8_2();
  v22 = *(v15 + 80);
  return v20(v16, v17, v18, v19);
}

uint64_t sub_1DD0488E4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 96);
  v5 = *(v0 + *(v4 + 104));
  OUTLINED_FUNCTION_8_2();
  v7 = *(v0 + *(v6 + 112));
  OUTLINED_FUNCTION_8_2();
  v9 = *(*(*(v8 + 88) + 8) + 16);
  OUTLINED_FUNCTION_8_2();
  v11 = *(v10 + 80);
  return v12();
}

uint64_t *sub_1DD048988()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_66();
  v3 = *(v0 + *(v2 + 104));

  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  v6 = *(v0 + *(v5 + 120) + 8);

  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  v9 = *(v8 + 144);
  v10 = *(*(v1 + 88) + 8);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for UnsetRelationshipActivityLogger();
  OUTLINED_FUNCTION_112(v11);
  (*(v12 + 8))(v0 + v9);
  return v0;
}

uint64_t sub_1DD048AEC()
{
  sub_1DD048988();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD048B5C(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[3];

  return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 7);
}

void sub_1DD048BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 80);
  *(a1 + 80) = v4;
  v5 = **(v4 - 8);
  sub_1DD0DCF8C();
}

void sub_1DD048C6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t *sub_1DD048D18(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  a1[4] = a2[4];
  *(a1 + 40) = *(a2 + 40);
  v8 = a1[6];
  a1[6] = a2[6];

  __swift_destroy_boxed_opaque_existential_1Tm(a1 + 7);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 9) = *(a2 + 9);
  a1[11] = a2[11];
  return a1;
}

void sub_1DD0491DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  sub_1DD04785C(a1, *(v1 + 32));
}

uint64_t sub_1DD049230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_58_6(a1, a2, a3);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v333 = &v308 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_33_2();
  v332 = v15;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_33_2();
  v329 = v18;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_33_2();
  v327 = v21;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_33_2();
  v325 = v24;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_33_2();
  v323 = v27;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_33_2();
  v322 = v30;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_33_2();
  v320 = v33;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_33_2();
  v317 = v36;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_33_2();
  v315 = v39;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_33_2();
  v313 = v42;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_33_2();
  v311 = v45;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v46, v47);
  OUTLINED_FUNCTION_33_2();
  v309 = v48;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_33_2();
  v308 = v51;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_33_2();
  v310 = v54;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_33_2();
  v312 = v57;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v58, v59);
  OUTLINED_FUNCTION_33_2();
  v314 = v60;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v61, v62);
  OUTLINED_FUNCTION_33_2();
  v316 = v63;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v64, v65);
  OUTLINED_FUNCTION_33_2();
  v318 = v66;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v67, v68);
  OUTLINED_FUNCTION_33_2();
  v319 = v69;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v70, v71);
  OUTLINED_FUNCTION_33_2();
  v321 = v72;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v73, v74);
  OUTLINED_FUNCTION_33_2();
  v342 = v75;
  OUTLINED_FUNCTION_42_36();
  MEMORY[0x1EEE9AC00](v76, v77);
  OUTLINED_FUNCTION_33_2();
  v340 = v78;
  OUTLINED_FUNCTION_42_36();
  v81 = MEMORY[0x1EEE9AC00](v79, v80);
  v83 = &v308 - v82;
  v84 = *(v81 + 16);
  v366[0] = *v81;
  v366[1] = v84;
  v86 = *v81;
  v85 = *(v81 + 16);
  v366[2] = *(v81 + 32);
  v367 = *(v81 + 48);
  v364[0] = v86;
  v364[1] = v85;
  v364[2] = *(v81 + 32);
  *&v364[3] = *(v81 + 48);
  sub_1DCB17CA0(v87, v363);
  v350 = a4;
  OUTLINED_FUNCTION_77_12();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1DD046A7C(v364, v363, __src);
  OUTLINED_FUNCTION_77_12();
  swift_getAssociatedTypeWitness();
  v331 = type metadata accessor for AnyUnsetRelationshipFlowStrategy();
  v349 = *(v8 + 16);
  v344 = v8 + 16;
  v88 = v83;
  v89 = v83;
  v90 = v4;
  v91 = a3;
  v349(v88, v4, a3);
  v92 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v348 = *(v8 + 80);
  v345 = v92;
  v93 = (v10 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  v330 = v94;
  v95 = v350;
  *(v94 + 16) = v91;
  *(v94 + 24) = v95;
  v96 = *(v8 + 32);
  v347 = v8 + 32;
  v97 = v94 + v92;
  v98 = v91;
  v96(v97, v89, v91);
  v99 = OUTLINED_FUNCTION_2_119(v94 + v93);
  v100 = v340;
  v101 = v90;
  v343 = v90;
  v102 = v90;
  v103 = v98;
  v104 = v349;
  (v349)(v340, v102, v98, v99);
  v105 = OUTLINED_FUNCTION_57_22();
  v328 = v105;
  *(v105 + 16) = v103;
  *(v105 + 24) = v95;
  v106 = v100;
  v107 = v103;
  v96(v105 + v345, v106, v103);
  v341 = v96;
  v108 = OUTLINED_FUNCTION_0_130(v105 + v93);
  v104(v342, v101, v103, v108);
  v337 = type metadata accessor for UnsetRelationshipActivityLogger();
  OUTLINED_FUNCTION_112(v337);
  v110 = *(v109 + 16);
  v338 = v109 + 16;
  v110(v364, __src);
  v336 = v110;
  v339 = v93;
  v111 = OUTLINED_FUNCTION_60_21();
  OUTLINED_FUNCTION_70_16(v111);
  OUTLINED_FUNCTION_79_19();
  (v96)();
  v326 = v111;
  OUTLINED_FUNCTION_2_119(v111 + v93);
  v112 = (v93 + 63) & 0xFFFFFFFFFFFFFFF8;
  memcpy((v111 + v112), v364, 0x60uLL);
  v349(v321, v343, v103);
  AssociatedTypeWitness = type metadata accessor for ParameterResolutionRecord();
  OUTLINED_FUNCTION_112(AssociatedTypeWitness);
  v340 = *(v113 + 16);
  v114 = v113 + 16;
  (v340)(v363, v366);
  v115 = v337;
  (v110)(v363, __src, v337);
  v116 = swift_allocObject();
  v117 = OUTLINED_FUNCTION_70_16(v116);
  OUTLINED_FUNCTION_59_27(v117);
  v118 = v107;
  OUTLINED_FUNCTION_76_18();
  v119();
  v120 = v339;
  v324 = v116;
  OUTLINED_FUNCTION_0_130(v116 + v339);
  v121 = (v116 + v112);
  v122 = v112;
  memcpy(v121, v363, 0x60uLL);
  v123 = v319;
  v124 = v118;
  v349(v319, v343, v118);
  OUTLINED_FUNCTION_51_34();
  v342 = v114;
  v340();
  v125 = v336;
  v336(v362, __src, v115);
  v126 = v122;
  v127 = swift_allocObject();
  v128 = v124;
  v129 = v350;
  *(v127 + 16) = v124;
  *(v127 + 24) = v129;
  v130 = v345;
  v131 = v123;
  v335 = v128;
  v132 = v347;
  v133 = v341;
  (v341)(v127 + v345, v131, v128);
  v321 = v127;
  OUTLINED_FUNCTION_2_119(v127 + v120);
  v134 = (v127 + v126);
  v135 = v126;
  memcpy(v134, v362, 0x60uLL);
  v136 = v318;
  v137 = v128;
  v138 = v349;
  v349(v318, v343, v137);
  OUTLINED_FUNCTION_51_34();
  v340();
  v125(v361, __src, v337);
  v139 = v135;
  v334 = v135;
  v140 = swift_allocObject();
  v141 = v335;
  v142 = v350;
  *(v140 + 16) = v335;
  *(v140 + 24) = v142;
  v143 = v140 + v130;
  v144 = v141;
  v133(v143, v136);
  v145 = v339;
  v319 = v140;
  OUTLINED_FUNCTION_0_130(v140 + v339);
  memcpy((v140 + v139), v361, 0x60uLL);
  v146 = v343;
  v138(v316, v343, v144);
  v147 = OUTLINED_FUNCTION_73_18();
  (v340)(v147);
  v148 = swift_allocObject();
  v318 = v148;
  *(v148 + 16) = v144;
  v149 = v350;
  *(v148 + 24) = v350;
  OUTLINED_FUNCTION_59_27(v148);
  v151 = v150;
  OUTLINED_FUNCTION_76_18();
  v152();
  OUTLINED_FUNCTION_2_119(v148 + v145);
  v153 = v146;
  OUTLINED_FUNCTION_77_12();
  (v349)();
  v154 = v340;
  (v340)(v360, v366, v132);
  v155 = swift_allocObject();
  v316 = v155;
  v156 = v151;
  *(v155 + 16) = v151;
  *(v155 + 24) = v149;
  v157 = v345;
  v158 = v156;
  OUTLINED_FUNCTION_76_18();
  v159();
  v160 = OUTLINED_FUNCTION_0_130(v155 + v145);
  v161 = v312;
  (v349)(v312, v153, v158, v160);
  OUTLINED_FUNCTION_51_34();
  v154();
  v162 = v154;
  v163 = swift_allocObject();
  v314 = v163;
  v164 = v350;
  *(v163 + 16) = v158;
  *(v163 + 24) = v164;
  v165 = v163 + v157;
  v166 = v158;
  v167 = v158;
  v168 = v341;
  (v341)(v165, v161, v166);
  v169 = OUTLINED_FUNCTION_2_119(v163 + v145);
  v170 = v310;
  v171 = v349;
  (v349)(v310, v153, v167, v169);
  OUTLINED_FUNCTION_51_34();
  v172 = v162;
  v162();
  v173 = v339;
  v174 = OUTLINED_FUNCTION_60_21();
  v175 = v335;
  *(v174 + 16) = v335;
  *(v174 + 24) = v164;
  v176 = v174;
  v312 = v174;
  v177 = v170;
  v178 = v175;
  v168(v174 + v345, v177);
  v179 = OUTLINED_FUNCTION_0_130(v176 + v173);
  v171(v308, v153, v178, v179);
  v180 = OUTLINED_FUNCTION_73_18();
  (v172)(v180);
  v181 = v337;
  v182 = v336;
  v336(v360, __src, v337);
  v183 = v334;
  v184 = OUTLINED_FUNCTION_60_21();
  OUTLINED_FUNCTION_70_16(v184);
  v185 = v345;
  v187 = v186;
  OUTLINED_FUNCTION_76_18();
  v188();
  v310 = v184;
  OUTLINED_FUNCTION_2_119(v184 + v339);
  memcpy((v184 + v183), v360, 0x60uLL);
  v189 = v309;
  v190 = v187;
  v349(v309, v343, v187);
  v191 = v340;
  (v340)(v359, v366, v171);
  v182(v359, __src, v181);
  v192 = v334;
  v193 = OUTLINED_FUNCTION_60_21();
  v194 = v350;
  *(v193 + 16) = v190;
  *(v193 + 24) = v194;
  v195 = v193 + v185;
  v196 = v341;
  (v341)(v195, v189, v190);
  v308 = v193;
  OUTLINED_FUNCTION_0_130(v193 + v339);
  memcpy((v193 + v192), v359, 0x60uLL);
  v197 = v311;
  v349(v311, v343, v190);
  OUTLINED_FUNCTION_51_34();
  v191();
  v182(v358, __src, v337);
  v198 = swift_allocObject();
  *(v198 + 16) = v190;
  *(v198 + 24) = v194;
  v199 = v345;
  v200 = v190;
  v196(v198 + v345, v197);
  v201 = v339;
  v309 = v198;
  OUTLINED_FUNCTION_2_119(v198 + v339);
  memcpy((v198 + v192), v358, 0x60uLL);
  v202 = v313;
  v203 = v343;
  v204 = v200;
  v205 = v200;
  v206 = v349;
  v349(v313, v343, v204);
  OUTLINED_FUNCTION_51_34();
  v340();
  v207 = v201;
  v208 = swift_allocObject();
  v311 = v208;
  v209 = v205;
  v210 = v350;
  *(v208 + 16) = v205;
  *(v208 + 24) = v210;
  v211 = v205;
  v212 = v341;
  (v341)(v208 + v199, v202, v211);
  v213 = OUTLINED_FUNCTION_0_130(v208 + v207);
  v214 = v315;
  v206(v315, v203, v209, v213);
  OUTLINED_FUNCTION_62_18();
  v215 = v340;
  v340();
  v216 = swift_allocObject();
  v313 = v216;
  v217 = v350;
  *(v216 + 16) = v335;
  *(v216 + 24) = v217;
  v218 = OUTLINED_FUNCTION_59_27(v216);
  v212(v218, v214);
  v219 = OUTLINED_FUNCTION_2_119(v216 + v207);
  v220 = v335;
  (v349)(v317, v343, v335, v219);
  (v215)(v357, v366, v203);
  v221 = v337;
  v222 = v336;
  v336(v357, __src, v337);
  v223 = v334;
  v224 = OUTLINED_FUNCTION_60_21();
  v225 = v220;
  *(v224 + 16) = v220;
  v226 = v350;
  *(v224 + 24) = v350;
  OUTLINED_FUNCTION_59_27(v224);
  OUTLINED_FUNCTION_74_21();
  v227();
  v228 = v339;
  v315 = v224;
  OUTLINED_FUNCTION_0_130(v224 + v339);
  memcpy((v224 + v223), v357, 0x60uLL);
  OUTLINED_FUNCTION_79_19();
  (v349)();
  OUTLINED_FUNCTION_51_34();
  v229 = v340;
  v340();
  v222(v356, __src, v221);
  v230 = v334;
  v231 = OUTLINED_FUNCTION_60_21();
  *(v231 + 16) = v225;
  *(v231 + 24) = v226;
  OUTLINED_FUNCTION_74_21();
  v232();
  v317 = v231;
  OUTLINED_FUNCTION_2_119(v231 + v228);
  memcpy((v231 + v230), v356, 0x60uLL);
  OUTLINED_FUNCTION_79_19();
  (v349)();
  v233 = AssociatedTypeWitness;
  (v229)(v355, v366, AssociatedTypeWitness);
  v234 = v337;
  v336(v355, __src, v337);
  v235 = swift_allocObject();
  OUTLINED_FUNCTION_70_16(v235);
  OUTLINED_FUNCTION_6_13();
  v236 = v341;
  (v341)();
  v320 = v235;
  OUTLINED_FUNCTION_0_130(v235 + v339);
  memcpy((v235 + v230), v355, 0x60uLL);
  v349(v323, v343, v225);
  (v340)(v354, v366, v233);
  v336(v354, __src, v234);
  v237 = swift_allocObject();
  OUTLINED_FUNCTION_70_16(v237);
  v238 = v345;
  OUTLINED_FUNCTION_79_19();
  v236();
  v239 = v339;
  v322 = v237;
  OUTLINED_FUNCTION_2_119(v237 + v339);
  memcpy((v237 + v230), v354, 0x60uLL);
  v240 = v325;
  OUTLINED_FUNCTION_6_13();
  v241 = v349;
  (v349)();
  v242 = AssociatedTypeWitness;
  (v340)(v353, v366, AssociatedTypeWitness);
  v243 = OUTLINED_FUNCTION_57_22();
  v244 = v350;
  *(v243 + 16) = v225;
  *(v243 + 24) = v244;
  v245 = v243 + v238;
  v246 = v243;
  v323 = v243;
  v247 = v341;
  (v341)(v245, v240, v225);
  OUTLINED_FUNCTION_0_130(v246 + v239);
  v248 = v327;
  OUTLINED_FUNCTION_6_13();
  v241();
  v249 = v340;
  (v340)(v353, v366, v242);
  v336(v353, __src, v337);
  v250 = v334;
  v251 = swift_allocObject();
  v252 = v225;
  v253 = v350;
  *(v251 + 16) = v225;
  *(v251 + 24) = v253;
  v254 = v345;
  v255 = v251;
  v247(v251 + v345, v248, v252);
  v338 = v255;
  OUTLINED_FUNCTION_2_119(v255 + v339);
  v256 = (v255 + v250);
  v257 = v250;
  memcpy(v256, v353, 0x60uLL);
  v258 = v329;
  v259 = v335;
  v260 = v349;
  v349(v329, v343, v335);
  OUTLINED_FUNCTION_51_34();
  v249();
  memcpy(v352, __src, sizeof(v352));
  v261 = v257;
  v262 = swift_allocObject();
  v263 = v259;
  v264 = v350;
  *(v262 + 16) = v259;
  *(v262 + 24) = v264;
  v265 = v262 + v254;
  v266 = v341;
  (v341)(v265, v258, v259);
  v267 = v339;
  v337 = v262;
  OUTLINED_FUNCTION_0_130(v262 + v339);
  memcpy((v262 + v261), v352, 0x60uLL);
  v268 = v332;
  v269 = v343;
  OUTLINED_FUNCTION_6_13();
  v260();
  OUTLINED_FUNCTION_62_18();
  v270 = v340;
  v340();
  v271 = OUTLINED_FUNCTION_57_22();
  *(v271 + 16) = v335;
  *(v271 + 24) = v264;
  v272 = OUTLINED_FUNCTION_59_27(v271);
  v274 = v273;
  v266(v272, v268);
  v275 = OUTLINED_FUNCTION_2_119(v271 + v267);
  v276 = v333;
  v277 = v269;
  v278 = v274;
  (v349)(v333, v277, v274, v275);
  (v270)(&v351, v366, v263);
  v279 = OUTLINED_FUNCTION_57_22();
  v280 = v350;
  *(v279 + 16) = v278;
  *(v279 + 24) = v280;
  v281 = OUTLINED_FUNCTION_59_27(v279);
  (v266)(v281, v276, v278);
  OUTLINED_FUNCTION_0_130(v279 + v267);
  swift_getDynamicType();
  *(&v307 + 1) = v271;
  *&v307 = &unk_1DD10C658;
  *&v306 = &unk_1DD10C648;
  *(&v306 + 1) = v337;
  *&v305 = &unk_1DD10C638;
  *(&v305 + 1) = v338;
  *&v304 = &unk_1DD10C628;
  *(&v304 + 1) = v323;
  *&v303 = &unk_1DD10C618;
  *(&v303 + 1) = v322;
  *&v302 = &unk_1DD10C608;
  *(&v302 + 1) = v320;
  *&v301 = &unk_1DD10C5F8;
  *(&v301 + 1) = v317;
  *&v300 = &unk_1DD10C5E8;
  *(&v300 + 1) = v315;
  *&v299 = &unk_1DD10C5D8;
  *(&v299 + 1) = v313;
  *&v298 = sub_1DD04CB48;
  *(&v298 + 1) = v311;
  *&v297 = &unk_1DD10C5C8;
  *(&v297 + 1) = v309;
  *&v296 = &unk_1DD10C5B8;
  *(&v296 + 1) = v308;
  *&v295 = &unk_1DD10C5A8;
  *(&v295 + 1) = v310;
  *&v294 = &unk_1DD10C598;
  *(&v294 + 1) = v312;
  *&v293 = &unk_1DD10C588;
  *(&v293 + 1) = v314;
  *&v292 = sub_1DD04B900;
  *(&v292 + 1) = v316;
  *&v291 = sub_1DD04B878;
  *(&v291 + 1) = v318;
  *&v290 = &unk_1DD10C578;
  *(&v290 + 1) = v319;
  *&v289 = &unk_1DD10C568;
  *(&v289 + 1) = v321;
  sub_1DD036538(sub_1DD04A834, v330, &unk_1DD10C538, v328, &unk_1DD10C548, v326, &unk_1DD10C558, v324, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v282, &unk_1DD10C668);
  v284 = v283;
  OUTLINED_FUNCTION_62_18();
  v270();
  v285 = OUTLINED_FUNCTION_63_18();
  (v270)(v285);
  v286 = OUTLINED_FUNCTION_63_18();
  (v270)(v286);
  v287 = OUTLINED_FUNCTION_63_18();
  (v270)(v287);
  return v284;
}

uint64_t sub_1DD04A834(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_58_6(a1, a2, *(v2 + 16));
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_40_38();
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_9_79();
  return (*(v9 + 80))(v8);
}

uint64_t sub_1DD04A8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 + 16);
  *(v6 + 16) = *a4;
  *(v6 + 32) = v11;
  *(v6 + 48) = *(a4 + 32);
  *(v6 + 64) = *(a4 + 48);
  v12 = *(a6 + 88);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 72) = v14;
  *v14 = v6;
  v14[1] = sub_1DD04AA04;

  return v16(a1, a2, v6 + 16, a5, a6);
}

uint64_t sub_1DD04AA04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_1DD04AB1C()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_7_85();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_20_40();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_51(v7);
  v9 = OUTLINED_FUNCTION_18_52();

  return sub_1DD04A8B0(v9, v10, v11, v12, v0, v1);
}

uint64_t sub_1DD04ABF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v12 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v12;
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = *(a4 + 48);
  *(v7 + 72) = a5;
  v13 = *(a7 + 96);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 96) = v15;
  *v15 = v7;
  v15[1] = sub_1DD04AD50;

  return v17(a1, a2, v7 + 16, a6, a7);
}

uint64_t sub_1DD04AD50()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD04AE48()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_69_9();
  swift_getAssociatedTypeWitness();
  v0 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_71_19(v0, v1, v2, v3, v4, v5, v6, v7, *v8, *&v8[4], 21, 54);
}

uint64_t sub_1DD04AECC()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_7_85();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_87();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_141(v5);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04ABF8(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD04AF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v12 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v12;
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = *(a4 + 48);
  *(v7 + 72) = a5;
  v13 = *(a7 + 104);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 96) = v15;
  *v15 = v7;
  v15[1] = sub_1DD04B0E4;

  return v17(a1, a2, v7 + 16, a6, a7);
}

uint64_t sub_1DD04B0E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD04B1DC()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_7_85();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_87();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_141(v5);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04AF8C(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD04B29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v12 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v12;
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = *(a4 + 48);
  *(v7 + 72) = a5;
  v13 = *(a7 + 112);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 96) = v15;
  *v15 = v7;
  v15[1] = sub_1DD04B0E4;

  return v17(a1, a2, v7 + 16, a6, a7);
}

uint64_t sub_1DD04B3F4()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_7_85();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_87();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_141(v5);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04B29C(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD04B4B4(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  *(v11 + 160) = a6;
  *(v11 + 168) = a7;
  *(v11 + 152) = a5;
  memcpy((v11 + 16), a2, 0x50uLL);
  *(v11 + 144) = *(a4 + 48);
  v13 = *(a4 + 32);
  *(v11 + 112) = *(a4 + 16);
  *(v11 + 128) = v13;
  *(v11 + 96) = *a4;
  v14 = *(a7 + 120);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v11 + 176) = v16;
  *v16 = v11;
  v16[1] = sub_1DD04B620;

  return v18(a1, v11 + 16, v11 + 96, a6, a7);
}

uint64_t sub_1DD04B620()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD04B718()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  swift_getAssociatedTypeWitness();
  v4 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_71_19(v4, v5, v6, v7, v8, v9, v10, v11, *v12, *&v12[4], 6, 56);
}

uint64_t sub_1DD04B7B8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_7_85();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_87();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_141(v5);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04B4B4(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD04B878()
{
  v1 = *(v0 + 24);
  v2 = *(*(*(v0 + 16) - 8) + 80);
  OUTLINED_FUNCTION_40_38();
  v4 = *(v3 + 64);
  v5 = OUTLINED_FUNCTION_9_79();
  return (*(v6 + 128))(&v8, v5);
}

uint64_t sub_1DD04B900(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_58_6(a1, a2, *(v2 + 16));
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_40_38();
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_9_79();
  return (*(v9 + 136))(v8);
}

uint64_t sub_1DD04B97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 88) = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  *(v7 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  *(v7 + 104) = v15;
  *(v7 + 64) = *(a5 + 48);
  v16 = *(a5 + 32);
  *(v7 + 32) = *(a5 + 16);
  *(v7 + 48) = v16;
  *(v7 + 16) = *a5;
  v17 = *(a7 + 144);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v7 + 112) = v19;
  *v19 = v7;
  v19[1] = sub_1DD04BB54;

  return v21(v15, a3, v7 + 16, a6, a7);
}

uint64_t sub_1DD04BB54()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD04BC4C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(AssociatedConformanceWitness + 16))(v4, AssociatedConformanceWitness);
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1DD04BD18()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1DD04BD78()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_119();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_15_67();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_33_29();
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_31_32(v5);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04B97C(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DD04BE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  v13 = *(a3 + 24);
  v14 = *(a3 + 32);
  v15 = *(a3 + 40);
  *(v11 + 72) = *a3;
  *(v11 + 80) = *(a3 + 8);
  *(v11 + 96) = v13;
  *(v11 + 104) = v14;
  *(v11 + 112) = v15;
  v16 = *(a5 + 16);
  *(v11 + 16) = *a5;
  *(v11 + 32) = v16;
  *(v11 + 48) = *(a5 + 32);
  *(v11 + 64) = *(a5 + 48);
  v17 = *(a7 + 152);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v11 + 120) = v19;
  *v19 = v11;
  v19[1] = sub_1DD04BFE4;

  return v21(a1, a2, v11 + 72, v11 + 16, a6, a7);
}

uint64_t sub_1DD04BFE4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_1DD04C114()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_119();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_15_67();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_33_29();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_31_32(v5);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04BE54(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD04C1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v10 + 128) = a6;
  *(v10 + 136) = a7;
  *(v10 + 120) = a5;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  *(v10 + 72) = *a2;
  *(v10 + 80) = *(a2 + 8);
  *(v10 + 96) = v12;
  *(v10 + 104) = v13;
  *(v10 + 112) = v14;
  v15 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v15;
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = *(a4 + 48);
  v16 = *(a7 + 160);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v10 + 144) = v18;
  *v18 = v10;
  v18[1] = sub_1DD04C368;

  return v20(a1, v10 + 72, v10 + 16, a6, a7);
}

uint64_t sub_1DD04C368()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD04C460()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_7_85();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_87();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_141(v5);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04C1E0(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD04C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v10 + 128) = a6;
  *(v10 + 136) = a7;
  *(v10 + 120) = a5;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  *(v10 + 72) = *a2;
  *(v10 + 80) = *(a2 + 8);
  *(v10 + 96) = v12;
  *(v10 + 104) = v13;
  *(v10 + 112) = v14;
  v15 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v15;
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = *(a4 + 48);
  v16 = *(a7 + 168);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v10 + 144) = v18;
  *v18 = v10;
  v18[1] = sub_1DD04C6A8;

  return v20(a1, v10 + 72, v10 + 16, a6, a7);
}

uint64_t sub_1DD04C6A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD04C7A0()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  swift_getAssociatedTypeWitness();
  v4 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_71_19(v4, v5, v6, v7, v8, v9, v10, v11, *v12, *&v12[4], 20, 54);
}

uint64_t sub_1DD04C840()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_7_85();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_87();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_141(v5);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04C520(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD04C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v10 + 128) = a6;
  *(v10 + 136) = a7;
  *(v10 + 120) = a5;
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  *(v10 + 72) = *a2;
  *(v10 + 80) = *(a2 + 8);
  *(v10 + 96) = v12;
  *(v10 + 104) = v13;
  *(v10 + 112) = v14;
  v15 = *(a4 + 16);
  *(v10 + 16) = *a4;
  *(v10 + 32) = v15;
  *(v10 + 48) = *(a4 + 32);
  *(v10 + 64) = *(a4 + 48);
  v16 = *(a7 + 176);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v10 + 144) = v18;
  *v18 = v10;
  v18[1] = sub_1DD04C368;

  return v20(a1, v10 + 72, v10 + 16, a6, a7);
}

uint64_t sub_1DD04CA88()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_7_85();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_87();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_141(v5);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04C900(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD04CB48(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_58_6(a1, a2, *(v2 + 16));
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_40_38();
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_9_79();
  return (*(v9 + 184))(v8);
}

uint64_t sub_1DD04CBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 + 16);
  *(v6 + 16) = *a4;
  *(v6 + 32) = v11;
  *(v6 + 48) = *(a4 + 32);
  *(v6 + 64) = *(a4 + 48);
  v12 = *(a6 + 192);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 72) = v14;
  *v14 = v6;
  v14[1] = sub_1DD04CD18;

  return v16(a1, a2, v6 + 16, a5, a6);
}

uint64_t sub_1DD04CD18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v6 + 8);

    return v12();
  }
}

uint64_t sub_1DD04CE30()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_7_85();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_20_40();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_51(v7);
  v9 = OUTLINED_FUNCTION_18_52();

  return sub_1DD04CBC4(v9, v10, v11, v12, v0, v1);
}

uint64_t sub_1DD04CF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  v14 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v14;
  *(v8 + 48) = *(a5 + 32);
  *(v8 + 64) = *(a5 + 48);
  *(v8 + 72) = a6;
  v15 = *(a8 + 200);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v8 + 96) = v17;
  *v17 = v8;
  v17[1] = sub_1DD04D074;

  return v19(a1, a2, a3, v8 + 16, a7, a8);
}

uint64_t sub_1DD04D074()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD04D16C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_69_9();
  swift_getAssociatedTypeWitness();
  v0 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_71_19(v0, v1, v2, v3, v4, v5, v6, v7, *v8, *&v8[4], 22, 57);
}

uint64_t sub_1DD04D1F0()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_4_119();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_15_67();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29_36();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_8_82(v5);
  OUTLINED_FUNCTION_117();

  return sub_1DD04CF0C(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DD04D2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  v14 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v14;
  *(v8 + 48) = *(a5 + 32);
  *(v8 + 64) = *(a5 + 48);
  *(v8 + 72) = a6;
  v15 = *(a8 + 208);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v8 + 96) = v17;
  *v17 = v8;
  v17[1] = sub_1DD04D418;

  return v19(a1, a2, a3, v8 + 16, a7, a8);
}

uint64_t sub_1DD04D418()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD04D510()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_4_119();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_15_67();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29_36();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_8_82(v5);
  OUTLINED_FUNCTION_117();

  return sub_1DD04D2B0(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DD04D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  v14 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v14;
  *(v8 + 48) = *(a5 + 32);
  *(v8 + 64) = *(a5 + 48);
  *(v8 + 72) = a6;
  v15 = *(a8 + 216);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v8 + 96) = v17;
  *v17 = v8;
  v17[1] = sub_1DD04D418;

  return v19(a1, a2, a3, v8 + 16, a7, a8);
}

uint64_t sub_1DD04D738()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_4_119();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_15_67();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29_36();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_8_82(v5);
  OUTLINED_FUNCTION_117();

  return sub_1DD04D5D0(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DD04D7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  v14 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v14;
  *(v8 + 48) = *(a5 + 32);
  *(v8 + 64) = *(a5 + 48);
  *(v8 + 72) = a6;
  v15 = *(a8 + 224);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v8 + 96) = v17;
  *v17 = v8;
  v17[1] = sub_1DD04D960;

  return v19(a1, a2, a3, v8 + 16, a7, a8);
}

uint64_t sub_1DD04D960()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD04DA58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_69_9();
  swift_getAssociatedTypeWitness();
  v0 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_71_19(v0, v1, v2, v3, v4, v5, v6, v7, *v8, *&v8[4], 12, 57);
}

uint64_t sub_1DD04DADC()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_4_119();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_15_67();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29_36();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_8_82(v5);
  OUTLINED_FUNCTION_117();

  return sub_1DD04D7F8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DD04DB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a5 + 16);
  *(v7 + 16) = *a5;
  *(v7 + 32) = v13;
  *(v7 + 48) = *(a5 + 32);
  *(v7 + 64) = *(a5 + 48);
  v14 = *(a7 + 232);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 72) = v16;
  *v16 = v7;
  v16[1] = sub_1DD04CD18;

  return v18(a1, a2, a3, v7 + 16, a6, a7);
}

uint64_t sub_1DD04DD00()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_4_119();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_15_67();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_33_29();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_31_32(v5);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04DB9C(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD04DDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v12 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v12;
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = *(a4 + 48);
  *(v7 + 72) = a5;
  v13 = *(a7 + 56);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 96) = v15;
  *v15 = v7;
  v15[1] = sub_1DD04DF24;

  return v17(a1, a2, v7 + 16, a6, a7);
}

uint64_t sub_1DD04DF24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD04E01C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_69_9();
  swift_getAssociatedTypeWitness();
  v0 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_71_19(v0, v1, v2, v3, v4, v5, v6, v7, *v8, *&v8[4], 6, 64);
}

uint64_t sub_1DD04E0B8()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_7_85();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_87();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_141(v5);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04DDCC(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD04E178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  v12 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v12;
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = *(a4 + 48);
  *(v7 + 72) = a5;
  v13 = *(a7 + 64);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 96) = v15;
  *v15 = v7;
  v15[1] = sub_1DD04E2D0;

  return v17(a1, a2, v7 + 16, a6, a7);
}

uint64_t sub_1DD04E2D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD04E3C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_69_9();
  swift_getAssociatedTypeWitness();
  v0 = OUTLINED_FUNCTION_25_38();
  OUTLINED_FUNCTION_71_19(v0, v1, v2, v3, v4, v5, v6, v7, *v8, *&v8[4], 6, 55);
}

uint64_t objectdestroy_48Tm()
{
  OUTLINED_FUNCTION_112(*(v0 + 16));
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 63) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v5 = (v0 + v3);
  v6 = *v5;

  v7 = v5[3];

  v8 = *(v0 + v4);

  v9 = *(v0 + v4 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4 + 56));

  return swift_deallocObject();
}

uint64_t sub_1DD04E52C()
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_7_85();
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_6_87();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_1_141(v5);
  OUTLINED_FUNCTION_125_0();

  return sub_1DD04E178(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1DD04E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 16);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v9;
  *(v5 + 48) = *(a3 + 32);
  *(v5 + 64) = *(a3 + 48);
  v10 = *(a5 + 72);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 72) = v12;
  *v12 = v5;
  v12[1] = sub_1DD04CD18;

  return v14(a1, v5 + 16, a4, a5);
}

uint64_t sub_1DD04E738(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = (*(*(v3 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v8[1] = sub_1DCF9464C;

  return sub_1DD04E5EC(a1, v1 + v5, v1 + v6, v3, v4);
}

uint64_t sub_1DD04E844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v12 = a4[1];
  v13 = *(a6 + 240);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DCC467A0;

  return v17(a1, a2, v11, v12, a5, a6);
}

uint64_t objectdestroy_41Tm_0()
{
  OUTLINED_FUNCTION_112(*(v0 + 16));
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3);

  v5 = *(v0 + v3 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DD04EA3C()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_127();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_7_85();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_20_40();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_19_51(v7);
  v9 = OUTLINED_FUNCTION_18_52();

  return sub_1DD04E844(v9, v10, v11, v12, v0, v1);
}

uint64_t sub_1DD04EB54()
{
  v16 = *MEMORY[0x1E69E9840];
  memcpy(__dst, v0, sizeof(__dst));
  if (qword_1ECCA1250 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  sub_1DCCE6BD4();
  v1 = sub_1DD0DAADC();
  v3 = v2;
  v4 = objc_opt_self();
  v5 = sub_1DD0DAEFC();
  v14[0] = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:v14];

  if (!v6)
  {
    v9 = v14[0];
    v8 = sub_1DD0DAE0C();

    swift_willThrow();
LABEL_8:
    sub_1DCB21A14(v1, v3);
    goto LABEL_9;
  }

  v7 = v14[0];
  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DCC6D7A0();
    v8 = swift_allocError();
    *v10 = 0xD00000000000002ALL;
    v10[1] = 0x80000001DD115E40;
    goto LABEL_8;
  }

  sub_1DCB21A14(v1, v3);
  v8 = v13;
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void UnsetRelationshipResponses.init()(uint64_t *a1@<X8>)
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE57D40;
  a1[3] = type metadata accessor for CATTemplateExecutor();
  a1[4] = &off_1F58563F0;
  *a1 = v2;

  sub_1DD0DCF8C();
}

uint64_t UnsetRelationshipResponses.noMeCard(relationship:catGlobalOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD04EDE4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v4;
  v5 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_5_122(v5);
}

uint64_t UnsetRelationshipResponses.contactNotFound(catGlobalOverrides:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD04EEF0()
{
  OUTLINED_FUNCTION_42();
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 32) = sub_1DD0DDE9C();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1DD04EFC8;
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v5, v6, v7, v8);
}

uint64_t sub_1DD04EFC8()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t UnsetRelationshipResponses.savedRelationship(person:relationship:catGlobalOverrides:)()
{
  OUTLINED_FUNCTION_42();
  v7 = *MEMORY[0x1E69E9840];
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DD04F170, 0, 0);
}

uint64_t sub_1DD04F170()
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = v0[45];
  v2 = sub_1DCC6E534(v1);
  v46 = v3;
  v47 = v2;
  sub_1DCC6E54C(v1);
  sub_1DCC6E540(v1);
  sub_1DCC6E558(v1);
  v4 = [v1 fullName];
  if (v4)
  {
    v12 = v4;
    sub_1DD0DDFBC();
  }

  OUTLINED_FUNCTION_3_128(v4, v5, v6, v7, v8, v9, v10, v11, v45, v46, v47);
  if (qword_1ECCA1250 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  sub_1DCCE6BD4();
  sub_1DD0DAADC();
  OUTLINED_FUNCTION_17_54();
  objc_opt_self();
  OUTLINED_FUNCTION_14_2();
  v13 = sub_1DD0DAEFC();
  v0[43] = 0;
  v14 = OUTLINED_FUNCTION_16_68(v13, sel_JSONObjectWithData_options_error_);

  v15 = v0[43];
  if (!v14)
  {
    v36 = v15;
    v17 = sub_1DD0DAE0C();

    swift_willThrow();
    goto LABEL_12;
  }

  v16 = v15;
  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  v17 = MEMORY[0x1E69E7CA0];
  if ((OUTLINED_FUNCTION_15_68() & 1) == 0)
  {
    sub_1DCC6D7A0();
    v37 = swift_allocError();
    OUTLINED_FUNCTION_14_63(v37, v38);
LABEL_12:
    v39 = OUTLINED_FUNCTION_14_2();
    sub_1DCB21A14(v39, v40);
    v0[42] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    swift_willThrowTypedImpl();
    v41 = v0[1];
    v42 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_73();

    __asm { BRAA            X1, X16 }
  }

  v18 = v0[48];
  v19 = v0[46];
  v20 = OUTLINED_FUNCTION_14_2();
  sub_1DCB21A14(v20, v21);
  v22 = v0[44];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  v24 = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E32B0);
  OUTLINED_FUNCTION_4_120(v24, v25);
  inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  inited[6].n128_u64[0] = v22;
  v0[49] = sub_1DD0DDE9C();
  v26 = *__swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v27 = swift_task_alloc();
  v0[50] = v27;
  *v27 = v0;
  v27[1] = sub_1DD04F508;
  v28 = v0[47];
  v29 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_73();

  return sub_1DCC6FD30(v30, v31, v32, v33);
}

uint64_t sub_1DD04F508(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  v8 = *(v4 + 392);

  v10 = *(v6 + 8);
  v11 = *MEMORY[0x1E69E9840];
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t UnsetRelationshipResponses.unsupportedPlatform(relationship:catGlobalOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD04F694()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v4;
  v5 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_5_122(v5);
}

uint64_t UnsetRelationshipResponses.promptForPerson(relationship:catGlobalOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD04F7A4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v4;
  v5 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_5_122(v5);
}

uint64_t sub_1DD04F89C()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t UnsetRelationshipResponses.promptToDisambiguationContacts(catGlobalOverrides:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD04F9C8()
{
  OUTLINED_FUNCTION_42();
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 32) = sub_1DD0DDE9C();
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1DD04FF4C;
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v5, v6, v7, v8);
}

uint64_t UnsetRelationshipResponses.processConfirmToSave(relationship:contact:catGlobalOverrides:)()
{
  OUTLINED_FUNCTION_42();
  v7 = *MEMORY[0x1E69E9840];
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DD04FB30, 0, 0);
}

uint64_t sub_1DD04FB30()
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = v0[46];
  v2 = sub_1DCC6E534(v1);
  v46 = v3;
  v47 = v2;
  sub_1DCC6E54C(v1);
  sub_1DCC6E540(v1);
  sub_1DCC6E558(v1);
  v4 = [v1 fullName];
  if (v4)
  {
    v12 = v4;
    sub_1DD0DDFBC();
  }

  OUTLINED_FUNCTION_3_128(v4, v5, v6, v7, v8, v9, v10, v11, v45, v46, v47);
  if (qword_1ECCA1250 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  sub_1DCCE6BD4();
  sub_1DD0DAADC();
  OUTLINED_FUNCTION_17_54();
  objc_opt_self();
  OUTLINED_FUNCTION_14_2();
  v13 = sub_1DD0DAEFC();
  v0[43] = 0;
  v14 = OUTLINED_FUNCTION_16_68(v13, sel_JSONObjectWithData_options_error_);

  v15 = v0[43];
  if (!v14)
  {
    v36 = v15;
    v17 = sub_1DD0DAE0C();

    swift_willThrow();
    goto LABEL_12;
  }

  v16 = v15;
  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  v17 = MEMORY[0x1E69E7CA0];
  if ((OUTLINED_FUNCTION_15_68() & 1) == 0)
  {
    sub_1DCC6D7A0();
    v37 = swift_allocError();
    OUTLINED_FUNCTION_14_63(v37, v38);
LABEL_12:
    v39 = OUTLINED_FUNCTION_14_2();
    sub_1DCB21A14(v39, v40);
    v0[42] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    swift_willThrowTypedImpl();
    v41 = v0[1];
    v42 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_73();

    __asm { BRAA            X1, X16 }
  }

  v18 = v0[48];
  v19 = v0[45];
  v20 = OUTLINED_FUNCTION_14_2();
  sub_1DCB21A14(v20, v21);
  v22 = v0[44];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  v24 = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E32B0);
  OUTLINED_FUNCTION_4_120(v24, v25);
  inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  inited[6].n128_u64[0] = v22;
  v0[49] = sub_1DD0DDE9C();
  v26 = *__swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v27 = swift_task_alloc();
  v0[50] = v27;
  *v27 = v0;
  v27[1] = sub_1DD04FED8;
  v28 = v0[47];
  v29 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_73();

  return sub_1DCC6FD30(v30, v31, v32, v33);
}

uint64_t sub_1DD04FED8()
{
  OUTLINED_FUNCTION_42();
  v3 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E69E9840];

  return sub_1DD04F508(v0);
}

void static UnsetRelationshipTemplates.processConfirmToSave(relationship:contact:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RelationshipLabel();
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_28_40();
  v17 = v15 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_24_42(v23);
  sub_1DCC08BCC(a1, v17);
  v24 = *(v11 + 80);
  OUTLINED_FUNCTION_43_28();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1DCCC3844(v17, v25 + v11);
  *(v25 + v13) = a2;
  v26 = (v25 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v26 = a3;
  v26[1] = a4;
  v27 = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD050104()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  result = sub_1DD0DDE9C();
  qword_1ECCAC940 = result;
  return result;
}

uint64_t sub_1DD0501BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DD05025C;

  return static UnsetRelationshipTemplates.noMeCard(relationship:)((v6 + 12), a4);
}

uint64_t sub_1DD05025C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t static UnsetRelationshipTemplates.noMeCard(relationship:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD050368()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v3;
  sub_1DD0DDE9C();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v4 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_23_39(v4, v4, &off_1F58563F0);
}

uint64_t sub_1DD0504DC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[18];
  v7 = v4[17];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DD050634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_24_42(v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD0506EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DD05070C, 0, 0);
}

void sub_1DD05070C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[25] = v2;
  v0[26] = &off_1F58563F0;
  v0[22] = v1;
  OUTLINED_FUNCTION_42_37(v0 + 22, v2);
}

uint64_t sub_1DD050864()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[32] = v0;

  v10 = v3[29];
  v9 = v3[30];

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD050980()
{
  v6 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  OUTLINED_FUNCTION_34_4();
  v1 = v0[27];
  v2 = v0[28];
  memcpy(v5, v0 + 2, 0x49uLL);
  v1(v5);
  sub_1DD01FB4C((v0 + 2));
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DD050A10()
{
  OUTLINED_FUNCTION_51_4();
  v7 = v0;
  v1 = *(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  *(v0 + 264) = 1;
  *(v0 + 16) = v1;
  *(v0 + 88) = 1;
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  memcpy(__dst, (v0 + 16), 0x49uLL);
  v3(__dst);
  sub_1DD01FB4C(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DD050AC4()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  OUTLINED_FUNCTION_42_37(v0 + 2, v2);
}

uint64_t sub_1DD050C1C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void static UnsetRelationshipTemplates.savedRelationship(person:relationship:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RelationshipLabel();
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_28_40();
  v17 = v15 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_24_42(v23);
  sub_1DCC08BCC(a2, v17);
  v24 = *(v11 + 80);
  OUTLINED_FUNCTION_43_28();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a1;
  sub_1DCCC3844(v17, v25 + v11);
  v26 = (v25 + v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD050EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v8 = swift_task_alloc();
  v7[24] = v8;
  *v8 = v7;
  v8[1] = sub_1DD050F60;

  return static UnsetRelationshipTemplates.savedRelationship(person:relationship:)();
}

uint64_t sub_1DD050F60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD051058()
{
  v6 = v0;
  OUTLINED_FUNCTION_34_4();
  v1 = v0[22];
  v2 = v0[23];
  memcpy(v5, v0 + 2, 0x49uLL);
  v1(v5);
  sub_1DD01FB4C((v0 + 2));
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DD0510E0()
{
  OUTLINED_FUNCTION_51_4();
  v7 = v0;
  v1 = *(v0 + 200);
  *(v0 + 208) = 1;
  *(v0 + 16) = v1;
  *(v0 + 88) = 1;
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  memcpy(__dst, (v0 + 16), 0x49uLL);
  v3(__dst);
  sub_1DD01FB4C(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t static UnsetRelationshipTemplates.savedRelationship(person:relationship:)()
{
  OUTLINED_FUNCTION_42();
  v9 = *MEMORY[0x1E69E9840];
  v0[50] = v1;
  v0[51] = v2;
  v0[49] = v3;
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DD051204()
{
  OUTLINED_FUNCTION_51_4();
  v39 = *MEMORY[0x1E69E9840];
  v1 = v0[50];
  v2 = sub_1DCC6E534(v1);
  v37 = v3;
  v38 = v2;
  sub_1DCC6E54C(v1);
  sub_1DCC6E540(v1);
  sub_1DCC6E558(v1);
  v4 = [v1 fullName];
  if (v4)
  {
    v12 = v4;
    sub_1DD0DDFBC();
  }

  OUTLINED_FUNCTION_3_128(v4, v5, v6, v7, v8, v9, v10, v11, v36, v37, v38);
  if (qword_1ECCA1250 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  sub_1DCCE6BD4();
  sub_1DD0DAADC();
  sub_1DCCE6C28((v0 + 18));
  objc_opt_self();
  OUTLINED_FUNCTION_33_1();
  v16 = sub_1DD0DAEFC();
  v0[47] = 0;
  OUTLINED_FUNCTION_19_52();
  v19 = [v17 v18];

  v20 = v0[47];
  if (v19)
  {
    v21 = v20;
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
    v22 = OUTLINED_FUNCTION_33_30();
    v23 = OUTLINED_FUNCTION_33_1();
    sub_1DCB21A14(v23, v24);
    if (v22)
    {
      v25 = v0[51];
      v26 = v0[48];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
      inited = swift_initStackObject();
      v28 = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E32B0);
      OUTLINED_FUNCTION_21_54(v28, v29, MEMORY[0x1E69E6158]);
      v0[52] = sub_1DD0DDE9C();
      if (qword_1EDE48CE8 != -1)
      {
        OUTLINED_FUNCTION_1_7();
      }

      v30 = qword_1EDE57D40;
      v31 = type metadata accessor for CATTemplateExecutor();
      v0[41] = v31;
      v0[42] = &off_1F58563F0;
      v0[38] = v30;
      __swift_project_boxed_opaque_existential_1(v0 + 38, v31);
      sub_1DD0DCF8C();
    }
  }

  else
  {
    v32 = v20;
    v33 = sub_1DD0DAE0C();

    swift_willThrow();
    v34 = OUTLINED_FUNCTION_33_1();
    sub_1DCB21A14(v34, v35);
  }

  sub_1DD053134();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_29();
  v13 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DD0515F0()
{
  OUTLINED_FUNCTION_33();
  v13 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v2[54];
  *v4 = *v1;
  *(v3 + 440) = v0;

  v6 = v2[53];
  v7 = v2[52];

  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD05177C()
{
  OUTLINED_FUNCTION_42();
  v4 = *MEMORY[0x1E69E9840];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));
  OUTLINED_FUNCTION_29();
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t sub_1DD051804()
{
  OUTLINED_FUNCTION_42();
  v5 = *MEMORY[0x1E69E9840];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));
  v1 = *(v0 + 440);
  OUTLINED_FUNCTION_29();
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

void sub_1DD0518AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RelationshipLabel();
  v7 = OUTLINED_FUNCTION_99(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  OUTLINED_FUNCTION_28_40();
  v15 = v13 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v27 - v21;
  v23 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  sub_1DCC08BCC(a1, v15);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1DCCC3844(v15, v25 + v24);
  v26 = (v25 + ((v11 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = a2;
  v26[1] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DD051A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DD05025C;

  return static UnsetRelationshipTemplates.unsupportedPlatform(relationship:)((v6 + 12), a4);
}

uint64_t static UnsetRelationshipTemplates.unsupportedPlatform(relationship:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD051AE8()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v3;
  sub_1DD0DDE9C();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v4 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_23_39(v4, v4, &off_1F58563F0);
}

uint64_t sub_1DD051C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DD05025C;

  return static UnsetRelationshipTemplates.promptForPerson(relationship:)((v6 + 12), a4);
}

uint64_t sub_1DD051CFC()
{
  OUTLINED_FUNCTION_41();
  v0 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_99(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_37_3(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_88(v5);

  return sub_1DD051C5C(v7, v8, v9, v10, v11, v12);
}

uint64_t static UnsetRelationshipTemplates.promptForPerson(relationship:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD051DFC()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7948, &qword_1DD0F9840);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E07C0);
  inited[3].n128_u64[1] = v3;
  sub_1DD0DDE9C();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v4 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_23_39(v4, v4, &off_1F58563F0);
}

uint64_t sub_1DD051F70()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[19];
  v6 = v4[18];
  v7 = v4[17];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD0520A8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DD052104()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 160);

  return v1();
}

uint64_t sub_1DD052160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = a5;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DD052174()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[25] = v2;
  v0[26] = &off_1F58563F0;
  v0[22] = v1;
  OUTLINED_FUNCTION_42_37(v0 + 22, v2);
}

uint64_t sub_1DD0522CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[32] = v0;

  v10 = v3[29];
  v9 = v3[30];

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1DD0523FC()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  OUTLINED_FUNCTION_42_37(v0 + 2, v2);
}

uint64_t sub_1DD052554()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v10 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD05268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v8 = swift_task_alloc();
  v7[24] = v8;
  *v8 = v7;
  v8[1] = sub_1DD05025C;

  return static UnsetRelationshipTemplates.processConfirmToSave(relationship:contact:)();
}

uint64_t sub_1DD052734()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_99(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v9);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + v10);
  v15 = *(v0 + v10 + 8);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1DCB4AE1C;

  return sub_1DD05268C(v4, v12, v13, v0 + v7, v11, v14, v15);
}

uint64_t sub_1DD05286C()
{
  OUTLINED_FUNCTION_41();
  v0 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_99(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_37_3(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_88(v5);

  return sub_1DD0501BC(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DD052958()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  v8 = OUTLINED_FUNCTION_8_1();

  return sub_1DD0506EC(v8, v9, v10, v4, v3);
}

uint64_t sub_1DD052A00()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_99(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = (v0 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1DCB4AD3C;

  return sub_1DD050EB8(v4, v9, v10, v11, v0 + v7, v13, v14);
}

uint64_t static UnsetRelationshipTemplates.processConfirmToSave(relationship:contact:)()
{
  OUTLINED_FUNCTION_42();
  v9 = *MEMORY[0x1E69E9840];
  v0[50] = v1;
  v0[51] = v2;
  v0[49] = v3;
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DD052BBC()
{
  OUTLINED_FUNCTION_51_4();
  v39 = *MEMORY[0x1E69E9840];
  v1 = v0[51];
  v2 = sub_1DCC6E534(v1);
  v37 = v3;
  v38 = v2;
  sub_1DCC6E54C(v1);
  sub_1DCC6E540(v1);
  sub_1DCC6E558(v1);
  v4 = [v1 fullName];
  if (v4)
  {
    v12 = v4;
    sub_1DD0DDFBC();
  }

  OUTLINED_FUNCTION_3_128(v4, v5, v6, v7, v8, v9, v10, v11, v36, v37, v38);
  if (qword_1ECCA1250 != -1)
  {
    OUTLINED_FUNCTION_2_14();
  }

  sub_1DCCE6BD4();
  sub_1DD0DAADC();
  sub_1DCCE6C28((v0 + 18));
  objc_opt_self();
  OUTLINED_FUNCTION_33_1();
  v16 = sub_1DD0DAEFC();
  v0[47] = 0;
  OUTLINED_FUNCTION_19_52();
  v19 = [v17 v18];

  v20 = v0[47];
  if (v19)
  {
    v21 = v20;
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
    v22 = OUTLINED_FUNCTION_33_30();
    v23 = OUTLINED_FUNCTION_33_1();
    sub_1DCB21A14(v23, v24);
    if (v22)
    {
      v25 = v0[50];
      v26 = v0[48];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
      inited = swift_initStackObject();
      v28 = OUTLINED_FUNCTION_2_12(inited, xmmword_1DD0E32B0);
      OUTLINED_FUNCTION_21_54(v28, v29, MEMORY[0x1E69E6158]);
      v0[52] = sub_1DD0DDE9C();
      if (qword_1EDE48CE8 != -1)
      {
        OUTLINED_FUNCTION_1_7();
      }

      v30 = qword_1EDE57D40;
      v31 = type metadata accessor for CATTemplateExecutor();
      v0[41] = v31;
      v0[42] = &off_1F58563F0;
      v0[38] = v30;
      __swift_project_boxed_opaque_existential_1(v0 + 38, v31);
      sub_1DD0DCF8C();
    }
  }

  else
  {
    v32 = v20;
    v33 = sub_1DD0DAE0C();

    swift_willThrow();
    v34 = OUTLINED_FUNCTION_33_1();
    sub_1DCB21A14(v34, v35);
  }

  sub_1DD053134();
  swift_allocError();
  swift_willThrow();
  OUTLINED_FUNCTION_29();
  v13 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DD052FA8()
{
  OUTLINED_FUNCTION_33();
  v13 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v2[54];
  *v4 = *v1;
  *(v3 + 440) = v0;

  v6 = v2[53];
  v7 = v2[52];

  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

unint64_t sub_1DD053134()
{
  result = qword_1ECCAC948;
  if (!qword_1ECCAC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAC948);
  }

  return result;
}

uint64_t sub_1DD053188()
{
  OUTLINED_FUNCTION_41();
  v0 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_99(v0);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  OUTLINED_FUNCTION_37_3(*(v3 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_88(v5);

  return sub_1DD051A34(v7, v8, v9, v10, v11, v12);
}

_BYTE *sub_1DD053284(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD053334()
{
  result = qword_1ECCAC950[0];
  if (!qword_1ECCAC950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAC950);
  }

  return result;
}

uint64_t sub_1DD053394()
{
  OUTLINED_FUNCTION_42();
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1DD05177C();
}

uint64_t sub_1DD053404()
{
  OUTLINED_FUNCTION_42();
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return sub_1DD051804();
}

uint64_t sub_1DD053488(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DD05353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_18_53();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = OUTLINED_FUNCTION_16_69();
  sub_1DD053C40(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, v24, a11, a12, a9, a10, v25, v26, v27, v28, v29, v30, v31);
}

void sub_1DD0535C4()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_53();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_16_69();
  sub_1DD054024();
}

void sub_1DD053614()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = v4[10];
  v30[2] = v4[11];
  v6 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v30 - v13;
  v15 = v4[17];
  swift_beginAccess();
  v16 = *(v8 + 16);
  v16(v14, &v1[v15], v6);
  OUTLINED_FUNCTION_90_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:
      *(v3 + 32) = 0;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      v20 = 2;
      goto LABEL_7;
    case 4:
      v19 = v14[8];
      *v3 = *v14;
      *(v3 + 8) = v19;
      v20 = 1;
LABEL_7:
      *(v3 + 40) = v20;
      break;
    case 3:
      v18 = *(v14 + 1);
      *v3 = *v14;
      *(v3 + 16) = v18;
      *(v3 + 25) = *(v14 + 25);
      break;
    default:
      v30[1] = v5;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v21 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v21, qword_1EDE57E00);
      v22 = sub_1DD0DD8EC();
      v23 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v23))
      {
        v24 = OUTLINED_FUNCTION_50_0();
        *v24 = 0;
        _os_log_impl(&dword_1DCAFC000, v22, v23, "UnsupportedUnsetRelationshipFlow exitValue called in unexpected state.", v24, 2u);
        OUTLINED_FUNCTION_80();
      }

      type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.UnsupportedUnsetRelationshipFlowError();
      OUTLINED_FUNCTION_2_120();
      swift_getWitnessTable();
      v25 = OUTLINED_FUNCTION_10_5();
      v16(v26, &v1[v15], v6);
      *v3 = v25;
      *(v3 + 8) = 0;
      *(v3 + 40) = 1;
      v27 = *(v8 + 8);
      v28 = OUTLINED_FUNCTION_90_0();
      v29(v28);
      break;
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DD053888()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DD053B3C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State();
  (*(*(v7 - 8) + 24))(v1 + v4, a1, v7);
  swift_endAccess();
  sub_1DD053888();
}

void sub_1DD053C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_50();
  v26 = v25;
  v28 = v27;
  v69 = v29;
  v70 = v30;
  v32 = v31;
  v63 = v33;
  v64 = v31;
  v35 = v34;
  v37 = v36;
  v68 = v36;
  v65 = a25;
  v66 = v34;
  v71 = a23;
  v72 = v38;
  v62 = a24;
  v39 = *v25;
  v73 = *(a24 - 8);
  v40 = *(v73 + 64);
  v59 = a21;
  v61 = a22;
  MEMORY[0x1EEE9AC00](v33, v36);
  v60 = &v58 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_2();
  v43 = *(v42 + 80);
  OUTLINED_FUNCTION_8_2();
  v67 = *(v44 + 88);
  v45 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State();
  OUTLINED_FUNCTION_0_1();
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v58 - v52;
  sub_1DCB17D04(v37, (v26 + 32));
  sub_1DCB17D04(v35, (v26 + 72));
  sub_1DCB17D04(v32, (v26 + 112));
  ParameterResolutionRecord.init(app:intent:parameterName:parameterMulticardinalIndex:result:)(v70, v28, v72, v59, a22, v71, v74);
  v54 = v75;
  v55 = v76;
  v56 = v77;
  v57 = v74[1];
  *v53 = v74[0];
  *(v53 + 1) = v57;
  *(v53 + 4) = v54;
  v53[40] = v55;
  *(v53 + 6) = v56;
  swift_storeEnumTagMultiPayload();
  (*(v47 + 32))(&v26[*(*v26 + 136)], v53, v45);
  type metadata accessor for UnsupportedUnsetRelationshipPromptProcessingStrategy();
  (*(v73 + 16))(v60, v63, v62);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD053FE0()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_18_3();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_19();
  sub_1DD056D30();
  return v0;
}

void sub_1DD054024()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v40 = v3;
  v41 = v2;
  v35 = v5;
  v36 = v4;
  v7 = v6;
  v37 = v6;
  v38 = v8;
  v9 = v8;
  v39 = v10;
  v30 = *v0;
  OUTLINED_FUNCTION_0_1();
  v42 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v31 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v17;
  v19 = v17[1];
  v21 = v17[2];
  v20 = v17[3];
  v33 = v17[4];
  v22 = v33;
  v34 = v21;
  v23 = *(v17 + 40);
  v32 = v23;
  v29 = v17[6];
  v24 = v29;
  sub_1DCB17D04(v25, (v1 + 4));
  sub_1DCB17D04(v9, (v1 + 9));
  sub_1DCB17D04(v7, (v1 + 14));
  v26 = v1 + *(*v1 + 136);
  *v26 = v18;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v20;
  *(v26 + 4) = v22;
  v26[40] = v23;
  *(v26 + 6) = v24;
  v27 = *(v30 + 80);
  v28 = *(v30 + 88);
  type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for UnsupportedUnsetRelationshipPromptProcessingStrategy();
  (*(v42 + 16))(v31, v36, v35);
  sub_1DD0DCF8C();
}

uint64_t sub_1DD0542BC()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_18_3();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_19();
  sub_1DD056764();
  return v0;
}

void sub_1DD054300()
{
  v1 = *v0;
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DD054394()
{
  OUTLINED_FUNCTION_39();
  v1[40] = v2;
  v1[41] = v0;
  v3 = *v0;
  v4 = type metadata accessor for RelationshipLabel();
  v1[42] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = *(v3 + 80);
  v1[48] = *(v3 + 88);
  v7 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State();
  v1[49] = v7;
  v8 = *(v7 - 8);
  v1[50] = v8;
  v9 = *(v8 + 64) + 15;
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DD0544E4()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 392);
  v3 = *(v0 + 400);
  v4 = *(v0 + 328);
  v5 = *(*v4 + 136);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v6(v1, v4 + v5, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v68 = *(v0 + 416);
      v69 = *v68;
      v70 = v68[1];
      v71 = v68[3];
      v72 = v68[6];

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v73 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v73, qword_1EDE57E00);
      v74 = sub_1DD0DD8EC();
      v75 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = OUTLINED_FUNCTION_50_0();
        *v76 = 0;
        _os_log_impl(&dword_1DCAFC000, v74, v75, "UnsupportedUnsetRelationshipFlow execute called in unexpected state.", v76, 2u);
        OUTLINED_FUNCTION_80();
      }

      v77 = *(v0 + 408);
      v78 = *(v0 + 384);
      v79 = *(v0 + 376);
      v80 = *(v0 + 336);
      v95 = *(v0 + 392);
      v96 = *(v0 + 328);
      v98 = *(v0 + 320);
      v100 = *(v0 + 416);

      type metadata accessor for ParameterResolutionRecord();
      OUTLINED_FUNCTION_76_1();
      v94 = *(swift_getTupleTypeMetadata2() + 48);
      type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.UnsupportedUnsetRelationshipFlowError();
      OUTLINED_FUNCTION_2_120();
      swift_getWitnessTable();
      v81 = swift_allocError();
      v6(v82, v4 + v5, v95);
      *v77 = v81;
      *(v77 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1DD053B3C(v77);
    case 2u:
      v36 = *(v0 + 416);
      v37 = *(v0 + 376);
      v39 = *(v0 + 336);
      v38 = *(v0 + 344);
      v40 = *v36;
      *(v0 + 496) = *v36;
      v41 = v36[1];
      *(v0 + 504) = v41;
      v42 = v36[3];
      v97 = v36[2];
      v99 = v38;
      *(v0 + 512) = v42;
      v43 = v36[4];
      v44 = *(v36 + 40);
      v45 = v36[6];
      *(v0 + 520) = v45;
      type metadata accessor for ParameterResolutionRecord();
      sub_1DD031750();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v47 = *(TupleTypeMetadata3 + 48);
      *(v0 + 528) = *(v36 + *(TupleTypeMetadata3 + 64));
      sub_1DCCC3844(v36 + v47, v99);
      *(v0 + 16) = v40;
      *(v0 + 24) = v41;
      *(v0 + 32) = v97;
      *(v0 + 40) = v42;
      *(v0 + 48) = v43;
      *(v0 + 56) = v44;
      *(v0 + 64) = v45;
      v48 = swift_task_alloc();
      *(v0 + 536) = v48;
      *v48 = v0;
      v48[1] = sub_1DD055004;
      v49 = *(v0 + 344);
      v50 = *(v0 + 328);
      OUTLINED_FUNCTION_73();

      return sub_1DD055B70();
    case 3u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v52 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v52, qword_1EDE57E00);
      v53 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v55);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v56, v57, v58, v59, v60, 2u);
        OUTLINED_FUNCTION_62();
      }

      v61 = *(v0 + 416);
      v62 = *(v0 + 392);
      v63 = *(v0 + 400);
      v64 = *(v0 + 320);

      static ExecuteResponse.complete()();
      v65 = *(v63 + 8);
      v66 = OUTLINED_FUNCTION_20();
      v67(v66);
      goto LABEL_31;
    case 4u:
      (*(*(v0 + 400) + 8))(*(v0 + 416), *(v0 + 392));
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v33 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v33, qword_1EDE57E00);
      v34 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v34, v35))
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    case 5u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v83 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v83, qword_1EDE57E00);
      v34 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v34, v84))
      {
LABEL_29:
        v85 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v85);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v86, v87, v88, v89, v90, 2u);
        OUTLINED_FUNCTION_62();
      }

LABEL_30:
      v91 = *(v0 + 320);

      static ExecuteResponse.complete()();
LABEL_31:
      OUTLINED_FUNCTION_26_41();

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_73();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v7 = *(v0 + 416);
      v8 = *v7;
      *(v0 + 424) = *v7;
      v9 = v7[1];
      *(v0 + 432) = v9;
      v10 = v7[2];
      *(v0 + 440) = v10;
      v11 = v7[3];
      *(v0 + 448) = v11;
      v12 = v7[4];
      *(v0 + 456) = v12;
      v13 = *(v7 + 40);
      *(v0 + 544) = v13;
      v14 = v7[6];
      *(v0 + 464) = v14;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v15 = sub_1DD0DD8FC();
      *(v0 + 472) = __swift_project_value_buffer(v15, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v18);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v19, v20, v21, v22, v23, 2u);
        OUTLINED_FUNCTION_80();
      }

      v24 = *(v0 + 328);

      v25 = *(v24 + 16);
      *(v0 + 72) = v8;
      *(v0 + 80) = v9;
      *(v0 + 88) = v10;
      *(v0 + 96) = v11;
      *(v0 + 104) = v12;
      *(v0 + 112) = v13;
      *(v0 + 120) = v14;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 480) = v26;
      *v26 = v27;
      v26[1] = sub_1DD054BC4;
      v28 = *(v0 + 360);
      OUTLINED_FUNCTION_73();

      return sub_1DD057910(v29, v30);
  }
}

uint64_t sub_1DD054BC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 488) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD054CBC()
{
  v33 = v0;
  v2 = *(v0 + 472);
  v3 = *(v0 + 352);
  sub_1DCCC3844(*(v0 + 360), *(v0 + 368));
  v4 = OUTLINED_FUNCTION_20();
  sub_1DCC08BCC(v4, v5);
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 352);
  if (v8)
  {
    OUTLINED_FUNCTION_151();
    v32 = OUTLINED_FUNCTION_52_0();
    *v1 = 136315138;
    v10 = RelationshipLabel.asUnboundedSemanticValue.getter();
    v12 = v11;
    sub_1DCF13094(v9);
    v13 = sub_1DCB10E9C(v10, v12, &v32);

    *(v1 + 4) = v13;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v14, v15, "UnsupportedUnsetRelationshipFlow extracted requested relationship '%s'. Pushing UnsetRelationshipFlow.");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    sub_1DCF13094(v9);
  }

  v29 = *(v0 + 544);
  v27 = *(v0 + 456);
  v28 = *(v0 + 464);
  v25 = *(v0 + 440);
  v26 = *(v0 + 448);
  v16 = *(v0 + 424);
  v17 = *(v0 + 432);
  v18 = *(v0 + 408);
  v19 = *(v0 + 384);
  v20 = *(v0 + 368);
  v21 = *(v0 + 344);
  v23 = *(v0 + 376);
  v24 = *(v0 + 336);
  v22 = *(v0 + 328);
  v30 = *(v0 + 392);
  v31 = *(v0 + 320);
  type metadata accessor for UnsetRelationshipFlowAsync();
  *(v0 + 304) = *(v22 + 24);
  sub_1DCC08BCC(v20, v21);
  sub_1DCB17D04(v22 + 32, v0 + 128);
  sub_1DCB17D04(v22 + 72, v0 + 168);
  sub_1DCB17D04(v22 + 112, v0 + 208);
  type metadata accessor for AnyUnsetRelationshipFlowStrategy();
  sub_1DD0DCF8C();
}

uint64_t sub_1DD055004()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 536);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DD0550EC()
{
  v1 = *(v0 + 520);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);

  sub_1DCF13094(v5);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_26_41();

  OUTLINED_FUNCTION_29();

  return v7();
}

void sub_1DD0551C0()
{
  v26 = v0;
  v1 = v0[61];
  v2 = v0[59];
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[61];
    OUTLINED_FUNCTION_151();
    v25 = OUTLINED_FUNCTION_52_0();
    *v1 = 136315138;
    swift_getErrorValue();
    v8 = v0[34];
    v7 = v0[35];
    v9 = v0[36];
    v10 = sub_1DD0DF18C();
    v12 = sub_1DCB10E9C(v10, v11, &v25);

    *(v1 + 1) = v12;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v13, v14, "UnsupportedUnsetRelationshipFlow unable to extract requested relationship: %s");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_80();
  }

  v15 = v0[61];
  v16 = v0[58];
  v17 = v0[56];
  v18 = v0[53];
  v19 = v0[54];
  v20 = v0[51];
  v21 = v0[49];
  v23 = v0[40];
  v22 = v0[41];
  *v20 = v15;
  *(v20 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v24 = v15;
  sub_1DD053B3C(v20);
}

void sub_1DD0553BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  sub_1DD0553FC();
}

void sub_1DD0553FC()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 80);
  v82 = *(*v0 + 88);
  v5 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v84 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v78 - v15;
  v17 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_112(v17);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v2 + 8);
  *&v83 = *v2;
  *(&v83 + 1) = v24;
  v81 = *(v2 + 9);
  v25 = *(v3 + 136);
  swift_beginAccess();
  v26 = *(v7 + 16);
  v85 = v0;
  v26(v16, &v0[v25], v5);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v45 = v26;
    (*(v7 + 8))(v16, v5);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v46 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v46, qword_1EDE57E00);
    v47 = sub_1DD0DD8EC();
    v48 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v48))
    {
      v49 = OUTLINED_FUNCTION_50_0();
      *v49 = 0;
      _os_log_impl(&dword_1DCAFC000, v47, v48, "UnsupportedUnsetRelationshipFlow UnsetRelationshipFlow callback called in unexpected state.", v49, 2u);
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.UnsupportedUnsetRelationshipFlowError();
    OUTLINED_FUNCTION_2_120();
    swift_getWitnessTable();
    v50 = OUTLINED_FUNCTION_10_5();
    v45(v51, &v85[v25], v5);
    v52 = v84;
    *v84 = v50;
    *(v52 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1DD053B3C(v52);
  }

  v27 = *(v16 + 1);
  v82 = *v16;
  v29 = *(v16 + 2);
  v28 = *(v16 + 3);
  v79 = v27;
  v80 = v28;
  v30 = *(v16 + 4);
  v31 = v16[40];
  v78 = *(v16 + 6);
  type metadata accessor for ParameterResolutionRecord();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1DCCC3844(&v16[*(TupleTypeMetadata2 + 48)], v23);
  v33 = v23;
  if (!v81)
  {
    sub_1DD031750();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v54 = *(TupleTypeMetadata3 + 48);
    v55 = *(TupleTypeMetadata3 + 64);
    v56 = v84;
    v57 = v79;
    *v84 = v82;
    v56[1] = v57;
    v56[2] = v29;
    v56[3] = v80;
    v56[4] = v30;
    *(v56 + 40) = v31;
    v56[6] = v78;
    sub_1DCC08BCC(v33, v56 + v54);
    v58 = v83;
    *(v56 + v55) = v83;
    swift_storeEnumTagMultiPayload();
    sub_1DD02BEE4(v58, *(&v83 + 1), 0);
    sub_1DD0DCF8C();
  }

  if (v81 != 1)
  {
    if (v83 == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v73 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v73, qword_1EDE57E00);
      v74 = sub_1DD0DD8EC();
      v75 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_75(v75))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v76, v77, "UnsupportedUnsetRelationshipFlow user cancelled request. Transitioning to cancelled.");
        OUTLINED_FUNCTION_80();
      }

      v64 = v84;
      OUTLINED_FUNCTION_20();
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v59 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v59, qword_1EDE57E00);
      v60 = sub_1DD0DD8EC();
      v61 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v61))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v62, v63, "UnsupportedUnsetRelationshipFlow UnsetRelationshipFlow exited without providing an answer");
        OUTLINED_FUNCTION_80();
      }

      v64 = v84;
      OUTLINED_FUNCTION_11_77(1);
    }

    swift_storeEnumTagMultiPayload();
    sub_1DD053B3C(v64);
  }

  v34 = v83;
  if (BYTE8(v83))
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v35 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
    v36 = v34;
    v37 = sub_1DD0DD8EC();
    v38 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_44_35(v38))
    {
      v39 = OUTLINED_FUNCTION_151();
      v40 = swift_slowAlloc();
      v86[0] = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v41 = sub_1DD0DF18C();
      v43 = sub_1DCB10E9C(v41, v42, v86);

      *(v39 + 4) = v43;
      v44 = "UnsupportedUnsetRelationshipFlow UnsetRelationshipFlow exited with a handled error: %s";
LABEL_25:
      _os_log_impl(&dword_1DCAFC000, v37, v16, v44, v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_80();
      v34 = v83;
      OUTLINED_FUNCTION_80();
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v65 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v65, qword_1EDE57E00);
    v66 = v34;
    v37 = sub_1DD0DD8EC();
    v67 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_44_35(v67))
    {
      v39 = OUTLINED_FUNCTION_151();
      v40 = swift_slowAlloc();
      v86[0] = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v68 = sub_1DD0DF18C();
      v70 = sub_1DCB10E9C(v68, v69, v86);

      *(v39 + 4) = v70;
      v44 = "UnsupportedUnsetRelationshipFlow UnsetRelationshipFlow exited with an unhandled error: %s";
      goto LABEL_25;
    }
  }

  v71 = v84;
  *v84 = v34;
  *(v71 + 8) = BYTE8(v83) & 1;
  swift_storeEnumTagMultiPayload();
  v72 = v34;
  sub_1DD053B3C(v71);
}

uint64_t sub_1DD055B70()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 192) = v4;
  *(v1 + 200) = v0;
  *(v1 + 184) = v5;
  v6 = *v0;
  OUTLINED_FUNCTION_8_2();
  *(v1 + 208) = *(v7 + 80);
  OUTLINED_FUNCTION_8_2();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State();
  *(v1 + 216) = v10;
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = *v3;
  *(v1 + 248) = *(v3 + 16);
  *(v1 + 256) = *(v3 + 24);
  *(v1 + 304) = *(v3 + 40);
  *(v1 + 272) = *(v3 + 48);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DD055C50()
{
  OUTLINED_FUNCTION_41();
  v27 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 184);
  v2 = sub_1DD0DD8FC();
  *(v0 + 280) = OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  LOBYTE(v1) = sub_1DD0DE6DC();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = *(v0 + 184);
    v6 = OUTLINED_FUNCTION_151();
    v26 = swift_slowAlloc();
    *v6 = 136315138;
    v7 = sub_1DCCC331C(v5);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0xE000000000000000;
    }

    v10 = sub_1DCB10E9C(v7, v9, &v26);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_62();
  }

  v16 = *(v0 + 304);
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v0 + 248);
  v20 = *(*(v0 + 200) + 16);
  *(v0 + 16) = *(v0 + 232);
  *(v0 + 32) = v19;
  *(v0 + 48) = v18;
  *(v0 + 56) = v16;
  *(v0 + 64) = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 288) = v21;
  *v21 = v22;
  v21[1] = sub_1DD055E1C;
  v23 = *(v0 + 184);
  v24 = *(v0 + 192);

  return sub_1DD057B90(v0 + 112, v23, v24, v0 + 16);
}

uint64_t sub_1DD055E1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 296) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD055F14()
{
  v3 = *(v2 + 280);
  if (*(v2 + 144))
  {
    v4 = *(v2 + 128);
    *(v2 + 72) = *(v2 + 112);
    *(v2 + 88) = v4;
    *(v2 + 104) = *(v2 + 144);
    v5 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_8_5();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v7);
      _os_log_impl(&dword_1DCAFC000, v5, v0, "UnsupportedUnsetRelationshipFlow received an intent prompt answer. Transitioning to complete.", v1, 2u);
      OUTLINED_FUNCTION_62();
    }

    v9 = *(v2 + 216);
    v8 = *(v2 + 224);
    v10 = *(v2 + 200);
    v11 = *(v2 + 208);

    v12 = type metadata accessor for IntentPromptAnswer();
    (*(*(v12 - 8) + 16))(v8, v2 + 72, v12);
    *(v8 + 40) = 0;
    OUTLINED_FUNCTION_20();
    swift_storeEnumTagMultiPayload();
    sub_1DD053B3C(v8);
  }

  v13 = *(v2 + 208);
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_76_1();
  v14 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_13_1(v14);
  (*(v15 + 8))(v2 + 112);
  v16 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_8_5();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v18);
    _os_log_impl(&dword_1DCAFC000, v16, v0, "UnsupportedUnsetRelationshipFlow no intent prompt answer present. Transitioning to unanswered.", v1, 2u);
    OUTLINED_FUNCTION_62();
  }

  v20 = *(v2 + 216);
  v19 = *(v2 + 224);
  v21 = *(v2 + 200);

  OUTLINED_FUNCTION_11_77(1);
  swift_storeEnumTagMultiPayload();
  sub_1DD053B3C(v19);
}

void sub_1DD056128()
{
  OUTLINED_FUNCTION_41();
  v21 = v0;
  v1 = v0[37];
  v2 = v0[35];
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[37];
    OUTLINED_FUNCTION_151();
    v20 = OUTLINED_FUNCTION_52_0();
    *v1 = 136315138;
    swift_getErrorValue();
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[21];
    v10 = sub_1DD0DF18C();
    v12 = sub_1DCB10E9C(v10, v11, &v20);

    *(v1 + 1) = v12;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v13, v14, "UnsupportedUnsetRelationshipFlow received an error while trying to apply the resolved person to the intent: %s");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_80();
  }

  v15 = v0[37];
  v16 = v0[27];
  v17 = v0[28];
  v18 = v0[25];
  *v17 = v15;
  *(v17 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v19 = v15;
  sub_1DD053B3C(v17);
}

unint64_t sub_1DD056284(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1, v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  v8 = 0x6C6C65636E61632ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = 0xD000000000000011;
      v9 = *v7;
      v10 = *(v7 + 1);
      v11 = *(v7 + 3);

      v12 = *(a1 + 16);
      type metadata accessor for ParameterResolutionRecord();
      type metadata accessor for RelationshipLabel();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1DCF13094(&v7[*(TupleTypeMetadata2 + 48)]);
      break;
    case 2u:
      v14 = *v7;
      v15 = *(v7 + 1);
      v16 = *(v7 + 3);

      v17 = *(a1 + 16);
      type metadata accessor for ParameterResolutionRecord();
      type metadata accessor for RelationshipLabel();
      sub_1DD031750();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v19 = *(TupleTypeMetadata3 + 48);

      sub_1DCF13094(&v7[v19]);
      v8 = 0xD000000000000015;
      break;
    case 3u:
      (*(v4 + 8))(v7, a1);
      v8 = 0x74656C706D6F632ELL;
      break;
    case 4u:
      (*(v4 + 8))(v7, a1);
      v8 = 0x726F7272652ELL;
      break;
    case 5u:
      return v8;
    default:
      (*(v4 + 8))(v7, a1);
      v8 = 0x646574726174732ELL;
      break;
  }

  return v8;
}

uint64_t *sub_1DD05653C()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v4 = *(*v0 + 136);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for SiriKitUnsupportedUnsetRelationshipFlow.State();
  OUTLINED_FUNCTION_13_1(v7);
  (*(v8 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_1DD0565F8()
{
  sub_1DD05653C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD0566A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DD054394();
}

void *sub_1DD056764()
{
  OUTLINED_FUNCTION_58_1();
  v4 = *(*v1 + 80);
  v1[2] = sub_1DD056808(v5, v4, v2, v0);
  v1[3] = v6;
  v7 = sub_1DD056A90(v3, v4, v2, v0);
  v9 = v8;
  OUTLINED_FUNCTION_112(v2);
  v11 = *(v10 + 8);
  v12 = OUTLINED_FUNCTION_19();
  v13(v12);
  v1[4] = v7;
  v1[5] = v9;
  return v1;
}

void *sub_1DD056808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10CAD0;
}

uint64_t sub_1DD056934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v13;
  *(v6 + 48) = v10;
  *(v6 + 56) = v11;
  *(v6 + 64) = v12;
  v14 = *(a6 + 40);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v6 + 72) = v16;
  *v16 = v6;
  v16[1] = sub_1DCDBA750;

  return v18(a1, v6 + 16, a5, a6);
}

void *sub_1DD056A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return &unk_1DD10CAC0;
}

uint64_t sub_1DD056BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a4 + 32);
  v15 = *(a4 + 40);
  v16 = *(a4 + 48);
  v17 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v17;
  *(v8 + 48) = v14;
  *(v8 + 56) = v15;
  *(v8 + 64) = v16;
  v18 = *(a8 + 48);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v8 + 72) = v20;
  *v20 = v8;
  v20[1] = sub_1DCDBA4C4;

  return v22(a1, a2, a3, v8 + 16, a7, a8);
}

void sub_1DD056D30()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v21 = v1;
  v22 = v5;
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = *(v7 + 16);
  v13 = OUTLINED_FUNCTION_90_0();
  v14(v13);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v22 = *(v22 + 80);
  *(v16 + 2) = v22;
  *(v16 + 3) = v4;
  *(v16 + 4) = v2;
  v17 = *(v7 + 32);
  v17(&v16[v15], &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v0[2] = &unk_1DD10CA88;
  v0[3] = v16;
  v18 = OUTLINED_FUNCTION_90_0();
  (v17)(v18);
  v19 = swift_allocObject();
  v20 = v21;
  *(v19 + 2) = v22;
  *(v19 + 3) = v4;
  *(v19 + 4) = v20;
  v17(&v19[v15], &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v0[4] = &unk_1DD10CA98;
  v0[5] = v19;
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DD056ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = *(a2 + 48);
  *(v6 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD056F10, 0, 0);
}

uint64_t sub_1DD056F10()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *(v3 + 16) = *(v0 + 88);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = v0 + 16;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  type metadata accessor for RelationshipLabel();
  *v5 = v0;
  v5[1] = sub_1DD056FF4;
  v6 = *(v0 + 72);
  OUTLINED_FUNCTION_7_87();

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1DD056FF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *(v2 + 120);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 112);

    OUTLINED_FUNCTION_29();

    return v11();
  }
}

uint64_t sub_1DD057118(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCACAD8, &qword_1DD10CAA8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v23 - v13;
  v15 = a3[2];
  v25 = a3[3];
  v26 = v15;
  v16 = a3[4];
  if (a3[5])
  {
    v16 = 0;
  }

  v24 = v16;
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[6];
  (*(v10 + 16))(v14, a1, v9);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v20, v14, v9);
  (*(a6 + 40))(v17, v18, v26, v25, v24, v19, sub_1DD059884, v21, v27, a6);
}

uint64_t sub_1DD0572D4(uint64_t a1)
{
  v2 = type metadata accessor for RelationshipLabel();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA33E8, &qword_1DD10CAB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (v13 - v10);
  sub_1DD0598FC(a1, v13 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13[1] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCACAD8, &qword_1DD10CAA8);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCCC3844(v11, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCACAD8, &qword_1DD10CAA8);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DD057420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  v9 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = *(a4 + 48);
  *(v8 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD057460, 0, 0);
}

uint64_t sub_1DD057460()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  v4 = *(v0 + 80);
  *(v3 + 16) = *(v0 + 104);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  *(v3 + 48) = v0 + 16;
  *(v3 + 56) = vextq_s8(v4, v4, 8uLL);
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_76_1();
  sub_1DD0DE97C();
  *v6 = v0;
  v6[1] = sub_1DD057570;
  v7 = *(v0 + 72);
  OUTLINED_FUNCTION_7_87();

  return MEMORY[0x1EEE6DE38](v8);
}

uint64_t sub_1DD057570()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *(v2 + 136);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 128);

    OUTLINED_FUNCTION_29();

    return v11();
  }
}

uint64_t sub_1DD057694(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v32 = a4;
  v33 = a2;
  v34 = a5;
  type metadata accessor for IntentPromptAnswer();
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v12 = sub_1DD0DE47C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v27 - v16;
  v18 = a3[2];
  v29 = a3[3];
  v30 = v18;
  v19 = a3[4];
  if (a3[5])
  {
    v19 = 0;
  }

  v28 = v19;
  v21 = *a3;
  v20 = a3[1];
  v22 = a3[6];
  (*(v13 + 16))(v17, a1, v12);
  v23 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = a6;
  v25 = v31;
  *(v24 + 3) = v31;
  *(v24 + 4) = a8;
  (*(v13 + 32))(&v24[v23], v17, v12);
  (*(a8 + 48))(v21, v20, v30, v29, v28, v22, v32, v34, sub_1DD0597A4, v24, v25, a8);
}

uint64_t sub_1DD057890(uint64_t a1)
{
  type metadata accessor for IntentPromptAnswer();
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v2);
}

uint64_t sub_1DD057910(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  *(v3 + 88) = *a2;
  *(v3 + 104) = *(a2 + 16);
  *(v3 + 112) = *(a2 + 24);
  *(v3 + 152) = *(a2 + 40);
  *(v3 + 128) = *(a2 + 48);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD05794C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 80);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *(v0 + 16) = *(v0 + 88);
  OUTLINED_FUNCTION_37_38(*(v0 + 104));
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v10;
  *v10 = v11;
  v10[1] = sub_1DD057A58;
  v12 = *(v0 + 72);

  return v14(v12, v0 + 16);
}

uint64_t sub_1DD057A58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DD057B6C()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 144);
  return v2();
}

uint64_t sub_1DD057B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 88) = a3;
  *(v5 + 96) = v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  *(v5 + 104) = *a4;
  *(v5 + 120) = *(a4 + 16);
  *(v5 + 128) = *(a4 + 24);
  *(v5 + 168) = *(a4 + 40);
  *(v5 + 144) = *(a4 + 48);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DD057BD0()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 96);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  *(v0 + 16) = *(v0 + 104);
  OUTLINED_FUNCTION_37_38(*(v0 + 120));
  v16 = (v7 + *v7);
  v9 = *(v8 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 152) = v10;
  *v10 = v11;
  v10[1] = sub_1DD057CE0;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  v14 = *(v0 + 72);

  return v16(v14, v12, v13, v0 + 16);
}

uint64_t sub_1DD057CE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 160) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DD057DF4()
{
  sub_1DCDDAD28();
  OUTLINED_FUNCTION_18_3();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD057E38()
{
  v5 = "8";
  result = type metadata accessor for RelationshipLabel();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout2();
    v6 = &v4;
    swift_getTupleTypeLayout3();
    v7 = &v3;
    v8 = &unk_1DD10C9C8;
    v9 = &unk_1DD10C9E0;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DD057F28(char *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v7;
      v8 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v8;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      sub_1DD0DCF8C();
    case 1u:
      v15 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v15;
      v16 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v16;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      v17 = *(a3 + 16);
      type metadata accessor for ParameterResolutionRecord();
      type metadata accessor for RelationshipLabel();
      sub_1DD0DCF8C();
    case 2u:
      v11 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v11;
      v12 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v12;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      v13 = *(a3 + 16);
      type metadata accessor for ParameterResolutionRecord();
      type metadata accessor for RelationshipLabel();
      sub_1DD031750();
      sub_1DD0DCF8C();
    case 3u:
      if (*(a2 + 40) == 1)
      {
        v20 = *a2;
        v21 = *a2;
        *a1 = v20;
        a1[8] = *(a2 + 8);
        a1[40] = 1;
      }

      else if (*(a2 + 40))
      {
        v22 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v22;
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        v14 = a2[3];
        if (v14)
        {
          *(a1 + 3) = v14;
          (**(v14 - 8))(a1, a2);
        }

        else
        {
          v23 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v23;
        }

        v24 = a2[4];
        *(a1 + 4) = v24;
        a1[40] = 0;
        v25 = v24;
      }

      goto LABEL_19;
    case 4u:
      v9 = *a2;
      v10 = *a2;
      *a1 = v9;
      a1[8] = *(a2 + 8);
LABEL_19:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v18 = *(v6 + 64);

      result = memcpy(a1, a2, v18);
      break;
  }

  return result;
}

void sub_1DD0583BC(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v4 = *a1;

      v5 = *(a1 + 24);

      v6 = *(a1 + 48);
      goto LABEL_14;
    case 1u:
      v16 = *a1;

      v17 = *(a1 + 24);

      v18 = *(a2 + 16);
      type metadata accessor for ParameterResolutionRecord();
      type metadata accessor for RelationshipLabel();
      v19 = a1 + *(swift_getTupleTypeMetadata2() + 48);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v21 = *(v19 + 8);

      if (EnumCaseMultiPayload != 1)
      {
        v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v23 = sub_1DD0DB0FC();
        v24 = *(*(v23 - 8) + 8);

        v24(v19 + v22, v23);
      }

      return;
    case 2u:
      v7 = *a1;

      v8 = *(a1 + 24);

      v9 = *(a2 + 16);
      type metadata accessor for ParameterResolutionRecord();
      type metadata accessor for RelationshipLabel();
      sub_1DD031750();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v11 = a1 + *(TupleTypeMetadata3 + 48);
      v12 = swift_getEnumCaseMultiPayload();
      v13 = *(v11 + 8);

      if (v12 != 1)
      {
        v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
        v15 = sub_1DD0DB0FC();
        (*(*(v15 - 8) + 8))(v11 + v14, v15);
      }

      v6 = *(a1 + *(TupleTypeMetadata3 + 64));
      goto LABEL_14;
    case 3u:
      if (*(a1 + 40) == 1)
      {
        goto LABEL_8;
      }

      if (*(a1 + 40))
      {
        return;
      }

      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v6 = *(a1 + 32);
LABEL_14:

LABEL_10:

      return;
    case 4u:
LABEL_8:
      v6 = *a1;

      goto LABEL_10;
    default:
      return;
  }
}

void *sub_1DD058670(char *a1, uint64_t *a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v6;
      v7 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v7;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      sub_1DD0DCF8C();
    case 1u:
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v14;
      v15 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v15;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      v16 = *(a3 + 16);
      type metadata accessor for ParameterResolutionRecord();
      type metadata accessor for RelationshipLabel();
      sub_1DD0DCF8C();
    case 2u:
      v10 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v10;
      v11 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v11;
      *(a1 + 4) = a2[4];
      a1[40] = *(a2 + 40);
      *(a1 + 6) = a2[6];
      v12 = *(a3 + 16);
      type metadata accessor for ParameterResolutionRecord();
      type metadata accessor for RelationshipLabel();
      sub_1DD031750();
      sub_1DD0DCF8C();
    case 3u:
      if (*(a2 + 40) == 1)
      {
        v19 = *a2;
        v20 = *a2;
        *a1 = v19;
        a1[8] = *(a2 + 8);
        a1[40] = 1;
      }

      else if (*(a2 + 40))
      {
        v21 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v21;
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        v13 = a2[3];
        if (v13)
        {
          *(a1 + 3) = v13;
          (**(v13 - 8))(a1, a2);
        }

        else
        {
          v22 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v22;
        }

        v23 = a2[4];
        *(a1 + 4) = v23;
        a1[40] = 0;
        v24 = v23;
      }

      goto LABEL_17;
    case 4u:
      v8 = *a2;
      v9 = *a2;
      *a1 = v8;
      a1[8] = *(a2 + 8);
LABEL_17:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v17 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v17);
      break;
  }

  return result;
}

char *sub_1DD058AC4(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a3 - 8);
    (*(v6 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v7 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v7;
        *(a1 + 6) = *(a2 + 6);
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v13 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v13;
        *(a1 + 6) = *(a2 + 6);
        v14 = *(a3 + 16);
        type metadata accessor for ParameterResolutionRecord();
        type metadata accessor for RelationshipLabel();
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v10 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v10;
        *(a1 + 6) = *(a2 + 6);
        v11 = *(a3 + 16);
        type metadata accessor for ParameterResolutionRecord();
        type metadata accessor for RelationshipLabel();
        sub_1DD031750();
        sub_1DD0DCF8C();
      case 3u:
        if (a2[40] == 1)
        {
          v17 = *a2;
          v18 = *a2;
          *a1 = v17;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else if (a2[40])
        {
          v19 = *a2;
          v20 = *(a2 + 1);
          *(a1 + 25) = *(a2 + 25);
          *a1 = v19;
          *(a1 + 1) = v20;
        }

        else
        {
          v12 = *(a2 + 3);
          if (v12)
          {
            *(a1 + 3) = v12;
            (**(v12 - 8))(a1, a2);
          }

          else
          {
            v21 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v21;
          }

          v22 = *(a2 + 4);
          *(a1 + 4) = v22;
          a1[40] = 0;
          v23 = v22;
        }

        goto LABEL_18;
      case 4u:
        v8 = *a2;
        v9 = *a2;
        *a1 = v8;
        a1[8] = a2[8];
LABEL_18:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v15 = *(v6 + 64);

        return memcpy(a1, a2, v15);
    }
  }

  return a1;
}

_OWORD *sub_1DD058FAC(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v13 = a2[1];
    *a1 = *a2;
    a1[1] = v13;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    v14 = *(a3 + 16);
    type metadata accessor for ParameterResolutionRecord();
    v15 = type metadata accessor for RelationshipLabel();
    sub_1DD031750();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v17 = *(TupleTypeMetadata3 + 48);
    v18 = (a1 + v17);
    v19 = (a2 + v17);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v18, v19, *(*(v15 - 8) + 64));
    }

    else
    {
      *v18 = *v19;
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v25 = sub_1DD0DB0FC();
      (*(*(v25 - 8) + 32))(v18 + v24, v19 + v24, v25);
      swift_storeEnumTagMultiPayload();
    }

    *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = a2[1];
    *a1 = *a2;
    a1[1] = v7;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    v8 = *(a3 + 16);
    type metadata accessor for ParameterResolutionRecord();
    v9 = type metadata accessor for RelationshipLabel();
    v10 = *(swift_getTupleTypeMetadata2() + 48);
    v11 = (a1 + v10);
    v12 = (a2 + v10);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v11, v12, *(*(v9 - 8) + 64));
    }

    else
    {
      *v11 = *v12;
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v23 = sub_1DD0DB0FC();
      (*(*(v23 - 8) + 32))(v11 + v22, v12 + v22, v23);
      swift_storeEnumTagMultiPayload();
    }

LABEL_14:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v20 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v20);
}

_OWORD *sub_1DD05927C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = *(a3 - 8);
  (*(v6 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v14 = a2[1];
    *a1 = *a2;
    a1[1] = v14;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    v15 = *(a3 + 16);
    type metadata accessor for ParameterResolutionRecord();
    v16 = type metadata accessor for RelationshipLabel();
    sub_1DD031750();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v18 = *(TupleTypeMetadata3 + 48);
    v19 = (a1 + v18);
    v20 = (a2 + v18);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v19, v20, *(*(v16 - 8) + 64));
    }

    else
    {
      *v19 = *v20;
      v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v26 = sub_1DD0DB0FC();
      (*(*(v26 - 8) + 32))(v19 + v25, v20 + v25, v26);
      swift_storeEnumTagMultiPayload();
    }

    *(a1 + *(TupleTypeMetadata3 + 64)) = *(a2 + *(TupleTypeMetadata3 + 64));
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = a2[1];
    *a1 = *a2;
    a1[1] = v8;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    v9 = *(a3 + 16);
    type metadata accessor for ParameterResolutionRecord();
    v10 = type metadata accessor for RelationshipLabel();
    v11 = *(swift_getTupleTypeMetadata2() + 48);
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(v12, v13, *(*(v10 - 8) + 64));
    }

    else
    {
      *v12 = *v13;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v24 = sub_1DD0DB0FC();
      (*(*(v24 - 8) + 32))(v12 + v23, v13 + v23, v24);
      swift_storeEnumTagMultiPayload();
    }

LABEL_15:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v21 = *(v6 + 64);

  return memcpy(a1, a2, v21);
}