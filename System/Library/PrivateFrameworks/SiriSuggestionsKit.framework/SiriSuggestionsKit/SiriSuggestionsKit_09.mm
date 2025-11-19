uint64_t sub_1BF9623B0(uint64_t a1)
{
  sub_1BF96510C(v1 + 216, v6, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v3 = v7;
  if (!v7)
  {
    return sub_1BF8DFBF0(v6, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  }

  v4 = v8;
  OUTLINED_FUNCTION_28(v6, v7);
  (*(v4 + 32))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1BF962458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF96510C(v3 + 216, v10, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v7 = v11;
  if (!v11)
  {
    return sub_1BF8DFBF0(v10, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  }

  v8 = v12;
  OUTLINED_FUNCTION_28(v10, v11);
  (*(v8 + 24))(a1, a2, a3, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1BF962518()
{
  sub_1BF96510C(v0 + 216, v7, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  if (v8)
  {
    v1 = v9;
    OUTLINED_FUNCTION_28(v7, v8);
    v2 = *(v1 + 16);
    v3 = OUTLINED_FUNCTION_32_9();
    v5 = v4(v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1BF8DFBF0(v7, &qword_1EBDE9E28, &qword_1BF9C2CE8);
    return 0;
  }

  return v5;
}

uint64_t sub_1BF9625E4()
{
  sub_1BF96510C(v0[7] + 216, (v0 + 2), &qword_1EBDE9E28, &qword_1BF9C2CE8);
  if (v0[5])
  {
    v1 = v0[6];
    OUTLINED_FUNCTION_28(v0 + 2, v0[5]);
    v2 = *(*(v1 + 8) + 8);
    OUTLINED_FUNCTION_5_0();
    v10 = v3 + *v3;
    v5 = *(v4 + 4);
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_24_7(v6);
  }

  else
  {
    sub_1BF8DFBF0((v0 + 2), &qword_1EBDE9E28, &qword_1BF9C2CE8);
    OUTLINED_FUNCTION_4();
    v7 = MEMORY[0x1E69E7CC0];
  }

  return v8(v7);
}

uint64_t sub_1BF962768()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 64);
  v4 = *v0;
  *(*v0 + 72) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BF962864, 0, 0);
}

uint64_t sub_1BF962864()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t sub_1BF9628C0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  return swift_unknownObjectRetain();
}

uint64_t *SuggestionOwnerDefinitionBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  sub_1BF8DFBF0((v0 + 8), &qword_1EBDE9E10, &qword_1BF9C2CC8);
  sub_1BF8DFBF0((v0 + 13), &qword_1EBDE9E18, &qword_1BF9C2CD0);
  v2 = v0[18];

  sub_1BF8DFBF0((v0 + 19), &qword_1EBDE9E20, &unk_1BF9C2CD8);
  v3 = v0[24];

  v4 = v0[25];
  swift_unknownObjectRelease();
  sub_1BF8DFBF0((v0 + 27), &qword_1EBDE9E28, &qword_1BF9C2CE8);
  sub_1BF8DFBF0((v0 + 32), &qword_1EBDE9E38, &qword_1BF9C2D10);
  v5 = v0[38];

  sub_1BF8DFBF0((v0 + 39), &qword_1EBDE8E10, &qword_1BF9B9980);
  v6 = v0[44];

  v7 = v0[45];

  return v0;
}

uint64_t SuggestionOwnerDefinitionBuilder.__deallocating_deinit()
{
  SuggestionOwnerDefinitionBuilder.deinit();
  v0 = OUTLINED_FUNCTION_21_12();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF962A68()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF965214;

  return sub_1BF9625D0();
}

unint64_t sub_1BF962AF8()
{
  v1 = v0;
  sub_1BF9B5288();

  v2 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  v3 = *(v2 + 8);
  v4 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v4);

  MEMORY[0x1BFB5DE90](32032, 0xE200000000000000);
  return 0xD000000000000026;
}

uint64_t sub_1BF962BA8()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1BF962C10()
{
  v1 = *(v0 + 16);
  v2 = v1[11];
  OUTLINED_FUNCTION_28(v1 + 7, v1[10]);
  v3 = *(v2 + 32);
  OUTLINED_FUNCTION_5_0();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_24_7(v7);

  return v9(v8);
}

uint64_t sub_1BF962D1C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  OUTLINED_FUNCTION_4();

  return v6(v0);
}

uint64_t sub_1BF962E00()
{
  v1 = v0[16];
  OUTLINED_FUNCTION_28(v0 + 12, v0[15]);
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_25_10();
  return v3();
}

uint64_t sub_1BF962E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF962EAC()
{
  sub_1BF96510C(v0[10] + 16, (v0 + 2), &qword_1EBDE9E10, &qword_1BF9C2CC8);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    OUTLINED_FUNCTION_28(v0 + 2, v0[5]);
    v3 = *(v2 + 8);
    v4 = *(v3 + 16);
    OUTLINED_FUNCTION_5_0();
    v15 = (v5 + *v5);
    v7 = *(v6 + 4);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_1BF96304C;
    v9 = v0[8];
    v10 = v0[9];
    v11 = v0[7];

    return v15(v11, v9, v10, v1, v3);
  }

  else
  {
    sub_1BF8DFBF0((v0 + 2), &qword_1EBDE9E10, &qword_1BF9C2CC8);
    OUTLINED_FUNCTION_4();
    v14 = MEMORY[0x1E69E7CC0];

    return v13(v14);
  }
}

uint64_t sub_1BF96304C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 88);
  v4 = *v0;
  *(*v0 + 96) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BF963148, 0, 0);
}

uint64_t sub_1BF963148()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t sub_1BF9631A4()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1BF9631F8()
{
  sub_1BF8DFBF0(v0 + 16, &qword_1EBDE9E10, &qword_1BF9C2CC8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  sub_1BF8DFBF0(v0 + 136, &qword_1EBDE9E20, &unk_1BF9C2CD8);
  return v0;
}

uint64_t sub_1BF963250()
{
  sub_1BF9631F8();
  OUTLINED_FUNCTION_44_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF9632C8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF963358;

  return sub_1BF962BFC();
}

uint64_t sub_1BF963358()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  OUTLINED_FUNCTION_4();

  return v6(v0);
}

uint64_t sub_1BF9634A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF965214;

  return sub_1BF962E94(a1, a2, a3);
}

uint64_t *sub_1BF9635B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_1BF8DFBF0((v0 + 17), &qword_1EBDE9E28, &qword_1BF9C2CE8);
  return v0;
}

uint64_t sub_1BF963600()
{
  sub_1BF9635B8();
  OUTLINED_FUNCTION_44_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF9636D0()
{
  if (qword_1EDBF08C0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BF9B47C8();
  __swift_project_value_buffer(v0, qword_1EDBF08C8);
  v1 = sub_1BF9B47A8();
  v2 = sub_1BF9B5048();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF8B8000, v1, v2, "Unsupported subscriptions. Use getDynamicSubscriptions", v3, 2u);
    OUTLINED_FUNCTION_54();
  }

  type metadata accessor for Signal();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E08, &qword_1BF9C2CC0);
  sub_1BF965048(&unk_1EDBF07E0, 255, type metadata accessor for Signal);

  return sub_1BF9B4988();
}

uint64_t sub_1BF963830()
{
  v1 = *(*(v0 + 16) + 16);
  OUTLINED_FUNCTION_4();
  v5 = v2;

  return v5(v3);
}

uint64_t sub_1BF9638B0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF965214;

  return sub_1BF96381C();
}

double sub_1BF963940@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1BF95FA40(sub_1BF965090, a1, v4);
  if (v5)
  {
    sub_1BF8C2C9C(&v6, a2);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_1BF8DFBF0(v4, &qword_1EBDE9E40, &qword_1BF9C3088);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF9639E4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 48))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 48))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1BF9B56D8();
  }

  return v12 & 1;
}

uint64_t sub_1BF963AD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1BF8D07A8();
    v2 = v11;
    v4 = a1 + 32;
    do
    {
      sub_1BF96510C(v4, __src, &qword_1EBDE8AD8, &qword_1BF9C3080);
      memcpy(v8, __src, sizeof(v8));
      sub_1BF8C2C9C(v8, v10);
      __swift_destroy_boxed_opaque_existential_1(&v8[2] + 1);
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        OUTLINED_FUNCTION_11_3(v5);
        sub_1BF8D07A8();
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_1BF8C2C9C(v10, v2 + 40 * v6 + 32);
      v4 += 80;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1BF963C50(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E00, &qword_1BF9C30F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

size_t sub_1BF963CF4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E90, &qword_1BF9C30E8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8938, &qword_1BF9B8010) - 8);
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

size_t sub_1BF963E4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF963F48(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E68, &qword_1BF9C30C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

void sub_1BF963FCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_2_21(a1, a2, a3, a4, a5);
  sub_1BF8C192C(v8, (v7 + 32 * v6));
  OUTLINED_FUNCTION_33_7();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_1BF96400C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_21(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_28_10(v6, v11);
  }
}

unint64_t sub_1BF964038(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_3_21(a1, a2, a3, a4);
  *(v7 + result) = v6;
  *(*(v5 + 56) + 8 * result) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
  }

  return result;
}

unint64_t sub_1BF964070(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_3_21(a1, a2, a3, a4);
  v7 = (v6 + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(*(v5 + 56) + 8 * result) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v13;
  }

  return result;
}

void sub_1BF9640AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_2_21(a1, a2, a3, a4, a5);
  sub_1BF8DFCB8(v8, (v7 + 48 * v6));
  OUTLINED_FUNCTION_33_7();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_1BF9640F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_3_21(a1, a2, a3, a4);
  memcpy((v8 + 120 * v7), v9, 0x78uLL);
  *(*(a4 + 56) + 8 * a1) = a3;
  OUTLINED_FUNCTION_33_7();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

void sub_1BF96414C(unint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_3_21(a1, a2, a3, a4);
  memcpy((v8 + 120 * v7), v9, 0x78uLL);
  sub_1BF8C2C9C(a3, *(a4 + 56) + 40 * a1);
  OUTLINED_FUNCTION_33_7();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

void sub_1BF9641B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_21(a1, a2, a3, a4, a5);
  v8 = (v7 + 48 * v5);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v8[2] = v9[2];
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_28_10(v6, v13);
  }
}

uint64_t sub_1BF9641F4(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v25 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v15 == v10)
      {
        break;
      }

      v11 += 4;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BF96437C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_19:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1BF8E69C4(*(a4 + 56) + 40 * (v16 | (v13 << 6)), v17);
      sub_1BF8C2C9C(v17, v18);
      result = sub_1BF8C2C9C(v18, v11);
      v11 += 40;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF9644D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ActionIdentifier();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[3] = type metadata accessor for DefaultCandidateSuggestionConfigurator(0);
  v33[4] = &protocol witness table for DefaultCandidateSuggestionConfigurator;
  v33[0] = a4;
  swift_beginAccess();
  v14 = *(a5 + 360);
  v15 = *(v14 + 16);

  if (v15 && (v16 = sub_1BF9B2C5C(a1), (v17 & 1) != 0))
  {
    v18 = *(*(v14 + 56) + 8 * v16);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1BF8D2068(a2, v13);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for InternalSuggestionDetailsBuilder();
  *&v29[0] = a3;

  sub_1BF978E0C(v13, v29, v33, v30);

  v19 = v31;
  v20 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v20 + 8))(v29, v13, v19, v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = *(v18 + 16);
    sub_1BF8DDF88();
    v18 = v25;
  }

  v21 = *(v18 + 16);
  if (v21 >= *(v18 + 24) >> 1)
  {
    sub_1BF8DDF88();
    v18 = v26;
  }

  *(v18 + 16) = v21 + 1;
  sub_1BF8C2C9C(v29, v18 + 40 * v21 + 32);
  swift_beginAccess();
  v22 = *(a5 + 360);
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a5 + 360);
  sub_1BF9369F0(v18, a1);
  *(a5 + 360) = v28;
  swift_endAccess();
  sub_1BF9651B0(v13);

  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return a5;
}

uint64_t sub_1BF964758(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ActionIdentifier();
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v19 = v18 - v17;
  v41[3] = a6;
  v41[4] = a7;
  __swift_allocate_boxed_opaque_existential_1Tm(v41);
  OUTLINED_FUNCTION_11(a6);
  (*(v20 + 16))();
  v21 = *a3;
  OUTLINED_FUNCTION_15_3();
  v22 = *(a5 + 360);
  v23 = *(v22 + 16);

  if (v23 && (v24 = sub_1BF9B2C5C(a1), (v25 & 1) != 0))
  {
    v26 = *(*(v22 + 56) + 8 * v24);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  sub_1BF8D2068(a2, v19);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for InternalSuggestionDetailsBuilder();
  *&v37[0] = v21;

  sub_1BF978E0C(v19, v37, v41, v38);

  v27 = v39;
  v28 = v40;
  OUTLINED_FUNCTION_28(v38, v39);
  (*(v28 + 8))(v37, v19, v27, v28);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = *(v26 + 16);
    OUTLINED_FUNCTION_28_0();
    sub_1BF8DDF88();
    v26 = v34;
  }

  v30 = *(v26 + 16);
  v29 = *(v26 + 24);
  if (v30 >= v29 >> 1)
  {
    OUTLINED_FUNCTION_11_3(v29);
    OUTLINED_FUNCTION_16_12();
    sub_1BF8DDF88();
    v26 = v35;
  }

  *(v26 + 16) = v30 + 1;
  sub_1BF8C2C9C(v37, v26 + 40 * v30 + 32);
  OUTLINED_FUNCTION_23();
  v31 = *(a5 + 360);
  swift_isUniquelyReferenced_nonNull_native();
  v36 = *(a5 + 360);
  sub_1BF9369F0(v26, a1);
  *(a5 + 360) = v36;
  swift_endAccess();
  sub_1BF9651B0(v19);

  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return a5;
}

uint64_t sub_1BF964A28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_35_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

unint64_t sub_1BF964AC0()
{
  result = qword_1EDBF1A00;
  if (!qword_1EDBF1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF1A00);
  }

  return result;
}

uint64_t dispatch thunk of SuggestionOwnerDefinitionBuilder.allEntities.getter()
{
  v2 = *(*v0 + 560);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BF963358;

  return v6();
}

uint64_t sub_1BF964F74(uint64_t a1, uint64_t a2)
{
  result = sub_1BF965048(&qword_1EDBF2FE8, a2, type metadata accessor for DefaultGeneration);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF964FCC(uint64_t a1)
{
  result = sub_1BF964FF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF964FF4()
{
  result = qword_1EDBF1A08[0];
  if (!qword_1EDBF1A08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF1A08);
  }

  return result;
}

uint64_t sub_1BF965048(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1BF96510C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_35_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1BF9651B0(uint64_t a1)
{
  v2 = type metadata accessor for ActionIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1)
{
  *(v1 + 784) = a1;
  *v2 = *(v1 + 64);

  return sub_1BF978FA0();
}

void *OUTLINED_FUNCTION_29_7()
{

  return memcpy((v2 + 80 * v1 + 32), (v0 + 784), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1, __n128 a2)
{
  *(v2 + 344) = 0;
  *(v2 + 312) = a2;
  *(v2 + 328) = a2;

  return sub_1BF8E69C4(a1, v2 + 16);
}

uint64_t Interaction.relatedIntents.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for InteractionIntents();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t type metadata accessor for InteractionIntents()
{
  result = qword_1EDBF2CB8;
  if (!qword_1EDBF2CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Interaction.generationId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9998, &qword_1BF9C07C0);
  OUTLINED_FUNCTION_72(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1BF9B44D8();
  v8 = sub_1BF9B4518();
  result = __swift_getEnumTagSinglePayload(v7, 1, v8);
  if (result != 1)
  {
    return (*(*(v8 - 8) + 32))(a1, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t InteractionIntents.description.getter()
{
  v1 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_17();
  v6 = v5 - v4;
  v7 = type metadata accessor for SiriSuggestions.Intent(0);
  v8 = OUTLINED_FUNCTION_72(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v13 = v12 - v11;
  v14 = type metadata accessor for InteractionIntents();
  v15 = OUTLINED_FUNCTION_13(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v20 = (v19 - v18);
  OUTLINED_FUNCTION_2_22();
  sub_1BF966070(v0, v20, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v20;
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_1BF9B5288();
    MEMORY[0x1BFB5DE90](0xD00000000000003ALL, 0x80000001BF9CD320);
    v23 = *(v22 + 16);
    if (v23)
    {
      v57 = MEMORY[0x1E69E7CC0];
      v24 = &v57;
      sub_1BF8D01E0();
      OUTLINED_FUNCTION_9_12();
      v26 = v22 + v25;
      v27 = *(v2 + 72);
      do
      {
        sub_1BF966070(v26, v6, type metadata accessor for SiriSuggestions.IntentQuery);
        v28 = *(v6 + 8);
        v29 = *(v6 + 16);
        v30 = *(v6 + 24);
        sub_1BF9439F0(v28, v29, v30);
        OUTLINED_FUNCTION_6_14();
        v57 = v24;
        v31 = v24[2];
        if (v31 >= v24[3] >> 1)
        {
          sub_1BF8D01E0();
          v24 = v57;
        }

        v24[2] = v31 + 1;
        v32 = &v24[3 * v31];
        v32[4] = v28;
        v32[5] = v29;
        *(v32 + 48) = v30;
        v26 += v27;
        --v23;
      }

      while (v23);
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
    }

    v44 = MEMORY[0x1BFB5E030](v24, &type metadata for SiriSuggestions.IntentType);
    v46 = v45;

    MEMORY[0x1BFB5DE90](v44, v46);

    return v58;
  }

  else
  {
    v33 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E98, &qword_1BF9C30F8) + 48));
    sub_1BF8F1970(v20, v13);
    if (v33)
    {
      v58 = 0;
      v59 = 0xE000000000000000;
      v34 = *(v33 + 16);
      if (v34)
      {
        v56 = v13;
        v57 = MEMORY[0x1E69E7CC0];
        v35 = &v57;
        sub_1BF8D01E0();
        OUTLINED_FUNCTION_9_12();
        v37 = v33 + v36;
        v38 = *(v2 + 72);
        do
        {
          sub_1BF966070(v37, v6, type metadata accessor for SiriSuggestions.IntentQuery);
          v39 = *(v6 + 8);
          v40 = *(v6 + 16);
          v41 = *(v6 + 24);
          sub_1BF9439F0(v39, v40, v41);
          OUTLINED_FUNCTION_6_14();
          v57 = v35;
          v42 = v35[2];
          if (v42 >= v35[3] >> 1)
          {
            sub_1BF8D01E0();
            v35 = v57;
          }

          v35[2] = v42 + 1;
          v43 = &v35[3 * v42];
          v43[4] = v39;
          v43[5] = v40;
          *(v43 + 48) = v41;
          v37 += v38;
          --v34;
        }

        while (v34);

        v13 = v56;
      }

      else
      {

        v35 = MEMORY[0x1E69E7CC0];
      }

      v50 = MEMORY[0x1BFB5E030](v35, &type metadata for SiriSuggestions.IntentType);
      v52 = v51;

      MEMORY[0x1BFB5DE90](v50, v52);

      v49 = v58;
      v48 = v59;
    }

    else
    {
      v48 = 0xE300000000000000;
      v49 = 7104878;
    }

    v58 = 0;
    v59 = 0xE000000000000000;
    sub_1BF9B5288();
    MEMORY[0x1BFB5DE90](0xD00000000000002BLL, 0x80000001BF9CD360);
    countAndFlagsBits = SiriSuggestions.Intent.getIdentifier()()._countAndFlagsBits;
    MEMORY[0x1BFB5DE90](countAndFlagsBits);

    MEMORY[0x1BFB5DE90](0xD000000000000021, 0x80000001BF9CD390);
    MEMORY[0x1BFB5DE90](v49, v48);

    v47 = v58;
    OUTLINED_FUNCTION_0_22();
    sub_1BF9660D0(v13, v54);
  }

  return v47;
}

BOOL static InteractionIntents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.Intent(0);
  v5 = OUTLINED_FUNCTION_72(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v10 = v9 - v8;
  v11 = type metadata accessor for InteractionIntents();
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EA0, &qword_1BF9C3100);
  OUTLINED_FUNCTION_72(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_9();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v49 - v25;
  v27 = (&v49 + *(v24 + 56) - v25);
  sub_1BF966070(a1, &v49 - v25, type metadata accessor for InteractionIntents);
  sub_1BF966070(a2, v27, type metadata accessor for InteractionIntents);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_2_22();
    sub_1BF966070(v26, v19, v32);
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E98, &qword_1BF9C30F8) + 48);
    v34 = *&v19[v33];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      OUTLINED_FUNCTION_0_22();
      sub_1BF9660D0(v19, v35);
LABEL_7:
      sub_1BF8DFBF0(v26, &qword_1EBDE9EA0, &qword_1BF9C3100);
      return 0;
    }

    v36 = *(v27 + v33);
    sub_1BF8F1970(v27, v10);
    static SiriSuggestions.Intent.== infix(_:_:)();
    v38 = v37;
    OUTLINED_FUNCTION_0_22();
    sub_1BF9660D0(v19, v39);
    if (v38)
    {
      if (v34)
      {
        if (v36)
        {

          v41 = sub_1BF8CECDC(v40, v36);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_0_22();
          sub_1BF9660D0(v10, v42);
          if (v41)
          {
            goto LABEL_19;
          }
        }

        else
        {

          OUTLINED_FUNCTION_0_22();
          sub_1BF9660D0(v10, v48);
        }

LABEL_15:
        OUTLINED_FUNCTION_1_20();
        sub_1BF9660D0(v26, v44);
        return 0;
      }

      OUTLINED_FUNCTION_0_22();
      sub_1BF9660D0(v10, v46);
      if (!v36)
      {
LABEL_19:
        OUTLINED_FUNCTION_1_20();
        sub_1BF9660D0(v26, v47);
        return 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_22();
      sub_1BF9660D0(v10, v43);
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_2_22();
  sub_1BF966070(v26, v17, v28);
  v29 = *v17;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_7;
  }

  v30 = sub_1BF8CECDC(v29, *v27);

  OUTLINED_FUNCTION_1_20();
  sub_1BF9660D0(v26, v31);
  return v30;
}

uint64_t Interaction.getMentionedAppIds()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EA8, &unk_1BF9C3108);
  OUTLINED_FUNCTION_72(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for SiriSuggestions.Intent(0);
  v11 = OUTLINED_FUNCTION_72(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v16 = v15 - v14;
  (*(a2 + 40))(a1, a2);
  v17 = type metadata accessor for InteractionIntents();
  if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
  {
    sub_1BF8DFBF0(v9, &qword_1EBDE9EA8, &unk_1BF9C3108);
    return MEMORY[0x1E69E7CC0];
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_1_20();
    sub_1BF9660D0(v9, v18);
    return MEMORY[0x1E69E7CC0];
  }

  v20 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E98, &qword_1BF9C30F8) + 48)];

  sub_1BF8F1970(v9, v16);
  v21 = SiriSuggestions.Intent.getSiriHelpMentionedAppId()();
  if (v21.value._object)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BF9B6370;
    *(v19 + 32) = v21;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_0_22();
  sub_1BF9660D0(v16, v22);
  return v19;
}

Swift::OpaquePointer_optional __swiftcall Interaction.getIntentsToSuggest()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EA8, &unk_1BF9C3108);
  OUTLINED_FUNCTION_72(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v23 - v8);
  (*(v2 + 40))(v3, v2);
  v10 = type metadata accessor for InteractionIntents();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF9B47C8();
    __swift_project_value_buffer(v11, qword_1EDBF5570);
    v12 = sub_1BF9B47A8();
    v13 = sub_1BF9B5038();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      v16 = sub_1BF9B58D8();
      v18 = sub_1BF8DE810(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1BF8B8000, v12, v13, "%s does not have .intentsToSuggest(intentQueries:) Returning nil", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFB5F320](v15, -1, -1);
      MEMORY[0x1BFB5F320](v14, -1, -1);
    }

    v20 = 0;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v9;
  }

  else
  {
    v20 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E98, &qword_1BF9C30F8) + 48));
    OUTLINED_FUNCTION_0_22();
    sub_1BF9660D0(v9, v21);
  }

  v22 = v20;
  result.value._rawValue = v22;
  result.is_nil = v19;
  return result;
}

uint64_t sub_1BF966070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF9660D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1BF9661CC()
{
  sub_1BF966240();
  if (v0 <= 0x3F)
  {
    sub_1BF9662C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BF966240()
{
  if (!qword_1EDBF3950[0])
  {
    type metadata accessor for SiriSuggestions.Intent(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9EB0, &qword_1BF9C31A8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDBF3950);
    }
  }
}

void sub_1BF9662C0()
{
  if (!qword_1EDBF05A0)
  {
    sub_1BF966308();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF05A0);
    }
  }
}

void sub_1BF966308()
{
  if (!qword_1EDBF0598)
  {
    type metadata accessor for SiriSuggestions.IntentQuery(255);
    v0 = sub_1BF9B4E08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF0598);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return sub_1BF9660D0(v0, type metadata accessor for SiriSuggestions.IntentQuery);
}

__n128 Preference.init(weighting:reason:)@<Q0>(unint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u8[8] = a2 & 1;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t sub_1BF9663A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF96A880;

  return CandidateSuggestion.getLoggingAction()(a1, a2, a3);
}

uint64_t sub_1BF966450(uint64_t a1)
{
  *(v2 + 352) = a1;
  *(v2 + 360) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BF966470, 0, 0);
}

uint64_t sub_1BF966470()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 360);
  v2 = v1[4];
  sub_1BF8E69C4(v2 + 200, v0 + 288);
  v3 = *(v0 + 312);
  *(v0 + 368) = v3;
  *(v0 + 384) = __swift_project_boxed_opaque_existential_1((v0 + 288), v3);
  sub_1BF8C4A08(v2 + 56, v0 + 16);
  *(v0 + 392) = v1[5];
  *(v0 + 400) = v1[2];
  *(v0 + 408) = v1[3];
  *(v0 + 416) = swift_getObjectType();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_15_4();
  v4 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BF96652C()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  Context.getAppId()();
  v4 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BF966590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 384);
  v5 = *(v3 + 352);
  v6 = *(v3 + 344);
  v7 = OUTLINED_FUNCTION_14_12(a1, *(v3 + 392), a3, *(v3 + 368), *(v3 + 376));
  v8(v3 + 16, v7);

  sub_1BF8E9F70(v3 + 16);
  __swift_destroy_boxed_opaque_existential_1((v3 + 288));
  OUTLINED_FUNCTION_77();

  return v9();
}

uint64_t CandidateSuggestion.getLoggingAction()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[81] = v3;
  v4[80] = a3;
  v4[79] = a2;
  v4[78] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF966648()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = v2[2];
  v5 = OUTLINED_FUNCTION_88();
  v6 = v4(v5);
  sub_1BF8C4A08(v6 + 56, v0 + 16);

  sub_1BF8E69C4(v0 + 160, v0 + 560);
  sub_1BF8E9F70(v0 + 16);
  v7 = *(v0 + 584);
  *(v0 + 656) = v7;
  *(v0 + 672) = __swift_project_boxed_opaque_existential_1((v0 + 560), v7);
  v8 = OUTLINED_FUNCTION_88();
  v9 = v4(v8);
  sub_1BF8C4A08(v9 + 56, v0 + 288);

  v10 = v2[3];
  v11 = OUTLINED_FUNCTION_88();
  *(v0 + 680) = v12(v11);
  v13 = v2[1];
  v14 = OUTLINED_FUNCTION_88();
  *(v0 + 688) = v15(v14);
  *(v0 + 696) = v16;
  *(v0 + 704) = swift_getObjectType();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_15_4();
  v17 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1BF966794()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  Context.getAppId()();
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BF966804()
{
  OUTLINED_FUNCTION_6();
  v13 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v8 = OUTLINED_FUNCTION_14_12(v5, v6, v7, *(v0 + 656), *(v0 + 664));
  v9(v0 + 288, v1, &v12, v8);

  sub_1BF8E9F70(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  OUTLINED_FUNCTION_77();

  return v10();
}

uint64_t sub_1BF9668B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF966964;

  return CandidateSuggestion.suggestionGroup.getter(a1, a2, a3);
}

uint64_t sub_1BF966964()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_77();

  return v2();
}

uint64_t sub_1BF966A50(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BF966A70, 0, 0);
}

uint64_t sub_1BF966A70()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[13];
  v0[14] = *(v1 + 16);
  v0[15] = *(v1 + 24);
  v0[16] = swift_getObjectType();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_15_4();
  v2 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BF966AEC()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[14];
  sub_1BF96700C(v0[16], v0[15], (v0 + 2));
  v2 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BF966B50()
{
  if (*(v0 + 40))
  {
    sub_1BF8D5C74((v0 + 16), *(v0 + 96));
  }

  else
  {
    v1 = *(v0 + 96);
    sub_1BF8E69C4(*(*(v0 + 104) + 32) + 16, v0 + 56);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
    (*(v3 + 40))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (*(v0 + 40))
    {
      sub_1BF8E8118(v0 + 16, &qword_1EBDE8A88, &unk_1BF9B8580);
    }
  }

  OUTLINED_FUNCTION_77();

  return v4();
}

uint64_t CandidateSuggestion.suggestionGroup.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF966C4C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[15];
  v0[16] = (*(v0[14] + 8))(v0[13]);
  v0[17] = v2;
  v0[18] = swift_getObjectType();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_15_4();
  v3 = OUTLINED_FUNCTION_2_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BF966CD8()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[16];
  sub_1BF96700C(v0[18], v0[17], (v0 + 2));
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BF966D44()
{
  if (*(v0 + 40))
  {
    sub_1BF8D5C74((v0 + 16), *(v0 + 96));
  }

  else
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 96);
    v3 = (*(*(v0 + 112) + 16))(*(v0 + 104));
    sub_1BF8E69C4(v3 + 16, v0 + 56);

    v4 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v5 = *(v4 + 40);
    v6 = OUTLINED_FUNCTION_83();
    v7(v6, v4);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (*(v0 + 40))
    {
      sub_1BF8E8118(v0 + 16, &qword_1EBDE8A88, &unk_1BF9B8580);
    }
  }

  OUTLINED_FUNCTION_77();

  return v8();
}

uint64_t SuggestionEnablementState.description.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

SiriSuggestionsKit::SuggestionEnablementState_optional __swiftcall SuggestionEnablementState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF966F30@<X0>(uint64_t *a1@<X8>)
{
  result = SuggestionEnablementState.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1BF96700C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EDBF4B40 != -1)
  {
    OUTLINED_FUNCTION_4_20();
  }

  v6 = qword_1EDBF4B48;
  v8[3] = type metadata accessor for DefaultOwner();
  v8[4] = &protocol witness table for DefaultOwner;
  v8[0] = v6;

  Context.getParam(for:key:)(v8, 0xD000000000000011, 0x80000001BF9CD490, a1, a2, &v9);
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v10)
  {
    sub_1BF8E8118(&v9, &qword_1EBDE9208, &unk_1BF9C2A50);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A80, &unk_1BF9C3A90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t Preference.weighting.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

__n128 Preference.reason.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t static Preference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v4)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5 >> 3;
  if (v11 == 23)
  {
    if ((v8 & 0xF8) == 0xB8)
    {
      return 1;
    }
  }

  else
  {
    if (v11 == 31)
    {
      return (~v8 & 0xF8) == 0;
    }

    if ((~(v8 >> 3) & 0x17) != 0)
    {
      if (v5 >> 6)
      {
        if (v5 >> 6 != 1)
        {
          switch(v5)
          {
            case -127:
              v13 = v8 == 129;
              break;
            case -126:
              v13 = v8 == 130;
              break;
            case -125:
              v13 = v8 == 131;
              break;
            case -124:
              v13 = v8 == 132;
              break;
            case -123:
              v13 = v8 == 133;
              break;
            default:
              v13 = v8 == 128;
              break;
          }

          return v13 && v6 == v9;
        }

        if ((v8 & 0xC0) != 0x40 || (sub_1BF8CAC04(v5 & 1) & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8 >= 0x40u || (sub_1BF8CA4F0() & 1) == 0)
      {
        return 0;
      }

      return v6 == v9;
    }
  }

  return 0;
}

BOOL static PreferenceReason.== infix(_:_:)(double *a1, double *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = LOBYTE(v4) >> 3;
  if (v6 == 23)
  {
    return (LOBYTE(v5) & 0xF8) == 0xB8;
  }

  if (v6 == 31)
  {
    return (~LOBYTE(v5) & 0xF8) == 0;
  }

  if ((~(LODWORD(v5) >> 3) & 0x17) == 0)
  {
    return 0;
  }

  v8 = a2[1];
  v9 = a1[1];
  if (LOBYTE(v4) >> 6)
  {
    if (LOBYTE(v4) >> 6 != 1)
    {
      switch(LOBYTE(v4))
      {
        case 0x81:
          if (LOBYTE(v5) != 129)
          {
            return 0;
          }

          return v9 == v8;
        case 0x82:
          if (LOBYTE(v5) != 130)
          {
            return 0;
          }

          return v9 == v8;
        case 0x83:
          if (LOBYTE(v5) != 131)
          {
            return 0;
          }

          return v9 == v8;
        case 0x84:
          if (LOBYTE(v5) != 132)
          {
            return 0;
          }

          return v9 == v8;
        case 0x85:
          if (LOBYTE(v5) != 133)
          {
            return 0;
          }

          return v9 == v8;
        default:
          if (LOBYTE(v5) != 128)
          {
            return 0;
          }

          return v9 == v8;
      }
    }

    if ((LOBYTE(v5) & 0xC0) != 0x40 || (sub_1BF8CAC04(LOBYTE(v4) & 1) & 1) == 0)
    {
      return 0;
    }

    return v9 == v8;
  }

  if (LOBYTE(v5) < 0x40u && (sub_1BF8CA4F0() & 1) != 0)
  {
    return v9 == v8;
  }

  return 0;
}

uint64_t sub_1BF967410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69746867696577 && a2 == 0xE900000000000067;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF9674DC(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x6E69746867696577;
  }
}

uint64_t sub_1BF967534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF967410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF96755C(uint64_t a1)
{
  v2 = sub_1BF96775C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF967598(uint64_t a1)
{
  v2 = sub_1BF96775C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Preference.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EB8, &qword_1BF9C31D8);
  OUTLINED_FUNCTION_1(v4);
  v19 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = v1[2];
  v17 = v1[3];
  v18 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF96775C();
  sub_1BF9B5898();
  LOBYTE(v20) = 0;
  sub_1BF9B55D8();
  if (!v2)
  {
    v20 = v18;
    v21 = v17;
    v22 = 1;
    sub_1BF9677B0();
    sub_1BF9B5638();
  }

  return (*(v19 + 8))(v10, v4);
}

unint64_t sub_1BF96775C()
{
  result = qword_1EBDE9EC0;
  if (!qword_1EBDE9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9EC0);
  }

  return result;
}

unint64_t sub_1BF9677B0()
{
  result = qword_1EBDE9EC8;
  if (!qword_1EBDE9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9EC8);
  }

  return result;
}

uint64_t Preference.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9ED0, &qword_1BF9C31E0);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF96775C();
  sub_1BF9B5868();
  if (!v2)
  {
    LOBYTE(v19) = 0;
    v14 = sub_1BF9B54F8();
    v16 = v15;
    v20 = 1;
    sub_1BF9679C0();
    sub_1BF9B5558();
    (*(v7 + 8))(v12, v5);
    v18 = v19;
    *a2 = v14;
    *(a2 + 8) = v16 & 1;
    *(a2 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BF9679C0()
{
  result = qword_1EBDE9ED8;
  if (!qword_1EBDE9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9ED8);
  }

  return result;
}

uint64_t sub_1BF967A14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001BF9CD470 == a2;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x764F6769666E6F63 && a2 == 0xEE00656469727265;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x636E6176656C6572 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BF967B3C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0x764F6769666E6F63;
  }

  return 0x636E6176656C6572;
}

uint64_t sub_1BF967BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEF65726F63536563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BF967C78(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x6C656E6E616863;
  }
}

uint64_t sub_1BF967CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF967A14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF967D20(uint64_t a1)
{
  v2 = sub_1BF968364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF967D5C(uint64_t a1)
{
  v2 = sub_1BF968364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF967D98(uint64_t a1)
{
  v2 = sub_1BF968460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF967DD4(uint64_t a1)
{
  v2 = sub_1BF968460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF967E10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF967E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF967BA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF967E8C(uint64_t a1)
{
  v2 = sub_1BF9683B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF967EC8(uint64_t a1)
{
  v2 = sub_1BF9683B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF967F04(uint64_t a1)
{
  v2 = sub_1BF9684B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF967F40(uint64_t a1)
{
  v2 = sub_1BF9684B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreferenceReason.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EE0, &qword_1BF9C31E8);
  v5 = OUTLINED_FUNCTION_1(v4);
  v50 = v6;
  v51 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EE8, &qword_1BF9C31F0);
  v12 = OUTLINED_FUNCTION_1(v11);
  v47 = v13;
  v48 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_54_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EF0, &qword_1BF9C31F8);
  OUTLINED_FUNCTION_1(v17);
  v46 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9EF8, &qword_1BF9C3200);
  v25 = OUTLINED_FUNCTION_1(v24);
  v52 = v26;
  v53 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v30 = *v1;
  v31 = v1[1];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF968364();
  sub_1BF9B5898();
  v33 = v30 >> 3;
  if (v33 == 23)
  {
    v56 = 1;
    sub_1BF968460();
    v38 = v53;
    sub_1BF9B5598();
    (*(v47 + 8))(v2, v48);
    v35 = OUTLINED_FUNCTION_12_14();
    v37 = v38;
    return v36(v35, v37);
  }

  if (v33 == 31)
  {
    v55 = 0;
    sub_1BF9684B4();
    v34 = v53;
    sub_1BF9B5598();
    (*(v46 + 8))(v23, v17);
    v35 = OUTLINED_FUNCTION_12_14();
    v37 = v34;
    return v36(v35, v37);
  }

  v60 = 2;
  sub_1BF9683B8();
  v40 = v49;
  v41 = v53;
  sub_1BF9B5598();
  v59 = v30;
  v58 = 0;
  sub_1BF96840C();
  v42 = v51;
  v43 = v54;
  sub_1BF9B5638();
  if (!v43)
  {
    v57 = 1;
    sub_1BF9B5618();
  }

  (*(v50 + 8))(v40, v42);
  v44 = OUTLINED_FUNCTION_12_14();
  return v45(v44, v41);
}

unint64_t sub_1BF968364()
{
  result = qword_1EBDE9F00;
  if (!qword_1EBDE9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F00);
  }

  return result;
}

unint64_t sub_1BF9683B8()
{
  result = qword_1EBDE9F08;
  if (!qword_1EBDE9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F08);
  }

  return result;
}

unint64_t sub_1BF96840C()
{
  result = qword_1EBDE9F10;
  if (!qword_1EBDE9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F10);
  }

  return result;
}

unint64_t sub_1BF968460()
{
  result = qword_1EBDE9F18;
  if (!qword_1EBDE9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F18);
  }

  return result;
}

unint64_t sub_1BF9684B4()
{
  result = qword_1EBDE9F20;
  if (!qword_1EBDE9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F20);
  }

  return result;
}

uint64_t PreferenceReason.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9F28, &qword_1BF9C3208);
  OUTLINED_FUNCTION_1(v70);
  v68 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v74 = v65 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9F30, &qword_1BF9C3210);
  OUTLINED_FUNCTION_1(v73);
  v71 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_54_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9F38, &qword_1BF9C3218);
  OUTLINED_FUNCTION_1(v13);
  v69 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9F40, &qword_1BF9C3220);
  OUTLINED_FUNCTION_1(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v65 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1BF968364();
  v30 = v76;
  sub_1BF9B5868();
  if (v30)
  {
    goto LABEL_12;
  }

  v66 = v13;
  v67 = v19;
  v31 = v73;
  v76 = v22;
  v32 = v27;
  v33 = sub_1BF9B5568();
  result = sub_1BF8D21BC(v33, 0);
  if (v36 == v37 >> 1)
  {
    v38 = v20;
LABEL_11:
    v50 = sub_1BF9B5308();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
    *v52 = &type metadata for PreferenceReason;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    v54 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_11(v50);
    (*(v55 + 104))(v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    v56 = OUTLINED_FUNCTION_7_13();
    v57(v56, v38);
LABEL_12:
    v49 = v75;
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v65[1] = 0;
  if (v36 < (v37 >> 1))
  {
    v39 = *(v35 + v36);
    sub_1BF8D21AC(v36 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    if (v41 == v43 >> 1)
    {
      if (v39)
      {
        if (v39 == 1)
        {
          v78 = 1;
          sub_1BF968460();
          OUTLINED_FUNCTION_23_13();
          v44 = v72;
          swift_unknownObjectRelease();
          (*(v71 + 8))(v2, v31);
          v45 = OUTLINED_FUNCTION_7_13();
          v46(v45, v20);
          v47 = 0;
          v48 = 184;
        }

        else
        {
          v82 = 2;
          sub_1BF9683B8();
          OUTLINED_FUNCTION_23_13();
          v44 = v72;
          v80 = 0;
          sub_1BF969C5C();
          sub_1BF9B5558();
          v61 = v76;
          v48 = v81;
          v79 = 1;
          sub_1BF9B5538();
          v47 = v62;
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_30_8();
          v64(v63);
          (*(v61 + 8))(v32, v20);
        }

        v49 = v75;
      }

      else
      {
        v77 = 0;
        sub_1BF9684B4();
        v58 = v67;
        OUTLINED_FUNCTION_23_13();
        swift_unknownObjectRelease();
        (*(v69 + 8))(v58, v66);
        v59 = OUTLINED_FUNCTION_7_13();
        v60(v59, v20);
        v47 = 0;
        v48 = 248;
        v49 = v75;
        v44 = v72;
      }

      *v44 = v48;
      v44[1] = v47;
      return __swift_destroy_boxed_opaque_existential_1(v49);
    }

    v38 = v20;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall CandidateSuggestion.getSuggestionId()()
{
  v1 = (*(v0 + 16))();
  sub_1BF8C4A08(v1 + 56, v7);

  v2 = v7[0];
  v3 = v7[1];

  sub_1BF8E9F70(v7);
  v4 = v2;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t DefaultCandidateSuggestion.context.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t DefaultCandidateSuggestion.deliveryVehicle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 80);
  *(a1 + 32) = v6;
  return sub_1BF8E6A24(v2, v3, v4, v5, v6);
}

__n128 DefaultCandidateSuggestion.preference.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 88);
  v3 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:objective:preference:invocationType:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_20_14();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v14 = *v5;
  v15 = *v1;
  v16 = *(v11 + 16);
  v22 = v3[1];
  v23 = *v3;
  OUTLINED_FUNCTION_13_10();
  v17();
  sub_1BF8E69C4(v7, v24);
  OUTLINED_FUNCTION_26_13();
  DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:objective:preference:invocationType:suggestionEnablementState:)();
  v18 = OUTLINED_FUNCTION_83();
  __swift_destroy_boxed_opaque_existential_1(v18);
  v19 = *(v11 + 8);
  v20 = OUTLINED_FUNCTION_68();
  v21(v20);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

void DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:objective:preference:invocationType:suggestionEnablementState:)()
{
  OUTLINED_FUNCTION_65_0();
  v28 = v5;
  OUTLINED_FUNCTION_19_14();
  v7 = v6;
  v8 = sub_1BF9B4518();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v16 = v15 - v14;
  v17 = *v4;
  v18 = *v2;
  v19 = *v1;
  v20 = *(v11 + 16);
  v27 = *v3;
  v26 = v3[1];
  OUTLINED_FUNCTION_13_10();
  v21();
  sub_1BF8E69C4(v0, v35);
  memset(v33, 0, sizeof(v33));
  v34 = -1;
  HIBYTE(v32) = v17;
  v31[1] = v26;
  v31[0] = v27;
  v30 = v18;
  v29 = v19;
  DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:invocationType:suggestionEnablementState:)(v16, v7, v28, v35, v33, &v32 + 7, v31, &v30, &v29);
  v22 = OUTLINED_FUNCTION_83();
  __swift_destroy_boxed_opaque_existential_1(v22);
  v23 = *(v11 + 8);
  v24 = OUTLINED_FUNCTION_68();
  v25(v24);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

uint64_t DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:invocationType:suggestionEnablementState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __int128 *a5, char *a6, __int128 *a7, __int16 *a8, char *a9)
{
  v13 = *a6;
  v14 = *a8;
  v29 = *(a5 + 32);
  v30 = *a9;
  type metadata accessor for ContextContainer();
  v16 = a4[3];
  v15 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v16);
  (*(v15 + 8))(v36, v16, v15);
  LOWORD(v34[0]) = v14;
  v27 = *a5;
  v28 = *a7;
  v25 = a5[1];
  v26 = a7[1];
  v17 = static ContextContainer.createGenerationContext(generationId:sourceOwner:invocationType:)(a1, v36, v34);
  v19 = v18;
  sub_1BF8E8118(v36, &qword_1EBDE9918, &qword_1BF9C0750);
  v36[0] = v27;
  v36[1] = v25;
  v37 = v29;
  v35 = v13;
  v34[1] = v26;
  v34[0] = v28;
  v33 = v30;
  DefaultCandidateSuggestion.__allocating_init(pooledSuggestion:params:deliveryVehicle:objective:preference:suggestionEnablementState:generationContext:)(a2, a3, v36, &v35, v34, &v33, v17, v19);
  v21 = v20;
  v22 = sub_1BF9B4518();
  OUTLINED_FUNCTION_11(v22);
  (*(v23 + 8))(a1);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v21;
}

void DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:invocationType:)()
{
  OUTLINED_FUNCTION_65_0();
  v35 = v5;
  OUTLINED_FUNCTION_19_14();
  v34 = v6;
  v7 = sub_1BF9B4518();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v15 = v14 - v13;
  v16 = *(v4 + 32);
  v17 = *v3;
  v18 = *v1;
  v19 = *(v10 + 16);
  v32 = *v4;
  v30 = v4[1];
  v33 = *v2;
  v31 = v2[1];
  OUTLINED_FUNCTION_13_10();
  v20();
  sub_1BF8E69C4(v0, &v44);
  v42 = v30;
  v41 = v32;
  v43 = v16;
  v40 = v17;
  v38 = v33;
  v39 = v31;
  v37 = v18;
  v36 = 0;
  OUTLINED_FUNCTION_16_13();
  DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:invocationType:suggestionEnablementState:)(v15, v34, v35, v21, v22, v23, v24, v25, &v36);
  v26 = OUTLINED_FUNCTION_83();
  __swift_destroy_boxed_opaque_existential_1(v26);
  v27 = *(v10 + 8);
  v28 = OUTLINED_FUNCTION_68();
  v29(v28);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

__n128 DefaultCandidateSuggestion.__allocating_init(pooledSuggestion:params:deliveryVehicle:objective:preference:suggestionEnablementState:generationContext:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a3 + 32);
  v15 = *a4;
  v16 = *a6;
  sub_1BF91C8E4(*(a1 + 152));
  v18 = sub_1BF9692CC(v17, a2);
  v25[0] = v16;
  v19 = sub_1BF9ADE30(v25, a7, a8);
  v21 = v20;
  swift_unknownObjectRelease();
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v21;
  *(v22 + 32) = a1;
  *(v22 + 40) = v18;
  v23 = *(a3 + 16);
  *(v22 + 48) = *a3;
  *(v22 + 64) = v23;
  *(v22 + 80) = v14;
  *(v22 + 81) = v15;
  result = *a5;
  *(v22 + 104) = *(a5 + 16);
  *(v22 + 88) = result;
  return result;
}

uint64_t sub_1BF9692CC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1BF969A2C(a1, sub_1BF9A4FA0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t DefaultCandidateSuggestion.__allocating_init(pooledSuggestion:params:context:deliveryVehicle:objective:preference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, _OWORD *a7)
{
  v14 = swift_allocObject();
  DefaultCandidateSuggestion.init(pooledSuggestion:params:context:deliveryVehicle:objective:preference:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t DefaultCandidateSuggestion.init(pooledSuggestion:params:context:deliveryVehicle:objective:preference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, _OWORD *a7)
{
  v8 = *(a5 + 16);
  *(v7 + 48) = *a5;
  *(v7 + 64) = v8;
  v9 = a7[1];
  *(v7 + 88) = *a7;
  v10 = *(a5 + 32);
  v11 = *a6;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 80) = v10;
  *(v7 + 81) = v11;
  *(v7 + 104) = v9;
  return v7;
}

uint64_t DefaultCandidateSuggestion.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_1BF969CB0(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t DefaultCandidateSuggestion.__deallocating_deinit()
{
  DefaultCandidateSuggestion.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

double sub_1BF969534@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *&result = DefaultCandidateSuggestion.preference.getter(a1).n128_u64[0];
  return result;
}

uint64_t sub_1BF969558(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF96A880;

  return sub_1BF966450(a1);
}

uint64_t sub_1BF96960C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF96A880;

  return sub_1BF966A50(a1);
}

uint64_t sub_1BF9696C0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDBF4B40 != -1)
  {
    OUTLINED_FUNCTION_4_20();
  }

  v6 = qword_1EDBF4B48;
  v11[3] = type metadata accessor for DefaultOwner();
  v11[4] = &protocol witness table for DefaultOwner;
  v11[0] = v6;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v10[3] = v7;
  __swift_allocate_boxed_opaque_existential_1Tm(v10);
  OUTLINED_FUNCTION_11(v7);
  (*(v8 + 16))();

  Context.setParam(for:key:value:)(v11, 0xD000000000000011, 0x80000001BF9CD490, v10, a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:objective:preference:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_20_14();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  v12 = *v3;
  v13 = *(v9 + 16);
  v19 = v1[1];
  v20 = *v1;
  OUTLINED_FUNCTION_13_10();
  v14();
  sub_1BF8E69C4(v5, v21);
  OUTLINED_FUNCTION_26_13();
  DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:objective:preference:invocationType:)();
  v15 = OUTLINED_FUNCTION_83();
  __swift_destroy_boxed_opaque_existential_1(v15);
  v16 = *(v9 + 8);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

void DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_20_14();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_54_0();
  v12 = *(v3 + 32);
  v13 = *v1;
  v14 = *(v9 + 16);
  v20 = v3[1];
  v21 = *v3;
  OUTLINED_FUNCTION_13_10();
  v15();
  sub_1BF8E69C4(v5, &v22);
  OUTLINED_FUNCTION_16_13();
  DefaultCandidateSuggestion.__allocating_init(generationId:pooledSuggestion:params:sourceProvider:deliveryVehicle:objective:preference:invocationType:)();
  v16 = OUTLINED_FUNCTION_83();
  __swift_destroy_boxed_opaque_existential_1(v16);
  v17 = *(v9 + 8);
  v18 = OUTLINED_FUNCTION_68();
  v19(v18);
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF969A2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1BF9A51A8(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    sub_1BF9A51E4(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_1BF90D2E8();
    }

    v8 = v29;
    sub_1BF8C192C(v30, v28);
    v9 = *a5;
    v11 = sub_1BF8C2E64(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A10, &unk_1BF9C3A80);
        sub_1BF9B53B8();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1BF95B594(v14);
      v16 = *a5;
      v17 = sub_1BF8C2E64(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_1BF8C187C(v28, v27);
        __swift_destroy_boxed_opaque_existential_1(v28);

        v20 = (v19[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_1BF8C192C(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_1BF8C192C(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

unint64_t sub_1BF969C5C()
{
  result = qword_1EBDE9F48;
  if (!qword_1EBDE9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F48);
  }

  return result;
}

uint64_t sub_1BF969CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1BF8C0CB8(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_1BF969CC8()
{
  result = qword_1EBDE9F50;
  if (!qword_1EBDE9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F50);
  }

  return result;
}

uint64_t dispatch thunk of CandidateSuggestion.getLoggingAction()()
{
  OUTLINED_FUNCTION_6();
  v9 = (OUTLINED_FUNCTION_15(v1, v2, v3) + 56);
  v10 = *v9 + **v9;
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_9_13(v5);

  return v7(v6);
}

uint64_t dispatch thunk of CandidateSuggestion.suggestionGroup.getter()
{
  OUTLINED_FUNCTION_6();
  v9 = (OUTLINED_FUNCTION_15(v1, v2, v3) + 64);
  v10 = *v9 + **v9;
  v4 = (*v9)[1];
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_9_13(v5);

  return v7(v6);
}

uint64_t sub_1BF969FB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1C && *(a1 + 32))
    {
      v2 = *a1 + 27;
    }

    else
    {
      v3 = (*(a1 + 16) >> 1) & 0x1C | (*(a1 + 16) >> 6);
      v4 = v3 ^ 0x1F;
      v5 = __OFSUB__(29, v3);
      v2 = 29 - v3;
      if (v2 < 0 != v5)
      {
        v2 = -1;
      }

      if (v4 >= 0x1D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF96A008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 28;
    *(result + 8) = 0;
    if (a3 >= 0x1C)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = (2 * (30 - a2)) & 0x38 | ((30 - a2) << 6);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreferenceReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1C && a1[16])
  {
    return (*a1 + 28);
  }

  v3 = (*a1 >> 1) & 0x1C | (*a1 >> 6);
  v4 = v3 ^ 0x1F;
  v5 = 32 - v3;
  if (v4 >= 0x1D)
  {
    v5 = 0;
  }

  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreferenceReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 28;
    if (a3 >= 0x1C)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = (2 * (30 - a2)) & 0x38 | ((30 - a2) << 6);
    }
  }

  return result;
}

uint64_t sub_1BF96A118(unsigned __int8 *a1)
{
  v1 = (*a1 >> 1) & 0x1C | (*a1 >> 6);
  v2 = v1 ^ 0x1F;
  v3 = 32 - v1;
  if (v2 >= 0x1D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void *sub_1BF96A140(void *result, unsigned int a2)
{
  if (a2 > 0x1D)
  {
    *result = a2 - 30;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
  }

  return result;
}

_BYTE *sub_1BF96A1CC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_31(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BF96A2D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_31(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF96A3B0()
{
  result = qword_1EBDE9F58;
  if (!qword_1EBDE9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F58);
  }

  return result;
}

unint64_t sub_1BF96A408()
{
  result = qword_1EBDE9F60;
  if (!qword_1EBDE9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F60);
  }

  return result;
}

unint64_t sub_1BF96A460()
{
  result = qword_1EBDE9F68;
  if (!qword_1EBDE9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F68);
  }

  return result;
}

unint64_t sub_1BF96A4B8()
{
  result = qword_1EBDE9F70;
  if (!qword_1EBDE9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F70);
  }

  return result;
}

unint64_t sub_1BF96A510()
{
  result = qword_1EBDE9F78;
  if (!qword_1EBDE9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F78);
  }

  return result;
}

unint64_t sub_1BF96A568()
{
  result = qword_1EBDE9F80;
  if (!qword_1EBDE9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F80);
  }

  return result;
}

unint64_t sub_1BF96A5C0()
{
  result = qword_1EBDE9F88;
  if (!qword_1EBDE9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F88);
  }

  return result;
}

unint64_t sub_1BF96A618()
{
  result = qword_1EBDE9F90;
  if (!qword_1EBDE9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F90);
  }

  return result;
}

unint64_t sub_1BF96A670()
{
  result = qword_1EBDE9F98;
  if (!qword_1EBDE9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9F98);
  }

  return result;
}

unint64_t sub_1BF96A6C8()
{
  result = qword_1EBDE9FA0;
  if (!qword_1EBDE9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9FA0);
  }

  return result;
}

unint64_t sub_1BF96A720()
{
  result = qword_1EBDE9FA8;
  if (!qword_1EBDE9FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9FA8);
  }

  return result;
}

unint64_t sub_1BF96A778()
{
  result = qword_1EBDE9FB0;
  if (!qword_1EBDE9FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9FB0);
  }

  return result;
}

unint64_t sub_1BF96A7D0()
{
  result = qword_1EBDE9FB8;
  if (!qword_1EBDE9FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9FB8);
  }

  return result;
}

unint64_t sub_1BF96A824()
{
  result = qword_1EBDE9FC0;
  if (!qword_1EBDE9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9FC0);
  }

  return result;
}

uint64_t HomeEntity.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF9B4518();
  v4 = OUTLINED_FUNCTION_13(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t HomeEntity.name.getter()
{
  v1 = (v0 + *(type metadata accessor for HomeEntity() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for HomeEntity()
{
  result = qword_1EBDEA0D0;
  if (!qword_1EBDEA0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeEntity.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HomeEntity();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t HomeEntity.assistantIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for HomeEntity() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *HomeEntity.init(identifier:name:type:assistantIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  v14 = sub_1BF9B4518();
  OUTLINED_FUNCTION_13(v14);
  (*(v15 + 32))(a7, a1);
  result = type metadata accessor for HomeEntity();
  v17 = (a7 + result[5]);
  *v17 = a2;
  v17[1] = a3;
  *(a7 + result[6]) = v13;
  v18 = (a7 + result[7]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t sub_1BF96AAA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701670760 && a2 == 0xE400000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701736314 && a2 == 0xE400000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1836019570 && a2 == 0xE400000000000000;
        if (v8 || (sub_1BF9B56D8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
          if (v9 || (sub_1BF9B56D8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656E656373 && a2 == 0xE500000000000000;
            if (v10 || (sub_1BF9B56D8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
              if (v11 || (sub_1BF9B56D8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1BF9B56D8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BF96AD18(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 1701670760;
      break;
    case 2:
      result = 1701736314;
      break;
    case 3:
      result = 1836019570;
      break;
    case 4:
      result = 0x70756F7267;
      break;
    case 5:
      result = 0x656E656373;
      break;
    case 6:
      result = 0x72656767697274;
      break;
    case 7:
      result = 0x656369766564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF96ADF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF96AAA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF96AE1C(uint64_t a1)
{
  v2 = sub_1BF96B88C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96AE58(uint64_t a1)
{
  v2 = sub_1BF96B88C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96AE94(uint64_t a1)
{
  v2 = sub_1BF96B8E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96AED0(uint64_t a1)
{
  v2 = sub_1BF96B8E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96AF0C(uint64_t a1)
{
  v2 = sub_1BF96B9DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96AF48(uint64_t a1)
{
  v2 = sub_1BF96B9DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96AF84(uint64_t a1)
{
  v2 = sub_1BF96BAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96AFC0(uint64_t a1)
{
  v2 = sub_1BF96BAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96AFFC(uint64_t a1)
{
  v2 = sub_1BF96BA30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96B038(uint64_t a1)
{
  v2 = sub_1BF96BA30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96B074(uint64_t a1)
{
  v2 = sub_1BF96B988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96B0B0(uint64_t a1)
{
  v2 = sub_1BF96B988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96B0EC(uint64_t a1)
{
  v2 = sub_1BF96B934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96B128(uint64_t a1)
{
  v2 = sub_1BF96B934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96B164(uint64_t a1)
{
  v2 = sub_1BF96BB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96B1A0(uint64_t a1)
{
  v2 = sub_1BF96BB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF96B1DC(uint64_t a1)
{
  v2 = sub_1BF96BA84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96B218(uint64_t a1)
{
  v2 = sub_1BF96BA84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HomeEntity.EntityType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FC8, &qword_1BF9C3AA0);
  v5 = OUTLINED_FUNCTION_1(v4);
  v91 = v6;
  v92 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v90 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FD0, &qword_1BF9C3AA8);
  v12 = OUTLINED_FUNCTION_1(v11);
  v88 = v13;
  v89 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v87 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FD8, &qword_1BF9C3AB0);
  v19 = OUTLINED_FUNCTION_1(v18);
  v85 = v20;
  v86 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  v84 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FE0, &qword_1BF9C3AB8);
  v26 = OUTLINED_FUNCTION_1(v25);
  v82 = v27;
  v83 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_12();
  v81 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FE8, &qword_1BF9C3AC0);
  v33 = OUTLINED_FUNCTION_1(v32);
  v79 = v34;
  v80 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_12();
  v78 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FF0, &qword_1BF9C3AC8);
  v40 = OUTLINED_FUNCTION_1(v39);
  v76 = v41;
  v77 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_12();
  v75 = v45;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9FF8, &qword_1BF9C3AD0);
  OUTLINED_FUNCTION_1(v74);
  v73 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v72 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA000, &qword_1BF9C3AD8);
  OUTLINED_FUNCTION_1(v52);
  v72 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v72 - v57;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA008, &qword_1BF9C3AE0);
  OUTLINED_FUNCTION_1(v93);
  v60 = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v72 - v64;
  v66 = *v2;
  v67 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF96B88C();
  sub_1BF9B5898();
  switch(v66)
  {
    case 1:
      v95 = 1;
      sub_1BF96BAD8();
      OUTLINED_FUNCTION_4_21();
      (*(v73 + 8))(v51, v74);
      return (*(v60 + 8))(v65, v60);
    case 2:
      v96 = 2;
      sub_1BF96BA84();
      v68 = v75;
      OUTLINED_FUNCTION_2_23();
      v70 = v76;
      v69 = v77;
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_10_14();
      sub_1BF96BA30();
      v68 = v78;
      OUTLINED_FUNCTION_2_23();
      v70 = v79;
      v69 = v80;
      goto LABEL_10;
    case 4:
      v97 = 4;
      sub_1BF96B9DC();
      v68 = v81;
      OUTLINED_FUNCTION_2_23();
      v70 = v82;
      v69 = v83;
      goto LABEL_10;
    case 5:
      v98 = 5;
      sub_1BF96B988();
      v68 = v84;
      OUTLINED_FUNCTION_2_23();
      v70 = v85;
      v69 = v86;
      goto LABEL_10;
    case 6:
      v99 = 6;
      sub_1BF96B934();
      v68 = v87;
      OUTLINED_FUNCTION_2_23();
      v70 = v88;
      v69 = v89;
      goto LABEL_10;
    case 7:
      v100 = 7;
      sub_1BF96B8E0();
      v68 = v90;
      OUTLINED_FUNCTION_2_23();
      v70 = v91;
      v69 = v92;
LABEL_10:
      (*(v70 + 8))(v68, v69);
      break;
    default:
      v94 = 0;
      sub_1BF96BB2C();
      OUTLINED_FUNCTION_4_21();
      (*(v72 + 8))(v58, v52);
      break;
  }

  return (*(v60 + 8))(v65, v60);
}

unint64_t sub_1BF96B88C()
{
  result = qword_1EBDEA010;
  if (!qword_1EBDEA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA010);
  }

  return result;
}

unint64_t sub_1BF96B8E0()
{
  result = qword_1EBDEA018;
  if (!qword_1EBDEA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA018);
  }

  return result;
}

unint64_t sub_1BF96B934()
{
  result = qword_1EBDEA020;
  if (!qword_1EBDEA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA020);
  }

  return result;
}

unint64_t sub_1BF96B988()
{
  result = qword_1EBDEA028;
  if (!qword_1EBDEA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA028);
  }

  return result;
}

unint64_t sub_1BF96B9DC()
{
  result = qword_1EBDEA030;
  if (!qword_1EBDEA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA030);
  }

  return result;
}

unint64_t sub_1BF96BA30()
{
  result = qword_1EBDEA038;
  if (!qword_1EBDEA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA038);
  }

  return result;
}

unint64_t sub_1BF96BA84()
{
  result = qword_1EBDEA040;
  if (!qword_1EBDEA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA040);
  }

  return result;
}

unint64_t sub_1BF96BAD8()
{
  result = qword_1EBDEA048;
  if (!qword_1EBDEA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA048);
  }

  return result;
}

unint64_t sub_1BF96BB2C()
{
  result = qword_1EBDEA050;
  if (!qword_1EBDEA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA050);
  }

  return result;
}

uint64_t HomeEntity.EntityType.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

uint64_t HomeEntity.EntityType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v111 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA058, &qword_1BF9C3AE8);
  v4 = OUTLINED_FUNCTION_1(v3);
  v106 = v5;
  v107 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v114 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA060, &qword_1BF9C3AF0);
  v11 = OUTLINED_FUNCTION_1(v10);
  v104 = v12;
  v105 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v110 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA068, &qword_1BF9C3AF8);
  v18 = OUTLINED_FUNCTION_1(v17);
  v102 = v19;
  v103 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v113 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA070, &qword_1BF9C3B00);
  v100 = OUTLINED_FUNCTION_1(v24);
  v101 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  v109 = v29;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA078, &qword_1BF9C3B08);
  OUTLINED_FUNCTION_1(v96);
  v99 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_12();
  v108 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA080, &qword_1BF9C3B10);
  v36 = OUTLINED_FUNCTION_1(v35);
  v97 = v37;
  v98 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_12();
  v112 = v41;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA088, &qword_1BF9C3B18);
  OUTLINED_FUNCTION_1(v95);
  v94 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v88 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA090, &qword_1BF9C3B20);
  OUTLINED_FUNCTION_1(v48);
  v93 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v88 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA098, &unk_1BF9C3B28);
  OUTLINED_FUNCTION_1(v55);
  v57 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v60);
  v61 = a1[3];
  v62 = a1[4];
  v115 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v61);
  sub_1BF96B88C();
  v63 = v116;
  sub_1BF9B5868();
  if (v63)
  {
    goto LABEL_8;
  }

  v91 = v54;
  v90 = v48;
  v92 = v47;
  v64 = v112;
  v116 = v57;
  v65 = sub_1BF9B5568();
  result = sub_1BF8D21BC(v65, 0);
  if (v68 == v69 >> 1)
  {
LABEL_7:
    v78 = sub_1BF9B5308();
    swift_allocError();
    v80 = v79;
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
    *v80 = &type metadata for HomeEntity.EntityType;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    (*(*(v78 - 8) + 104))(v80, *MEMORY[0x1E69E6AF8], v78);
    swift_willThrow();
    swift_unknownObjectRelease();
    v82 = OUTLINED_FUNCTION_7_14();
    v83(v82);
LABEL_8:
    v84 = v115;
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v88 = 0;
  if (v68 < (v69 >> 1))
  {
    v89 = *(v67 + v68);
    sub_1BF8D21AC(v68 + 1);
    v71 = v70;
    v73 = v72;
    swift_unknownObjectRelease();
    if (v71 == v73 >> 1)
    {
      v74 = v111;
      switch(v89)
      {
        case 1:
          v118 = 1;
          sub_1BF96BAD8();
          OUTLINED_FUNCTION_1_21();
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_11_16();
          v77 = &v125;
          goto LABEL_15;
        case 2:
          v119 = 2;
          sub_1BF96BA84();
          OUTLINED_FUNCTION_3_22();
          swift_unknownObjectRelease();
          (*(v97 + 8))(v64, v98);
          goto LABEL_20;
        case 3:
          OUTLINED_FUNCTION_10_14();
          sub_1BF96BA30();
          OUTLINED_FUNCTION_1_21();
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_11_16();
          v85 = v96;
          break;
        case 4:
          v120 = 4;
          sub_1BF96B9DC();
          OUTLINED_FUNCTION_1_21();
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 5:
          v121 = 5;
          sub_1BF96B988();
          OUTLINED_FUNCTION_3_22();
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 6:
          v122 = 6;
          sub_1BF96B934();
          OUTLINED_FUNCTION_1_21();
          swift_unknownObjectRelease();
          goto LABEL_18;
        case 7:
          v123 = 7;
          sub_1BF96B8E0();
          OUTLINED_FUNCTION_1_21();
          swift_unknownObjectRelease();
LABEL_18:
          v75 = OUTLINED_FUNCTION_11_16();
          break;
        default:
          v117 = 0;
          sub_1BF96BB2C();
          OUTLINED_FUNCTION_1_21();
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_11_16();
          v77 = &v124;
LABEL_15:
          v85 = *(v77 - 32);
          break;
      }

      v76(v75, v85);
LABEL_20:
      v86 = OUTLINED_FUNCTION_7_14();
      v87(v86);
      v84 = v115;
      *v74 = v89;
      return __swift_destroy_boxed_opaque_existential_1(v84);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t static HomeEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1BF9B44F8())
  {
    v4 = type metadata accessor for HomeEntity();
    v5 = v4[5];
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_1BF9B56D8()) && *(a1 + v4[6]) == *(a2 + v4[6]))
    {
      v10 = v4[7];
      v11 = (a1 + v10);
      v12 = *(a1 + v10 + 8);
      v13 = (a2 + v10);
      v14 = v13[1];
      if (v12)
      {
        if (v14)
        {
          v15 = *v11 == *v13 && v12 == v14;
          if (v15 || (sub_1BF9B56D8() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1BF96C594(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x80000001BF9CD4B0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF9B56D8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1BF96C704(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF96C780(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF96C7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF96C594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF96C7FC(uint64_t a1)
{
  v2 = sub_1BF96CE74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF96C838(uint64_t a1)
{
  v2 = sub_1BF96CE74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HomeEntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA0A0, &qword_1BF9C3B38);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF96CE74();
  sub_1BF9B5898();
  v22[15] = 0;
  sub_1BF9B4518();
  sub_1BF96CF1C(&qword_1EDBF4740);
  OUTLINED_FUNCTION_12_15();
  sub_1BF9B5638();
  if (!v2)
  {
    v14 = type metadata accessor for HomeEntity();
    v15 = (v3 + v14[5]);
    v16 = *v15;
    v17 = v15[1];
    v22[14] = 1;
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B55F8();
    v22[13] = *(v3 + v14[6]);
    v22[12] = 2;
    sub_1BF96CEC8();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B5638();
    v18 = (v3 + v14[7]);
    v19 = *v18;
    v20 = v18[1];
    OUTLINED_FUNCTION_10_14();
    OUTLINED_FUNCTION_12_15();
    sub_1BF9B55B8();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t HomeEntity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_1BF9B4518();
  v5 = OUTLINED_FUNCTION_1(v4);
  v39 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA0B8, &qword_1BF9C3B40);
  OUTLINED_FUNCTION_1(v41);
  v38 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for HomeEntity();
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF96CE74();
  sub_1BF9B5868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v38;
  v23 = v39;
  v36 = v21;
  v45 = 0;
  sub_1BF96CF1C(&qword_1EDBF3F78);
  sub_1BF9B5558();
  (*(v23 + 32))(v36, v40, v4);
  v44 = 1;
  v25 = sub_1BF9B5518();
  v26 = &v36[*(v16 + 20)];
  *v26 = v25;
  v26[1] = v27;
  v42 = 2;
  sub_1BF96CF60();
  sub_1BF9B5558();
  v40 = v16;
  v36[*(v16 + 24)] = v43;
  OUTLINED_FUNCTION_10_14();
  v28 = a1;
  v29 = sub_1BF9B54D8();
  v31 = v30;
  (*(v24 + 8))(v15, v41);
  v33 = v36;
  v32 = v37;
  v34 = &v36[*(v40 + 7)];
  *v34 = v29;
  v34[1] = v31;
  sub_1BF96CFB4(v33, v32);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_1BF96D018(v33);
}

unint64_t sub_1BF96CE74()
{
  result = qword_1EBDEA0A8;
  if (!qword_1EBDEA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0A8);
  }

  return result;
}

unint64_t sub_1BF96CEC8()
{
  result = qword_1EBDEA0B0;
  if (!qword_1EBDEA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0B0);
  }

  return result;
}

uint64_t sub_1BF96CF1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BF9B4518();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF96CF60()
{
  result = qword_1EBDEA0C0;
  if (!qword_1EBDEA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0C0);
  }

  return result;
}

uint64_t sub_1BF96CFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF96D018(uint64_t a1)
{
  v2 = type metadata accessor for HomeEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF96D078()
{
  result = qword_1EBDEA0C8;
  if (!qword_1EBDEA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0C8);
  }

  return result;
}

void sub_1BF96D0F4()
{
  sub_1BF9B4518();
  if (v0 <= 0x3F)
  {
    sub_1BF96D190();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BF96D190()
{
  if (!qword_1EDBF4750)
  {
    v0 = sub_1BF9B50F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF4750);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HomeEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BF96D2CC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF96D42C()
{
  result = qword_1EBDEA0E0;
  if (!qword_1EBDEA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0E0);
  }

  return result;
}

unint64_t sub_1BF96D484()
{
  result = qword_1EBDEA0E8;
  if (!qword_1EBDEA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0E8);
  }

  return result;
}

unint64_t sub_1BF96D4DC()
{
  result = qword_1EBDEA0F0;
  if (!qword_1EBDEA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0F0);
  }

  return result;
}

unint64_t sub_1BF96D534()
{
  result = qword_1EBDEA0F8;
  if (!qword_1EBDEA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA0F8);
  }

  return result;
}

unint64_t sub_1BF96D58C()
{
  result = qword_1EBDEA100;
  if (!qword_1EBDEA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA100);
  }

  return result;
}

unint64_t sub_1BF96D5E4()
{
  result = qword_1EBDEA108;
  if (!qword_1EBDEA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA108);
  }

  return result;
}

unint64_t sub_1BF96D63C()
{
  result = qword_1EBDEA110;
  if (!qword_1EBDEA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA110);
  }

  return result;
}

unint64_t sub_1BF96D694()
{
  result = qword_1EBDEA118;
  if (!qword_1EBDEA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA118);
  }

  return result;
}

unint64_t sub_1BF96D6EC()
{
  result = qword_1EBDEA120;
  if (!qword_1EBDEA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA120);
  }

  return result;
}

unint64_t sub_1BF96D744()
{
  result = qword_1EBDEA128;
  if (!qword_1EBDEA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA128);
  }

  return result;
}

unint64_t sub_1BF96D79C()
{
  result = qword_1EBDEA130;
  if (!qword_1EBDEA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA130);
  }

  return result;
}

unint64_t sub_1BF96D7F4()
{
  result = qword_1EBDEA138;
  if (!qword_1EBDEA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA138);
  }

  return result;
}

unint64_t sub_1BF96D84C()
{
  result = qword_1EBDEA140;
  if (!qword_1EBDEA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA140);
  }

  return result;
}

unint64_t sub_1BF96D8A4()
{
  result = qword_1EBDEA148;
  if (!qword_1EBDEA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA148);
  }

  return result;
}

unint64_t sub_1BF96D8FC()
{
  result = qword_1EBDEA150;
  if (!qword_1EBDEA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA150);
  }

  return result;
}

unint64_t sub_1BF96D954()
{
  result = qword_1EBDEA158;
  if (!qword_1EBDEA158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA158);
  }

  return result;
}

unint64_t sub_1BF96D9AC()
{
  result = qword_1EBDEA160;
  if (!qword_1EBDEA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA160);
  }

  return result;
}

unint64_t sub_1BF96DA04()
{
  result = qword_1EBDEA168;
  if (!qword_1EBDEA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA168);
  }

  return result;
}

unint64_t sub_1BF96DA5C()
{
  result = qword_1EBDEA170;
  if (!qword_1EBDEA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA170);
  }

  return result;
}

unint64_t sub_1BF96DAB4()
{
  result = qword_1EBDEA178;
  if (!qword_1EBDEA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA178);
  }

  return result;
}

unint64_t sub_1BF96DB0C()
{
  result = qword_1EBDEA180;
  if (!qword_1EBDEA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA180);
  }

  return result;
}

unint64_t sub_1BF96DB64()
{
  result = qword_1EBDEA188;
  if (!qword_1EBDEA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA188);
  }

  return result;
}

uint64_t sub_1BF96DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF8C187C(a1, v10);
  if (swift_dynamicCast())
  {
    if (v8 == a2 && v9 == a3)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_1BF9B56D8();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL sub_1BF96DC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BF8C187C(a1, v23);
  if (!OUTLINED_FUNCTION_20_15())
  {
    v14 = OUTLINED_FUNCTION_1_22();
LABEL_18:
    sub_1BF911DC8(v14, v15);
    return 0;
  }

  v9 = v19 == a2 && v20 == a3;
  if (!v9 && (sub_1BF9B56D8() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!a5)
  {
    if (!v22)
    {
      v17 = OUTLINED_FUNCTION_8_10();
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (!v22)
  {
LABEL_17:
    v14 = OUTLINED_FUNCTION_8_10();
    goto LABEL_18;
  }

  if (v21 == a4 && v22 == a5)
  {
    v17 = v19;
    v18 = v20;
LABEL_23:
    sub_1BF911DC8(v17, v18);
    return 1;
  }

  v11 = sub_1BF9B56D8();
  v12 = OUTLINED_FUNCTION_8_10();
  sub_1BF911DC8(v12, v13);
  return (v11 & 1) != 0;
}

uint64_t sub_1BF96DDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BF8C187C(a1, v23);
  if (!OUTLINED_FUNCTION_20_15())
  {
    v14 = OUTLINED_FUNCTION_1_22();
LABEL_13:
    sub_1BF911DC8(v14, v15);
    v11 = 0;
    return v11 & 1;
  }

  v9 = v19 == a2 && v20 == a3;
  if (!v9 && (sub_1BF9B56D8() & 1) == 0)
  {
    v14 = OUTLINED_FUNCTION_26();
    goto LABEL_13;
  }

  if (v21 == a4 && v22 == a5)
  {
    v16 = OUTLINED_FUNCTION_26();
    sub_1BF911DC8(v16, v17);
    v11 = 1;
  }

  else
  {
    v11 = sub_1BF9B56D8();
    v12 = OUTLINED_FUNCTION_26();
    sub_1BF911DC8(v12, v13);
  }

  return v11 & 1;
}

uint64_t sub_1BF96DEBC(uint64_t a1, uint64_t a2)
{
  sub_1BF8C187C(a1, v17);
  if (!swift_dynamicCast())
  {
    v10 = OUTLINED_FUNCTION_1_22();
LABEL_15:
    sub_1BF911DC8(v10, v11);
    v7 = 0;
    return v7 & 1;
  }

  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a2 == v13 && v14 == *(a2 + 8);
  if (!v5 && (sub_1BF9B56D8() & 1) == 0 || (v3 == v15 ? (v6 = v16 == v4) : (v6 = 0), !v6 && (sub_1BF9B56D8() & 1) == 0))
  {
    v10 = OUTLINED_FUNCTION_10_15();
    goto LABEL_15;
  }

  v7 = sub_1BF8CA8AC(*(a2 + 32));
  v8 = OUTLINED_FUNCTION_10_15();
  sub_1BF911DC8(v8, v9);
  return v7 & 1;
}

void sub_1BF96DFC4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1A8, &qword_1BF9C4670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v145 - v6;
  v158 = *(a1 + 24);
  if (!v158)
  {
    OUTLINED_FUNCTION_17_15();
    if (v51)
    {
LABEL_12:
      v25 = sub_1BF9B47C8();
      OUTLINED_FUNCTION_49_3(v25, qword_1EDBF5570);
      v161 = sub_1BF9B47A8();
      v26 = sub_1BF9B5028();
      if (os_log_type_enabled(v161, v26))
      {
        v27 = OUTLINED_FUNCTION_12_0();
        *v27 = 0;
        _os_log_impl(&dword_1BF8B8000, v161, v26, "No intent discovery for third party apps will be performed, no intent name provided", v27, 2u);
        OUTLINED_FUNCTION_54();
      }

      v28 = v161;

      return;
    }

LABEL_98:
    OUTLINED_FUNCTION_43_0();
    goto LABEL_12;
  }

  v153 = *(a1 + 16);
  sub_1BF8EE390(v2 + 16, &v162, &qword_1EBDEA198, qword_1BF9C44B0);
  if (!*(&v163 + 1))
  {
    sub_1BF8EE3F8(&v162, &qword_1EBDEA198, qword_1BF9C44B0);
    OUTLINED_FUNCTION_17_15();
    if (!v51)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v29 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v29, qword_1EDBF5570);
    v30 = sub_1BF9B47A8();
    v31 = sub_1BF9B5028();
    if (os_log_type_enabled(v30, v31))
    {
      *OUTLINED_FUNCTION_12_0() = 0;
      OUTLINED_FUNCTION_22_7(&dword_1BF8B8000, v32, v33, "No app discoverer set");
      OUTLINED_FUNCTION_87();
    }

    return;
  }

  sub_1BF8C2C9C(&v162, v168);
  sub_1BF8EE390(v2 + 56, &v165, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v8 = v166;
  if (!v166)
  {
    sub_1BF8EE3F8(&v165, &qword_1EBDE9E28, &qword_1BF9C2CE8);
LABEL_24:
    v162 = 0u;
    v163 = 0u;
    v164 = 0;
LABEL_25:
    sub_1BF8EE3F8(&v162, &qword_1EBDEA1B0, &qword_1BF9C4678);
    OUTLINED_FUNCTION_17_15();
    if (!v51)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v34 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v34, qword_1EDBF5570);
    v35 = sub_1BF9B47A8();
    v36 = sub_1BF9B5028();
    if (os_log_type_enabled(v35, v36))
    {
      *OUTLINED_FUNCTION_12_0() = 0;
      OUTLINED_FUNCTION_22_7(&dword_1BF8B8000, v37, v38, "No appUtils instance set on the lifecycle container");
      OUTLINED_FUNCTION_87();
    }

    goto LABEL_30;
  }

  v151 = a1;
  v160 = v7;
  v9 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1B8, &unk_1BF9C4680);
  v11 = *(v9 + 16);

  v12 = v11(v10, v10, v8, v9);
  if (!v12)
  {

    __swift_destroy_boxed_opaque_existential_1(&v165);
    goto LABEL_24;
  }

  sub_1BF8F19D4(v12, &v162);

  __swift_destroy_boxed_opaque_existential_1(&v165);
  if (!*(&v163 + 1))
  {

    goto LABEL_25;
  }

  sub_1BF8EE3F8(&v162, &qword_1EBDEA1B0, &qword_1BF9C4678);
  v13 = v169;
  v14 = v170;
  __swift_project_boxed_opaque_existential_1(v168, v169);
  v15 = (*(v14 + 8))(v153, v158, v13, v14);
  *&v162 = v15;

  sub_1BF970084(&v162);
  v156 = 0;

  v16 = v162;
  OUTLINED_FUNCTION_17_15();
  v17 = v151;
  if (!v51)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v18 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v18, qword_1EDBF5570);
  v19 = v158;

  v152 = v15;
  v20 = sub_1BF9B47A8();
  v21 = sub_1BF9B5038();

  v22 = os_log_type_enabled(v20, v21);
  v146 = v18;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_35_4();
    *&v162 = v24;
    *v23 = 134218242;
    *(v23 + 4) = *(v16 + 16);

    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1BF8DE810(v153, v158, &v162);
    _os_log_impl(&dword_1BF8B8000, v20, v21, "Found %ld apps that support intent %s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v19 = v158;
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {
  }

  v149 = v2;
  v39 = *(v16 + 16);
  v154 = v16;
  v159 = v39;
  if (!v39)
  {
    goto LABEL_56;
  }

  v157 = v16 + 32;
  swift_beginAccess();
  v40 = 0;
  *&v41 = 136315138;
  v148 = v41;
  *&v41 = 136315394;
  v147 = v41;
  v42 = v153;
  do
  {
    if (v40 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_98;
    }

    v43 = v157 + 24 * v40;
    v44 = *(v43 + 16);
    if (!*(v44 + 16))
    {
      goto LABEL_55;
    }

    v45 = *(v43 + 8);
    v161 = *v43;
    v46 = *(v44 + 40);
    sub_1BF9B57A8();
    swift_bridgeObjectRetain_n();

    sub_1BF9B4B48();
    v47 = sub_1BF9B57E8();
    v48 = ~(-1 << *(v44 + 32));
    do
    {
      v49 = v47 & v48;
      if (((*(v44 + 56 + (((v47 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v47 & v48)) & 1) == 0)
      {

        swift_bridgeObjectRelease_n();
LABEL_54:
        v16 = v154;
        goto LABEL_55;
      }

      v50 = (*(v44 + 48) + 16 * v49);
      v51 = *v50 == v42 && v19 == v50[1];
      if (v51)
      {
        break;
      }

      v52 = sub_1BF9B56D8();
      v47 = v49 + 1;
    }

    while ((v52 & 1) == 0);

    v53 = sub_1BF970B1C(1, v161, v45, MEMORY[0x1E69E7CC0], 0, 0);
    v54 = *(v17 + 40);

    v155 = v53;
    v55 = static SignalLookupKey.getLookupKey(for:)(v53, &v162);
    MEMORY[0x1EEE9AC00](v55);
    OUTLINED_FUNCTION_9_15();
    *(v56 - 16) = &v162;
    v57 = v156;
    v59 = sub_1BF906404(sub_1BF970C8C, v58, v54);

    sub_1BF9324B4(&v162);

    v156 = v57;
    if (!v59)
    {

      v66 = sub_1BF9B47A8();
      v67 = v17;
      v68 = sub_1BF9B5038();

      if (os_log_type_enabled(v66, v68))
      {
        v69 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *&v162 = v150;
        *v69 = v147;
        v70 = v161;
        *(v69 + 4) = sub_1BF8DE810(v161, v45, &v162);
        *(v69 + 12) = 2080;
        v71 = sub_1BF978FA0();
        v73 = sub_1BF8DE810(v71, v72, &v162);

        *(v69 + 14) = v73;
        v74 = v68;
        v75 = v70;
        _os_log_impl(&dword_1BF8B8000, v66, v74, "Registering a signal for %s - %s", v69, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_54();
        v42 = v153;
        v19 = v158;
        OUTLINED_FUNCTION_87();
      }

      else
      {

        v75 = v161;
      }

      v76 = sub_1BF978FA0();
      v78 = v77;
      type metadata accessor for ThirdPartySuggestionConfigurator();
      v79 = swift_allocObject();
      v79[2] = v76;
      v79[3] = v78;
      v79[4] = v75;
      v79[5] = v45;
      static SignalLookupKey.getLookupKey(for:)(v155, &v162);
      sub_1BF970E0C(&v162, v79, v67, type metadata accessor for ThirdPartySuggestionConfigurator, &off_1F3EFD140);

      sub_1BF9324B4(&v162);
      v17 = v67;
      goto LABEL_54;
    }

    v60 = sub_1BF9B47A8();
    v61 = sub_1BF9B5038();

    v62 = os_log_type_enabled(v60, v61);
    v16 = v154;
    if (v62)
    {
      v63 = OUTLINED_FUNCTION_109();
      v64 = OUTLINED_FUNCTION_35_4();
      *&v162 = v64;
      *v63 = v148;
      v65 = sub_1BF8DE810(v161, v45, &v162);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_1BF8B8000, v60, v61, "There's a signal for %s already registered, won't register a duplicate", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      v17 = v151;
      OUTLINED_FUNCTION_87();
      v42 = v153;
      v19 = v158;
      OUTLINED_FUNCTION_87();
    }

    else
    {
    }

LABEL_55:
    ++v40;
  }

  while (v40 != v159);
LABEL_56:
  swift_beginAccess();
  v80 = *(v17 + 40);
  v81 = qword_1EDBF0818;

  if (v81 != -1)
  {
    swift_once();
  }

  v82 = qword_1EDBF0820;
  v83 = static SignalLookupKey.getLookupKey(for:)(qword_1EDBF0820, &v162);
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_9_15();
  *(v84 - 16) = &v162;
  v86 = sub_1BF906404(sub_1BF971184, v85, v80);

  sub_1BF9324B4(&v162);
  v87 = 0x1EDBF0000uLL;
  v88 = v149;
  if (!v86)
  {
    v89 = *(v17 + 40);
    v90 = qword_1EDBF0840;

    if (v90 != -1)
    {
      OUTLINED_FUNCTION_3_23();
    }

    v91 = &v162;
    v92 = static SignalLookupKey.getLookupKey(for:)(qword_1EDBF0848, &v162);
    MEMORY[0x1EEE9AC00](v92);
    OUTLINED_FUNCTION_9_15();
    *(v93 - 16) = &v162;
    v95 = sub_1BF906404(sub_1BF971184, v94, v89);

    sub_1BF9324B4(&v162);
    if (!v95)
    {

      goto LABEL_79;
    }
  }

  v96 = sub_1BF978FA0();
  v98 = v96;
  v99 = v97;
  v91 = v154;
  v100 = *(v154 + 16);
  if (v100)
  {
    v157 = v97;
    v159 = v96;
    v161 = v82;
    *&v162 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0();
    v101 = v162;
    v91 = (v91 + 40);
    do
    {
      v102 = *(v91 - 1);
      v103 = *v91;
      *&v162 = v101;
      v105 = *(v101 + 16);
      v104 = *(v101 + 24);

      if (v105 >= v104 >> 1)
      {
        sub_1BF8D01C0();
        v101 = v162;
      }

      *(v101 + 16) = v105 + 1;
      v106 = v101 + 16 * v105;
      *(v106 + 32) = v102;
      *(v106 + 40) = v103;
      v91 = (v91 + 24);
      --v100;
    }

    while (v100);

    v88 = v149;
    v82 = v161;
    v87 = 0x1EDBF0000;
    v98 = v159;
    v99 = v157;
  }

  else
  {

    v101 = MEMORY[0x1E69E7CC0];
  }

  sub_1BF96F1A0(v88, &v162);
  type metadata accessor for ThirdPartyHomescreenSuggestionConfigurator();
  OUTLINED_FUNCTION_28_2();
  v107 = swift_allocObject();
  *(v107 + 16) = v98;
  *(v107 + 24) = v99;
  *(v107 + 32) = v101;
  *(v107 + 40) = v162;
  sub_1BF8EE390(v88 + 96, &v165, &qword_1EBDE9E38, &qword_1BF9C2D10);
  if (!v166)
  {
    sub_1BF8EE3F8(&v165, &qword_1EBDE9E38, &qword_1BF9C2D10);
LABEL_77:
    v17 = v151;
    swift_retain_n();
    goto LABEL_78;
  }

  v108 = v87;
  sub_1BF8C2C9C(&v165, &v162);
  v109 = *(&v163 + 1);
  v110 = v164;
  __swift_project_boxed_opaque_existential_1(&v162, *(&v163 + 1));
  if (((*(v110 + 128))(v109, v110) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v162);
    goto LABEL_77;
  }

  v17 = v151;
  if (qword_1EDBF0840 != -1)
  {
    OUTLINED_FUNCTION_3_23();
  }

  v82 = *(v108 + 2120);
  swift_retain_n();
  __swift_destroy_boxed_opaque_existential_1(&v162);
LABEL_78:
  static SignalLookupKey.getLookupKey(for:)(v82, &v162);
  sub_1BF970E0C(&v162, v107, v17, type metadata accessor for ThirdPartyHomescreenSuggestionConfigurator, &off_1F3EFD188);

  sub_1BF9324B4(&v162);
LABEL_79:
  v111 = 0;
  v112 = 0;
  v113 = *(v17 + 32);
  v159 = 0x80000001BF9CD610;
  do
  {
    LODWORD(v161) = v111;
    v114 = *(&unk_1F3EF5F30 + v112 + 32);
    v164 = 0;
    if (v114)
    {
      v115 = 0xD000000000000011;
    }

    else
    {
      v115 = 0x7261506472696874;
    }

    if (v114)
    {
      v116 = v159;
    }

    else
    {
      v116 = 0xEF64497070417974;
    }

    v162 = 0u;
    v163 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
    OUTLINED_FUNCTION_19_15();
    if (v114)
    {
      v117 = &unk_1BF9C9A70;
    }

    else
    {
      v117 = &unk_1BF9C9CA8;
    }

    v118 = v117;
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1C0, qword_1BF9C4690);
    v166 = v119;
    v120 = sub_1BF9710C4();
    v167 = v120;
    v165 = v118;
    v121 = type metadata accessor for ResolvableParameter();
    v122 = *(v121 + 48);
    v123 = *(v121 + 52);
    v124 = swift_allocObject();
    v125 = __swift_mutable_project_boxed_opaque_existential_1(&v165, v119);
    v126 = *(v119[-1].Description + 8);
    MEMORY[0x1EEE9AC00](v125);
    v128 = &v145 - v127;
    (*(v129 + 16))(&v145 - v127);
    v130 = sub_1BF9AD0D0(v115, v116, 0, v91, v128, v124, v119, v120);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    v111 = 1;
    sub_1BF97A1F4(v115, v116, &v162, v130, 1);

    sub_1BF8EE3F8(&v162, &qword_1EBDE9E58, &qword_1BF9C30B0);
    v112 = 1u;
  }

  while ((v161 & 1) == 0);
  if (qword_1EDBF57F0 != -1)
  {
    OUTLINED_FUNCTION_4_1();
  }

  OUTLINED_FUNCTION_49_3(v146, qword_1EDBF57F8);
  v131 = v158;

  v132 = sub_1BF9B47A8();
  v133 = sub_1BF9B5038();

  v134 = os_log_type_enabled(v132, v133);
  v135 = v153;
  v136 = v149;
  if (v134)
  {
    v137 = OUTLINED_FUNCTION_109();
    v138 = OUTLINED_FUNCTION_35_4();
    *&v162 = v138;
    *v137 = 136315138;
    v139 = OUTLINED_FUNCTION_26();
    *(v137 + 4) = sub_1BF8DE810(v139, v140, v141);
    _os_log_impl(&dword_1BF8B8000, v132, v133, "Adding RegisteredIntents to lifecycle: %s", v137, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v138);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  sub_1BF8EE390(v136 + 56, &v162, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v142 = *(&v163 + 1);
  if (*(&v163 + 1))
  {
    v143 = v164;
    __swift_project_boxed_opaque_existential_1(&v162, *(&v163 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_1BF9B6370;
    *(v144 + 32) = v135;
    *(v144 + 40) = v131;
    v166 = &type metadata for RegisteredIntents;
    *&v165 = v144;
    (*(v143 + 32))(&v165, v142, v143);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    __swift_destroy_boxed_opaque_existential_1(&v162);
  }

  else
  {

    sub_1BF8EE3F8(&v162, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  }

LABEL_30:
  __swift_destroy_boxed_opaque_existential_1(v168);
}

uint64_t sub_1BF96F164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  v5 = *(a2 + 16);
  *(v3 + 56) = *a2;
  *(v3 + 72) = v5;
  *(v3 + 88) = *(a2 + 32);
  *(v3 + 128) = *(a3 + 32);
  v6 = *(a3 + 16);
  *(v3 + 96) = *a3;
  *(v3 + 112) = v6;
  return v3;
}

uint64_t sub_1BF96F1A0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  sub_1BF8EE390(a1 + 56, &v14, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v3 = v15;
  if (v15)
  {
    v4 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, v15);
    v5 = (*(v4 + 16))(&type metadata for ThirdPartyHomeScreenAppPicker, &type metadata for ThirdPartyHomeScreenAppPicker, v3, v4);
    if (v5)
    {
      if (v5[2])
      {
        v7 = v5[4];
        v6 = v5[5];

        result = __swift_destroy_boxed_opaque_existential_1(&v14);
        goto LABEL_13;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    sub_1BF8EE3F8(&v14, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  }

  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v9 = sub_1BF9B47C8();
  __swift_project_value_buffer(v9, qword_1EDBF5570);
  v10 = sub_1BF9B47A8();
  v11 = sub_1BF9B5028();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BF8B8000, v10, v11, "[warning] No homescreen app picker specified in lifecycle. Creating new instance", v12, 2u);
    MEMORY[0x1BFB5F320](v12, -1, -1);
  }

  v15 = MEMORY[0x1E69E70B8];
  v16 = MEMORY[0x1E69E70C0];
  sub_1BF8C2C9C(&v14, v13);
  v6 = swift_allocObject();
  result = sub_1BF8C2C9C(v13, v6 + 16);
  v7 = sub_1BF97117C;
LABEL_13:
  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t ThirdPartyHomeScreenAppPicker.init(randSeed:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  if (a2)
  {
    v11 = MEMORY[0x1E69E70B8];
    v12 = MEMORY[0x1E69E70C0];
  }

  else
  {
    v8 = &type metadata for SimpleRNG;
    v9 = sub_1BF96FF48();
    *&v7 = swift_allocObject();
    SimpleRNG.init(seed:)(a1, v7 + 16);
    sub_1BF8C2C9C(&v7, &v10);
  }

  sub_1BF8C2C9C(&v10, &v7);
  OUTLINED_FUNCTION_28_2();
  v5 = swift_allocObject();
  result = sub_1BF8C2C9C(&v7, v5 + 16);
  *a3 = sub_1BF96FF28;
  a3[1] = v5;
  return result;
}

uint64_t ThirdPartySuggestionDetailsBuilderConfigurator.deinit()
{
  sub_1BF8EE3F8(v0 + 16, &qword_1EBDEA198, qword_1BF9C44B0);
  sub_1BF8EE3F8(v0 + 56, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  sub_1BF8EE3F8(v0 + 96, &qword_1EBDE9E38, &qword_1BF9C2D10);
  return v0;
}

uint64_t ThirdPartySuggestionDetailsBuilderConfigurator.__deallocating_deinit()
{
  ThirdPartySuggestionDetailsBuilderConfigurator.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

Swift::String_optional __swiftcall Context.getThirdPartyAppId()()
{
  Context.getAppId()();
  v0 = v4;
  if (v4)
  {
    if (v5 == 2)
    {
      v1 = v3;
    }

    else
    {

      v1 = 0;
      v0 = 0;
    }
  }

  else
  {
    v1 = 0;
  }

  result.value._object = v0;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1BF96F588(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = *a4;
  return v4;
}

uint64_t sub_1BF96F5A0(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF96F5B4()
{
  v23 = v0;
  v1 = *(v0 + 64);
  v2 = v1[6];
  v3._rawValue = v1[4];
  v22[0] = v1[5];
  v22[1] = v2;

  v4 = ThirdPartyHomeScreenAppPicker.getHomeScreenApp(appIds:)(v3);

  *(v0 + 72) = v4;
  if (v4.value._object)
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v5 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v5, qword_1EDBF5570);

    v6 = sub_1BF9B47A8();
    v7 = sub_1BF9B5028();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_109();
      v9 = OUTLINED_FUNCTION_35_4();
      v22[0] = v9;
      *v8 = 136315138;

      v10 = sub_1BF8DE810(v4.value._countAndFlagsBits, v4.value._object, v22);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_1BF8B8000, v6, v7, "#ThirdPartyHomescreenSuggestionConfigurator injecting appId=%s into the context", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    v11 = *(v0 + 56);
    *(v0 + 88) = *v11;
    v12 = v11[1];
    *(v0 + 96) = v12;
    *(v0 + 104) = swift_getObjectType();
    v13 = *(*(v12 + 8) + 8);
    v15 = sub_1BF9B4E28();
    *(v0 + 112) = v15;
    *(v0 + 120) = v14;

    return MEMORY[0x1EEE6DFA0](sub_1BF96F848, v15, v14);
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v16 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v16, qword_1EDBF5570);
    v17 = sub_1BF9B47A8();
    v18 = sub_1BF9B5028();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_12_0();
      *v19 = 0;
      _os_log_impl(&dword_1BF8B8000, v17, v18, "#ThirdPartyHomescreenSuggestionConfigurator. Not using 3P variant on homescreen", v19, 2u);
      OUTLINED_FUNCTION_54();
    }

    OUTLINED_FUNCTION_77();

    return v20();
  }
}

uint64_t sub_1BF96F848()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[11];
  sub_1BF96F554(v0[9], v0[10], v0[13], v0[12]);

  return MEMORY[0x1EEE6DFA0](sub_1BF96F8C0, 0, 0);
}

uint64_t sub_1BF96F8C0()
{
  OUTLINED_FUNCTION_7();
  *(v0 + 40) = &type metadata for CoreSuggestionGroups;
  v1 = sub_1BF937F68();
  OUTLINED_FUNCTION_15_17(v1);

  return MEMORY[0x1EEE6DFA0](sub_1BF96F928, v2, v3);
}

uint64_t sub_1BF96F928()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[11];
  sub_1BF9696C0(v0 + 2, v0[13], v0[12]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_77();

  return v2();
}

Swift::String_optional __swiftcall ThirdPartyHomeScreenAppPicker.getHomeScreenApp(appIds:)(Swift::OpaquePointer appIds)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v3(v13);
  v5 = *(appIds._rawValue + 2);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1BF96FF9C();
  sub_1BF9B5388();
  v6 = 0;
  if (v12 < 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if (v12 < v5)
    {
      v8 = appIds._rawValue + 16 * v12;
      v6 = *(v8 + 4);
      v7 = *(v8 + 5);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = v6;
  v10 = v7;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

void *sub_1BF96FA60()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t sub_1BF96FA90()
{
  sub_1BF96FA60();
  OUTLINED_FUNCTION_28_2();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF96FAC0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF96A880;

  return sub_1BF96F5A0(a1);
}

uint64_t sub_1BF96FB58(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF96FB6C()
{
  v16 = v0;
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v1 = v0[8];
  v2 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v2, qword_1EDBF5570);

  v3 = sub_1BF9B47A8();
  v4 = sub_1BF9B5028();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = OUTLINED_FUNCTION_109();
    v7 = OUTLINED_FUNCTION_35_4();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1BF8DE810(*(v5 + 32), *(v5 + 40), &v15);
    _os_log_impl(&dword_1BF8B8000, v3, v4, "#ThirdPartySuggestionConfigurator injecting appId=%s into the context", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_54();
  }

  v8 = v0[7];
  v9 = v0[8];
  v0[9] = *v8;
  v10 = v8[1];
  v0[10] = v10;
  v0[11] = swift_getObjectType();
  v0[12] = *(v9 + 32);
  v0[13] = *(v9 + 40);
  v11 = *(*(v10 + 8) + 8);
  v13 = sub_1BF9B4E28();
  v0[14] = v13;
  v0[15] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1BF96FCF8, v13, v12);
}

uint64_t sub_1BF96FCF8()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[9];
  sub_1BF96F554(v0[12], v0[13], v0[11], v0[10]);

  return MEMORY[0x1EEE6DFA0](sub_1BF96FD64, 0, 0);
}

uint64_t sub_1BF96FD64()
{
  OUTLINED_FUNCTION_7();
  *(v0 + 40) = &type metadata for CoreSuggestionGroups;
  v1 = sub_1BF937F68();
  OUTLINED_FUNCTION_15_17(v1);

  return MEMORY[0x1EEE6DFA0](sub_1BF96FDCC, v2, v3);
}

uint64_t sub_1BF96FDCC()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[9];
  sub_1BF9696C0(v0 + 2, v0[11], v0[10]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_77();

  return v2();
}

uint64_t _s18SiriSuggestionsKit11DomainOwnerCfd_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1BF96FE5C()
{
  _s18SiriSuggestionsKit11DomainOwnerCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BF96FE90(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF966964;

  return sub_1BF96FB58(a1);
}

unint64_t sub_1BF96FF48()
{
  result = qword_1EBDEA190;
  if (!qword_1EBDEA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA190);
  }

  return result;
}

unint64_t sub_1BF96FF9C()
{
  result = qword_1EBDEA1A0;
  if (!qword_1EBDEA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA1A0);
  }

  return result;
}

uint64_t sub_1BF970084(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF95DD10(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF9700F0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1BF9700F0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF9B5658();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1BF9B4D88();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF9702C0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BF9701E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF9701E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1BF9B56D8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 16);
        result = *(v12 + 24);
        *(v12 + 24) = *v12;
        *(v12 + 40) = v15;
        *v12 = result;
        *(v12 + 8) = v14;
        v10 = v14;
        v12 -= 24;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF9702C0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1BF9B56D8();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1BF9B56D8()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = v24 + v21;
              v27 = *v25;
              v28 = *(v25 + 1);
              v29 = *(v26 - 24);
              v25[2] = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == *(v39 + 8);
                if (v40 || (sub_1BF9B56D8() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v41 = *(v39 + 32);
                v42 = *(v39 + 16);
                v36 = *(v39 + 24);
                *(v39 + 24) = *v39;
                *(v39 + 40) = v42;
                *v39 = v36;
                *(v39 + 8) = v41;
                v37 = v41;
                v39 -= 24;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_1BF8DCF6C();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1BF8DCF6C();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v93 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1BF970948((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v93;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1BF970810(&v97, *a1, a3);
LABEL_103:
}

uint64_t sub_1BF970810(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BF95B0FC(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1BF970948((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1BF970948(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1BF958EB4(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1BF9B56D8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1BF958EB4(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1BF9B56D8() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

void *sub_1BF970B1C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = MEMORY[0x1E69E6158];
  v21 = MEMORY[0x1E69E61C8];
  v22 = MEMORY[0x1E69E6190];
  v23 = MEMORY[0x1E69E6160];
  v24 = MEMORY[0x1E69E6168];
  v19[0] = a2;
  v19[1] = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v25 = sub_1BF8E8194;
  v26 = v12;
  type metadata accessor for Signal();
  v13 = swift_allocObject();
  v18[3] = &type metadata for CoreSignalTypes;
  v18[4] = sub_1BF8E62B8();
  LOBYTE(v18[0]) = a1;
  sub_1BF8D2004(v18, (v13 + 2));
  sub_1BF8E0940(v19, (v13 + 7));
  v13[17] = a4;
  v13[18] = a5;
  v13[19] = a6;
  __swift_project_boxed_opaque_existential_1(v19, v20);

  sub_1BF9B5668();
  OUTLINED_FUNCTION_21_13();
  v14 = CoreSignalTypes.description.getter();
  MEMORY[0x1BFB5DE90](v14);

  sub_1BF8E09DC(v19);
  v13[20] = v16;
  v13[21] = v17;
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v13;
}

void *sub_1BF970CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a1;
  v17 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1E69E61C8];
  v19 = MEMORY[0x1E69E6190];
  v20 = MEMORY[0x1E69E6160];
  v21 = MEMORY[0x1E69E6168];
  v16[1] = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v22 = sub_1BF971180;
  v23 = v10;
  type metadata accessor for Signal();
  v11 = swift_allocObject();
  v15[3] = &type metadata for UnknownSignalType;
  v15[4] = sub_1BF971128();
  sub_1BF8D2004(v15, (v11 + 2));
  sub_1BF8E0940(v16, (v11 + 7));
  v11[17] = a3;
  v11[18] = a4;
  v11[19] = a5;
  __swift_project_boxed_opaque_existential_1(v16, v17);

  sub_1BF9B5668();
  OUTLINED_FUNCTION_21_13();
  MEMORY[0x1BFB5DE90](0x6E776F6E6B6E75, 0xE700000000000000);
  sub_1BF8E09DC(v16);
  v11[20] = v13;
  v11[21] = v14;
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v11;
}

uint64_t sub_1BF970E0C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  swift_beginAccess();
  sub_1BF944C38();
  v10 = *(*(a3 + 40) + 16);
  sub_1BF944CF0(v10);
  v11 = *(a3 + 40);
  *(v11 + 16) = v10 + 1;
  sub_1BF932458(a1, v11 + 120 * v10 + 32);
  *(a3 + 40) = v11;
  swift_endAccess();
  sub_1BF978FA0();

  v23[3] = a4(v12);
  v23[4] = a5;
  v23[0] = a2;
  swift_beginAccess();
  v13 = *(a3 + 48);

  sub_1BF92523C(a1, v13, &v21);
  if (v22)
  {
    sub_1BF8C2C9C(&v21, v20);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B28, &unk_1BF9B8640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF9B6380;
    sub_1BF8D2004(v20, inited + 32);
    sub_1BF8D2004(v23, inited + 72);
    static CandidateSuggestionConfigurators.merge(_:)(inited, &v21);
    swift_setDeallocating();
    sub_1BF906498();
    if (!v22)
    {
      sub_1BF8EE3F8(&v21, &qword_1EBDE99C8, &unk_1BF9C2D00);
      if (qword_1EDBF57F0 != -1)
      {
        goto LABEL_10;
      }

      while (1)
      {
        v16 = sub_1BF9B47C8();
        OUTLINED_FUNCTION_49_3(v16, qword_1EDBF57F8);
        v17 = sub_1BF9B47A8();
        v18 = sub_1BF9B5048();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = OUTLINED_FUNCTION_12_0();
          *v19 = 0;
          _os_log_impl(&dword_1BF8B8000, v17, v18, "Unable to merge configurators. This shouldnt be happening", v19, 2u);
          OUTLINED_FUNCTION_54();
        }

        __break(1u);
LABEL_10:
        OUTLINED_FUNCTION_4_1();
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1BF8C2C9C(&v21, v23);
  }

  else
  {
    sub_1BF8EE3F8(&v21, &qword_1EBDE99C8, &unk_1BF9C2D00);
    swift_endAccess();
  }

  sub_1BF932458(a1, v20);
  sub_1BF8D2004(v23, &v21);
  swift_beginAccess();
  sub_1BF932964(&v21, v20);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v23);
}

unint64_t sub_1BF9710C4()
{
  result = qword_1EDBF3A08[0];
  if (!qword_1EDBF3A08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDEA1C0, qword_1BF9C4690);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF3A08);
  }

  return result;
}

unint64_t sub_1BF971128()
{
  result = qword_1EBDEA1C8;
  if (!qword_1EBDEA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDEA1C8);
  }

  return result;
}

void OUTLINED_FUNCTION_21_13()
{

  JUMPOUT(0x1BFB5DE90);
}

uint64_t sub_1BF9711D8()
{
  result = sub_1BF9B4A98();
  qword_1EDC033C8 = result;
  return result;
}

uint64_t sub_1BF971210()
{
  result = sub_1BF9B4A98();
  qword_1EDC033C0 = result;
  return result;
}

SiriSuggestionsKit::EventObserverToken __swiftcall NSDistributedNotificationCenter.observeAppRegistrationEvent(appInstallChangeHandlers:)(Swift::OpaquePointer appInstallChangeHandlers)
{
  v4 = v1;
  if (qword_1EDBF0560 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDC033C8;
  v6 = swift_allocObject();
  v6[2]._rawValue = appInstallChangeHandlers._rawValue;
  v23 = sub_1BF971880;
  v24 = v6;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1BF971ED0;
  v22 = &block_descriptor_1;
  v7 = _Block_copy(&v19);

  v8 = [v2 addObserverForName:v5 object:0 queue:0 usingBlock:v7];
  _Block_release(v7);
  if (qword_1EDBF0558 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDC033C0;
  v10 = swift_allocObject();
  v10[2]._rawValue = appInstallChangeHandlers._rawValue;
  v23 = sub_1BF972188;
  v24 = v10;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1BF971ED0;
  v22 = &block_descriptor_6;
  v11 = _Block_copy(&v19);

  v12 = [v2 addObserverForName:v9 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v13 = sub_1BF9B47C8();
  __swift_project_value_buffer(v13, qword_1EDBF5570);
  v14 = sub_1BF9B47A8();
  v15 = sub_1BF9B5028();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1BF8B8000, v14, v15, "finished registering notification.", v16, 2u);
    OUTLINED_FUNCTION_87();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A18, &qword_1BF9B8510);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BF9B6380;
  *(v17 + 56) = swift_getObjectType();
  *(v17 + 32) = v8;
  result.notificationCenterTokens._rawValue = swift_getObjectType();
  *(v17 + 88) = result;
  *(v17 + 64) = v12;
  *v4 = v17;
  return result;
}

void sub_1BF971570(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19[-2] - v5;
  v7 = sub_1BF9B42A8();
  if (!v7)
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_10;
  }

  v8 = v7;
  strcpy(v19, "isPlaceholder");
  HIWORD(v19[3]) = -4864;
  sub_1BF9B5228();
  sub_1BF925294(v20, v8, &v21);

  sub_1BF972B34(v20);
  if (!*(&v22 + 1))
  {
LABEL_10:
    sub_1BF972ACC(&v21);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) != 0 && !v20[0])
  {
    v9 = sub_1BF9B42A8();
    if (v9)
    {
      v10 = v9;
      strcpy(v19, "bundleIDs");
      HIWORD(v19[2]) = 0;
      v19[3] = -385875968;
      sub_1BF9B5228();
      sub_1BF925294(v20, v10, &v21);

      sub_1BF972B34(v20);
      if (*(&v22 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
        if (swift_dynamicCast())
        {
          v11 = v20[0];
          v12 = sub_1BF9B4EB8();
          __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
          v13 = swift_allocObject();
          v13[2] = 0;
          v13[3] = 0;
          v13[4] = a2;
          v13[5] = v11;

          sub_1BF939C48(0, 0, v6, &unk_1BF9C47E0, v13);
        }

        return;
      }
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    sub_1BF972ACC(&v21);
    return;
  }

LABEL_11:
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v14 = sub_1BF9B47C8();
  __swift_project_value_buffer(v14, qword_1EDBF5570);
  v15 = sub_1BF9B47A8();
  v16 = sub_1BF9B5028();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1BF8B8000, v15, v16, "Install notification was from a placeholder event. Ignoring", v17, 2u);
    MEMORY[0x1BFB5F320](v17, -1, -1);
  }
}

uint64_t sub_1BF971888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BF9718A8, 0, 0);
}

void sub_1BF9718A8()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  v0[16] = v2;
  if (v2)
  {
    v0[17] = 0;
    sub_1BF8D2004(v1 + 32, (v0 + 2));
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v3 = sub_1BF9B47C8();
    __swift_project_value_buffer(v3, qword_1EDBF5570);
    sub_1BF8D2004((v0 + 2), (v0 + 7));
    v4 = sub_1BF9B47A8();
    v5 = sub_1BF9B5038();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28 = v7;
      v8 = OUTLINED_FUNCTION_10_16(4.8149e-34);
      v9 = v0[11];
      v0[12] = v8;
      v0[13] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1D0, &qword_1BF9C47E8);
      v10 = sub_1BF9B4B08();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v13 = sub_1BF8DE810(v10, v12, &v28);

      *(v6 + 4) = v13;
      OUTLINED_FUNCTION_14_13(&dword_1BF8B8000, v14, v15, "calling appInstallChangeHandler - %s");
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    }

    v18 = v0[5];
    v19 = v0[6];
    v20 = *(OUTLINED_FUNCTION_4_22(v0 + 2) + 8);
    OUTLINED_FUNCTION_5_0();
    v27 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v0[18] = v24;
    *v24 = v0;
    v24[1] = sub_1BF971B34;
    OUTLINED_FUNCTION_0_23(v0[15]);
    OUTLINED_FUNCTION_13_11();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_13_11();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BF971B34()
{
  v1 = *(*v0 + 144);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BF971C28, 0, 0);
}

void sub_1BF971C28()
{
  v1 = v0[16];
  v2 = v0[17] + 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_13_11();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[17];
  v0[17] = v5 + 1;
  sub_1BF8D2004(v0[14] + 40 * v5 + 72, (v0 + 2));
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v6 = sub_1BF9B47C8();
  __swift_project_value_buffer(v6, qword_1EDBF5570);
  sub_1BF8D2004((v0 + 2), (v0 + 7));
  v7 = sub_1BF9B47A8();
  v8 = sub_1BF9B5038();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    v11 = OUTLINED_FUNCTION_10_16(4.8149e-34);
    v12 = v0[11];
    v0[12] = v11;
    v0[13] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1D0, &qword_1BF9C47E8);
    v13 = sub_1BF9B4B08();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v16 = sub_1BF8DE810(v13, v15, &v29);

    *(v9 + 4) = v16;
    OUTLINED_FUNCTION_14_13(&dword_1BF8B8000, v17, v18, "calling appInstallChangeHandler - %s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v19 = v0[5];
  v20 = v0[6];
  v21 = *(OUTLINED_FUNCTION_4_22(v0 + 2) + 8);
  OUTLINED_FUNCTION_5_0();
  v28 = v22 + *v22;
  v24 = *(v23 + 4);
  v25 = swift_task_alloc();
  v0[18] = v25;
  *v25 = v0;
  v25[1] = sub_1BF971B34;
  OUTLINED_FUNCTION_0_23(v0[15]);
  OUTLINED_FUNCTION_13_11();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1BF971ED0(uint64_t a1)
{
  v2 = sub_1BF9B42B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BF9B4298();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BF971FDC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v13 - v5;
  v7 = sub_1BF9B42A8();
  if (!v7)
  {
    v15 = 0u;
    v16 = 0u;
    return sub_1BF972ACC(&v15);
  }

  v8 = v7;
  v13[1] = 0x4449656C646E7562;
  v13[2] = 0xE900000000000073;
  sub_1BF9B5228();
  sub_1BF925294(v14, v8, &v15);

  sub_1BF972B34(v14);
  if (!*(&v16 + 1))
  {
    return sub_1BF972ACC(&v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v14[0];
    v11 = sub_1BF9B4EB8();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a2;
    v12[5] = v10;

    sub_1BF939C48(0, 0, v6, &unk_1BF9C47D0, v12);
  }

  return result;
}

uint64_t sub_1BF972190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BF9721B0, 0, 0);
}

uint64_t sub_1BF9721B0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = v1[2];
  v0[4] = v2;
  if (v2)
  {
    v0[5] = 0;
    v3 = v1[7];
    v4 = v1[8];
    v5 = *(OUTLINED_FUNCTION_4_22(v1 + 4) + 16);
    OUTLINED_FUNCTION_5_0();
    v14 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_1BF9722F8;
    v10 = OUTLINED_FUNCTION_0_23(v0[3]);

    return v11(v10);
  }

  else
  {
    OUTLINED_FUNCTION_77();

    return v13();
  }
}

uint64_t sub_1BF9722F8()
{
  v1 = *(*v0 + 48);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BF9723EC, 0, 0);
}

uint64_t sub_1BF9723EC()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[5] + 1;
  if (v1 == v0[4])
  {
    OUTLINED_FUNCTION_77();

    return v2();
  }

  else
  {
    v0[5] = v1;
    v4 = (v0[2] + 40 * v1);
    v5 = v4[7];
    v6 = v4[8];
    v7 = *(OUTLINED_FUNCTION_4_22(v4 + 4) + 16);
    OUTLINED_FUNCTION_5_0();
    v14 = v8 + *v8;
    v10 = *(v9 + 4);
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_1BF9722F8;
    v12 = OUTLINED_FUNCTION_0_23(v0[3]);

    return v13(v12);
  }
}

void sub_1BF97256C(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF9B47C8();
  __swift_project_value_buffer(v4, qword_1EDBF5570);

  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5028();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1BFB5E030](v3, MEMORY[0x1E69E7CA0] + 8);
    v11 = sub_1BF8DE810(v9, v10, v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BF8B8000, v5, v6, "Removing observer token %s from notification center", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB5F320](v8, -1, -1);
    MEMORY[0x1BFB5F320](v7, -1, -1);
  }

  v12 = *(v3 + 16);
  if (v12)
  {
    v13 = v3 + 32;
    do
    {
      sub_1BF8C187C(v13, v14);
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      [v2 removeObserver_];
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v14);
      v13 += 32;
      --v12;
    }

    while (v12);
  }
}

uint64_t dispatch thunk of OnAppInstallChange.appInstalled(bundleIds:)()
{
  OUTLINED_FUNCTION_6();
  v10 = (OUTLINED_FUNCTION_15(v0, v1, v2) + 8);
  v11 = *v10 + **v10;
  v3 = (*v10)[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_2(v5);

  return v8(v7);
}

uint64_t sub_1BF972884()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  OUTLINED_FUNCTION_77();

  return v4();
}

uint64_t dispatch thunk of OnAppInstallChange.appUnInstalled(bundleIds:)()
{
  OUTLINED_FUNCTION_6();
  v10 = (OUTLINED_FUNCTION_15(v0, v1, v2) + 16);
  v11 = *v10 + **v10;
  v3 = (*v10)[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_2(v5);

  return v8(v7);
}

uint64_t sub_1BF972ACC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF972B88()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_3_24(v6);

  return sub_1BF972190(v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_11Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF972C70()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15_2(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_3_24(v6);

  return sub_1BF971888(v8, v9, v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_10_16(float a1)
{
  *v1 = a1;
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));

  return swift_getDynamicType();
}

uint64_t sub_1BF972D58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9778, &unk_1BF9BF990);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF9783A4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t SiriSuggestions.IntentQuery.init(intentType:parameters:appBundleId:hydratedIntent:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[1];
  v16 = *a1;
  v10 = *(a1 + 16);
  if (a4)
  {
    if (sub_1BF9B4C08())
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    a3 = 0;
    v12 = 0;
  }

  v13 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  sub_1BF9502F0(a5, a6 + *(v13 + 32), &qword_1EBDE8E78, &unk_1BF9B9DD0);
  v14 = a6 + *(v13 + 28);
  sub_1BF9B4508();
  result = sub_1BF8DFBF0(a5, &qword_1EBDE8E78, &unk_1BF9B9DD0);
  *(a6 + 24) = v10;
  *(a6 + 8) = v16;
  *(a6 + 16) = v9;
  *a6 = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = v12;
  return result;
}

unint64_t SiriSuggestions.IntentType.broadIndexKey.getter()
{
  v1 = 0xD000000000000011;
  if (*(v0 + 16) == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*(v0 + 16))
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *(v0 + 16);
  return result;
}

void SiriSuggestions.IntentQuery.toV1Representation()(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v2 = v1[2];
  if (*(v1 + 24))
  {
    if (*(v1 + 24) == 1)
    {
      if (v2)
      {
        v4 = v1[1];
      }

      else
      {
        v4 = 0;
      }

      v5 = 0xE000000000000000;
      if (v2)
      {
        v5 = v1[2];
      }

      *a1 = v4;
      *(a1 + 8) = v5;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 40) = 0;
    }

    else
    {
      *a1 = v3;
      *(a1 + 8) = v2;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 16) = 0;
      *(a1 + 40) = 4;
    }
  }

  else
  {
    v6 = v1[4];
    v7 = v1[5];
    if (!v7)
    {
      v6 = 0;
    }

    v54 = v6;
    v8 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1D8, &qword_1BF9C4808);
    v9 = sub_1BF9B5458();
    v10 = v8 + 64;
    v11 = 1 << *(v8 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v8 + 64);
    v56 = v3;
    v57 = v2;
    sub_1BF9439F0(v3, v2, 0);
    v14 = (v11 + 63) >> 6;
    v15 = v9 + 64;
    v55 = v7;

    v16 = 0;
    v59 = v9;
    if (v13)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v13));
        v60 = (v13 - 1) & v13;
LABEL_20:
        v20 = v17 | (v16 << 6);
        v21 = (*(v8 + 48) + 16 * v20);
        v22 = v21[1];
        v61 = *v21;
        sub_1BF9502F0(*(v8 + 56) + 56 * v20, &v78, &qword_1EBDE95F0, &qword_1BF9B85D0);
        *(&v66 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
        *&v65 = swift_allocObject();
        sub_1BF9502F0(&v78, v65 + 16, &qword_1EBDE95F0, &qword_1BF9B85D0);
        sub_1BF8C187C(&v65, &v68);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9238, &unk_1BF9BD1F0);
        if (swift_dynamicCast())
        {
          sub_1BF8C2C9C(&v75, &v71);
          v23 = v15;
          v24 = v8;
          v26 = *(&v72 + 1);
          v25 = v73;
          __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
          v27 = *(v25 + 8);
          v28 = v25;
          v8 = v24;
          v15 = v23;
          v27(&v75, v26, v28);
          v9 = v59;
          __swift_destroy_boxed_opaque_existential_1(&v71);
        }

        else
        {
          *&v77 = 0;
          v75 = 0u;
          v76 = 0u;
          sub_1BF8DFBF0(&v75, &qword_1EBDE9240, &unk_1BF9C1A70);
          sub_1BF8C187C(&v65, &v75);
        }

        __swift_destroy_boxed_opaque_existential_1(&v65);
        sub_1BF8DFBF0(&v78, &qword_1EBDE95F0, &qword_1BF9B85D0);
        *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v29 = (*(v9 + 48) + 16 * v20);
        *v29 = v61;
        v29[1] = v22;
        v30 = (*(v9 + 56) + 32 * v20);
        v31 = v76;
        *v30 = v75;
        v30[1] = v31;
        v32 = *(v9 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          break;
        }

        *(v9 + 16) = v34;
        v13 = v60;
        if (!v60)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v18 = v16;
      while (1)
      {
        v16 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v16 >= v14)
        {
          break;
        }

        ++v18;
        if (*(v10 + 8 * v16))
        {
          OUTLINED_FUNCTION_28_11();
          v60 = v19;
          goto LABEL_20;
        }
      }

      v35 = 1 << *(v9 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v9 + 64);
      v38 = (v35 + 63) >> 6;

      v39 = 0;
      v40 = MEMORY[0x1E69E7CC0];
      while (v37)
      {
LABEL_38:
        v42 = __clz(__rbit64(v37)) | (v39 << 6);
        v43 = (*(v59 + 48) + 16 * v42);
        v44 = *v43;
        v45 = v43[1];
        sub_1BF9502F0(*(v59 + 56) + 32 * v42, &v76, &qword_1EBDE9208, &unk_1BF9C2A50);
        *&v75 = v44;
        *(&v75 + 1) = v45;
        sub_1BF9502F0(&v75, &v65, &qword_1EBDEA1E0, &unk_1BF9C4810);

        v63 = v66;
        v64 = v67;
        if (*(&v67 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8458, &qword_1BF9BF970);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v70 = 0;
            v68 = 0u;
            v69 = 0u;
          }
        }

        else
        {
          sub_1BF8DFBF0(&v63, &qword_1EBDE9208, &unk_1BF9C2A50);
          v68 = 0u;
          v69 = 0u;
          v70 = 0;
        }

        sub_1BF9502F0(&v68, &v63, &qword_1EBDE99E0, &unk_1BF9C6700);
        if (*(&v64 + 1))
        {
          sub_1BF8C2C9C(&v63, v62);
          v65 = v75;
          v66 = v76;
          v67 = v77;
          v71 = v75;
          sub_1BF8C2C9C(v62, &v72);
          sub_1BF8DFBF0(&v66, &qword_1EBDE9208, &unk_1BF9C2A50);
        }

        else
        {
          sub_1BF8DFBF0(&v75, &qword_1EBDEA1E0, &unk_1BF9C4810);
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0;
        }

        v37 &= v37 - 1;
        sub_1BF8DFBF0(&v68, &qword_1EBDE99E0, &unk_1BF9C6700);
        if (*(&v71 + 1))
        {
          v78 = v71;
          v79 = v72;
          v80 = v73;
          v81 = v74;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = *(v40 + 16);
            sub_1BF8DD020();
            v40 = v52;
          }

          v46 = *(v40 + 16);
          if (v46 >= *(v40 + 24) >> 1)
          {
            sub_1BF8DD020();
            v40 = v53;
          }

          *(v40 + 16) = v46 + 1;
          v47 = v40 + 56 * v46;
          v48 = v78;
          v49 = v79;
          v50 = v80;
          *(v47 + 80) = v81;
          *(v47 + 48) = v49;
          *(v47 + 64) = v50;
          *(v47 + 32) = v48;
        }

        else
        {
          sub_1BF8DFBF0(&v71, &qword_1EBDEA1E8, &qword_1BF9C4820);
        }
      }

      while (1)
      {
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v41 >= v38)
        {

          *a1 = v54;
          *(a1 + 8) = v55;
          *(a1 + 16) = v56;
          *(a1 + 24) = v57;
          *(a1 + 32) = v40;
          *(a1 + 40) = 2;
          return;
        }

        v37 = *(v15 + 8 * v41);
        ++v39;
        if (v37)
        {
          v39 = v41;
          goto LABEL_38;
        }
      }

LABEL_54:
      __break(1u);
    }

    __break(1u);
  }
}

BOOL static SiriSuggestions.IntentQuery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - v13;
  v15 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v16 = *(v15 + 32);
  sub_1BF9502F0(a1 + v16, v14, &qword_1EBDE8E78, &unk_1BF9B9DD0);
  type metadata accessor for SiriSuggestions.Intent(0);
  v17 = OUTLINED_FUNCTION_32_10(v14);
  v18 = v14;
  v19 = v44;
  sub_1BF8DFBF0(v18, &qword_1EBDE8E78, &unk_1BF9B9DD0);
  if (v17 == 1 || (sub_1BF9502F0(v19 + *(v15 + 32), v12, &qword_1EBDE8E78, &unk_1BF9B9DD0), v20 = 1, v21 = v19, v22 = OUTLINED_FUNCTION_32_10(v12), sub_1BF8DFBF0(v12, &qword_1EBDE8E78, &unk_1BF9B9DD0), v40 = v22 == 1, v19 = v21, v40))
  {
    sub_1BF9502F0(a1 + v16, v9, &qword_1EBDE8E78, &unk_1BF9B9DD0);
    v23 = OUTLINED_FUNCTION_32_10(v9);
    sub_1BF8DFBF0(v9, &qword_1EBDE8E78, &unk_1BF9B9DD0);
    if (v23 == 1)
    {
      v24 = v43;
      sub_1BF9502F0(v19 + *(v15 + 32), v43, &qword_1EBDE8E78, &unk_1BF9B9DD0);
      v20 = OUTLINED_FUNCTION_32_10(v24) == 1;
      sub_1BF8DFBF0(v24, &qword_1EBDE8E78, &unk_1BF9B9DD0);
    }

    else
    {
      v20 = 0;
    }
  }

  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v47[0] = *(a1 + 8);
  v25 = v47[0];
  v47[1] = v26;
  v48 = v27;
  v29 = *(v19 + 16);
  v30 = *(v19 + 24);
  v45[0] = *(v19 + 8);
  v28 = v45[0];
  v45[1] = v29;
  v46 = v30;
  v31 = v19;
  v32 = static SiriSuggestions.IntentType.== infix(_:_:)(v47, v45);
  sub_1BF9439F0(v25, v26, v27);
  sub_1BF9439F0(v28, v29, v30);
  sub_1BF8F5A94(v28, v29, v30);
  sub_1BF8F5A94(v25, v26, v27);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

  v33 = *(a1 + 40);
  v34 = v31[5];
  v35 = v31;
  if (!v33)
  {
    if (!v34)
    {

      v38 = v31;
      goto LABEL_22;
    }

LABEL_20:

    return 0;
  }

  if (!v34)
  {
    v41 = *(a1 + 40);
    goto LABEL_20;
  }

  v36 = *(a1 + 48);
  v37 = v35[4];
  v38 = v35;
  v39 = *(v35 + 48);
  v40 = *(a1 + 32) == v37 && v33 == v34;
  if (!v40 && (sub_1BF9B56D8() & 1) == 0 || v36 != v39)
  {
    return 0;
  }

LABEL_22:
  if ((sub_1BF974DD4(*v38, *a1) & 1) == 0)
  {
    return 0;
  }

  return v20;
}

uint64_t SiriSuggestions.IntentType.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      sub_1BF9B5288();

      OUTLINED_FUNCTION_8_11();
      v13 = v11;
      v14 = v10;
      MEMORY[0x1BFB5DE90](v2, v1);
      goto LABEL_10;
    }

    sub_1BF9B5288();

    OUTLINED_FUNCTION_8_11();
    v13 = v4 + 2;
    v14 = v3;
    if (!v1)
    {
      v5 = OUTLINED_FUNCTION_15_18();
      v7 = 1;
LABEL_7:
      sub_1BF8F5A94(v5, v6, v7);
      v1 = 0xE500000000000000;
      v2 = &v13;
    }
  }

  else
  {

    sub_1BF9B5288();

    OUTLINED_FUNCTION_8_11();
    v13 = v9 + 3;
    v14 = v8;
    if (!v1)
    {
      v5 = OUTLINED_FUNCTION_15_18();
      v7 = 0;
      goto LABEL_7;
    }
  }

  MEMORY[0x1BFB5DE90](v2, v1);

LABEL_10:
  MEMORY[0x1BFB5DE90](41, 0xE100000000000000);
  return v13;
}

Swift::String_optional __swiftcall SiriSuggestions.IntentType.getIdentifier()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = OUTLINED_FUNCTION_36();
  sub_1BF9439F0(v4, v5, v6);
  v7 = OUTLINED_FUNCTION_36();
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

void static SiriSuggestions.IntentType.inIntent(intentType:)(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [v2 typeName];

  v4 = sub_1BF9B4AA8();
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 1;
}

uint64_t static SiriSuggestions.IntentType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      if (v9 == 1)
      {
        goto LABEL_7;
      }
    }

    else if (!v6 && !v9)
    {
LABEL_7:
      v10 = (v5 | v8) == 0;
      if (!v5 || !v8)
      {
        return v10;
      }

      goto LABEL_11;
    }

    return 0;
  }

  if (v9 != 2)
  {
    return 0;
  }

LABEL_11:
  if (v4 != v7 || v5 != v8)
  {
    return sub_1BF9B56D8();
  }

  return 1;
}

uint64_t SiriSuggestions.IntentType.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v3 = *v0;
      v4 = v0[1];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
      sub_1BF9B4B08();
      OUTLINED_FUNCTION_21_14();
    }
  }

  else
  {
    if (!v0[1])
    {
      return sub_1BF9B57C8();
    }

    sub_1BF9B57C8();
  }

  return sub_1BF9B4B48();
}

void SiriSuggestions.IntentType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1F0, &qword_1BF9C4828);
  OUTLINED_FUNCTION_1(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  v39 = v28[3];
  __swift_project_boxed_opaque_existential_1(v28, v39);
  sub_1BF9773AC();
  sub_1BF9B5868();
  if (!v24)
  {
    v40 = sub_1BF9B5568();
    if (*(v40 + 16))
    {
      v41 = *(v40 + 32);

      if (v41)
      {
        if (v41 == 1)
        {
          a13 = 1;
          OUTLINED_FUNCTION_19_16();
          v42 = OUTLINED_FUNCTION_4_23();
          v43(v42);
          v44 = 0;
        }

        else
        {
          v44 = 2;
          a14 = 2;
          OUTLINED_FUNCTION_19_16();
          v48 = OUTLINED_FUNCTION_4_23();
          v49(v48);
        }
      }

      else
      {
        a12 = 0;
        OUTLINED_FUNCTION_19_16();
        v46 = OUTLINED_FUNCTION_4_23();
        v47(v46);
        v44 = 1;
      }

      *v30 = v41;
      *(v30 + 8) = v39;
      *(v30 + 16) = v44;
    }

    else
    {

      sub_1BF920A3C();
      swift_allocError();
      *v45 = 0;
      swift_willThrow();
      (*(v33 + 8))(v38, v31);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_37();
}

void SiriSuggestions.IntentType.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1F8, &qword_1BF9C4830);
  OUTLINED_FUNCTION_1(v16);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v11 = *v0;
  v10 = v0[1];
  v12 = *(v0 + 16);
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF9773AC();
  sub_1BF9B5898();
  if (v12)
  {
    if (v12 != 1)
    {
      LOBYTE(v17) = 2;
      v14 = v16;
      sub_1BF9B55F8();
      goto LABEL_7;
    }

    v17 = v11;
    v18 = v10;
  }

  else
  {
    v17 = v11;
    v18 = v10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  sub_1BF9782C8(&qword_1EDBF3F90, &qword_1EBDE96F8, &qword_1BF9BF440);
  v14 = v16;
  sub_1BF9B5638();
LABEL_7:
  (*(v4 + 8))(v9, v14);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF974044(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E496E69 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65746E49707061 && a2 == 0xE900000000000074;
    if (v6 || (OUTLINED_FUNCTION_70() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_70();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BF97414C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF974044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF974174(uint64_t a1)
{
  v2 = sub_1BF9773AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9741B0(uint64_t a1)
{
  v2 = sub_1BF9773AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.IntentType.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1BF9B57A8();
  if (!v3)
  {
    if (!v1)
    {
      sub_1BF9B57C8();
      return sub_1BF9B57E8();
    }

    sub_1BF9B57C8();
    goto LABEL_6;
  }

  if (v3 != 1)
  {
LABEL_6:
    sub_1BF9B4B48();
    return sub_1BF9B57E8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
  sub_1BF9B4B08();
  sub_1BF9B4B48();

  return sub_1BF9B57E8();
}

uint64_t sub_1BF9742C4()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1BF9B57A8();
  SiriSuggestions.IntentType.hash(into:)();
  return sub_1BF9B57E8();
}

uint64_t SiriSuggestions.IntentType.intentType.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return OUTLINED_FUNCTION_3_25(v2, v3, *(v1 + 16), a1);
}

uint64_t SiriSuggestions.IntentType.isMatched(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v13 = *v1;
  v14 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v11[0] = *(a1 + 8);
  v11[1] = v3;
  v12 = v4;
  v5 = static SiriSuggestions.IntentType.== infix(_:_:)(&v13, v11);
  v6 = OUTLINED_FUNCTION_43();
  sub_1BF9439F0(v6, v7, v4);
  v8 = OUTLINED_FUNCTION_43();
  sub_1BF8F5A94(v8, v9, v4);
  return v5 & 1;
}

void static SiriSuggestions.IntentType.appIntent()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void static SiriSuggestions.IntentType.inIntent()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

double static SiriSuggestions.IntentType.action()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1BF9C47F0;
  *(a1 + 16) = 2;
  return result;
}

uint64_t SiriSuggestions.IntentMatch.intentType.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return OUTLINED_FUNCTION_3_25(v2, v3, *(v1 + 16), a1);
}

uint64_t SiriSuggestions.IntentMatch.matcher.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_43();
}

uint64_t SiriSuggestions.IntentMatch.init(intentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = sub_1BF977400;
  *(a2 + 32) = v6;

  return sub_1BF9439F0(v3, v4, v5);
}

uint64_t sub_1BF9744D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v11[0] = *(a1 + 8);
  v4 = v11[0];
  v11[1] = v5;
  v12 = v6;
  v9[0] = a2;
  v9[1] = a3;
  v10 = a4;
  v7 = static SiriSuggestions.IntentType.== infix(_:_:)(v11, v9);
  sub_1BF9439F0(v4, v5, v6);
  sub_1BF8F5A94(v4, v5, v6);
  return v7 & 1;
}

__n128 SiriSuggestions.IntentMatch.init(intentType:matcher:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u8[0];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = v4;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

uint64_t SiriSuggestions.IntentMatch.isMatched(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1() & 1;
}

uint64_t static SiriSuggestions.IntentMatch.createINIntentMatch<A>(type:matcher:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = [v8 typeName];

  v10 = sub_1BF9B4AA8();
  v12 = v11;

  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a1;
  v13[4] = a2;
  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 16) = 1;
  *(a4 + 24) = sub_1BF97740C;
  *(a4 + 32) = v13;
}

uint64_t sub_1BF974668(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v16 - v6);
  v8 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  sub_1BF9502F0(a1 + *(v8 + 32), v7, &qword_1EBDE8E78, &unk_1BF9B9DD0);
  v9 = type metadata accessor for SiriSuggestions.Intent(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    sub_1BF8DFBF0(v7, &qword_1EBDE8E78, &unk_1BF9B9DD0);
  }

  else if (swift_getEnumCaseMultiPayload())
  {
    sub_1BF9777A4(v7, type metadata accessor for SiriSuggestions.Intent);
  }

  else
  {
    v12 = *v7;
    v13 = swift_dynamicCastUnknownClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      v10 = a2(v14);

      return v10 & 1;
    }
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t SiriSuggestions.IntentQuery.parameters.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA1D8, &qword_1BF9C4808);
  result = sub_1BF9B5458();
  v3 = result;
  v4 = 0;
  v26 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  v27 = v8;
  v28 = v1;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v29 = (v7 - 1) & v7;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v15 = v14[1];
      v30 = *v14;
      sub_1BF9502F0(*(v1 + 56) + 56 * v13, v40, &qword_1EBDE95F0, &qword_1BF9B85D0);
      v39[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
      v39[0] = swift_allocObject();
      sub_1BF9502F0(v40, v39[0] + 16, &qword_1EBDE95F0, &qword_1BF9B85D0);
      sub_1BF8C187C(v39, v35);
      v31 = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9238, &unk_1BF9BD1F0);
      if (swift_dynamicCast())
      {
        sub_1BF8C2C9C(&v32, v36);
        v17 = v37;
        v16 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        v18 = *(v16 + 8);
        v19 = v16;
        v1 = v28;
        v18(&v32, v17, v19);
        v8 = v27;
        __swift_destroy_boxed_opaque_existential_1(v36);
      }

      else
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        sub_1BF8DFBF0(&v32, &qword_1EBDE9240, &unk_1BF9C1A70);
        sub_1BF8C187C(v39, &v32);
      }

      __swift_destroy_boxed_opaque_existential_1(v39);
      result = sub_1BF8DFBF0(v40, &qword_1EBDE95F0, &qword_1BF9B85D0);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v20 = (v3[6] + 16 * v13);
      *v20 = v30;
      v20[1] = v31;
      v21 = (v3[7] + 32 * v13);
      v22 = v33;
      *v21 = v32;
      v21[1] = v22;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v3[2] = v25;
      v7 = v29;
      if (!v29)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      ++v11;
      if (*(v26 + 8 * v4))
      {
        OUTLINED_FUNCTION_28_11();
        v29 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SiriSuggestions.IntentQuery.intentType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_3_25(v2, v3, *(v1 + 24), a1);
}

uint64_t SiriSuggestions.IntentQuery.appBundleId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t SiriSuggestions.IntentQuery.queryUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSuggestions.IntentQuery(0) + 28);
  v4 = sub_1BF9B4518();
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SiriSuggestions.IntentQuery.init(intentType:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F0, &qword_1BF9B85D0);
  sub_1BF9B4988();
  v7 = OUTLINED_FUNCTION_23_0();
  v8 = type metadata accessor for SiriSuggestions.IntentQuery(v7);
  v9 = *(v8 + 32);
  v10 = type metadata accessor for SiriSuggestions.Intent(0);
  __swift_storeEnumTagSinglePayload(a2 + v9, 1, 1, v10);
  v11 = a2 + *(v8 + 28);
  result = sub_1BF9B4508();
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *a2 = v2;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t SiriSuggestions.IntentQuery.init(intentType:parameters:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  v9 = *(v8 + 32);
  v10 = type metadata accessor for SiriSuggestions.Intent(0);
  __swift_storeEnumTagSinglePayload(a3 + v9, 1, 1, v10);
  v11 = a3 + *(v8 + 28);
  result = sub_1BF9B4508();
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *a3 = a2;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return result;
}

uint64_t SiriSuggestions.IntentQuery.init(intentType:parameters:appBundleId:hydratedIntent:queryUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a3 + 16);
  *(a6 + 8) = *a1;
  *(a6 + 24) = v9;
  *a6 = a2;
  *(a6 + 32) = *a3;
  *(a6 + 48) = v10;
  v11 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  sub_1BF977418(a4, a6 + *(v11 + 32));
  v12 = *(v11 + 28);
  v13 = sub_1BF9B4518();
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 32);

  return v15(a6 + v12, a5);
}

uint64_t sub_1BF974DD4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == *(a1 + 16))
  {
    v4 = a2 + 64;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
LABEL_10:
      v11 = __clz(__rbit64(v7)) | (v9 << 6);
      v12 = (*(a2 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      sub_1BF9502F0(*(a2 + 56) + 56 * v11, &v18, &qword_1EBDE95F0, &qword_1BF9B85D0);
      v17[0] = v13;
      v17[1] = v14;

      LOBYTE(v14) = sub_1BF976A80(v17, a1);
      v7 &= v7 - 1;
      sub_1BF8DFBF0(v17, &qword_1EBDEA260, &qword_1BF9C4F50);
      if ((v14 & 1) == 0)
      {
        v15 = 0;
LABEL_14:

        return v15;
      }
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        v15 = 1;
        goto LABEL_14;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);

    result = sub_1BF8DFBF0(v17, &qword_1EBDEA260, &qword_1BF9C4F50);
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t SiriSuggestions.IntentQuery.hash(into:)()
{
  v1 = *(v0 + 8);
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v3 = *(v0 + 8);
      v4 = *(v0 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE96F8, &qword_1BF9BF440);
      sub_1BF9B4B08();
      OUTLINED_FUNCTION_21_14();
    }
  }

  else
  {
    if (!*(v0 + 16))
    {
      return sub_1BF9B57C8();
    }

    sub_1BF9B57C8();
  }

  return sub_1BF9B4B48();
}

Swift::String_optional __swiftcall SiriSuggestions.IntentQuery.getToolId()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 2 || v2 == 1)
  {
    v3 = *(v0 + 16);
  }

  else if (v1)
  {
    v6 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v6 = *(v0 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = *(v0 + 40);
      if (v7)
      {
        v8 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v8 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
        }

        if (v8)
        {
          v15 = *(v0 + 8);
          v16 = *(v0 + 16);
          v13 = *(v0 + 32);
          v14 = *(v0 + 40);
          sub_1BF904C28();

          if ((sub_1BF9B5198() & 1) == 0)
          {

            MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
            v9 = OUTLINED_FUNCTION_36();
            MEMORY[0x1BFB5DE90](v9);
            v10 = OUTLINED_FUNCTION_36();
            sub_1BF8F5A94(v10, v11, 0);
          }
        }
      }
    }
  }

  v4 = OUTLINED_FUNCTION_36();
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

void SiriSuggestions.IntentQuery.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v50 = v3;
  v51 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = sub_1BF9B4518();
  v5 = OUTLINED_FUNCTION_1(v4);
  v48 = v6;
  v49 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v11 = v10 - v9;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0) - 8) + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDEA200, &qword_1BF9C4838);
  OUTLINED_FUNCTION_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_11_0();
  v20 = v0[3];
  v21 = v0[4];
  v52 = v0;
  __swift_project_boxed_opaque_existential_1(v0, v20);
  sub_1BF977488();
  v22 = v51;
  sub_1BF9B5868();
  if (!v22)
  {
    v47 = v11;
    v51 = v15;
    v23 = v50;
    sub_1BF9774DC();
    OUTLINED_FUNCTION_25_11();
    sub_1BF9B5558();
    v25 = v53;
    v24 = v54;
    v56 = v55;
    type metadata accessor for SiriSuggestions.Intent(0);
    LOBYTE(v53) = 1;
    OUTLINED_FUNCTION_6_15();
    sub_1BF977530(v26, v27);
    sub_1BF9B5508();
    v46 = v25;
    sub_1BF8D7600();
    OUTLINED_FUNCTION_25_11();
    sub_1BF9B5508();
    v28 = v53;
    v45 = v54;
    LODWORD(v25) = v55;
    v29 = sub_1BF9755C0(3, v2);
    v42 = v28;
    v43 = v29;
    v41 = v25;
    v44 = v24;
    LOBYTE(v53) = 4;
    OUTLINED_FUNCTION_7_15();
    sub_1BF977530(v30, v31);
    v32 = v47;
    v33 = v49;
    sub_1BF9B5558();
    v34 = OUTLINED_FUNCTION_13_12();
    v35(v34);
    v36 = type metadata accessor for SiriSuggestions.IntentQuery(0);
    sub_1BF977418(v51, v23 + *(v36 + 32));
    (*(v48 + 32))(v23 + *(v36 + 28), v32, v33);
    v37 = v44;
    *(v23 + 24) = v56;
    *(v23 + 8) = v46;
    *(v23 + 16) = v37;
    v38 = v42;
    *v23 = v43;
    v39 = v45;
    *(v23 + 32) = v38;
    *(v23 + 40) = v39;
    *(v23 + 48) = v41;
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  OUTLINED_FUNCTION_37();
}