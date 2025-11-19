double sub_261FA229C()
{
  OUTLINED_FUNCTION_17_1();
  v6 = v5 | 0x4C4C0000u;
  if (v2)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = v4;
  }

  v9 = OBJC_IVAR___RPDeviceKeyValueStore_Internal_kvs;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v10 = *(v1 + v9);

  OUTLINED_FUNCTION_4_2();
  v12 = sub_261FA1B74(v7, v8, v10, v11);

  if (v12)
  {
    OUTLINED_FUNCTION_29_3();
    sub_261FA1AAC(v13, v14, v15, v16);

    if (v21)
    {
      sub_261FA4228(v20, v19);
      sub_261F66E60(v20, &qword_27FEF9848, &qword_26203F5D8);
      v17 = v19[32];
      sub_261FA4358(v19);
      *(v0 + 24) = MEMORY[0x277D839B0];
      *v0 = v17;
      return result;
    }

    sub_261F66E60(v20, &qword_27FEF9848, &qword_26203F5D8);
  }

  return OUTLINED_FUNCTION_25_1();
}

id sub_261FA23DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a3)
  {
    sub_26203A1BC();
  }

  sub_26203A1BC();
  v7 = a1;
  v8 = OUTLINED_FUNCTION_75();
  a5(v8);

  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_0Tm(v17, v18);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x28223BE20](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_26203ABFC();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t sub_261FA2574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = sub_26203A18C();
  v14 = MGCopyAnswer();

  v25 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9928, &qword_26203F708);
  v15 = MEMORY[0x277D837D0];
  result = swift_dynamicCast();
  if (result)
  {
    v20 = a5;
    v17 = v22;
    v18 = v23;
    if (a4)
    {
      v19 = a4;
    }

    else
    {
      a3 = 1280070990;
      v19 = 0xE400000000000000;
    }

    v24 = v15;

    sub_261FA1698(a3, v19, a1, a2, &v22, a7 & 1);
    __swift_destroy_boxed_opaque_existential_0Tm(&v22);
    if (a6)
    {
      v24 = v15;
      v22 = v17;
      v23 = v18;

      sub_261FA1698(a3, v19, v20, a6, &v22, a7 & 1);

      return __swift_destroy_boxed_opaque_existential_0Tm(&v22);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_261FA26E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v12 = sub_26203A18C();
  v13 = MGCopyAnswer();

  v27[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9928, &qword_26203F708);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v29;
    v28 = v14;
    v27[0] = v29;

    v17 = OUTLINED_FUNCTION_28_2();
    sub_261FA1698(v17, v18, a1, a2, v19, v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    if (a6)
    {
      v28 = v14;
      v27[0] = v16;

      v21 = OUTLINED_FUNCTION_28_2();
      sub_261FA1698(v21, v22, a5, a6, v23, v24);

      return __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_261FA2848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = sub_26203A18C();
  v15 = MGCopyAnswer();

  v22[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9928, &qword_26203F708);
  v16 = MEMORY[0x277D839B0];
  result = swift_dynamicCast();
  if (result)
  {
    v21 = a5;
    if (a4)
    {
      v18 = a3;
    }

    else
    {
      v18 = 1280070990;
    }

    if (a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v23 = v16;
    v20 = v24 & 1;
    LOBYTE(v22[0]) = v24 & 1;

    sub_261FA1698(v18, v19, a1, a2, v22, a7 & 1);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    if (a6)
    {
      v23 = v16;
      LOBYTE(v22[0]) = v20;
      sub_261FA1698(v18, v19, v21, a6, v22, a7 & 1);

      return __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {
    }
  }

  return result;
}

void sub_261FA2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = sub_26203A18C();
  MGCopyAnswer();

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    if (a4)
    {
      v16 = a3;
    }

    else
    {
      v16 = 1280070990;
    }

    if (a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    v18 = sub_261F9B6D0(0, &unk_28108B270, 0x277CCABB0);
    v23 = v18;
    v22[0] = v15;
    v19 = v15;

    sub_261FA1698(v16, v17, a1, a2, v22, a7 & 1);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    if (a6)
    {
      v23 = v18;
      v22[0] = v19;
      v20 = v19;
      sub_261FA1698(v16, v17, a5, a6, v22, a7 & 1);

      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_261FA2B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v24 = a6;
  HIDWORD(v22) = a7;
  v23 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v11 = sub_2620392DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 8;
  v31 = 0;
  v25 = a2;
  v16 = sub_26203A21C();
  LODWORD(a2) = sysctlbyname((v16 + 32), &v31, &v30, 0, 0);

  if (a2)
  {
    v17 = sub_2620396AC();
    if ((v17 & 0x100000000) != 0)
    {
      v18 = 0;
    }

    else
    {
      LODWORD(v32) = v17;
      sub_261F9D4D8(MEMORY[0x277D84F90]);
      sub_261FA5DCC(&qword_27FEF9920, MEMORY[0x277CC8658]);
      sub_2620393DC();
      v18 = sub_2620392CC();
      (*(v12 + 8))(v15, v11);
    }

    sub_261F9BCE0();
    sub_26203ACEC();
    v26 = v28;
    v27 = v29;
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_26203A7CC();

    v32 = 0xD000000000000017;
    v33 = 0x800000026204E380;
    MEMORY[0x266722710](a1, v25);
    sub_26203AD4C();
    v28 = v32;
    v29 = v33;
    sub_261F9D610();
    swift_allocError();
    sub_2620399DC();

    swift_willThrow();
  }

  else
  {
    if (a4)
    {
      v19 = a3;
    }

    else
    {
      v19 = 1280070990;
    }

    if (a4)
    {
      v20 = a4;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    v34 = MEMORY[0x277D84D38];
    v32 = v31;

    sub_261FA1698(v19, v20, v23, v24, &v32, BYTE4(v22) & 1);

    __swift_destroy_boxed_opaque_existential_0Tm(&v32);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void *sub_261FA2E5C(char a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  sub_261FA2F88(a1);
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9868, qword_26203F5F8);
  v2 = sub_26203A0BC();

  v8[0] = 0;
  v3 = [v1 dataWithPropertyList:v2 format:200 options:0 error:v8];

  v4 = v8[0];
  if (v3)
  {
    v5 = sub_26203954C();
  }

  else
  {
    v5 = v4;
    sub_2620393FC();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_261FA2F88(char a1)
{
  v2 = OBJC_IVAR___RPDeviceKeyValueStore_Internal_kvs;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = *(v3 + 64);
  v5 = *(v3 + 32);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  v31 = MEMORY[0x277D84F90];
  while (v8)
  {
LABEL_7:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v3 + 56) + 8 * v14);

    sub_261FA3178(v16, v17, v18, a1 & 1);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    if (v22)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v31 + 16);
        sub_261FB991C();
        v31 = v29;
      }

      v25 = *(v31 + 16);
      v26 = v25 + 1;
      if (v25 >= *(v31 + 24) >> 1)
      {
        sub_261FB991C();
        v26 = v25 + 1;
        v31 = v30;
      }

      *(v31 + 16) = v26;
      v27 = (v31 + 24 * v25);
      v27[4] = v20;
      v27[5] = v22;
      v27[6] = v24;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      sub_261FA14E8(v31, &qword_27FEF98F0, &qword_26203F6D8, sub_261FA5748);
      return;
    }

    v8 = *(v3 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_261FA3178(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v9)) | (v11 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_261FA4228(*(a3 + 56) + 40 * v13, v30);
    v29[0] = v15;
    v29[1] = v16;
    if ((a4 & 1) != 0 || (v30[32] & 1) == 0)
    {
      *&v26 = v15;
      *(&v26 + 1) = v16;
      sub_261F681A8(v30, &v27);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
    }

    v9 &= v9 - 1;

    sub_261F66E60(v29, &qword_27FEF9858, &qword_26203F5E8);
    if (*(&v26 + 1))
    {
      v23 = v26;
      v24 = v27;
      v25 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v22 + 16);
        sub_261FB9A10();
        v22 = v20;
      }

      v17 = *(v22 + 16);
      if (v17 >= *(v22 + 24) >> 1)
      {
        sub_261FB9A10();
        v22 = v21;
      }

      *(v22 + 16) = v17 + 1;
      v18 = (v22 + 48 * v17);
      v18[3] = v24;
      v18[4] = v25;
      v18[2] = v23;
    }

    else
    {
      sub_261F66E60(&v26, &unk_27FEF9900, &qword_26203F6E8);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      sub_261FA14E8(v22, &qword_27FEFA180, &unk_26203F6F0, sub_261FA5A54);

      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_261FA33DC(uint64_t a1)
{
  sub_261F7B428(a1, v4, &qword_27FEF9870, &qword_26203C960);
  if (v5)
  {
    type metadata accessor for DeviceKeyValueStore();
    if (swift_dynamicCast())
    {
      sub_261F9B6D0(0, &unk_27FEF9878, 0x277D82BB8);
      sub_261FA2F88(1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9868, qword_26203F5F8);
      OUTLINED_FUNCTION_29_3();
      v1 = sub_26203A0BC();

      sub_261FA2F88(1);
      OUTLINED_FUNCTION_29_3();
      v2 = sub_26203A0BC();

      sub_26203A69C();
    }
  }

  else
  {
    sub_261F66E60(v4, &qword_27FEF9870, &qword_26203C960);
  }

  OUTLINED_FUNCTION_21_1();
}

id DeviceKeyValueStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceKeyValueStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261FA3600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26203AC0C();
  }
}

uint64_t sub_261FA361C()
{
  sub_26203A1BC();
  sub_26203ADDC();
  sub_26203A23C();
  v0 = sub_26203AE0C();

  return v0;
}

uint64_t sub_261FA3694(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_261FA3708(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_261F67FE4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_261FA3764(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9918, &qword_26203F700);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_261FA3858(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_261FA3880(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26203A1BC();
  sub_26203ADDC();
  sub_26203A23C();
  v4 = sub_26203AE0C();

  return sub_261FA5318(a1, v4);
}

unint64_t sub_261FA3914(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_26203ADCC();

  return sub_261FA5410(a1, v4);
}

unint64_t sub_261FA3958()
{
  v1 = *(v0 + 40);
  sub_262039A7C();
  sub_261FA5DCC(&qword_27FEF9898, MEMORY[0x277CD8B10]);
  sub_26203A11C();
  v2 = OUTLINED_FUNCTION_23_1();

  return sub_261FA5470(v2, v3);
}

uint64_t sub_261FA39EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98F0, &qword_26203F6D8);
  v38 = a2;
  result = sub_26203A93C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_261FA56E4(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_26203ADDC();
    sub_26203A23C();
    result = sub_26203AE0C();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_261FA3C90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA180, &unk_26203F6F0);
  v36 = a2;
  result = sub_26203A93C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_261FA56E4(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_261F8D184(v23, v37);
    }

    else
    {
      sub_261F681A8(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_26203ADDC();
    sub_26203A23C();
    result = sub_26203AE0C();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_261F8D184(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

_OWORD *sub_261FA3F44(_OWORD *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_261FA3880(a2);
  OUTLINED_FUNCTION_5_2(v6, v7);
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF96B0, &qword_26203E660);
  if ((sub_26203A8EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v3;
  v14 = sub_261FA3880(a2);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    type metadata accessor for RPTrustedHostInfoKey(0);
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v3;
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v16[7] + 32 * v11));
    v17 = OUTLINED_FUNCTION_47();

    return sub_261F8D184(v17, v18);
  }

  else
  {
    sub_261FA4C24(v11, a2, a1, v16);

    return a2;
  }
}

uint64_t sub_261FA406C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_261F7C720(a2, a3, sub_261F7C7D0);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9850, &qword_26203F5E0);
  if ((sub_26203A8EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_261F7C720(a2, a3, sub_261F7C7D0);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7] + 40 * v11;

    return sub_261FA5D94(a1, v17);
  }

  else
  {
    sub_261FA4C8C(v11, a2, a3, a1, v16);
  }
}

_OWORD *sub_261FA4260()
{
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_0_10();
  v6 = sub_261F7C720(v4, v0, v5);
  OUTLINED_FUNCTION_5_2(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9860, &qword_26203F5F0);
  if (OUTLINED_FUNCTION_8_1())
  {
    v9 = *v1;
    OUTLINED_FUNCTION_0_10();
    v10 = OUTLINED_FUNCTION_75();
    sub_261F7C720(v10, v11, v12);
    OUTLINED_FUNCTION_6_5();
    if (!v14)
    {
      goto LABEL_14;
    }

    v3 = v13;
  }

  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((*(*v1 + 56) + 32 * v3));
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_22_2();

    return sub_261F8D184(v15, v16);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_11_3();
    sub_261FA4CE8(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_22_2();
  }
}

unint64_t sub_261FA4388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v10 = *v3;
  v11 = sub_261FA3914(a3);
  OUTLINED_FUNCTION_5_2(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E8, &qword_26203F6D0);
  if (OUTLINED_FUNCTION_8_1())
  {
    v14 = *v6;
    sub_261FA3914(a3);
    OUTLINED_FUNCTION_6_5();
    if (!v16)
    {
      goto LABEL_14;
    }

    v5 = v15;
  }

  if (v4)
  {
    v17 = (*(*v6 + 56) + 16 * v5);
    v18 = v17[1];
    *v17 = a1;
    v17[1] = a2;
    OUTLINED_FUNCTION_22_2();
  }

  else
  {
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_22_2();

    return sub_261FA4F40(v21, v22, v23, v24, v25);
  }
}

void sub_261FA447C()
{
  v2 = OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_5_2(v2, v3);
  if (v6)
  {
    __break(1u);
LABEL_12:
    sub_26203AC9C();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
  if (OUTLINED_FUNCTION_30_3())
  {
    v9 = *v1;
    sub_261F67388();
    OUTLINED_FUNCTION_6_5();
    if (!v11)
    {
      goto LABEL_12;
    }

    v7 = v10;
  }

  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((*(*v1 + 56) + 32 * v7));
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_21_1();

    sub_261F8D184(v12, v13);
  }

  else
  {
    sub_261F67C78(v0, v19);
    v15 = OUTLINED_FUNCTION_24_1();
    sub_261FA4F88(v15, v16, v17, v18);
    OUTLINED_FUNCTION_21_1();
  }
}

uint64_t sub_261FA4574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_10();
  v16 = sub_261F7C720(v14, v6, v15);
  OUTLINED_FUNCTION_5_2(v16, v17);
  if (v18)
  {
    __break(1u);
LABEL_14:
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (OUTLINED_FUNCTION_8_1())
  {
    v19 = *v9;
    OUTLINED_FUNCTION_0_10();
    sub_261F7C720(v8, v6, v20);
    OUTLINED_FUNCTION_6_5();
    if (!v22)
    {
      goto LABEL_14;
    }

    v11 = v21;
  }

  if (v10)
  {
    v23 = *(*v9 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = v7;
    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    v27 = OUTLINED_FUNCTION_10_1();
    sub_261FA5008(v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_31_0();
  }
}

void sub_261FA4680()
{
  v3 = OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_5_2(v3, v4);
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_26203AC9C();
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98D8, &qword_26203F6C0);
  if (OUTLINED_FUNCTION_30_3())
  {
    v10 = *v2;
    sub_261F67388();
    OUTLINED_FUNCTION_6_5();
    if (!v12)
    {
      goto LABEL_12;
    }

    v8 = v11;
  }

  if (v9)
  {
    v13 = *(*v2 + 56);
    v14 = *(v13 + 8 * v8);
    *(v13 + 8 * v8) = v0;
    OUTLINED_FUNCTION_21_1();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_261F67C78(v1, v20);
    v16 = OUTLINED_FUNCTION_24_1();
    sub_261FA502C(v16, v17, v18, v19);
    OUTLINED_FUNCTION_21_1();
  }
}

uint64_t sub_261FA475C()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_10();
  v6 = sub_261F7C720(v4, v0, v5);
  OUTLINED_FUNCTION_5_2(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98A8, &unk_2620447A0);
  if (OUTLINED_FUNCTION_8_1())
  {
    v9 = *v2;
    OUTLINED_FUNCTION_0_10();
    sub_261F7C720(v1, v0, v10);
    OUTLINED_FUNCTION_6_5();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v3)
  {
    v12 = *(*v2 + 56);
    OUTLINED_FUNCTION_22_2();

    return sub_261FA562C(v13, v14);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_10_1();
    sub_261FA5084(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_22_2();
  }
}

uint64_t sub_261FA4860()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_10();
  v8 = sub_261F7C720(v6, v0, v7);
  OUTLINED_FUNCTION_5_2(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B8, &qword_2620447C0);
  if (OUTLINED_FUNCTION_8_1())
  {
    v11 = *v3;
    OUTLINED_FUNCTION_0_10();
    sub_261F7C720(v2, v0, v12);
    OUTLINED_FUNCTION_6_5();
    if (!v14)
    {
      goto LABEL_14;
    }

    v5 = v13;
  }

  if (v4)
  {
    v15 = *(*v3 + 56);
    v16 = *(v15 + 8 * v5);
    *(v15 + 8 * v5) = v1;
    OUTLINED_FUNCTION_22_2();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_10_1();
    sub_261FA5008(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_22_2();
  }
}

uint64_t sub_261FA4960()
{
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_0_10();
  v6 = sub_261F7C720(v4, v0, v5);
  OUTLINED_FUNCTION_5_2(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_13_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF98C0, &qword_26203F6A0);
  if (OUTLINED_FUNCTION_8_1())
  {
    v9 = *v1;
    OUTLINED_FUNCTION_0_10();
    v10 = OUTLINED_FUNCTION_75();
    sub_261F7C720(v10, v11, v12);
    OUTLINED_FUNCTION_6_5();
    if (!v14)
    {
      goto LABEL_14;
    }

    v3 = v13;
  }

  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((*(*v1 + 56) + 40 * v3));
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_22_2();

    return sub_261F797BC(v15, v16);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_11_3();
    sub_261FA50E0(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_22_2();
  }
}

void sub_261FA4A68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_262039A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = sub_261FA3958();
  OUTLINED_FUNCTION_5_2(v12, v13);
  if (v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9888, &qword_26203F678);
  if ((OUTLINED_FUNCTION_8_1() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *v3;
  v20 = sub_261FA3958();
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_11:
    sub_26203AC9C();
    __break(1u);
    return;
  }

  v17 = v20;
LABEL_5:
  v22 = *v3;
  if (v18)
  {
    v23 = v22[7];
    v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680) - 8) + 72);
    OUTLINED_FUNCTION_31_0();

    sub_261FA5238(v25, v26);
  }

  else
  {
    (*(v7 + 16))(v10, a2, v6);
    sub_261FA5150(v17, v10, a1, v22);
    OUTLINED_FUNCTION_31_0();
  }
}

_OWORD *sub_261FA4C24(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_261F8D184(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_261FA4C8C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_261FA4CE8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_261F8D184(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
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

uint64_t sub_261FA4EAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261FA4EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261FA4F40(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_261FA4F88(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_261F8D184(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_261FA5008(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = OUTLINED_FUNCTION_16_2(a1, a2, a3, a4, a5);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v7;
  }

  return result;
}

unint64_t sub_261FA502C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_261FA5084(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_261FA50E0(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_261F797BC(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_261FA5150(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_262039A7C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
  result = sub_261FA52A8(a3, v10 + *(*(v11 - 8) + 72) * a1);
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

uint64_t sub_261FA5238(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FA52A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261FA5318(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_26203A1BC();
    v8 = v7;
    if (v6 == sub_26203A1BC() && v8 == v9)
    {

      return i;
    }

    v11 = sub_26203AC0C();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_261FA5410(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_261FA5470(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_262039A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_261FA5DCC(&qword_27FEF98A0, MEMORY[0x277CD8B10]);
    v10 = sub_26203A17C();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_261FA56E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26203F5B0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_261FA5748(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_26203AC9C();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_261F7C720(v7, v6, sub_261F7C7D0);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98F8, &qword_26203F6E0);
      sub_26203A8FC();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_261FA39EC(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_261F7C720(v7, v6, sub_261F7C7D0);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_26203A7CC();
  MEMORY[0x266722710](0xD00000000000001BLL, 0x800000026204E360);
  sub_26203A8CC();
  MEMORY[0x266722710](39, 0xE100000000000000);
  sub_26203A91C();
  __break(1u);
}

void sub_261FA5A54(uint64_t a1, char a2, void *a3)
{
  v26 = *(a1 + 16);
  if (!v26)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_26203AC9C();
      __break(1u);
      goto LABEL_22;
    }

    sub_261F7B428(i, &v31, &qword_27FEF9910, &unk_26203EF00);
    v8 = v31;
    v7 = v32;
    v29 = v31;
    v30 = v32;
    sub_261F8D184(&v33, v28);
    v9 = *a3;
    v11 = sub_261F7C720(v8, v7, sub_261F7C7D0);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9860, &qword_26203F5F0);
      sub_26203A8FC();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_261F8D184(v28, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v23;
    a2 = 1;
    if (v26 == v5)
    {

      return;
    }
  }

  sub_261FA3C90(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_261F7C720(v8, v7, sub_261F7C7D0);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34 = v24;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v28);

    return;
  }

LABEL_22:
  sub_26203A7CC();
  MEMORY[0x266722710](0xD00000000000001BLL, 0x800000026204E360);
  sub_26203A8CC();
  MEMORY[0x266722710](39, 0xE100000000000000);
  sub_26203A91C();
  __break(1u);
}

uint64_t sub_261FA5DCC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_23_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_3(uint64_t a1)
{
  v2 = (*(v1 + 56) + 16 * a1);
  v3 = *v2;
  return v2[1];
}

uint64_t OUTLINED_FUNCTION_30_3()
{

  return sub_26203A8EC();
}

uint64_t sub_261FA5E94()
{
  v0 = sub_26203A1BC();
  v2 = v1;
  if (v0 == sub_26203A1BC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_54_1();
  }

  return v5 & 1;
}

uint64_t sub_261FA5F0C(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x726F727265736ELL;
  }

  else
  {
    v2 = 0x656C6261646F63;
  }

  if (a2)
  {
    v3 = 0x726F727265736ELL;
  }

  else
  {
    v3 = 0x656C6261646F63;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_26203AC0C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_261FA5F8C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656369766564;
  }

  else
  {
    v3 = 1953722216;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x656369766564;
  }

  else
  {
    v5 = 1953722216;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1();
  }

  return v8 & 1;
}

uint64_t sub_261FA6014(unsigned __int8 a1, char a2)
{
  v2 = 0xEF7063745F2E6C65;
  v3 = 0x6E6E75742D70725FLL;
  v4 = a1;
  v5 = 0x6E6E75742D70725FLL;
  v6 = 0xEF7063745F2E6C65;
  switch(v4)
  {
    case 1:
      v6 = 0x800000026204C750;
      v5 = 0xD000000000000013;
      break;
    case 2:
      break;
    case 3:
      v6 = 0xEF7064755F2E6C65;
      v5 = 0x6E6E75742D70725FLL;
      break;
    case 4:
      v6 = 0x800000026204C790;
      v5 = 0xD000000000000021;
      break;
    default:
      v6 = 0x800000026204C720;
      v5 = 0xD000000000000022;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x800000026204C750;
      v3 = 0xD000000000000013;
      break;
    case 2:
      break;
    case 3:
      v2 = 0xEF7064755F2E6C65;
      break;
    case 4:
      v2 = 0x800000026204C790;
      v3 = 0xD000000000000021;
      break;
    default:
      v2 = 0x800000026204C720;
      v3 = 0xD000000000000022;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26203AC0C();
  }

  return v8 & 1;
}

uint64_t sub_261FA6190(char a1, char a2)
{
  v2 = 1667855729;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 7365492;
    }

    else
    {
      v3 = 7365749;
    }

    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1667855729;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7365492;
    }

    else
    {
      v2 = 7365749;
    }

    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_54_1();
  }

  return v7 & 1;
}

uint64_t sub_261FA624C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6976654465726F63;
  }

  else
  {
    v3 = 0x615065746F6D6572;
  }

  if (v2)
  {
    v4 = 0xED0000676E697269;
  }

  else
  {
    v4 = 0xEA00000000006563;
  }

  if (a2)
  {
    v5 = 0x6976654465726F63;
  }

  else
  {
    v5 = 0x615065746F6D6572;
  }

  if (a2)
  {
    v6 = 0xEA00000000006563;
  }

  else
  {
    v6 = 0xED0000676E697269;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1();
  }

  return v8 & 1;
}

uint64_t sub_261FA62F0(unsigned __int8 a1, char a2)
{
  v2 = 1701869940;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701869940;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7697517;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_122_0(16);
      break;
    case 3:
      v5 = 0x6441726576726573;
      v6 = 0x7373657264;
      goto LABEL_6;
    case 4:
      v5 = 0x5352726576726573;
      v6 = 0x74726F5044;
LABEL_6:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x797469726F697270;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v5 = 0x7367616C66;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE300000000000000;
      v2 = 7697517;
      break;
    case 2:
      OUTLINED_FUNCTION_121();
      break;
    case 3:
      v2 = 0x6441726576726573;
      v8 = 0x7373657264;
      goto LABEL_14;
    case 4:
      v2 = 0x5352726576726573;
      v8 = 0x74726F5044;
LABEL_14:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      v7 = 0xE800000000000000;
      v2 = 0x797469726F697270;
      break;
    case 6:
      v7 = 0xE500000000000000;
      v2 = 0x7367616C66;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_54_1();
  }

  return v10 & 1;
}

uint64_t sub_261FA64BC(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000016;
  v3 = "awaitingUserConsent";
  v4 = "awaitingUserConsent";
  v5 = a1;
  v6 = 0xD000000000000016;
  switch(v5)
  {
    case 1:
      v4 = "clientHandshakeRequest";
      v6 = 0xD000000000000017;
      break;
    case 2:
      v4 = "serverHandshakeResponse";
      v6 = 0xD000000000000019;
      break;
    case 3:
      v4 = "additionalConnectionHello";
      v6 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "clientHandshakeRequest";
      v2 = 0xD000000000000017;
      break;
    case 2:
      v3 = "serverHandshakeResponse";
      v2 = 0xD000000000000019;
      break;
    case 3:
      v3 = "additionalConnectionHello";
      v2 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1();
  }

  return v8 & 1;
}

uint64_t sub_261FA65D8(unsigned __int8 a1, char a2)
{
  v2 = 0x73736563637573;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x73736563637573;
  switch(v4)
  {
    case 1:
      v5 = 0x6572756C696166;
      break;
    case 2:
      v5 = 0x676E656C6C616863;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_122_0(19);
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6572756C696166;
      break;
    case 2:
      v2 = 0x676E656C6C616863;
      v6 = 0xE900000000000065;
      break;
    case 3:
      OUTLINED_FUNCTION_121();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1();
  }

  return v8 & 1;
}

uint64_t sub_261FA6708(unsigned __int8 a1, char a2)
{
  v2 = 7823730;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7823730;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x726F727265;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_122_0(20);
      break;
    case 3:
      v5 = 0x656C74746F726874;
      v3 = 0xEF73646E6F636553;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x726F727265;
      break;
    case 2:
      OUTLINED_FUNCTION_121();
      break;
    case 3:
      v2 = 0x656C74746F726874;
      v6 = 0xEF73646E6F636553;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1();
  }

  return v8 & 1;
}

uint64_t sub_261FA6844(char a1, char a2)
{
  v3 = 0xD000000000000013;
  v4 = "sThroughLockdown";
  v5 = "sThroughLockdown";
  switch(a1)
  {
    case 1:
      v5 = "verifyManualPairing";
      v3 = 0xD000000000000012;
      break;
    case 2:
      v5 = "setupManualPairing";
      v3 = 0xD000000000000023;
      break;
    case 3:
      v5 = "tionLockdownPairing";
      v3 = 0xD000000000000018;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000013;
  switch(a2)
  {
    case 1:
      v4 = "verifyManualPairing";
      v6 = 0xD000000000000012;
      break;
    case 2:
      v4 = "setupManualPairing";
      v6 = 0xD000000000000023;
      break;
    case 3:
      v4 = "tionLockdownPairing";
      v6 = 0xD000000000000018;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1();
  }

  return v8 & 1;
}

uint64_t sub_261FA696C(unsigned __int8 a1, char a2)
{
  v2 = 0x726576656ELL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD00000000000001BLL;
    }

    else
    {
      v4 = 0xD000000000000020;
    }

    if (v3 == 1)
    {
      v5 = 0x800000026204C500;
    }

    else
    {
      v5 = 0x800000026204C520;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x726576656ELL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001BLL;
    }

    else
    {
      v2 = 0xD000000000000020;
    }

    if (a2 == 1)
    {
      v6 = 0x800000026204C500;
    }

    else
    {
      v6 = 0x800000026204C520;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_54_1();
  }

  return v8 & 1;
}

uint64_t sub_261FA6A48()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_28108B610 = result;
  return result;
}

uint64_t StartTunnelResponse.serviceName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_47();
}

uint64_t StartTunnelResponse.protocolOptions.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_261F81D84(v2, v3);
}

uint64_t StartTunnelResponse.init(port:serviceName:protocolOptions:host:)@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = *a4;
  started = type metadata accessor for StartTunnelResponse(0);
  return sub_261FB9B60(a5, a6 + *(started + 28), &qword_27FEF9940, &qword_26203F790);
}

uint64_t PermittedPromptlessPairingMode.hashValue.getter()
{
  v1 = *v0;
  sub_26203ADDC();
  MEMORY[0x266723290](v1);
  return sub_26203AE0C();
}

RemotePairingDevice::ControlChannelConnection::PeerType_optional __swiftcall ControlChannelConnection.PeerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26203A96C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ControlChannelConnection.PeerType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656369766564;
  }

  else
  {
    result = 1953722216;
  }

  *v0;
  return result;
}

uint64_t sub_261FA6D10@<X0>(uint64_t *a1@<X8>)
{
  result = ControlChannelConnection.PeerType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261FA6E2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000026204E9D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_261FA6ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FA6E2C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_261FA6EFC(uint64_t a1)
{
  v2 = sub_261FA7088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FA6F38(uint64_t a1)
{
  v2 = sub_261FA7088();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelConnection.Options.Host.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9948, &qword_26203F798);
  OUTLINED_FUNCTION_0(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = *(v24 + 24);
  v35 = *(v24 + 32);
  v36 = OUTLINED_FUNCTION_155();
  __swift_project_boxed_opaque_existential_0Tm(v36, v37);
  sub_261FA7088();
  sub_26203AE5C();
  sub_26203AB0C();
  (*(v27 + 8))(v32, v25);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261FA7088()
{
  result = qword_28108C110;
  if (!qword_28108C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C110);
  }

  return result;
}

void ControlChannelConnection.Options.Host.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9958, &qword_26203F7A0);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_261FA7088();
  OUTLINED_FUNCTION_141();
  if (!v0)
  {
    OUTLINED_FUNCTION_34_1();
    v10 = sub_26203A9FC();
    v11 = OUTLINED_FUNCTION_116();
    v12(v11);
    *v4 = v10 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

RemotePairingDevice::ControlChannelConnection::Options::Device __swiftcall ControlChannelConnection.Options.Device.init(allowsPairSetup:allowsPinlessPairing:allowsIncomingTunnelConnections:allowsPromptlessAutomationPairingUpgrade:allowsSharingSensitiveInfo:)(Swift::Bool allowsPairSetup, Swift::Bool allowsPinlessPairing, Swift::Bool allowsIncomingTunnelConnections, Swift::Bool allowsPromptlessAutomationPairingUpgrade, Swift::Bool allowsSharingSensitiveInfo)
{
  *v5 = allowsPairSetup;
  v5[1] = allowsPinlessPairing;
  v5[2] = allowsIncomingTunnelConnections;
  v5[3] = allowsPromptlessAutomationPairingUpgrade;
  v5[4] = allowsSharingSensitiveInfo;
  result.allowsPairSetup = allowsPairSetup;
  return result;
}

uint64_t static ControlChannelConnection.Options.Device.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v4 = a1[2];
    v5 = a1[3];
    v6 = a1[4];
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[4];
    if (v4 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v7 == 2 || ((v7 ^ v4) & 1) != 0)
      {
        return result;
      }
    }

    if (v5 == 2)
    {
      if (v8 != 2)
      {
        return 0;
      }

LABEL_13:
      if (v6 == 2)
      {
        if (v9 != 2)
        {
          return 0;
        }
      }

      else if (v9 == 2 || ((v9 ^ v6) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }

    result = 0;
    if (v8 != 2 && ((v8 ^ v5) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_261FA73EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x615073776F6C6C61 && a2 == 0xEF70757465537269;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000026204E9F0 == a2;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001FLL && 0x800000026204EA10 == a2;
      if (v7 || (sub_26203AC0C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000028 && 0x800000026204EA30 == a2;
        if (v8 || (sub_26203AC0C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001ALL && 0x800000026204EA60 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_26203AC0C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_261FA75A0(char a1)
{
  result = 0x615073776F6C6C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD000000000000028;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_261FA7678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FA73EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FA76A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261FA7598();
  *a1 = result;
  return result;
}

uint64_t sub_261FA76C8(uint64_t a1)
{
  v2 = sub_261FA78FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FA7704(uint64_t a1)
{
  v2 = sub_261FA78FC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ControlChannelConnection.Options.Device.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9960, &qword_26203F7A8);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v12 = *v0;
  v13 = v0[1];
  v16[2] = v0[2];
  v16[3] = v13;
  v14 = v0[3];
  v16[0] = v0[4];
  v16[1] = v14;
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_0Tm(v3, v3[3]);
  sub_261FA78FC();
  sub_26203AE5C();
  OUTLINED_FUNCTION_49_1();
  sub_26203AB0C();
  if (!v1)
  {
    OUTLINED_FUNCTION_49_1();
    sub_26203AB0C();
    OUTLINED_FUNCTION_49_1();
    sub_26203AABC();
    OUTLINED_FUNCTION_49_1();
    sub_26203AABC();
    OUTLINED_FUNCTION_49_1();
    sub_26203AABC();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261FA78FC()
{
  result = qword_28108C138;
  if (!qword_28108C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108C138);
  }

  return result;
}

void ControlChannelConnection.Options.Device.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9970, &unk_26203F7B0);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  sub_261FA78FC();
  OUTLINED_FUNCTION_141();
  if (!v0)
  {
    OUTLINED_FUNCTION_34_1();
    v10 = sub_26203A9FC();
    OUTLINED_FUNCTION_34_1();
    v11 = sub_26203A9FC();
    OUTLINED_FUNCTION_34_1();
    v16 = sub_26203A9AC();
    OUTLINED_FUNCTION_34_1();
    v15 = sub_26203A9AC();
    OUTLINED_FUNCTION_34_1();
    v12 = sub_26203A9AC();
    v13 = OUTLINED_FUNCTION_116();
    v14(v13);
    *v4 = v10 & 1;
    v4[1] = v11 & 1;
    v4[2] = v16;
    v4[3] = v15;
    v4[4] = v12;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

uint64_t static ControlChannelConnection.defaultMaxReconnectionAttempts.getter()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return qword_27FEF9938;
}

uint64_t static ControlChannelConnection.defaultMaxReconnectionAttempts.setter(uint64_t a1)
{
  result = OUTLINED_FUNCTION_88_0();
  qword_27FEF9938 = a1;
  return result;
}

uint64_t sub_261FA7C28@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FEF9938;
  return result;
}

uint64_t sub_261FA7C74(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FEF9938 = v1;
  return result;
}

void *sub_261FA7CBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_261FA7E8C(__src);
  return memcpy(a2, __src, 0x61uLL);
}

uint64_t sub_261FA7D00(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x61uLL);
  v4 = *a2;
  sub_261F674BC(__dst, &v6, &qword_27FEF9978, &qword_262045D80);
  return sub_261FA7F00(__src);
}

uint64_t sub_261FA7D6C()
{
  swift_beginAccess();
  memcpy(__dst, v0 + 2, 0x61uLL);
  v12 = *(v0 + 1);
  v13 = v0[4];
  v1 = __dst[3];
  result = memcpy(__src, v0 + 6, sizeof(__src));
  if (__dst[3])
  {
    result = swift_beginAccess();
    v3 = v0[35];
    if (v3)
    {
      v4 = v0[36];
      v6 = v12;
      v7 = v13;
      v8 = v1;
      memcpy(v9, __src, sizeof(v9));
      sub_261F674BC(__dst, v5, &qword_27FEF9978, &qword_262045D80);
      sub_261F7D45C(v3);
      v3(&v6);
      sub_261F665E4(v3);
      return sub_261F66E60(__dst, &qword_27FEF9978, &qword_262045D80);
    }
  }

  return result;
}

uint64_t sub_261FA7E8C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), 0x61uLL);
  memcpy(a1, (v1 + 16), 0x61uLL);
  return sub_261F674BC(__dst, &v4, &qword_27FEF9978, &qword_262045D80);
}

uint64_t sub_261FA7F00(const void *a1)
{
  OUTLINED_FUNCTION_88_0();
  memcpy(__dst, (v1 + 16), 0x61uLL);
  memcpy((v1 + 16), a1, 0x61uLL);
  sub_261F66E60(__dst, &qword_27FEF9978, &qword_262045D80);
  return sub_261FA7D6C();
}

uint64_t (*sub_261FA7F70(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_33();
  return sub_261FA7FB8;
}

uint64_t sub_261FA7FB8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_261FA7D6C();
  }

  return result;
}

void sub_261FA7FEC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_261FA805C(v2);
}

void *sub_261FA801C()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

void sub_261FA805C(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

double sub_261FA80DC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_261FA81C0(v8);
  v4 = v9;
  v5 = v10;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

uint64_t sub_261FA8128(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a1 + 40);
  v9[0] = *a1;
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v10 = v7;
  sub_261F68B30(v9[0], v2, v3, v4, v5, v7, sub_261F7D45C, sub_261F81D84, sub_261F6B73C);
  return sub_261F68720(v9);
}

void sub_261FA81C0(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  *a1 = OUTLINED_FUNCTION_80_0();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 168);
  OUTLINED_FUNCTION_2_7();
  sub_261F68B30(v7, v8, v9, v10, v11, v12, sub_261F7D45C, sub_261F81D84, v13);
}

uint64_t sub_261FA8240()
{
  v1 = v0[28];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v0[27]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_47_1();
  return v4(v3, v1);
}

double sub_261FA8290@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_261FA8308(&v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261FA82CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v6[0] = v3;
  v6[1] = v2;

  return sub_261FA834C(v6);
}

uint64_t sub_261FA8308@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v3 = *(v1 + 184);
  *a1 = *(v1 + 176);
  a1[1] = v3;
}

uint64_t sub_261FA834C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  OUTLINED_FUNCTION_43();
  v4 = *(v1 + 184);
  *(v1 + 176) = v2;
  *(v1 + 184) = v3;
}

void ControlChannelConnection.options.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  *(a1 + 4) = *(v1 + 244);
  *a1 = v2;
}

uint64_t sub_261FA8410@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = sub_261FA8560();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_261FBD554;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_261FA84A8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
  }

  v6 = *a2;
  sub_261F7D45C(v3);
  return sub_261FA859C();
}

uint64_t sub_261FA8560()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  return OUTLINED_FUNCTION_37_1();
}

uint64_t sub_261FA859C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 248);
  v4 = *(v1 + 256);
  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  return sub_261F665E4(v3);
}

uint64_t sub_261FA8624@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = sub_261FA8724();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_261FBD060;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_261FA8694(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
  }

  v6 = *a2;
  sub_261F7D45C(v3);
  return sub_261FA8760();
}

uint64_t sub_261FA8724()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  return OUTLINED_FUNCTION_37_1();
}

uint64_t sub_261FA8760()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 264);
  v4 = *(v1 + 272);
  *(v1 + 264) = v2;
  *(v1 + 272) = v0;
  return sub_261F665E4(v3);
}

uint64_t sub_261FA87E8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = sub_261FA88E8();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_261FBD010;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_261FA8858(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
  }

  v6 = *a2;
  sub_261F7D45C(v3);
  return sub_261FA8924();
}

uint64_t sub_261FA88E8()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  return OUTLINED_FUNCTION_37_1();
}

uint64_t sub_261FA8924()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 280);
  v4 = *(v1 + 288);
  *(v1 + 280) = v2;
  *(v1 + 288) = v0;
  return sub_261F665E4(v3);
}

uint64_t sub_261FA89AC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = sub_261FA8AAC();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_261FBD010;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_261FA8A1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
  }

  v6 = *a2;
  sub_261F7D45C(v3);
  return sub_261FA8AE8();
}

uint64_t sub_261FA8AAC()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  return OUTLINED_FUNCTION_37_1();
}

uint64_t sub_261FA8AE8()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 296);
  v4 = *(v1 + 304);
  *(v1 + 296) = v2;
  *(v1 + 304) = v0;
  return sub_261F665E4(v3);
}

uint64_t sub_261FA8B70()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return *(v0 + 312);
}

uint64_t sub_261FA8BA0(char a1)
{
  result = OUTLINED_FUNCTION_43();
  *(v1 + 312) = a1;
  return result;
}

uint64_t sub_261FA8C18@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261F674BC(v1 + 320, a1, &qword_27FEF99A0, &qword_26203F7D8);
}

uint64_t sub_261FA8C6C(uint64_t a1)
{
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(a1, v1 + 320, &qword_27FEF99A0, &qword_26203F7D8);
  return swift_endAccess();
}

uint64_t sub_261FA8D0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(_BYTE *))
{
  sub_261F674BC(a1, v11, a5, a6);
  v9 = *a2;
  return a7(v11);
}

uint64_t sub_261FA8D58@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261F674BC(v1 + 360, a1, &qword_27FEF99A8, &qword_26203F7E0);
}

uint64_t sub_261FA8DAC(uint64_t a1)
{
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(a1, v1 + 360, &qword_27FEF99A8, &qword_26203F7E0);
  return swift_endAccess();
}

uint64_t sub_261FA8E4C(uint64_t a1, uint64_t *a2)
{
  sub_261F79740(a1, v5);
  v3 = *a2;
  return sub_261FA8ECC(v5);
}

uint64_t sub_261FA8E88@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261F79740(v1 + 400, a1);
}

uint64_t sub_261FA8ECC(__int128 *a1)
{
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 400));
  sub_261F797BC(a1, v1 + 400);
  return swift_endAccess();
}

uint64_t sub_261FA8F64@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261F674BC(v1 + 440, a1, &qword_27FEF99B0, &qword_26203F7E8);
}

uint64_t sub_261FA8FB8(uint64_t a1)
{
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(a1, v1 + 440, &qword_27FEF99B0, &qword_26203F7E8);
  return swift_endAccess();
}

uint64_t sub_261FA9058@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261F674BC(v1 + 480, a1, &qword_27FEF99B8, &qword_26203F7F0);
}

uint64_t sub_261FA90AC(uint64_t a1)
{
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(a1, v1 + 480, &qword_27FEF99B8, &qword_26203F7F0);
  return swift_endAccess();
}

uint64_t sub_261FA914C()
{
  OUTLINED_FUNCTION_154(OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions);
  if (v1 != 2 && BYTE2(v1) != 2)
  {
    return HIWORD(v1) & 1;
  }

  v3 = v0[28];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v0[27]);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_47_1();
  return v6(v5, v3) & 1;
}

uint64_t sub_261FA91CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions);
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 & 1;
  }
}

uint64_t sub_261FA91E8()
{
  if (*(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions) == 2)
  {
    return 2;
  }

  else
  {
    return HIBYTE(*(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions));
  }
}

BOOL sub_261FA920C()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 528);
  return v1 && *(v1 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) > 12;
}

BOOL sub_261FA925C()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 528);
  return v1 && *(v1 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) > 15;
}

uint64_t sub_261FA92AC()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 528);
  if (v1 && *(v1 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) >= 21 && (OUTLINED_FUNCTION_154(OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions), v2 != 2))
  {
    return (v2 >> 24) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261FA9318()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return *(v0 + 520);
}

uint64_t sub_261FA9348(char a1)
{
  result = OUTLINED_FUNCTION_43();
  *(v1 + 520) = a1;
  return result;
}

void sub_261FA93C0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_261FA942C(v2);
}

void *sub_261FA93F0()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 528);
  v2 = v1;
  return v1;
}

void sub_261FA942C(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 528);
  *(v1 + 528) = a1;
}

void sub_261FA94AC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_261FA951C(v2);
}

void *sub_261FA94DC()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 536);
  v2 = v1;
  return v1;
}

void sub_261FA951C(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 536);
  *(v1 + 536) = a1;
}

uint64_t ControlChannelConnection.OutOfBandPairSetupDecisionHandler.accept()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

Swift::Void __swiftcall ControlChannelConnection.OutOfBandPairSetupDecisionHandler.decline()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
}

uint64_t sub_261FA95EC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = sub_261FA96EC();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_261FBD010;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_261FA965C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
  }

  v6 = *a2;
  sub_261F7D45C(v3);
  return sub_261FA972C();
}

uint64_t sub_261FA96EC()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 544);
  v2 = *(v0 + 552);
  return OUTLINED_FUNCTION_37_1();
}

uint64_t sub_261FA972C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 544);
  v4 = *(v1 + 552);
  *(v1 + 544) = v2;
  *(v1 + 552) = v0;
  return sub_261F665E4(v3);
}

uint64_t ControlChannelConnection.startedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_startedAt;
  v4 = sub_26203A03C();
  v5 = OUTLINED_FUNCTION_6_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void sub_261FA9834(BOOL *a1@<X8>)
{
  v2 = *(v1 + 240);
  v3 = v2 | (*(v1 + 244) << 32);
  *a1 = (v2 & 0x8000) == 0;
}

id sub_261FA9850@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261FA98C8(&v5);
  *a2 = v5;
  return result;
}

void sub_261FA988C(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_261FB9B50(v3);
  sub_261FA991C(&v3);
}

id sub_261FA98C8@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_261FB9B50(v4);
}

void sub_261FA991C(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason;
  OUTLINED_FUNCTION_43();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_261F68710(v4);
}

uint64_t ControlChannelConnection.__allocating_init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)(__int128 *a1, uint64_t a2, int *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)(a1, a2, a3, a4, a5, a6);
  return v15;
}

uint64_t ControlChannelConnection.init(transport:queue:options:maxReconnectionAttempts:pairingDataStorageProvider:peerWireProtocolVersion:)(__int128 *a1, uint64_t a2, int *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v12 = *a3;
  v13 = *(a3 + 4);
  *(v6 + 120) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0;
  *(v6 + 176) = 0;
  *(v6 + 184) = 0;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 1;
  *(v6 + 368) = 0u;
  *(v6 + 384) = 0u;
  *(v6 + 336) = 0u;
  *(v6 + 352) = 0u;
  *(v6 + 320) = 0u;
  *(v6 + 520) = 0;
  *(v6 + 488) = 0u;
  *(v6 + 504) = 0u;
  *(v6 + 456) = 0u;
  *(v6 + 472) = 0u;
  *(v6 + 440) = 0u;
  *(v6 + 528) = 0u;
  *(v6 + 544) = 0u;
  sub_26203A02C();
  v14 = v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions;
  *(v14 + 4) = 0;
  *v14 = 2;
  v15 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__replyHandlers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF99C0, &qword_26203F7F8);
  *(v6 + v15) = sub_26203A0FC();
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData) = xmmword_26203F730;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__transaction) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__userHasDeclinedPairing) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__messageSequenceNumber) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__invalidateCalled) = 0;
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection_invalidationReason) = 6;
  sub_261F797BC(a1, v6 + 192);
  *(v6 + 232) = a2;
  *(v6 + 244) = v13;
  *(v6 + 240) = v12;
  *(v6 + 560) = a4;
  OUTLINED_FUNCTION_43();
  v16 = *(v6 + 528);
  *(v6 + 528) = a6;

  sub_261F797BC(a5, v6 + 400);
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0;
  *(v6 + 168) = 4;
  return v6;
}

uint64_t sub_261FA9C1C()
{
  OUTLINED_FUNCTION_88_0();
  *(v0 + 520) = 1;
  OUTLINED_FUNCTION_7_2();
  result = swift_beginAccess();
  v2 = *(v0 + 248);
  if (v2)
  {
    v3 = *(v0 + 256);

    v2(v4);
    v5 = OUTLINED_FUNCTION_47();
    return sub_261F665E4(v5);
  }

  return result;
}

void sub_261FA9C88(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(v1 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v10 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v11 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v10))
  {
    OUTLINED_FUNCTION_30();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_101();
    *&v47 = swift_slowAlloc();
    *v12 = 136446722;
    sub_261F666D8();
    sub_261F67FE4(v13, v14, &v47);
    OUTLINED_FUNCTION_70();

    *(v12 + 4) = v11;
    *(v12 + 12) = 2082;
    *&v52 = v3;
    *(&v52 + 1) = v4;
    *&v53 = v6;
    *(&v53 + 1) = v5;
    v54 = v7;
    v55 = v8;
    sub_261F68B30(v3, v4, v6, v5, v7, v8, sub_261F7D45C, sub_261F81D84, sub_261F6B73C);
    v15 = sub_26203A20C();
    sub_261F67FE4(v15, v16, &v47);
    OUTLINED_FUNCTION_163();

    *(v12 + 14) = v4;
    *(v12 + 22) = 2082;
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v17 = OUTLINED_FUNCTION_86_1();
    sub_261F68B30(v17, v18, v19, v20, v21, v22, sub_261F7D45C, sub_261F81D84, sub_261F6B73C);
    v23 = sub_26203A20C();
    sub_261F67FE4(v23, v24, &v47);
    OUTLINED_FUNCTION_70();

    *(v12 + 24) = v7;
    _os_log_impl(&dword_261F5B000, v11, v10, "%{public}s: ControlChannel connection state changing from %{public}s to %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_86_1();
  *&v47 = v3;
  *(&v47 + 1) = v4;
  v48 = v6;
  v49 = v5;
  v50 = v7;
  v51 = v8;
  OUTLINED_FUNCTION_51_1();
  v46 = (v25 & 0x8000) == 0;
  OUTLINED_FUNCTION_2_7();
  sub_261F68B30(v26, v27, v28, v29, v30, v31, sub_261F7D45C, sub_261F81D84, v44);
  v32 = sub_261F696DC(&v47, &v46);
  OUTLINED_FUNCTION_1_9();
  sub_261F68B30(v33, v34, v35, v36, v37, v38, sub_261F99050, sub_261F6ADEC, v45);
  if ((v32 & 1) == 0)
  {
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_26203A7CC();
    v47 = v52;
    MEMORY[0x266722710](0xD00000000000001CLL, 0x800000026204F1B0);
    v39 = *(v2 + 160);
    v40 = *(v2 + 168);
    v41 = *(v2 + 144);
    v52 = *(v2 + 128);
    v53 = v41;
    v54 = v39;
    v55 = v40;
    sub_26203A8CC();
    *(&v53 + 1) = MEMORY[0x277D837D0];
    v52 = v47;
    LOBYTE(v54) = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    swift_allocError();
    OUTLINED_FUNCTION_67_1();
    *v42 = 1;
    LOBYTE(v47) = 1;
    ControlChannelConnectionError.Message.format(code:)(&v47);
    OUTLINED_FUNCTION_76();
    sub_261F65C08(&v52);
    OUTLINED_FUNCTION_7_3();
    v43 = OUTLINED_FUNCTION_72_1();
    sub_261F65D0C(v43);
  }
}

void sub_261FAA09C()
{
  OUTLINED_FUNCTION_39();
  v3 = v0;
  v5 = v4;
  memcpy(__dst, v4, 0x92uLL);
  memcpy(v264, v5 + 16, 0x82uLL);
  if (sub_261FBCC28(v264) == 1)
  {
    v6 = sub_261F7E4C8(v264);
    v7 = memcpy(__src, v6, 0x82uLL);
    if (*(v3 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream))
    {
LABEL_3:
      OUTLINED_FUNCTION_143(v7, v8, v9, v10, v11, v12, v13, v14, v236, v240, v243, v248, v251, v254[0], v254[1], v255, v256, v257[0], *&v257[8], *&v257[16], *&v257[24], *&v257[32], *&v257[40], *&v257[48], *&v257[56], *&v257[64], *&v257[72], *&v257[80], *&v257[88], *&v257[96], *&v257[104], *&v257[112], *&v257[120], v258, v259, v260, v261[0], v261[1], v261[2], v261[3], v261[4], v261[5], v261[6], v261[7], v261[8], v261[9], v261[10], v261[11], v261[12], v261[13], v261[14], v261[15], v261[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
      v15 = sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      v16 = OUTLINED_FUNCTION_152();
      if (os_log_type_enabled(v16, v17))
      {
        OUTLINED_FUNCTION_57_1();
        v18 = swift_slowAlloc();
        OUTLINED_FUNCTION_56();
        v254[0] = swift_slowAlloc();
        *v18 = 136446466;
        sub_261F666D8();
        OUTLINED_FUNCTION_113(v19, v20, v21, v22, v23, v24, v25);
        OUTLINED_FUNCTION_61_1();

        *(v18 + 4) = v2;
        *(v18 + 12) = 2080;
        v26 = memcpy(v261, __src, 0x82uLL);
        OUTLINED_FUNCTION_143(v26, v27, v28, v29, v30, v31, v32, v33, v237, v241, v244, v249, v252, v254[0], v254[1], v255, v256, v257[0], *&v257[8], *&v257[16], *&v257[24], *&v257[32], *&v257[40], *&v257[48], *&v257[56], *&v257[64], *&v257[72], *&v257[80], *&v257[88], *&v257[96], *&v257[104], *&v257[112], *&v257[120], v258, v259, v260, v261[0], v261[1], v261[2], v261[3], v261[4], v261[5], v261[6], v261[7], v261[8], v261[9], v261[10], v261[11], v261[12], v261[13], v261[14], v261[15], v261[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
        v34 = sub_26203A20C();
        OUTLINED_FUNCTION_113(v34, v35, v36, v37, v38, v39, v40);
        OUTLINED_FUNCTION_61_1();

        *(v18 + 14) = v2;
        OUTLINED_FUNCTION_75_1();
        _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
        OUTLINED_FUNCTION_117();
        swift_arrayDestroy();
        v46 = OUTLINED_FUNCTION_16_3();
        MEMORY[0x266724180](v46);
        v47 = OUTLINED_FUNCTION_9_2();
        MEMORY[0x266724180](v47);
      }

      OUTLINED_FUNCTION_31_2();
      *&v257[24] = MEMORY[0x277D837D0];
      *v257 = 0xD00000000000005ALL;
      *&v257[8] = v48;
      v257[32] = 1;
      LOBYTE(v261[0]) = 3;
      ControlChannelConnectionError.Message.format(code:)(v261);
      OUTLINED_FUNCTION_76();
      sub_261F65C08(v257);
      v257[0] = 3;
      *&v257[8] = v257;
      *&v257[16] = v15;
      memset(&v257[24], 0, 40);
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      v49 = swift_allocError();
      OUTLINED_FUNCTION_87_0(v49, v50, v51, v52, v53, v54, v55, v56, v237, v241, v244, v249, v252, v254[0], v254[1], v255, v256, *v257, *&v257[16], *&v257[32], *&v257[48]);
      sub_261F65CB0(v57, v58);
      sub_261F65D0C(v49);
      sub_261F6A70C(v257);
      sub_261FBCC40(__dst);

      goto LABEL_79;
    }

    memcpy(v261, __src, 0x82uLL);
    v71 = sub_261FBCC34(v261);
    v7 = sub_261F6A868(v261);
    if (v71)
    {
      if (v71 == 1)
      {
        v72 = (*(v7 + 8) >> 60) & 3;
        if (v72)
        {
          if (v72 != 3)
          {
            goto LABEL_3;
          }

          if (*(v7 + 16) != 0)
          {
            goto LABEL_3;
          }

          v7 = OUTLINED_FUNCTION_150(v7);
          if (!v96)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        v7 = sub_261FBC6F8(v7 + 8);
        if (v7 > 7)
        {
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_159();
        if (v96)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v83 = *(v7 + 72);
      if (v83 >> 62 == 3)
      {
        v84 = *(v7 + 96);
        v86 = *(v7 + 80);
        v85 = *(v7 + 88);
        v88 = *(v7 + 56);
        v87 = *(v7 + 64);
        v90 = *(v7 + 40);
        v89 = *(v7 + 48);
        v91 = *(v7 + 24);
        v92 = *(v7 + 32);
        v93 = *v7;
        v94 = v7 + 8;
        v7 = *(v7 + 8);
        v8 = *(v94 + 8);
        if (v84 || (v9 = 0xC000000000000000, v83 != 0xC000000000000000) || (v10 = v92 | v91 | v8 | v7, (v9 = v85 | v93 | v86 | v87 | v88 | v89 | v90 | v10) != 0))
        {
          v95 = v86 | v85 | v87 | v88 | v89 | v90 | v92 | v91 | v8 | v7;
          if (v84 || ((OUTLINED_FUNCTION_112(), v96) ? (v96 = v93 == 1) : (v96 = 0), !v96 || v95))
          {
            if (v84 || ((OUTLINED_FUNCTION_112(), v96) ? (v97 = v93 == 2) : (v97 = 0), !v97 || v95))
            {
              if (v84 || ((OUTLINED_FUNCTION_112(), v96) ? (v98 = v93 == 3) : (v98 = 0), !v98 || v95))
              {
                if (!v84)
                {
                  v99 = v83 == 0xC000000000000000 && v93 == 4;
                  if (v99 && !v95)
                  {
                    goto LABEL_3;
                  }
                }
              }
            }
          }
        }
      }
    }

    OUTLINED_FUNCTION_143(v7, v8, v9, v10, v11, v12, v13, v14, v236, v240, v243, v248, v251, v254[0], v254[1], v255, v256, v257[0], *&v257[8], *&v257[16], *&v257[24], *&v257[32], *&v257[40], *&v257[48], *&v257[56], *&v257[64], *&v257[72], *&v257[80], *&v257[88], *&v257[96], *&v257[104], *&v257[112], *&v257[120], v258, v259, v260, v261[0], v261[1], v261[2], v261[3], v261[4], v261[5], v261[6], v261[7], v261[8], v261[9], v261[10], v261[11], v261[12], v261[13], v261[14], v261[15], v261[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
    goto LABEL_55;
  }

  v59 = sub_261F7E4C8(v264);
  v67 = *(v3 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream);
  if (!v67)
  {
    OUTLINED_FUNCTION_31_2();
    __src[3] = v73;
    __src[0] = 0xD000000000000032;
    __src[1] = v74;
    LOBYTE(__src[4]) = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    v75 = swift_allocError();
    *v76 = 1;
    LOBYTE(v261[0]) = 1;
    OUTLINED_FUNCTION_143(v75, v76, v77, v78, v79, v80, v81, v82, v236, v240, v243, v248, v251, v254[0], v254[1], v255, v256, v257[0], *&v257[8], *&v257[16], *&v257[24], *&v257[32], *&v257[40], *&v257[48], *&v257[56], *&v257[64], *&v257[72], *&v257[80], *&v257[88], *&v257[96], *&v257[104], *&v257[112], *&v257[120], v258, v259, v260, v261[0], v261[1], v261[2], v261[3], v261[4], v261[5], v261[6], v261[7], v261[8], v261[9], v261[10], v261[11], v261[12], v261[13], v261[14], v261[15], v261[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
    ControlChannelConnectionError.Message.format(code:)(v261);
    OUTLINED_FUNCTION_76();
    sub_261F65C08(__src);
    OUTLINED_FUNCTION_7_3();
    swift_willThrow();
    sub_261FBCC40(__dst);
    goto LABEL_79;
  }

  v69 = *v59;
  v68 = v59[1];
  OUTLINED_FUNCTION_143(v59, v60, v61, v62, v63, v64, v65, v66, v236, v240, v243, v248, v251, v254[0], v254[1], v255, v256, v257[0], *&v257[8], *&v257[16], *&v257[24], *&v257[32], *&v257[40], *&v257[48], *&v257[56], *&v257[64], *&v257[72], *&v257[80], *&v257[88], *&v257[96], *&v257[104], *&v257[112], *&v257[120], v258, v259, v260, v261[0], v261[1], v261[2], v261[3], v261[4], v261[5], v261[6], v261[7], v261[8], v261[9], v261[10], v261[11], v261[12], v261[13], v261[14], v261[15], v261[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
  v70 = v67;
  sub_261FAAB28();

  sub_261FBCC40(__dst);
  if (!v1)
  {
LABEL_55:
    memcpy(v265, __src, 0x82uLL);
    OUTLINED_FUNCTION_138(__src);
    v100 = sub_261FBCC34(__src);
    if (v100)
    {
      if (v100 == 1)
      {
        v101 = sub_261F6A868(__src);
        *v239 = *v101;
        *v246 = v101[1];
        OUTLINED_FUNCTION_138(v261);
        v102 = sub_261F6A868(v261);
        v103 = *(v102 + 16);
        v104 = *(v102 + 24);
        sub_261FBCCF0(*v102, *(v102 + 8));
        sub_26203A4AC();
        if (qword_28108B600 != -1)
        {
          OUTLINED_FUNCTION_0_11();
          swift_once();
        }

        v105 = OUTLINED_FUNCTION_152();
        if (os_log_type_enabled(v105, v106))
        {
          OUTLINED_FUNCTION_30();
          v107 = swift_slowAlloc();
          OUTLINED_FUNCTION_101();
          v254[0] = swift_slowAlloc();
          *v107 = 136446722;
          sub_261F666D8();
          OUTLINED_FUNCTION_113(v108, v109, v110, v111, v112, v113, v114);
          OUTLINED_FUNCTION_61_1();

          *(v107 + 4) = v2;
          *(v107 + 12) = 2082;
          OUTLINED_FUNCTION_144(v115, v116, v117, v118, v119, v120, v121, v122, v239[0], v239[1], v246[0], v246[1], v253, v254[0], v254[1], v255, v256, *v257, *&v257[8], *&v257[16], *&v257[24], *&v257[32], *&v257[40], *&v257[48], *&v257[56], *&v257[64], *&v257[72], *&v257[80], *&v257[88], *&v257[96], *&v257[104], *&v257[112], *&v257[120], v258, v259, v260, v261[0], v261[1], v261[2], v261[3], v261[4], v261[5], v261[6], v261[7], v261[8], v261[9], v261[10], v261[11], v261[12], v261[13], v261[14], v261[15], v261[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
          v123 = sub_2620179D8();
          OUTLINED_FUNCTION_113(v123, v124, v125, v126, v127, v128, v129);
          OUTLINED_FUNCTION_61_1();

          *(v107 + 14) = v2;
          *(v107 + 22) = 2080;
          OUTLINED_FUNCTION_138(v257);
          v130 = sub_26203A20C();
          OUTLINED_FUNCTION_113(v130, v131, v132, v133, v134, v135, v136);
          OUTLINED_FUNCTION_61_1();

          *(v107 + 24) = v2;
          OUTLINED_FUNCTION_75_1();
          _os_log_impl(v137, v138, v139, v140, v141, 0x20u);
          swift_arrayDestroy();
          v142 = OUTLINED_FUNCTION_16_3();
          MEMORY[0x266724180](v142);
          v143 = OUTLINED_FUNCTION_9_2();
          MEMORY[0x266724180](v143);
        }

        else
        {
          sub_261FBA880(v265);
        }

        OUTLINED_FUNCTION_63();
        v217 = swift_allocObject();
        v218 = swift_weakInit();
        OUTLINED_FUNCTION_143(v218, v219, v220, v221, v222, v223, v224, v225, v239[0], v239[1], v246[0], v246[1], v253, v239[0], v239[1], v246[0], v246[1], v257[0], *&v257[8], *&v257[16], *&v257[24], *&v257[32], *&v257[40], *&v257[48], *&v257[56], *&v257[64], *&v257[72], *&v257[80], *&v257[88], *&v257[96], *&v257[104], *&v257[112], *&v257[120], v258, v259, v260, v261[0], v261[1], v261[2], v261[3], v261[4], v261[5], v261[6], v261[7], v261[8], v261[9], v261[10], v261[11], v261[12], v261[13], v261[14], v261[15], v261[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);

        sub_261FAAD54(v254, v3, v217, __dst);
      }

      else
      {
        v181 = sub_261F6A868(__src);
        v182 = v181 + 1;
        v183 = *v181;
        OUTLINED_FUNCTION_138(v261);
        v184 = sub_261F6A868(v261);
        sub_261F674BC(v184, v257, &qword_27FEF9AC0, &qword_262040308);
        v185 = sub_26203A4AC();
        if (qword_28108B600 != -1)
        {
          OUTLINED_FUNCTION_0_11();
          swift_once();
        }

        v186 = qword_28108B610;
        if (os_log_type_enabled(qword_28108B610, v185))
        {
          OUTLINED_FUNCTION_30();
          v187 = swift_slowAlloc();
          OUTLINED_FUNCTION_101();
          v254[0] = swift_slowAlloc();
          *v187 = 136446722;
          sub_261F666D8();
          OUTLINED_FUNCTION_113(v188, v189, v190, v191, v192, v193, v194);
          OUTLINED_FUNCTION_65();

          *(v187 + 4) = v183;
          *(v187 + 12) = 2082;
          OUTLINED_FUNCTION_144(v195, v196, v197, v198, v199, v200, v201, v202, v238, v242, v183, v250, v253, v254[0], v254[1], v255, v256, *v257, *&v257[8], *&v257[16], *&v257[24], *&v257[32], *&v257[40], *&v257[48], *&v257[56], *&v257[64], *&v257[72], *&v257[80], *&v257[88], *&v257[96], *&v257[104], *&v257[112], *&v257[120], v258, v259, v260, v261[0], v261[1], v261[2], v261[3], v261[4], v261[5], v261[6], v261[7], v261[8], v261[9], v261[10], v261[11], v261[12], v261[13], v261[14], v261[15], v261[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
          v203 = sub_2620179D8();
          OUTLINED_FUNCTION_113(v203, v204, v205, v206, v207, v208, v209);
          OUTLINED_FUNCTION_65();

          *(v187 + 14) = v183;
          *(v187 + 22) = 2080;
          OUTLINED_FUNCTION_138(v257);
          v210 = sub_26203A20C();
          OUTLINED_FUNCTION_113(v210, v211, v212, v213, v214, v215, v216);
          OUTLINED_FUNCTION_65();

          *(v187 + 24) = v183;
          v183 = v247;
          _os_log_impl(&dword_261F5B000, v186, v185, "%{public}s: Received response (id=%{public}s from peer: %s", v187, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26();
          MEMORY[0x266724180]();
          OUTLINED_FUNCTION_26();
          MEMORY[0x266724180]();
        }

        else
        {
          sub_261FBA880(v265);
        }

        v226 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__replyHandlers;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v227 = sub_261FA1B2C(v183, *(v3 + v226));
        if (v227)
        {
          v228 = v227;
          OUTLINED_FUNCTION_36_1();
          swift_beginAccess();
          sub_26202CCA4(v183);
          swift_endAccess();
          v229 = OUTLINED_FUNCTION_135();
          sub_261F665E4(v229);
          memcpy(v257, v182, 0x7AuLL);
          v228(v257);
          sub_261F665E4(v228);
        }

        else
        {
          v230 = sub_26203A48C();
          if (os_log_type_enabled(v186, v230))
          {
            OUTLINED_FUNCTION_42_1();
            swift_slowAlloc();
            OUTLINED_FUNCTION_27_2();
            v231 = swift_slowAlloc();
            *v257 = v231;
            *v182 = 136446210;
            sub_261F666D8();
            sub_261F67FE4(v232, v233, v257);
            OUTLINED_FUNCTION_70();

            *(v182 + 1) = v3;
            _os_log_impl(&dword_261F5B000, v186, v230, "%{public}s: Received response to unknown message", v182, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v231);
            v234 = OUTLINED_FUNCTION_16_3();
            MEMORY[0x266724180](v234);
            v235 = OUTLINED_FUNCTION_8_2();
            MEMORY[0x266724180](v235);
          }
        }
      }
    }

    else
    {
      v144 = sub_261F6A868(__src);
      OUTLINED_FUNCTION_138(v261);
      v145 = sub_261F6A868(v261);
      sub_261FBCC94(v145, v257);
      v146 = sub_26203A4AC();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      v147 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v146))
      {
        OUTLINED_FUNCTION_30();
        v148 = swift_slowAlloc();
        OUTLINED_FUNCTION_101();
        v254[0] = swift_slowAlloc();
        *v148 = 136446722;
        sub_261F666D8();
        v156 = OUTLINED_FUNCTION_113(v149, v150, v151, v152, v153, v154, v155);

        *(v148 + 4) = v156;
        *(v148 + 12) = 2082;
        OUTLINED_FUNCTION_144(v157, v158, v159, v160, v161, v162, v163, v164, v238, v242, v245, v250, v253, v254[0], v254[1], v255, v256, *v257, *&v257[8], *&v257[16], *&v257[24], *&v257[32], *&v257[40], *&v257[48], *&v257[56], *&v257[64], *&v257[72], *&v257[80], *&v257[88], *&v257[96], *&v257[104], *&v257[112], *&v257[120], v258, v259, v260, v261[0], v261[1], v261[2], v261[3], v261[4], v261[5], v261[6], v261[7], v261[8], v261[9], v261[10], v261[11], v261[12], v261[13], v261[14], v261[15], v261[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
        v165 = sub_2620179D8();
        v172 = OUTLINED_FUNCTION_113(v165, v166, v167, v168, v169, v170, v171);

        *(v148 + 14) = v172;
        *(v148 + 22) = 2080;
        OUTLINED_FUNCTION_138(v257);
        v173 = sub_26203A20C();
        v180 = OUTLINED_FUNCTION_113(v173, v174, v175, v176, v177, v178, v179);

        *(v148 + 24) = v180;
        _os_log_impl(&dword_261F5B000, v147, v146, "%{public}s: Received event (id=%{public}s from peer: %s", v148, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      else
      {
        sub_261FBA880(v265);
      }

      memcpy(v257, v144, 0x61uLL);
      sub_261FAB1A4(v257);
    }

    sub_261FBA880(v265);
  }

LABEL_79:
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_261FAAB28()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = sub_26203930C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_2620392FC();
  v4 = sub_26203952C();
  v13[0] = 0;
  v5 = [v0 decryptData:v4 aadData:0 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_26203954C();
    v9 = v8;

    sub_261FBCDBC();
    sub_2620392EC();
    sub_261F6BFFC(v7, v9);
  }

  else
  {
    v10 = v6;
    sub_2620393FC();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_261FAAC7C(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x7AuLL);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(a3 + 8);
    memcpy(&__srca[1], __dst, 0x7AuLL);
    __srca[0] = v5;
    sub_261FBCE10(__srca);
    memcpy(v6, __srca, 0x82uLL);
    sub_261FBC710(__dst, v8);
    sub_261FABDA0(v6, 0, 1);

    memcpy(v8, v6, 0x82uLL);
    return sub_261FBA880(v8);
  }

  return result;
}

uint64_t sub_261FAAD54(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{

  sub_261FBCBCC(a4, v32);

  sub_261FBCBCC(a4, v32);

  sub_261FBCBCC(a4, v32);

  sub_261FBCBCC(a4, v32);
  v8 = *(a2 + 240);
  v9 = v8 | (*(a2 + 244) << 32);
  if ((v8 & 0x8000) != 0)
  {

    sub_261FBCBCC(a4, v32);

    sub_261FBCBCC(a4, v32);
    v14 = sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v15 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32[0] = v17;
      *v16 = 136446210;
      sub_261F666D8();
      v20 = sub_261F67FE4(v18, v19, v32);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_261F5B000, v15, v14, "%{public}s: Host received unexpected request from device", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x266724180](v17, -1, -1);
      MEMORY[0x266724180](v16, -1, -1);
    }

    sub_261FBCC40(a4);
  }

  else
  {
    v10 = *a1;
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[3];
    switch((v11 >> 60) & 3)
    {
      case 1uLL:
        LOBYTE(v28) = v12;
        sub_261FBCBCC(a4, v32);

        sub_261FBCBCC(a4, v32);

        sub_261FB3CC4(v10, v11 & 0xCFFFFFFFFFFFFFFFLL, &v28, v13, a2, a3, a4);
        break;
      case 2uLL:
        sub_261FBCBCC(a4, v32);

        sub_261FBCBCC(a4, v32);

        sub_261FB4C2C(v10, v11 & 0xCFFFFFFFFFFFFFFFLL, a2, a3, a4);
        break;
      case 3uLL:
        v22 = v13 | v12;
        if (v11 != 0x3000000000000000 || v22 | v10)
        {
          v23 = v11 == 0x3000000000000000 && v10 == 1;
          if (!v23 || v22)
          {
            sub_261FBCBCC(a4, v32);

            sub_261FBCBCC(a4, v32);

            sub_261FB44F4(a2, a3, a4);
          }

          else
          {
            sub_261FBCBCC(a4, v32);

            sub_261FBCBCC(a4, v32);

            sub_261FB1914(a2, a3, a4);
          }
        }

        else
        {
          sub_261FBCBCC(a4, v32);

          sub_261FBCBCC(a4, v32);

          sub_261FB4280(a2, a3, a4);
        }

        break;
      default:
        v28 = v10;
        v29 = v11 & 1;
        v30 = v12;
        v31 = v13;
        v24 = v9 & 0x101;
        v25 = BYTE2(v9);
        v26 = BYTE3(v9);
        v27 = BYTE4(v9);
        sub_261FBCBCC(a4, v32);

        sub_261FBCBCC(a4, v32);

        sub_261FB0F30(&v28, &v24, a2, a3, a4);
        break;
    }
  }

  sub_261FBCC40(a4);

  sub_261FBCC40(a4);

  sub_261FBCC40(a4);

  sub_261FBCC40(a4);

  sub_261FBCC40(a4);

  return sub_261FBCC40(a4);
}

void sub_261FAB1A4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 2) | (*(a1 + 3) << 32);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *(a1 + 3);
  v6 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  v10 = *(a1 + 7);
  v11 = *(a1 + 8);
  v12 = *(a1 + 9);
  v13 = *(a1 + 10);
  v14 = *(a1 + 11);
  v15 = a1[96];
  v16 = v1 | (v2 << 8) | (v3 << 16);
  switch(v12 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_186();

      sub_261FB0658(v21);
      return;
    case 2uLL:
      LOBYTE(__src) = v1;
      BYTE1(__src) = v2;
      *(&__src + 2) = v3;
      HIWORD(__src) = WORD2(v3);
      v33 = v4;
      v34 = v5;
      v35 = v7;
      v36 = v6;
      v37 = v8;
      v38 = v9;
      v39 = v10;
      v40 = v11;
      v41 = v12 & 0x3FFFFFFFFFFFFFFFLL;
      v42 = v13;
      v43 = v14;
      v44 = v15;
      sub_261FB0AC0(&__src);
      goto LABEL_4;
    case 3uLL:
      v17 = v5 | v4 | v7 | v6;
      if (!v15 && v12 == 0xC000000000000000 && !(v17 | v8 | v16 | v9 | v10 | v11 | v13 | v14))
      {
        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        swift_allocError();
        OUTLINED_FUNCTION_67_1();
        sub_261F9BCE0();
        OUTLINED_FUNCTION_140_0();
        v18 = OUTLINED_FUNCTION_72_1();
        sub_261FB0658(v18);
        OUTLINED_FUNCTION_186();

        return;
      }

      v23 = v17 | v8 | v9 | v10 | v11 | v13 | v14;
      if (v15 || (v12 == 0xC000000000000000 ? (v24 = v16 == 1) : (v24 = 0), v24 ? (v25 = v23 == 0) : (v25 = 0), !v25))
      {
        if (v15 || (v12 == 0xC000000000000000 ? (v27 = v16 == 2) : (v27 = 0), !v27 || v23))
        {
          if (!v15)
          {
            v28 = v12 == 0xC000000000000000 && v16 == 3;
            if (v28 && !v23)
            {
              OUTLINED_FUNCTION_186();

              sub_261FB0884();
              return;
            }
          }

          if (!v15)
          {
            v30 = v12 == 0xC000000000000000 && v16 == 4;
            if (v30 && !v23)
            {
              OUTLINED_FUNCTION_186();

              sub_261FB9508();
              return;
            }
          }

          __src = 5;
          sub_261F65D98();
        }

LABEL_4:
        OUTLINED_FUNCTION_186();
        return;
      }

      OUTLINED_FUNCTION_186();

      sub_261FB176C();
      return;
    default:
      LOBYTE(__src) = v1 & 1;
      BYTE1(__src) = v2;
      v33 = v4;
      v34 = v5;
      v35 = v7;
      v36 = v6;
      v37 = v8;
      sub_261FB5840(&__src);
      goto LABEL_4;
  }
}

void sub_261FAB460()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v69 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF99D0, &qword_26203F800);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v67 - v7);
  v9 = sub_26203965C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v68 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75[0] = 0;
  v75[1] = 0xE000000000000000;
  MEMORY[0x266722710](1030911088, 0xE400000000000000);
  *&v72 = v0;
  sub_26203A8CC();
  sub_261F67ABC();
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17 >= *(v15 + 24) >> 1)
  {
    OUTLINED_FUNCTION_15_2();
    v16 = v60;
  }

  OUTLINED_FUNCTION_118();
  v75[0] = 4023401;
  v75[1] = 0xE300000000000000;
  v19 = v0[27];
  v18 = v0[28];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v19);
  v20 = (*(v18 + 8))(v19, v18);
  MEMORY[0x266722710](v20);

  OUTLINED_FUNCTION_79_1();
  if (v21)
  {
    OUTLINED_FUNCTION_15_2();
    v16 = v61;
  }

  OUTLINED_FUNCTION_118();
  *&v72 = 0x726F70736E617274;
  *(&v72 + 1) = 0xEA00000000003D74;
  sub_261F79740((v0 + 24), v75);
  __swift_project_boxed_opaque_existential_0Tm(v75, v75[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  v22 = sub_26203AE8C();
  MEMORY[0x266722710](v22);

  OUTLINED_FUNCTION_79_1();
  if (v21)
  {
    OUTLINED_FUNCTION_15_2();
    v16 = v62;
  }

  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_78_0();
  if (v23 < 0)
  {

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_3_5();
  sub_26203AC0C();
  OUTLINED_FUNCTION_85_0();

  if (&v72)
  {
LABEL_13:
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    memcpy(v75, v0 + 2, 0x61uLL);
    v17 = v75[6];
    v28 = v75[7];
    if (!v75[3])
    {
      v72 = *(v0 + 1);
      v73 = v0[4];
      v74 = 0;
      OUTLINED_FUNCTION_91();
      OUTLINED_FUNCTION_175();
      v32 = &v72;
      v33 = &qword_27FEF9978;
      v34 = &qword_262045D80;
LABEL_22:
      sub_261F66E60(v32, v33, v34);
      goto LABEL_23;
    }

    v72 = *(v0 + 1);
    v73 = v0[4];
    v74 = v75[3];
    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_175();

    sub_261F66E60(&v72, &qword_27FEF9978, &qword_262045D80);
    v70 = 0x3D44494455;
    v71 = 0xE500000000000000;
    MEMORY[0x266722710](v17, v28);

    OUTLINED_FUNCTION_182();
    v29 = v70;
    v30 = v71;
    OUTLINED_FUNCTION_79_1();
    if (v21)
    {
      OUTLINED_FUNCTION_15_2();
      v16 = v65;
    }

    *(v16 + 16) = &v70;
    v31 = v16 + 16 * v17;
    *(v31 + 32) = v29;
    *(v31 + 40) = v30;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v24 = v0[15];
  if (!v24)
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
LABEL_21:
    v33 = &qword_27FEF99D0;
    v34 = &qword_26203F800;
    v32 = v8;
    goto LABEL_22;
  }

  v25 = [v24 identifier];
  if (v25)
  {
    v26 = v25;
    sub_26203963C();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v27, 1, v9);
  sub_261FB9B60(v6, v8, &qword_27FEF99D0, &qword_26203F800);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    goto LABEL_21;
  }

  (*(v68 + 32))(v67, v8, v9);
  v75[0] = 0x797469746E656469;
  v75[1] = 0xE90000000000003DLL;
  sub_261FBAA3C(&qword_28108CF40, MEMORY[0x277CC95F0]);
  v55 = sub_26203ABAC();
  MEMORY[0x266722710](v55);

  OUTLINED_FUNCTION_182();
  v56 = v75[0];
  v57 = v75[1];
  v58 = *(v16 + 16);
  if (v58 >= *(v16 + 24) >> 1)
  {
    OUTLINED_FUNCTION_15_2();
    v16 = v66;
  }

  (*(v68 + 8))(v67, v9);
  *(v16 + 16) = v58 + 1;
  v59 = v16 + 16 * v58;
  *(v59 + 32) = v56;
  *(v59 + 40) = v57;
LABEL_23:
  v35 = v1[27];
  v36 = v1[28];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 24, v35);
  (*(v36 + 64))(&v72, v35, v36);
  if (v74)
  {
    sub_261F797BC(&v72, v75);
    *&v72 = 0x746E696F70646E65;
    *(&v72 + 1) = 0xE90000000000003DLL;
    v37 = v75[3];
    v38 = v75[4];
    __swift_project_boxed_opaque_existential_0Tm(v75, v75[3]);
    v39 = (*(v38 + 24))(v37, v38);
    MEMORY[0x266722710](v39);

    OUTLINED_FUNCTION_182();
    v40 = v72;
    OUTLINED_FUNCTION_79_1();
    if (v21)
    {
      OUTLINED_FUNCTION_15_2();
      v16 = v64;
    }

    *(v16 + 16) = &v72;
    *(v16 + 16 * v17 + 32) = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
  }

  else
  {
    sub_261F66E60(&v72, &qword_27FEF9980, &qword_26203F7C0);
  }

  v76 = 0x3D6574617473;
  v77 = 0xE600000000000000;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v41 = v1[17];
  v42 = v1[18];
  v43 = v1[19];
  v44 = v1[20];
  v45 = *(v1 + 168);
  v75[0] = v1[16];
  v75[1] = v41;
  v75[2] = v42;
  v75[3] = v43;
  v75[4] = v44;
  LOBYTE(v75[5]) = v45;
  sub_261F68B30(v75[0], v41, v42, v43, v44, v45, sub_261F7D45C, sub_261F81D84, sub_261F6B73C);
  v46 = sub_26203A20C();
  MEMORY[0x266722710](v46);

  v47 = v76;
  v48 = v77;
  v49 = *(v16 + 16);
  if (v49 >= *(v16 + 24) >> 1)
  {
    OUTLINED_FUNCTION_15_2();
    v16 = v63;
  }

  *(v16 + 16) = v49 + 1;
  v50 = v16 + 16 * v49;
  *(v50 + 32) = v47;
  *(v50 + 40) = v48;
  v75[0] = v16;
  v51 = OUTLINED_FUNCTION_22_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
  OUTLINED_FUNCTION_68_1(&qword_28108B318);
  sub_26203A13C();
  OUTLINED_FUNCTION_67_1();

  v75[0] = 60;
  v75[1] = 0xE100000000000000;
  v53 = sub_26203AE8C();
  MEMORY[0x266722710](v53);

  MEMORY[0x266722710](544940094, 0xE400000000000000);
  v54 = OUTLINED_FUNCTION_72();
  MEMORY[0x266722710](v54);

  MEMORY[0x266722710](32032, 0xE200000000000000);
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FABC60()
{
  result = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__messageSequenceNumber);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__messageSequenceNumber) = result + 1;
  }

  return result;
}

void sub_261FABC80()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v4 = v3;
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = sub_261FABC60();
  OUTLINED_FUNCTION_46();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v2;
  v12 = OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__replyHandlers;
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();

  v13 = *(v0 + v12);
  swift_isUniquelyReferenced_nonNull_native();
  *__src = *(v0 + v12);
  sub_261FA4388(sub_261FBD010, v11, v10);
  *(v0 + v12) = *__src;
  swift_endAccess();
  *__src = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v14 = sub_261FBD320(__src);
  OUTLINED_FUNCTION_104(v14, v15, v16, v17, v18, v19, v20, v21, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16], __src[0]);
  OUTLINED_FUNCTION_153();
  sub_261FBCCF0(v22, v23);
  sub_261FABDA0(v24, v10, 0);
  memcpy(v29, v24, 0x82uLL);
  sub_261FBA880(v29);
  OUTLINED_FUNCTION_31_0();
}

void sub_261FABDA0(void *__src, uint64_t a2, char a3)
{
  v5 = v3;
  memcpy(__dst, __src, 0x82uLL);
  v9 = *(v5 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__encryptionStream);
  if (!v9)
  {
    memcpy(v58, __src, 0x82uLL);
    v11 = sub_261FBCC34(v58);
    if (v11)
    {
      if (v11 == 1)
      {
        v12 = sub_261F6A868(v58);
        v13 = (*(v12 + 8) >> 60) & 3;
        if (v13)
        {
          if (v13 != 3 || *(v12 + 16) != 0 || (OUTLINED_FUNCTION_150(v12), !v30))
          {
LABEL_53:
            OUTLINED_FUNCTION_31_2();
            *(&__srca[1] + 1) = v47;
            *&__srca[0] = 0xD000000000000050;
            *(&__srca[0] + 1) = v48;
            LOBYTE(__srca[2]) = 1;
            sub_261F65C5C();
            OUTLINED_FUNCTION_72_0();
            v49 = swift_allocError();
            v51 = v50;
            *v50 = 1;
            LOBYTE(v55[0]) = 1;
            v52 = ControlChannelConnectionError.Message.format(code:)(v55);
            sub_261F65C08(__srca);
            *(v51 + 8) = v52;
            *(v51 + 24) = 0u;
            *(v51 + 40) = 0u;
            *(v51 + 7) = 0;
            swift_willThrow();
            sub_261F65D0C(v49);

            return;
          }
        }
      }

      else
      {
        v34 = sub_261F6A868(v58);
        memcpy(__srca, v34, 0x82uLL);
        if (sub_261FBC6F8(__srca + 8) > 7)
        {
          goto LABEL_53;
        }

        OUTLINED_FUNCTION_159();
        if (v30)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v14 = sub_261F6A868(v58);
      v15 = *(v14 + 72);
      if (v15 >> 62 == 3)
      {
        v16 = *(v14 + 96);
        v18 = *(v14 + 80);
        v17 = *(v14 + 88);
        v20 = *(v14 + 56);
        v19 = *(v14 + 64);
        v22 = *(v14 + 40);
        v21 = *(v14 + 48);
        v24 = *(v14 + 24);
        v23 = *(v14 + 32);
        v25 = *v14;
        v28 = v14 + 8;
        v26 = *(v14 + 8);
        v27 = *(v28 + 8);
        if (v16 || v15 != 0xC000000000000000 || v17 | v25 | v18 | v19 | v20 | v21 | v22 | v23 | v24 | v27 | v26)
        {
          v29 = v18 | v17 | v19 | v20 | v21 | v22 | v23 | v24 | v27 | v26;
          if (v16 || ((OUTLINED_FUNCTION_112(), v30) ? (v30 = v25 == 1) : (v30 = 0), !v30 || v29))
          {
            if (v16 || ((OUTLINED_FUNCTION_112(), v30) ? (v31 = v25 == 2) : (v31 = 0), !v31 || v29))
            {
              if (v16 || ((OUTLINED_FUNCTION_112(), v30) ? (v32 = v25 == 3) : (v32 = 0), !v32 || v29))
              {
                if (!v16)
                {
                  v33 = v15 == 0xC000000000000000 && v25 == 4;
                  if (v33 && !v29)
                  {
                    goto LABEL_53;
                  }
                }
              }
            }
          }
        }
      }
    }

    memcpy(__srca, __src, 0x82uLL);
    sub_261FBD0DC(__srca);
    sub_261FBD0F0(__dst, v55);
    goto LABEL_46;
  }

  v10 = v9;
  sub_261FAC260(__dst, v55);

  __srca[0] = *v55;
  sub_261FBD1FC(__srca);
LABEL_46:
  memcpy(v59, __srca, 0x82uLL);
  if (a3)
  {
    a2 = sub_261FABC60();
  }

  OUTLINED_FUNCTION_51_1();
  v36 = (v35 & 0x8000) == 0;
  memcpy(&__srca[1], v59, 0x82uLL);
  LOBYTE(__srca[0]) = v36;
  *(&__srca[0] + 1) = a2;
  sub_261FBD14C(v59, v55);
  v37 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v38 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v37))
  {
    OUTLINED_FUNCTION_30();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_101();
    v54 = swift_slowAlloc();
    *v39 = 136446722;
    sub_261F666D8();
    sub_261F67FE4(v40, v41, &v54);
    OUTLINED_FUNCTION_114();
    *(v39 + 4) = v4;
    *(v39 + 12) = 2082;
    memcpy(v55, __srca, 0x92uLL);
    v42 = sub_2620179D8();
    sub_261F67FE4(v42, v43, &v54);
    OUTLINED_FUNCTION_114();
    *(v39 + 14) = v4;
    *(v39 + 22) = 2080;
    memcpy(v55, __dst, 0x82uLL);
    sub_261FBD0F0(__dst, &v53);
    v44 = sub_26203A20C();
    sub_261F67FE4(v44, v45, &v54);
    OUTLINED_FUNCTION_114();
    *(v39 + 24) = v4;
    _os_log_impl(&dword_261F5B000, v38, v37, "%{public}s: Sending message (id=%{public}s) to peer: %s", v39, 0x20u);
    swift_arrayDestroy();
    v46 = OUTLINED_FUNCTION_9_2();
    MEMORY[0x266724180](v46);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  memcpy(v55, __srca, 0x92uLL);
  sub_261FAC3DC();
  sub_261FBD1A8(v59);
  sub_261FBCC40(__srca);
}

void sub_261FAC260(void *__src@<X0>, uint64_t *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, sizeof(__dst));
  v5 = sub_26203933C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_26203932C();
  sub_261FBD20C();
  v8 = sub_26203931C();
  if (!v3)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_26203952C();
    v20 = 0;
    v13 = [v2 encryptData:v12 aadData:0 error:&v20];

    v14 = v20;
    if (v13)
    {
      v15 = sub_26203954C();
      v17 = v16;
      sub_261F6BFFC(v10, v11);

      *a2 = v15;
      a2[1] = v17;
      goto LABEL_5;
    }

    v19 = v14;
    sub_2620393FC();

    swift_willThrow();
    sub_261F6BFFC(v10, v11);
  }

LABEL_5:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_261FAC3DC()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  memcpy(v10, v1, 0x92uLL);
  v3 = v0[27];
  v4 = v0[28];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v3);
  memcpy(__dst, v2, 0x92uLL);
  v5 = v0[29];
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  memcpy((v6 + 24), v2, 0x92uLL);
  v7 = *(v4 + 40);

  sub_261FBCBCC(v10, v8);
  v7(__dst, v5, sub_261FBCBC0, v6, v3, v4);

  OUTLINED_FUNCTION_31_0();
}

void sub_261FAC4D4(void *a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v7 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v36 = v9;
      *v8 = 136446722;
      sub_261F666D8();
      v12 = sub_261F67FE4(v10, v11, &v36);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      memcpy(v35, a3, sizeof(v35));
      v13 = sub_2620179D8();
      v15 = sub_261F67FE4(v13, v14, &v36);

      *(v8 + 14) = v15;
      *(v8 + 22) = 2082;
      *v35 = a1;
      v16 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v17 = sub_26203A20C();
      v19 = sub_261F67FE4(v17, v18, &v36);

      *(v8 + 24) = v19;
      _os_log_impl(&dword_261F5B000, v7, v6, "%{public}s: Failed to send message (id=%{public}s) to peer. Error: %{public}s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v9, -1, -1);
      MEMORY[0x266724180](v8, -1, -1);
    }

    memset(v35, 0, 32);
    v35[32] = 2;
    sub_261F65C5C();
    v20 = swift_allocError();
    v22 = v21;
    *v21 = 0;
    LOBYTE(v36) = 0;
    v23 = a1;
    v24 = ControlChannelConnectionError.Message.format(code:)(&v36);
    sub_261F65C08(v35);
    *(v22 + 8) = v24;
    *(v22 + 24) = 0u;
    *(v22 + 40) = 0u;
    *(v22 + 7) = a1;
    sub_261F65D0C(v20);
  }

  else
  {
    v25 = sub_26203A47C();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v26 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136446466;
      sub_261F666D8();
      v31 = sub_261F67FE4(v29, v30, &v36);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      memcpy(v35, a3, sizeof(v35));
      v32 = sub_2620179D8();
      v34 = sub_261F67FE4(v32, v33, &v36);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_261F5B000, v26, v25, "%{public}s: Successfully sent message (id=%{public}s) to peer", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v28, -1, -1);
      MEMORY[0x266724180](v27, -1, -1);
    }
  }
}

void sub_261FAC884(uint64_t a1, void (*a2)(id *, double), uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_78_0();
  if (v9 < 0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_3_5();
  sub_26203AC0C();
  OUTLINED_FUNCTION_85_0();

  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_98();
    sub_26203A91C();
    __break(1u);
LABEL_4:
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v4 + 168) == 4 && *(v4 + 128) == 5 && (OUTLINED_FUNCTION_22_3(*(v4 + 152), *(v4 + 136)), !v10))
  {
    if (a1)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    LOBYTE(v25) = v11;
    if (a1)
    {
      v12 = &unk_287489238;
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v13 = OUTLINED_FUNCTION_69_1();
    v14 = OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_74_1(&v25, a2, a3, 0, v15, v16, v17, v18, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_31_2();
    v28 = MEMORY[0x277D837D0];
    v25 = 0xD000000000000035;
    v26 = v19;
    v29 = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    v20 = swift_allocError();
    OUTLINED_FUNCTION_77_0(v20, v21);
    v24 = v22;
    ControlChannelConnectionError.Message.format(code:)(&v24);
    OUTLINED_FUNCTION_129();
    sub_261F65C08(&v25);
    v23 = OUTLINED_FUNCTION_38_1();
    *(a1 + 56) = 0;
    v25 = v4;
    v26 = 0;
    v27 = 0;
    a2(&v25, v23);
    sub_261FB9BAC(v25, v26, v27);
  }
}

void sub_261FACA90(uint64_t *a1, void (*a2)(__int128 *, double), uint64_t a3)
{
  v6 = v3;
  v10 = *(v3 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_78_0();
  if (v11 < 0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_3_5();
  sub_26203AC0C();
  OUTLINED_FUNCTION_85_0();

  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_98();
    sub_26203A91C();
    __break(1u);
LABEL_4:
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v6 + 168) != 4 || *(v6 + 128) != 5 || (OUTLINED_FUNCTION_22_3(*(v6 + 152), *(v6 + 136)), v12))
  {
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    sub_26203A7CC();
    v56 = v57;
    MEMORY[0x266722710](0xD000000000000048, 0x800000026204E480);
    v29 = *(v6 + 160);
    v30 = *(v6 + 168);
    v31 = *(v6 + 144);
    v57 = *(v6 + 128);
    v58 = v31;
    v60 = v29;
    v61 = v30;
    sub_26203A8CC();
    v59 = MEMORY[0x277D837D0];
    v57 = v56;
    LOBYTE(v60) = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    v32 = swift_allocError();
    OUTLINED_FUNCTION_77_0(v32, v33);
    LOBYTE(v56) = v34;
    ControlChannelConnectionError.Message.format(code:)(&v56);
    OUTLINED_FUNCTION_129();
    sub_261F65C08(&v57);
    v35 = OUTLINED_FUNCTION_38_1();
    a1[7] = 0;
    v57 = v6;
    LOBYTE(v58) = 0;
    a2(&v57, v35);
    sub_261FB9BAC(v57, *(&v57 + 1), v58);
    return;
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v13 = *(v6 + 544);
  if (!v13)
  {
    LOBYTE(v57) = 1;
    v46 = MEMORY[0x277D84F90];
    v47 = OUTLINED_FUNCTION_69_1();
    v48 = OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_74_1(&v57, a2, a3, a1, v49, v50, v51, v52, v46, v47, v48);

LABEL_23:

    return;
  }

  v55 = *(v6 + 552);
  if (a1 && a1[2])
  {

    v14 = sub_26203A4AC();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v15 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v14))
    {
      OUTLINED_FUNCTION_42_1();
      v53 = v13;
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v17 = swift_slowAlloc();
      *&v57 = v17;
      *v16 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v18, v19, &v57);
      OUTLINED_FUNCTION_114();
      *(v16 + 4) = v5;
      _os_log_impl(&dword_261F5B000, v15, v14, "%{public}s: Not using out-of-band PairSetup handler to complete pairing as non-standard pairing options were provided by client", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      v20 = OUTLINED_FUNCTION_16_3();
      MEMORY[0x266724180](v20);
      v13 = v53;
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180](v21);
    }

    LOBYTE(v57) = 1;
    v22 = MEMORY[0x277D84F90];
    v23 = OUTLINED_FUNCTION_110();
    v24 = OUTLINED_FUNCTION_110();
    OUTLINED_FUNCTION_74_1(&v57, a2, a3, a1, v25, v26, v27, v28, v22, v23, v24);
    sub_261F665E4(v13);

    goto LABEL_23;
  }

  v36 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  v37 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v36))
  {
    OUTLINED_FUNCTION_42_1();
    v54 = v13;
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_30();
    v39 = swift_slowAlloc();
    *&v57 = v39;
    *v38 = 136446210;
    sub_261F666D8();
    sub_261F67FE4(v40, v41, &v57);
    OUTLINED_FUNCTION_65();

    *(v38 + 4) = v4;
    _os_log_impl(&dword_261F5B000, v37, v36, "%{public}s: Will attempt to use out-of-band PairSetup handler to complete pairing", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180](v42);
    v13 = v54;
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180](v43);
  }

  OUTLINED_FUNCTION_107();
  v44 = swift_allocObject();
  v44[2] = v6;
  v44[3] = a2;
  v44[4] = a3;
  OUTLINED_FUNCTION_106();
  v45 = swift_allocObject();
  v45[2] = v6;
  v45[3] = a2;
  v45[4] = a3;
  v45[5] = a1;
  *&v57 = sub_261FB9BC0;
  *(&v57 + 1) = v44;
  v58 = sub_261FB9BCC;
  v59 = v45;

  swift_retain_n();
  swift_retain_n();
  v13(&v57);
  sub_261F665E4(v13);
}

uint64_t sub_261FACFEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    swift_once();
  }

  v4 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    sub_261F666D8();
    v9 = sub_261F67FE4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_261F5B000, v4, v3, "%{public}s: Out-of-band PairSetup handler accepted ownership of pairing attempt", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x266724180](v6, -1, -1);
    MEMORY[0x266724180](v5, -1, -1);
  }

  return a2;
}

uint64_t sub_261FAD130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    swift_once();
  }

  v8 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    sub_261F666D8();
    v13 = sub_261F67FE4(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_261F5B000, v8, v7, "%{public}s: Out-of-band PairSetup handler declined ownership of pairing attempt. Will handle attempt using standard pairing flow", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x266724180](v10, -1, -1);
    MEMORY[0x266724180](v9, -1, -1);
  }

  v19 = 1;
  v14 = MEMORY[0x277D84F90];
  v15 = sub_26203A0FC();
  v16 = sub_26203A0FC();
  sub_261FB5DF0(&v19, a2, a3, a4, 0, 0xF000000000000000, 0, 0, v14, v15, v16);
}

void sub_261FAD310()
{
  v1 = v0;
  v2 = *(v0 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v3 = *(v1 + 240);
  v4 = v3 | (*(v1 + 244) << 32);
  if ((v3 & 0x8000) != 0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_3_5();
  sub_26203AC0C();
  OUTLINED_FUNCTION_85_0();

  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_98();
    sub_26203A91C();
    __break(1u);
LABEL_4:
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v1 + 168) == 1 && (v5 = *(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession)) != 0)
  {
    v6 = v5;
    v7 = sub_26203A18C();
    [v6 tryPIN_];
  }

  else
  {
    OUTLINED_FUNCTION_31_2();
    v10[3] = MEMORY[0x277D837D0];
    v10[0] = 0xD000000000000032;
    v10[1] = v8;
    v11 = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    swift_allocError();
    *v9 = 3;
    v12 = 3;
    ControlChannelConnectionError.Message.format(code:)(&v12);
    OUTLINED_FUNCTION_76();
    sub_261F65C08(v10);
    OUTLINED_FUNCTION_7_3();
    swift_willThrow();
  }
}

void sub_261FAD4AC()
{
  v4 = v1;
  OUTLINED_FUNCTION_93();
  v5 = *(v1 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_78_0();
  if ((v6 & 0x8000) == 0)
  {
    OUTLINED_FUNCTION_3_5();
    sub_26203AC0C();
    OUTLINED_FUNCTION_85_0();

    if (v5)
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_20_2();
    OUTLINED_FUNCTION_98();
    sub_26203A91C();
    __break(1u);
  }

LABEL_5:
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v7 = *(v4 + 168);
  if (v7 != 1)
  {
    if (!*(v4 + 168))
    {
      v8 = "sThroughLockdown";
      v9 = "setupManualPairing";
      switch(*(v4 + 128))
      {
        case 1:
          OUTLINED_FUNCTION_164();
          break;
        case 2:
          v7 = 0;
          v8 = "setupManualPairing";
          break;
        case 3:
          v7 = 0;
          v8 = "tionLockdownPairing";
          break;
        default:
          break;
      }

      if (v7 && (v8 | 0x8000000000000000) == ((v9 - 32) | 0x8000000000000000))
      {

        goto LABEL_15;
      }

      v10 = sub_26203AC0C();

      if (v10)
      {
        goto LABEL_15;
      }
    }

    sub_261F9BCE0();
    sub_26203AD3C();
    sub_261F9D610();
    OUTLINED_FUNCTION_13_1();
    v24 = swift_allocError();
    sub_26203AD4C();
    v2(v24);

    return;
  }

LABEL_15:
  v11 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  if (os_log_type_enabled(qword_28108B610, v11))
  {
    OUTLINED_FUNCTION_42_1();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_30();
    v13 = swift_slowAlloc();
    *&v25 = v13;
    *v12 = 136446210;
    sub_261F666D8();
    sub_261F67FE4(v14, v15, &v25);
    OUTLINED_FUNCTION_61_1();

    *(v12 + 4) = v3;
    OUTLINED_FUNCTION_171(&dword_261F5B000, v16, v17, "%{public}s: Sending PairSetup cancel request to peer");
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v18 = OUTLINED_FUNCTION_16_3();
    MEMORY[0x266724180](v18);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180](v19, v20, v21);
  }

  v25 = xmmword_26203F740;
  v26 = 0;
  v27 = 0;
  OUTLINED_FUNCTION_63();
  v22 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v2;
  v23[4] = v0;

  sub_261FABC80();
}

void sub_261FAD830(const void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_2620392DC();
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, sizeof(__dst));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  memcpy(v80, a1, 0x7AuLL);
  v13 = sub_261FBC6F8(v80);
  v14 = &unk_28108B000;
  v15 = &unk_28108B000;
  v74 = a3;
  v75 = a4;
  if (v13 != 7)
  {
    if (v13 == 4)
    {
      v16 = nullsub_1(v80);
      v17 = sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        swift_once();
      }

      v18 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v17))
      {
        v19 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v77 = v72;
        *v19 = 136446466;
        sub_261F666D8();
        v22 = sub_261F67FE4(v20, v21, &v77);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        v23 = *v16;
        v24 = v16[1];
        v25 = v16[3];
        v78[2] = v16[2];
        v78[3] = v25;
        v78[0] = v23;
        v78[1] = v24;
        memcpy(v79, __dst, 0x7AuLL);
        v26 = nullsub_1(v79);
        sub_261F65CB0(v26, v76);
        v27 = sub_26203A20C();
        v29 = sub_261F67FE4(v27, v28, &v77);

        *(v19 + 14) = v29;
        v15 = &unk_28108B000;
        _os_log_impl(&dword_261F5B000, v18, v17, "%{public}s: Received error response from peer for PairSetup cancel request: %s", v19, 0x16u);
        v30 = v72;
        swift_arrayDestroy();
        MEMORY[0x266724180](v30, -1, -1);
        v31 = v19;
        a3 = v74;
        MEMORY[0x266724180](v31, -1, -1);
      }

      sub_261F65C5C();
      v32 = swift_allocError();
      v33 = v16[3];
      v35 = *v16;
      v34 = v16[1];
      v36[2] = v16[2];
      v36[3] = v33;
      *v36 = v35;
      v36[1] = v34;
      memcpy(v79, __dst, 0x7AuLL);
      v37 = nullsub_1(v79);
      sub_261F65CB0(v37, v78);
      a3(v32);

      v14 = &unk_28108B000;
    }

    else
    {
      v79[3] = MEMORY[0x277D837D0];
      v79[0] = 0xD00000000000004BLL;
      v79[1] = 0x800000026204F3C0;
      LOBYTE(v79[4]) = 1;
      sub_261F65C5C();
      v38 = swift_allocError();
      v40 = v39;
      *v39 = 2;
      LOBYTE(v78[0]) = 2;
      v41 = ControlChannelConnectionError.Message.format(code:)(v78);
      sub_261F65C08(v79);
      *(v40 + 8) = v41;
      *(v40 + 24) = 0u;
      *(v40 + 40) = 0u;
      *(v40 + 7) = 0;
      v15 = &unk_28108B000;
      sub_261F65D0C(v38);
      v14 = &unk_28108B000;
    }
  }

  v42 = sub_26203A4AC();
  if (v14[192] != -1)
  {
    swift_once();
  }

  v43 = *(v15 + 194);
  if (os_log_type_enabled(v43, v42))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v79[0] = v45;
    *v44 = 136446210;
    sub_261F666D8();
    v48 = sub_261F67FE4(v46, v47, v79);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_261F5B000, v43, v42, "%{public}s: Received successful response from peer for PairSetup cancel request", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x266724180](v45, -1, -1);
    MEMORY[0x266724180](v44, -1, -1);
  }

  swift_beginAccess();
  v50 = *(v12 + 128);
  v49 = *(v12 + 136);
  v51 = *(v12 + 168);
  if (v51 == 1)
  {
    v54 = *(v12 + 136);
    sub_261F7D45C(*(v12 + 128));
LABEL_26:
    v79[0] = 5;
    memset(&v79[1], 0, 32);
    LOBYTE(v79[5]) = 4;
    sub_261F7D45C(v50);
    sub_261F68720(v79);
    [*(v12 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) invalidate];
    sub_261F6A504(0);
    if (v50)
    {
      LODWORD(v79[0]) = 89;
      sub_261F9D4D8(MEMORY[0x277D84F90]);
      sub_261FBAA3C(&qword_27FEF9920, MEMORY[0x277CC8658]);
      sub_2620393DC();
      v57 = sub_2620392CC();
      (*(v73 + 8))(v10, v7);
      v79[0] = v57;
      v79[1] = 0;
      LOBYTE(v79[2]) = 0;
      v50(v79);
      sub_261F665E4(v50);
      sub_261FB9BAC(v79[0], v79[1], v79[2]);
    }

    v74(0);
    v58 = sub_26203A4AC();
    if (os_log_type_enabled(v43, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v79[0] = v60;
      *v59 = 136446210;
      sub_261F666D8();
      v63 = sub_261F67FE4(v61, v62, v79);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_261F5B000, v43, v58, "%{public}s: Successfully cancelled PairSetup attempt", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x266724180](v60, -1, -1);
      MEMORY[0x266724180](v59, -1, -1);
    }

    sub_261F665E4(v50);

    return;
  }

  if (!*(v12 + 168))
  {
    v52 = *(v12 + 144);
    v53 = "sThroughLockdown";
    switch(*(v12 + 128))
    {
      case 1u:
        v53 = "verifyManualPairing";
        v51 = 1;
        break;
      case 2u:
        v51 = 0;
        v53 = "setupManualPairing";
        break;
      case 3u:
        v51 = 0;
        v53 = "tionLockdownPairing";
        break;
      default:
        break;
    }

    if (v51 && (v53 | 0x8000000000000000) == 0x800000026204C570)
    {
      v55 = *(v12 + 144);
      sub_261F7D45C(*(v12 + 136));

LABEL_25:
      v50 = v49;
      goto LABEL_26;
    }

    v56 = sub_26203AC0C();
    sub_261F7D45C(v49);

    if (v56)
    {
      goto LABEL_25;
    }

    sub_261F665E4(v49);
  }

  v64 = sub_26203A48C();
  if (os_log_type_enabled(v43, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v79[0] = v66;
    *v65 = 136446210;
    sub_261F666D8();
    v69 = sub_261F67FE4(v67, v68, v79);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_261F5B000, v43, v64, "%{public}s: Received successful response from peer for PairSetup cancel request but no longer in state setUpManualPairingInProgress", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    MEMORY[0x266724180](v66, -1, -1);
    MEMORY[0x266724180](v65, -1, -1);
  }

  sub_261F9BCE0();
  sub_26203AD3C();
  v76[0] = v79[0];
  v76[1] = v79[1];
  sub_261F9D610();
  v70 = swift_allocError();
  sub_26203AD4C();
  v74(v70);
}

void *sub_261FAE188(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *a3;
  v13 = *(v6 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_106();
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = v12;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  v15 = OUTLINED_FUNCTION_155();
  sub_261F6B73C(v15, v16);

  sub_261FABC80();

  return sub_261FBA6D8(a1, a2 | 0x1000000000000000);
}

uint64_t sub_261FAE288(const void *a1, void *a2, char a3, void (*a4)(void *), uint64_t a5)
{
  v68 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9AF0, &qword_262040330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v60 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9940, &qword_26203F790);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v60 - v15;
  started = type metadata accessor for StartTunnelResponse(0);
  v18 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v73, a1, 0x7AuLL);
  memcpy(__dst, a1, 0x7AuLL);
  v21 = sub_261FBC6F8(__dst);
  if (v21 == 5)
  {
    v23 = *nullsub_1(__dst);
    goto LABEL_5;
  }

  if (v21 == 4)
  {
    v22 = nullsub_1(__dst);
    sub_261F65C5C();
    v23 = swift_allocError();
    v24 = v22[3];
    v26 = *v22;
    v25 = v22[1];
    v27[2] = v22[2];
    v27[3] = v24;
    *v27 = v26;
    v27[1] = v25;
LABEL_5:
    sub_261FBC710(v73, v72);
LABEL_6:
    swift_willThrow();
    *v12 = v23;
    swift_storeEnumTagMultiPayload();
    v28 = v23;
    a4(v12);

    return sub_261F66E60(v12, &unk_27FEF9AF0, &qword_262040330);
  }

  memcpy(v72, v73, 0x7AuLL);
  if (sub_261FBC6F8(v72) != 2)
  {
    v35 = sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v36 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v71[0] = v38;
      *v37 = 136446466;
      sub_261F666D8();
      v41 = sub_261F67FE4(v39, v40, v71);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      memcpy(v70, v73, 0x7AuLL);
      sub_261FBC710(v73, v69);
      v42 = sub_26203A20C();
      v44 = sub_261F67FE4(v42, v43, v71);

      *(v37 + 14) = v44;
      _os_log_impl(&dword_261F5B000, v36, v35, "%{public}s Received unexpected response to tunnel listener creation request: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v38, -1, -1);
      MEMORY[0x266724180](v37, -1, -1);
    }

    v70[3] = MEMORY[0x277D837D0];
    v70[0] = 0xD000000000000034;
    v70[1] = 0x800000026204F340;
    LOBYTE(v70[4]) = 1;
    sub_261F65C5C();
    v23 = swift_allocError();
    v46 = v45;
    *v45 = 2;
    LOBYTE(v69[0]) = 2;
    v47 = ControlChannelConnectionError.Message.format(code:)(v69);
    sub_261F65C08(v70);
    *(v46 + 8) = v47;
    *(v46 + 24) = 0u;
    *(v46 + 40) = 0u;
    *(v46 + 7) = 0;
    goto LABEL_6;
  }

  v30 = nullsub_1(v72);
  v64 = *v30;
  v31 = v30[2];
  v67 = v30[1];
  v32 = v30[4];
  v63 = v30[3];
  v65 = v32;
  if (a3 == 3)
  {
    memcpy(v70, v73, 0x7AuLL);
    v33 = nullsub_1(v70);
    v34 = v33[4];
    sub_261F81D84(v33[1], v33[2]);
  }

  else
  {
    memcpy(v70, v73, 0x7AuLL);
    v48 = nullsub_1(v70);
    v50 = v48[1];
    v49 = v48[2];
    v66 = v31;
    v51 = v48[4];
    sub_261F81D84(v50, v49);
    v31 = v66;

    if (sub_261FA6190(a3, 1))
    {
      v61 = 0;
      v62 = a4;
      v60 = 0xF000000000000000;
      goto LABEL_20;
    }
  }

  if (v31 >> 60 == 15)
  {

    sub_261F9BCE0();
    sub_26203ACEC();
    v69[0] = v70[0];
    v69[1] = v70[1];
    sub_261F9D610();
    v23 = swift_allocError();
    sub_26203AD4C();
    goto LABEL_6;
  }

  v62 = a4;
  v52 = v67;
  sub_261F6B73C(v67, v31);
  v60 = v31;
  v61 = v52;
  v66 = v31;
LABEL_20:
  v53 = a2[27];
  v54 = a2[28];
  __swift_project_boxed_opaque_existential_0Tm(a2 + 24, v53);
  (*(v54 + 56))(v53, v54);
  v55 = v62;
  v56 = v66;
  v57 = sub_262039A4C();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v57);
  *v20 = v64;
  v58 = v65;
  *(v20 + 1) = v63;
  *(v20 + 2) = v58;
  v59 = v60;
  *(v20 + 3) = v61;
  *(v20 + 4) = v59;
  sub_261FB9B60(v16, &v20[*(started + 28)], &qword_27FEF9940, &qword_26203F790);
  sub_261FBD260(v20, v12);
  swift_storeEnumTagMultiPayload();
  v55(v12);
  sub_261F6ADEC(v67, v56);
  sub_261F66E60(v12, &unk_27FEF9AF0, &qword_262040330);
  return sub_261FBD2C4(v20);
}

void sub_261FAE918()
{
  v3 = v1;
  OUTLINED_FUNCTION_93();
  v4 = *(v1 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v5 = *(v3 + 528);
  if (v5 && *&v5[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] >= 13)
  {
    OUTLINED_FUNCTION_63();
    v7 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_107();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v2;
    v8[4] = v0;
    v9 = v5;

    sub_261FABC80();
  }

  else
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_135();
    sub_26203ACFC();
    sub_261F9D610();
    OUTLINED_FUNCTION_13_1();
    v6 = swift_allocError();
    OUTLINED_FUNCTION_53_1();
    sub_26203AD4C();
    OUTLINED_FUNCTION_58_1();
    v2();
  }
}

void sub_261FAEAA0(void *__src, uint64_t a2, void (*a3)(void *, void *, uint64_t))
{
  memcpy(__dst, __src, 0x7AuLL);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    memcpy(v35, __dst, 0x7AuLL);
    v4 = sub_261FBC6F8(v35);
    if (v4 == 5)
    {
      v6 = *nullsub_1(v35);
    }

    else
    {
      if (v4 != 4)
      {
        memcpy(v34, __dst, 0x7AuLL);
        if (sub_261FBC6F8(v34) == 3)
        {
          v12 = nullsub_1(v34);
          v13 = *v12;
          v14 = v12[1];
          memcpy(v32, __dst, 0x7AuLL);
          v15 = nullsub_1(v32);
          v16 = *v15;
          v17 = v15[1];
          sub_261FBC710(__dst, v31);
          sub_261F6B73C(v16, v17);
          a3(v13, v14, 0);

          sub_261FBA8E0(__dst);
          sub_261FBA8E0(__dst);
          return;
        }

        v18 = sub_26203A48C();
        if (qword_28108B600 != -1)
        {
          swift_once();
        }

        v19 = qword_28108B610;
        if (os_log_type_enabled(qword_28108B610, v18))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v33[0] = v21;
          *v20 = 136446466;
          sub_261F666D8();
          v24 = sub_261F67FE4(v22, v23, v33);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2080;
          memcpy(v32, __dst, 0x7AuLL);
          sub_261FBC710(__dst, v31);
          v25 = sub_26203A20C();
          v27 = sub_261F67FE4(v25, v26, v33);

          *(v20 + 14) = v27;
          _os_log_impl(&dword_261F5B000, v19, v18, "%{public}s Received unexpected response to create remote unlock key request: %s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266724180](v21, -1, -1);
          MEMORY[0x266724180](v20, -1, -1);
        }

        v32[3] = MEMORY[0x277D837D0];
        v32[0] = 0xD000000000000034;
        v32[1] = 0x800000026204F300;
        LOBYTE(v32[4]) = 1;
        sub_261F65C5C();
        v6 = swift_allocError();
        v29 = v28;
        *v28 = 2;
        v31[0] = 2;
        v30 = ControlChannelConnectionError.Message.format(code:)(v31);
        sub_261F65C08(v32);
        *(v29 + 8) = v30;
        *(v29 + 24) = 0u;
        *(v29 + 40) = 0u;
        *(v29 + 7) = 0;
        goto LABEL_7;
      }

      v5 = nullsub_1(v35);
      sub_261F65C5C();
      v6 = swift_allocError();
      v7 = v5[3];
      v9 = *v5;
      v8 = v5[1];
      v10[2] = v5[2];
      v10[3] = v7;
      *v10 = v9;
      v10[1] = v8;
    }

    sub_261FBC710(__dst, v34);
LABEL_7:
    swift_willThrow();
    v11 = v6;
    a3(v6, 0, 1);
  }
}

void sub_261FAEE5C()
{
  OUTLINED_FUNCTION_169();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 232);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v7 = *(v1 + 528);
  if (v7 && *&v7[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] >= 13)
  {
    OUTLINED_FUNCTION_63();
    v9 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_107();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = v5;
    v10[4] = v3;
    v11 = v7;
    v12 = OUTLINED_FUNCTION_90();
    sub_261F6B73C(v12, v13);

    sub_261FABC80();

    OUTLINED_FUNCTION_7_2();
    sub_261FBA6D8(v14, v15);
  }

  else
  {
    sub_261F9BCE0();
    OUTLINED_FUNCTION_135();
    sub_26203ACFC();
    sub_261F9D610();
    OUTLINED_FUNCTION_13_1();
    v8 = swift_allocError();
    OUTLINED_FUNCTION_53_1();
    sub_26203AD4C();
    v5(v8);
  }

  OUTLINED_FUNCTION_168();
}

void sub_261FAEFF8(void *__src, uint64_t a2, void (*a3)(void *))
{
  memcpy(__dst, __src, 0x7AuLL);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    memcpy(v29, __dst, 0x7AuLL);
    v4 = sub_261FBC6F8(v29);
    if (v4 == 5)
    {
      v6 = *nullsub_1(v29);
    }

    else
    {
      if (v4 != 4)
      {
        memcpy(v28, __dst, 0x7AuLL);
        if (sub_261FBC6F8(v28) == 6)
        {
          a3(0);

          return;
        }

        v12 = sub_26203A48C();
        if (qword_28108B600 != -1)
        {
          swift_once();
        }

        v13 = qword_28108B610;
        if (os_log_type_enabled(qword_28108B610, v12))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v27[0] = v15;
          *v14 = 136446466;
          sub_261F666D8();
          v18 = sub_261F67FE4(v16, v17, v27);

          *(v14 + 4) = v18;
          *(v14 + 12) = 2080;
          memcpy(v26, __dst, 0x7AuLL);
          sub_261FBC710(__dst, v25);
          v19 = sub_26203A20C();
          v21 = sub_261F67FE4(v19, v20, v27);

          *(v14 + 14) = v21;
          _os_log_impl(&dword_261F5B000, v13, v12, "%{public}s Received unexpected response to remote unlock request: %s", v14, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266724180](v15, -1, -1);
          MEMORY[0x266724180](v14, -1, -1);
        }

        v26[3] = MEMORY[0x277D837D0];
        v26[0] = 0xD000000000000029;
        v26[1] = 0x800000026204F2D0;
        LOBYTE(v26[4]) = 1;
        sub_261F65C5C();
        v6 = swift_allocError();
        v23 = v22;
        *v22 = 2;
        v25[0] = 2;
        v24 = ControlChannelConnectionError.Message.format(code:)(v25);
        sub_261F65C08(v26);
        *(v23 + 8) = v24;
        *(v23 + 24) = 0u;
        *(v23 + 40) = 0u;
        *(v23 + 7) = 0;
        goto LABEL_7;
      }

      v5 = nullsub_1(v29);
      sub_261F65C5C();
      v6 = swift_allocError();
      v7 = v5[3];
      v9 = *v5;
      v8 = v5[1];
      v10[2] = v5[2];
      v10[3] = v7;
      *v10 = v9;
      v10[1] = v8;
    }

    sub_261FBC710(__dst, v28);
LABEL_7:
    swift_willThrow();
    v11 = v6;
    a3(v6);
  }
}

void sub_261FAF354()
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  *__src = 2;
  v33 = 0xC000000000000000;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v0 = sub_261FBA7C0(__src);
  OUTLINED_FUNCTION_104(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, __src[0]);
  OUTLINED_FUNCTION_58_1();
  sub_261FABDA0(v8, v9, v10);
}

void sub_261FAF3C0()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v0 + 168) == 4 && ((v1 = *(v0 + 128), OUTLINED_FUNCTION_162(*(v0 + 152), *(v0 + 136)), v3 == 4) ? (v4 = v2 == 0) : (v4 = 0), v4 && (OUTLINED_FUNCTION_35_1(), v5 < 0) && (v6 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions), v6 != 2) && (v6 & 1) != 0))
  {
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    *__src = 4;
    v39 = 0xC000000000000000;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v7 = sub_261FBA7C0(__src);
    OUTLINED_FUNCTION_104(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, __src[0]);
    OUTLINED_FUNCTION_58_1();
    sub_261FABDA0(v15, v16, v17);
    sub_261F6A480(0);
    v19 = 5;
    v20 = 0u;
    v21 = 0u;
    LOBYTE(v22) = 4;
    sub_261F68720(&v19);
    OUTLINED_FUNCTION_88_0();
    v18 = *(v0 + 120);
    *(v0 + 120) = 0;
  }

  else
  {
    sub_261F65D98();
  }
}

uint64_t sub_261FAF4D4()
{
  *(v0 + 244);
  v1 = *(v0 + 240);
  if ((*(v0 + 240) & 0x8000) == 0 || (v2 = sub_26203A3FC(), *(v2 + 16) = 6, ("Only host should send handshake" & 0x2F00000000000000) == 0x2000000000000000))
  {
    OUTLINED_FUNCTION_20_2();
    result = sub_26203A91C();
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = 0;
    v5 = v2 + 32;
    do
    {
      v6 = sub_26203A24C();
      if (v6 < 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v7 = v6;
      if (!v6)
      {
        goto LABEL_13;
      }

      v27[0] = 0;
      MEMORY[0x2667241A0](v27, 8);
      if (v7 > v27[0] * v7)
      {
        v8 = -v7 % v7;
        while (v8 > v27[0] * v7)
        {
          v27[0] = 0;
          MEMORY[0x2667241A0](v27, 8);
        }
      }

      sub_26203A25C();
      v9 = sub_26203A2DC();
      v10 = (v5 + 16 * v4);
      *v10 = v9;
      v10[1] = v11;
      ++v4;
    }

    while (v4 != 6);
    *(v3 + 16) = 6;
    v27[0] = v3;
    v12 = OUTLINED_FUNCTION_108();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    sub_261F67F70(&qword_28108B328, &unk_27FEF9AB0, &qword_262040300);
    v14 = sub_26203A2EC();
    v16 = v15;
    OUTLINED_FUNCTION_88_0();
    v17 = *(v0 + 184);
    *(v0 + 176) = v14;
    *(v0 + 184) = v16;

    if (qword_28108CFD0 == -1)
    {
      goto LABEL_11;
    }

LABEL_14:
    OUTLINED_FUNCTION_6_6();
LABEL_11:
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v18 = qword_28108CFD8;
    v19 = *(v0 + 176);
    v20 = *(v0 + 184);
    v21 = v1 & 1;
    v27[0] = qword_28108CFD8;
    v27[1] = v21;
    v27[2] = v19;
    v27[3] = v20;
    OUTLINED_FUNCTION_63();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    swift_bridgeObjectRetain_n();
    v24 = v18;

    v25 = v24;
    sub_261FABC80();

    sub_261FBA6D8(v18, v21);
  }

  return result;
}

void sub_261FAF824(void *__src, uint64_t a2, char a3)
{
  memcpy(__dst, __src, 0x7AuLL);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  memcpy(v57, __dst, 0x7AuLL);
  v6 = sub_261FBC6F8(v57);
  if (v6 == 5)
  {
    v8 = *nullsub_1(v57);
    goto LABEL_6;
  }

  if (v6 == 4)
  {
    v7 = nullsub_1(v57);
    sub_261F65C5C();
    v8 = swift_allocError();
    v9 = v7[3];
    v11 = *v7;
    v10 = v7[1];
    v12[2] = v7[2];
    v12[3] = v9;
    *v12 = v11;
    v12[1] = v10;
LABEL_6:
    sub_261FBC710(__dst, v56);
LABEL_13:
    swift_willThrow();
    sub_261F65D0C(v8);

    return;
  }

  memcpy(v56, __dst, 0x7AuLL);
  if (sub_261FBC6F8(v56))
  {
    v13 = sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v14 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v53[0] = v16;
      *v15 = 136446466;
      sub_261F666D8();
      v19 = sub_261F67FE4(v17, v18, v53);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      memcpy(v55, __dst, 0x7AuLL);
      sub_261FBC710(__dst, v54);
      v20 = sub_26203A20C();
      v22 = sub_261F67FE4(v20, v21, v53);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_261F5B000, v14, v13, "%{public}s Received unexpected response to handshake request: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v16, -1, -1);
      MEMORY[0x266724180](v15, -1, -1);
    }

    v55[3] = MEMORY[0x277D837D0];
    v55[0] = 0xD000000000000025;
    v55[1] = 0x800000026204EF20;
    LOBYTE(v55[4]) = 1;
    sub_261F65C5C();
    v8 = swift_allocError();
    v24 = v23;
    *v23 = 2;
    v54[0] = 2;
    v25 = ControlChannelConnectionError.Message.format(code:)(v54);
    sub_261F65C08(v55);
    *(v24 + 8) = v25;
    *(v24 + 24) = 0u;
    *(v24 + 40) = 0u;
    *(v24 + 7) = 0;
    goto LABEL_13;
  }

  v26 = nullsub_1(v56);
  v28 = *v26;
  v27 = *(v26 + 8);
  swift_beginAccess();
  v29 = *(v5 + 528);
  *(v5 + 528) = v28;
  sub_261FBC710(__dst, v55);
  v30 = v27;
  v31 = v28;

  v32 = 256;
  if (!*(v26 + 17))
  {
    v32 = 0;
  }

  v51 = *(v26 + 16);
  v33 = v32 | v51 | (*(v26 + 18) << 16) | (*(v26 + 19) << 24);
  v34 = v5 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__peerDeviceOptions;
  *(v34 + 4) = *(v26 + 20);
  *v34 = v33;
  memcpy(v55, (v26 + 24), 0x61uLL);
  sub_261F674BC(v26 + 24, v54, &qword_27FEF9978, &qword_262045D80);
  sub_261FA7F00(v55);
  if (qword_28108B5C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v35 = qword_28108CFD0;
  v36 = qword_28108B5D0;
  if (v35 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v37 = OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue;
  v38 = *(qword_28108CFD8 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue);
  v39 = *&v30[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue];

  if (v38 < v39)
  {
    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000060, 0x800000026204EFE0);
    v52 = *(qword_28108CFD8 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue);
    v40 = sub_26203ABAC();
    MEMORY[0x266722710](v40);

    MEMORY[0x266722710](0xD000000000000014, 0x800000026204F050);
    v52 = *&v30[v37];
LABEL_25:
    v43 = sub_26203ABAC();
    MEMORY[0x266722710](v43);

    MEMORY[0x266722710](41, 0xE100000000000000);
    v55[3] = MEMORY[0x277D837D0];
    LOBYTE(v55[4]) = 1;
    sub_261F65C5C();
    v44 = swift_allocError();
    v46 = v45;
    *v45 = 5;
    LOBYTE(v52) = 5;
    v47 = ControlChannelConnectionError.Message.format(code:)(&v52);
    sub_261F65C08(v55);
    *(v46 + 8) = v47;
    *(v46 + 24) = 0u;
    *(v46 + 40) = 0u;
    *(v46 + 7) = 0;
    swift_willThrow();
    sub_261F65D0C(v44);

    goto LABEL_26;
  }

  v41 = OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue;
  if (*&v31[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] < *&v36[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue])
  {
    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000062, 0x800000026204EF50);
    v52 = *&v31[v41];
    v42 = sub_26203ABAC();
    MEMORY[0x266722710](v42);

    MEMORY[0x266722710](0xD000000000000012, 0x800000026204EFC0);
    v52 = *&v36[v41];
    goto LABEL_25;
  }

LABEL_26:
  if (a3)
  {
    LOBYTE(v55[0]) = 0;
    v48 = MEMORY[0x277D84F90];
    v49 = sub_26203A0FC();
    v50 = sub_26203A0FC();
    sub_261FB5DF0(v55, 0, 0, 0, 0, 0xF000000000000000, 0, 0, v48, v49, v50);
  }

  else
  {
    if (((*(v26 + 48) != 0) & v51) == 1)
    {
      v55[0] = 5;
      memset(&v55[1], 0, 32);
      LOBYTE(v55[5]) = 4;
      sub_261F68720(v55);
      sub_261FA9C1C();
    }

    else
    {
      v55[0] = 1;
      sub_261F65D98();
    }
  }

  sub_261FBA8E0(__dst);
}

uint64_t sub_261FB004C()
{
  OUTLINED_FUNCTION_14_4();
  sub_261F68720(v0);
  OUTLINED_FUNCTION_63();
  swift_allocObject();
  swift_weakInit();

  sub_261FABC80();
}

void sub_261FB00E4(void *__src)
{
  memcpy(__dst, __src, 0x7AuLL);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    if (*(v2 + 168) != 4 || ((v3 = vorrq_s8(*(v2 + 136), *(v2 + 152)), v4 = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)), *(v2 + 128) == 7) ? (v5 = *&v4 == 0) : (v5 = 0), !v5))
    {
      v6 = sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        swift_once();
      }

      v7 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v46[0] = v9;
        *v8 = 136446466;
        sub_261F666D8();
        v12 = sub_261F67FE4(v10, v11, v46);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2082;
        v13 = *(v2 + 136);
        v14 = *(v2 + 144);
        v15 = *(v2 + 152);
        v16 = *(v2 + 160);
        v17 = *(v2 + 168);
        v47[0] = *(v2 + 128);
        v47[1] = v13;
        v47[2] = v14;
        v47[3] = v15;
        v47[4] = v16;
        LOBYTE(v47[5]) = v17;
        sub_261F68B30(v47[0], v13, v14, v15, v16, v17, sub_261F7D45C, sub_261F81D84, sub_261F6B73C);
        v18 = sub_26203A20C();
        v20 = sub_261F67FE4(v18, v19, v46);

        *(v8 + 14) = v20;
        _os_log_impl(&dword_261F5B000, v7, v6, "%{public}s: Received peer info but in state %{public}s", v8, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v9, -1, -1);
        MEMORY[0x266724180](v8, -1, -1);
      }

      goto LABEL_11;
    }

    memcpy(v47, __dst, 0x7AuLL);
    v21 = sub_261FBC6F8(v47);
    if (v21 == 5)
    {
      v23 = *nullsub_1(v47);
    }

    else
    {
      if (v21 != 4)
      {
        memcpy(v46, __dst, 0x7AuLL);
        if (sub_261FBC6F8(v46) == 1)
        {
          v28 = nullsub_1(v46);
          memcpy(v44, v28, 0x61uLL);
          memcpy(v45, __dst, 0x7AuLL);
          v29 = nullsub_1(v45);
          sub_261FBA7D0(v29, v43);
          sub_261FA7F00(v44);
          v44[0] = 4;
          memset(&v44[1], 0, 32);
          LOBYTE(v44[5]) = 4;
          sub_261F68720(v44);
          sub_261FA9C1C();
LABEL_11:

          return;
        }

        v30 = sub_26203A48C();
        if (qword_28108B600 != -1)
        {
          swift_once();
        }

        v31 = qword_28108B610;
        if (os_log_type_enabled(qword_28108B610, v30))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v43[0] = v33;
          *v32 = 136446466;
          sub_261F666D8();
          v36 = sub_261F67FE4(v34, v35, v43);

          *(v32 + 4) = v36;
          *(v32 + 12) = 2080;
          memcpy(v45, __dst, 0x7AuLL);
          sub_261FBC710(__dst, v44);
          v37 = sub_26203A20C();
          v39 = sub_261F67FE4(v37, v38, v43);

          *(v32 + 14) = v39;
          _os_log_impl(&dword_261F5B000, v31, v30, "%{public}s Received unexpected response to handshake request: %s", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266724180](v33, -1, -1);
          MEMORY[0x266724180](v32, -1, -1);
        }

        v45[3] = MEMORY[0x277D837D0];
        v45[0] = 0xD000000000000025;
        v45[1] = 0x800000026204EE00;
        LOBYTE(v45[4]) = 1;
        sub_261F65C5C();
        v23 = swift_allocError();
        v41 = v40;
        *v40 = 2;
        LOBYTE(v44[0]) = 2;
        v42 = ControlChannelConnectionError.Message.format(code:)(v44);
        sub_261F65C08(v45);
        *(v41 + 8) = v42;
        *(v41 + 24) = 0u;
        *(v41 + 40) = 0u;
        *(v41 + 7) = 0;
        goto LABEL_17;
      }

      v22 = nullsub_1(v47);
      sub_261F65C5C();
      v23 = swift_allocError();
      v24 = v22[3];
      v26 = *v22;
      v25 = v22[1];
      v27[2] = v22[2];
      v27[3] = v24;
      *v27 = v26;
      v27[1] = v25;
    }

    sub_261FBC710(__dst, v46);
LABEL_17:
    swift_willThrow();
    sub_261F65D0C(v23);
  }
}

void sub_261FB0658(void *a1)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v4 = *(v1 + 168);
  if ((v4 - 1) > 1u)
  {
    sub_26203A4AC();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AA0, &qword_262040540);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_26203E9E0;
    OUTLINED_FUNCTION_80_0();
    v26 = *(v1 + 168);
    OUTLINED_FUNCTION_2_7();
    sub_261F68B30(v27, v28, v29, v30, v31, v32, sub_261F7D45C, sub_261F81D84, v33);
    sub_26203A20C();
    OUTLINED_FUNCTION_76();
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_261FBC69C();
    *(v25 + 32) = v1;
    *(v25 + 40) = v2;
    sub_26203969C();
  }

  else
  {
    v5 = *(v1 + 128);
    v6 = *(v1 + 136);
    v7 = *(v1 + 144);
    v8 = *(v1 + 152);
    v9 = *(v1 + 160);
    OUTLINED_FUNCTION_132();
    OUTLINED_FUNCTION_2_7();
    v10 = OUTLINED_FUNCTION_24_2();
    sub_261F68B30(v10, v11, v12, v13, v14, v4, v15, v16, v33);
    sub_261F68720(&v35);
    if (v5)
    {
      v35 = a1;
      v36 = 0;
      LOBYTE(v37) = 0;
      v17 = a1;
      v5(&v35);
      OUTLINED_FUNCTION_1_9();
      v18 = OUTLINED_FUNCTION_24_2();
      sub_261F68B30(v18, v19, v20, v21, v22, v4, v23, v24, v34);
      sub_261FB9BAC(v35, v36, v37);
    }
  }
}

void sub_261FB0884()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v0 + 168) == 1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    if (v3)
    {
      v4 = *(v0 + 144);
      v5 = *(v0 + 152);
      v6 = *(v0 + 160);
      v37 = xmmword_26203F770;
      LOBYTE(v38) = 0x80;
      sub_261F7D45C(v3);
      v3(&v37);
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_119();
      sub_261F68B30(v7, v8, v9, v10, v11, 1, v12, v13, v36);
    }

    else
    {
      v35 = *(v0 + 136);
      sub_261F7D45C(0);
    }
  }

  else
  {
    v14 = sub_26203A4AC();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v15 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v14))
    {
      OUTLINED_FUNCTION_57_1();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_56();
      v42 = swift_slowAlloc();
      *v16 = 136446466;
      sub_261F666D8();
      v18 = v17;
      sub_261F67FE4(v19, v17, &v42);
      OUTLINED_FUNCTION_163();

      *(v16 + 4) = v1;
      *(v16 + 12) = 2080;
      v20 = OUTLINED_FUNCTION_80_0();
      v21 = *(v0 + 168);
      *&v37 = v20;
      *(&v37 + 1) = v22;
      v38 = v23;
      v39 = v24;
      v40 = v25;
      v41 = v21;
      OUTLINED_FUNCTION_2_7();
      sub_261F68B30(v26, v27, v28, v29, v30, v31, sub_261F7D45C, sub_261F81D84, v36);
      v32 = sub_26203A20C();
      sub_261F67FE4(v32, v33, &v42);
      OUTLINED_FUNCTION_65();

      *(v16 + 14) = v18;
      _os_log_impl(&dword_261F5B000, v15, v14, "%{public}s: Ignoring awaiting user consent message from peer since state=%s", v16, 0x16u);
      swift_arrayDestroy();
      v34 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v34);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }
  }
}

uint64_t sub_261FB0AC0(void *__src)
{
  memcpy(__dst, __src, 0x61uLL);
  sub_261FBA7D0(__dst, &v3);
  return sub_261FA7F00(__src);
}

void sub_261FB0B0C(unsigned int a1, int a2)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v2 + 168) == 1)
  {
    v5 = *(v2 + 128);
    v6 = *(v2 + 136);
    if (v5)
    {
      v7 = *(v2 + 144);
      v8 = *(v2 + 152);
      v9 = *(v2 + 160);
      if ((a1 & 0x20000) != 0)
      {
        v10 = 64;
      }

      else
      {
        v10 = 65;
      }

      v18[0] = HIWORD(a1) & 1;
      v18[1] = a2 & ((a1 << 14) >> 31);
      v19 = v10;
      sub_261F7D45C(v5);
      v5(v18);
      OUTLINED_FUNCTION_1_9();
      OUTLINED_FUNCTION_153();
      sub_261F68B30(v11, v12, v13, v8, v9, 1, v14, v15, v17);
    }

    else
    {
      v16 = *(v2 + 136);
      sub_261F7D45C(0);
    }
  }
}

void sub_261FB0C10()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v3 = *(v0 + 528);
  if (v3 && *(v3 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) >= 20)
  {
    v11 = sub_26203A4AC();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v12 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v11))
    {
      OUTLINED_FUNCTION_42_1();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v15, v16, v24);
      OUTLINED_FUNCTION_163();

      *(v13 + 4) = v2;
      _os_log_impl(&dword_261F5B000, v12, v11, "%{public}s: Pushing metadata update event to host", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      v17 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v17);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    sub_261FB5370(v25);
    memcpy(__dst, v25, 0x61uLL);
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    __src[2] = __dst[2];
    __src[3] = __dst[3];
    *&__src[4] = *&__dst[4];
    *(&__src[4] + 1) = BYTE8(__dst[4]) & 1 | 0x8000000000000000;
    __src[5] = __dst[5];
    LOBYTE(__src[6]) = __dst[6];
    sub_261FBA7C0(__src);
    memcpy(v21, __src, sizeof(v21));
    sub_261FBA7D0(__dst, v24);
    OUTLINED_FUNCTION_58_1();
    sub_261FABDA0(v18, v19, v20);
    sub_261FBA82C(__dst);
    memcpy(v24, v21, 0x82uLL);
    sub_261FBA880(v24);
  }

  else
  {
    sub_26203A4AC();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    if (OUTLINED_FUNCTION_136())
    {
      OUTLINED_FUNCTION_42_1();
      v4 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v5 = swift_slowAlloc();
      v24[0] = v5;
      *v4 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v6, v7, v24);
      OUTLINED_FUNCTION_65();

      *(v4 + 4) = v1;
      OUTLINED_FUNCTION_29_4(&dword_261F5B000, v8, v9, "%{public}s: Not pushing metadata update event to host as it does not have a wire protocol version to support it");
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      v10 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v10);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FB0F30(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *a2;
  v42 = a2[1];
  v43 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  if (remotePairingIsEnabled())
  {
    v41 = v12;
    swift_beginAccess();
    v14 = a3[66];
    a3[66] = v7;
    v15 = v7;

    swift_beginAccess();
    v16 = a3[23];
    a3[22] = v10;
    a3[23] = v9;

    if (v8)
    {
      v49[0] = 8;
      memset(&v49[1], 0, 32);
      LOBYTE(v49[5]) = 4;
      sub_261F68720(v49);
    }

    else
    {
      v49[0] = 5;
      memset(&v49[1], 0, 32);
      LOBYTE(v49[5]) = 4;
      sub_261F68720(v49);
      sub_261FA9C1C();
    }

    if (v11)
    {
      sub_261FB5370(v46);
      memcpy(v44, v46, 0x61uLL);
      if (qword_28108CFD0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v33 = qword_28108B5C8;
      v34 = qword_28108CFD8;
      if (v33 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v35 = qword_28108B5D0;
      memcpy(v49 + 3, v44, 0x61uLL);
      v45[0] = v34;
      v45[1] = qword_28108B5D0;
      LOBYTE(v45[2]) = 1;
      BYTE1(v45[2]) = v42;
      BYTE2(v45[2]) = v43;
      BYTE3(v45[2]) = v41;
      BYTE4(v45[2]) = v13;
      memcpy(&v45[2] + 5, v49, 0x64uLL);
      memcpy(__src, v45, 0x79uLL);
      sub_261FBCECC(__src);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v36 = *(a5 + 8);
        memcpy(&v48[1], __src, 0x7AuLL);
        v48[0] = v36;
        sub_261FBCE10(v48);
        memcpy(__dst, v48, 0x82uLL);
        sub_261FBCED4(v45, v49);
        v37 = v35;
        sub_261FBA7D0(v44, v49);
        sub_261FBCED4(v45, v49);
        sub_261FABDA0(__dst, 0, 1);

        memcpy(v49, __dst, 0x82uLL);
        sub_261FBA880(v49);
        sub_261FBCF30(v45);
        sub_261FBA82C(v44);
      }

      else
      {
        v39 = v35;
      }
    }

    else
    {
      if (qword_28108CFD0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v28 = qword_28108B5C8;
      v29 = qword_28108CFD8;
      if (v28 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v30 = qword_28108B5D0;
      v45[0] = v29;
      v45[1] = qword_28108B5D0;
      LOBYTE(v45[2]) = 0;
      BYTE1(v45[2]) = v42;
      BYTE2(v45[2]) = v43;
      BYTE3(v45[2]) = v41;
      BYTE4(v45[2]) = v13;
      memset(&v45[3], 0, 97);
      memcpy(__src, v45, 0x79uLL);
      sub_261FBCECC(__src);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v31 = *(a5 + 8);
        memcpy(&v48[1], __src, 0x7AuLL);
        v48[0] = v31;
        sub_261FBCE10(v48);
        memcpy(__dst, v48, 0x82uLL);
        sub_261FBCED4(v45, v49);
        v32 = v30;
        sub_261FBCED4(v45, v49);
        sub_261FABDA0(__dst, 0, 1);

        memcpy(v49, __dst, 0x82uLL);
        sub_261FBA880(v49);
        sub_261FBCF30(v45);
      }

      else
      {
        v38 = v30;
      }
    }

    sub_261FBCF30(v45);
  }

  else
  {
    v17 = sub_26203A4AC();
    if (qword_28108B600 != -1)
    {
      swift_once();
    }

    v18 = qword_28108B610;
    if (os_log_type_enabled(qword_28108B610, v17))
    {
      v19 = a5;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v49[0] = v21;
      *v20 = 136446210;
      sub_261F666D8();
      v24 = sub_261F67FE4(v22, v23, v49);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_261F5B000, v18, v17, "%{public}s: Rejecting control channel connection because RemotePairing support is disabled on this device.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x266724180](v21, -1, -1);
      v25 = v20;
      a5 = v19;
      MEMORY[0x266724180](v25, -1, -1);
    }

    sub_261F9D610();
    v26 = swift_allocError();
    sub_261F9BCE0();
    sub_26203AD3C();
    sub_262017A84(v26, v7, __src);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v27 = *(a5 + 8);
      memcpy(&v48[1], __src, 0x7AuLL);
      v48[0] = v27;
      sub_261FBCE10(v48);
      memcpy(__dst, v48, 0x82uLL);
      sub_261FBC710(__src, v49);
      sub_261FABDA0(__dst, 0, 1);

      memcpy(v49, __dst, 0x82uLL);
      sub_261FBA880(v49);
    }

    sub_261FBA8E0(__src);
  }

  return sub_261FBCC40(a5);
}

void sub_261FB176C()
{
  OUTLINED_FUNCTION_35_1();
  if (v3 < 0)
  {
    sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    if (OUTLINED_FUNCTION_149())
    {
      OUTLINED_FUNCTION_42_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_27_2();
      v5 = swift_slowAlloc();
      v16[0] = v5;
      OUTLINED_FUNCTION_137(4.8751e-34);
      sub_261F67FE4(v6, v7, v16);
      OUTLINED_FUNCTION_47_1();

      *(v2 + 4) = v0;
      OUTLINED_FUNCTION_50_1(&dword_261F5B000, v8, v9, "%{public}s: Ignoring invalid PairVerify failed message received by host");
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      v10 = OUTLINED_FUNCTION_9_2();
      MEMORY[0x266724180](v10);
      v11 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v11);
    }
  }

  else if (v3)
  {
    v16[0] = 5;
    OUTLINED_FUNCTION_14_4();
    sub_261F68720(v4);

    sub_261FA9C1C();
  }

  else
  {
    OUTLINED_FUNCTION_31_2();
    v16[3] = v12;
    v16[0] = 0xD000000000000041;
    v16[1] = v13;
    v17 = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    swift_allocError();
    OUTLINED_FUNCTION_67_1();
    *v14 = 3;
    v18 = 3;
    ControlChannelConnectionError.Message.format(code:)(&v18);
    OUTLINED_FUNCTION_76();
    sub_261F65C08(v16);
    OUTLINED_FUNCTION_7_3();
    v15 = OUTLINED_FUNCTION_72_1();
    sub_261F65D0C(v15);
  }
}

uint64_t sub_261FB1914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 240);
  v6 = v5 | (*(a1 + 244) << 32);
  if ((v5 & 0x8000) != 0)
  {
    v7 = sub_26203AC0C();

    if ((v7 & 1) == 0)
    {
      v23 = sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        swift_once();
      }

      v24 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v23))
      {
        v25 = a3;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v65[0] = v27;
        *v26 = 136446210;
        sub_261F666D8();
        v30 = sub_261F67FE4(v28, v29, v65);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_261F5B000, v24, v23, "%{public}s: Ignoring invalid cancelPairSetup message received by host", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x266724180](v27, -1, -1);
        v31 = v26;
        a3 = v25;
        MEMORY[0x266724180](v31, -1, -1);
      }

      goto LABEL_42;
    }
  }

  else
  {
  }

  v8 = sub_26203A4AC();
  if (qword_28108B600 != -1)
  {
    swift_once();
  }

  v9 = qword_28108B610;
  if (os_log_type_enabled(qword_28108B610, v8))
  {
    v10 = swift_slowAlloc();
    v11 = a3;
    v12 = swift_slowAlloc();
    v65[0] = v12;
    *v10 = 136446210;
    sub_261F666D8();
    v15 = sub_261F67FE4(v13, v14, v65);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_261F5B000, v9, v8, "%{public}s: Received PairSetup cancel request from host", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    v16 = v12;
    a3 = v11;
    MEMORY[0x266724180](v16, -1, -1);
    MEMORY[0x266724180](v10, -1, -1);
  }

  swift_beginAccess();
  v17 = *(a1 + 168);
  if ((v17 - 1) < 2)
  {
LABEL_22:
    v65[0] = 5;
    memset(&v65[1], 0, 32);
    LOBYTE(v65[5]) = 4;
    sub_261F68720(v65);
    [*(a1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) invalidate];
    sub_261FBCF84(__src);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v41 = *(a3 + 8);
      memcpy(&v64[1], __src, 0x7AuLL);
      v64[0] = v41;
      sub_261FBCE10(v64);
      memcpy(__dst, v64, 0x82uLL);
      sub_261FABDA0(__dst, 0, 1);

      memcpy(v65, __dst, 0x82uLL);
      sub_261FBA880(v65);
    }

    goto LABEL_42;
  }

  v18 = *(a1 + 136);
  v20 = *(a1 + 144);
  v19 = *(a1 + 152);
  v21 = *(a1 + 160);
  if (v17 == 3)
  {
    v57 = *(a1 + 152);
    v58 = *(a1 + 160);
    v59 = *(a1 + 128);
    v61 = *(a1 + 136);
    sub_261F6B73C(v59, v18);
    v32 = sub_26203A4AC();
    if (os_log_type_enabled(v9, v32))
    {
      v33 = swift_slowAlloc();
      v56 = a3;
      v34 = swift_slowAlloc();
      v65[0] = v34;
      *v33 = 136446210;
      sub_261F666D8();
      v37 = sub_261F67FE4(v35, v36, v65);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_261F5B000, v9, v32, "%{public}s: Cancelling in-progress pairing consent collection", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      v38 = v34;
      a3 = v56;
      MEMORY[0x266724180](v38, -1, -1);
      MEMORY[0x266724180](v33, -1, -1);
    }

    swift_beginAccess();
    sub_261F674BC(a1 + 320, v65, &qword_27FEF99A0, &qword_26203F7D8);
    if (v65[3])
    {
      sub_261F79740(v65, v64);
      sub_261F66E60(v65, &qword_27FEF99A0, &qword_26203F7D8);
      v39 = v64[3];
      v40 = v64[4];
      __swift_project_boxed_opaque_existential_0Tm(v64, v64[3]);
      (*(v40 + 32))(v39, v40);
      sub_261F68B30(v59, v61, v20, v57, v58, 3, sub_261F99050, sub_261F6ADEC, sub_261F6BFFC);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
    }

    else
    {
      sub_261F68B30(v59, v61, v20, v57, v58, 3, sub_261F99050, sub_261F6ADEC, sub_261F6BFFC);
      sub_261F66E60(v65, &qword_27FEF99A0, &qword_26203F7D8);
    }

    goto LABEL_22;
  }

  if (!*(a1 + 168))
  {
    v22 = "sThroughLockdown";
    switch(*(a1 + 128))
    {
      case 1u:
        v22 = "verifyManualPairing";
        v17 = 1;
        break;
      case 2u:
        v17 = 0;
        v22 = "setupManualPairing";
        break;
      case 3u:
        v17 = 0;
        v22 = "tionLockdownPairing";
        break;
      default:
        break;
    }

    v60 = *(a1 + 128);
    v62 = *(a1 + 136);
    if (v17 && (v22 | 0x8000000000000000) == 0x800000026204C570)
    {
      sub_261F7D45C(v18);
      sub_261F81D84(v19, v21);

LABEL_30:
      v65[0] = 5;
      memset(&v65[1], 0, 32);
      LOBYTE(v65[5]) = 4;
      sub_261F68720(v65);
      [*(a1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) invalidate];
      sub_261FBCF84(__src);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v44 = *(a3 + 8);
        memcpy(&v64[1], __src, 0x7AuLL);
        v64[0] = v44;
        sub_261FBCE10(v64);
        memcpy(__dst, v64, 0x82uLL);
        sub_261FABDA0(__dst, 0, 1);

        memcpy(v65, __dst, 0x82uLL);
        sub_261FBA880(v65);
      }

      sub_261F68B30(v60, v62, v20, v19, v21, 0, sub_261F99050, sub_261F6ADEC, sub_261F6BFFC);
      goto LABEL_42;
    }

    v42 = *(a1 + 136);
    v43 = sub_26203AC0C();
    sub_261F7D45C(v42);
    sub_261F81D84(v19, v21);

    if (v43)
    {
      goto LABEL_30;
    }

    sub_261F68B30(v60, v62, v20, v19, v21, 0, sub_261F99050, sub_261F6ADEC, sub_261F6BFFC);
  }

  v65[3] = MEMORY[0x277D837D0];
  v65[0] = 0xD000000000000029;
  v65[1] = 0x800000026204E570;
  LOBYTE(v65[4]) = 1;
  LOBYTE(v64[0]) = 3;
  v45 = ControlChannelConnectionError.Message.format(code:)(v64);
  sub_261F65C08(v65);
  LOBYTE(v68) = 3;
  *(&v68 + 1) = v45._countAndFlagsBits;
  *v69 = v45._object;
  memset(&v69[8], 0, 40);
  sub_261F65C5C();
  v46 = swift_allocError();
  v47 = *&v69[32];
  v49 = v68;
  v48 = *v69;
  v50[2] = *&v69[16];
  v50[3] = v47;
  *v50 = v49;
  v50[1] = v48;
  swift_beginAccess();
  v51 = *(a1 + 528);
  if (v51)
  {
    sub_261F65CB0(&v68, v65);
    v52 = v51;
  }

  else
  {
    sub_261F65CB0(&v68, v65);
    if (qword_28108B5C8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v52 = qword_28108B5D0;
    v51 = 0;
  }

  v53 = v51;
  sub_262017A84(v46, v52, __src);

  memcpy(v66, __src, 0x7AuLL);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v54 = *(a3 + 8);
    memcpy(&v64[1], v66, 0x7AuLL);
    v64[0] = v54;
    sub_261FBCE10(v64);
    memcpy(__dst, v64, 0x82uLL);
    sub_261FBC710(v66, v65);
    sub_261FABDA0(__dst, 0, 1);

    memcpy(v65, __dst, 0x82uLL);
    sub_261FBA880(v65);
  }

  sub_261F6A70C(&v68);
  sub_261FBA8E0(v66);
LABEL_42:

  return sub_261FBCC40(a3);
}

void sub_261FB2374()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_35_1();
  if (v6 < 0)
  {
    sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    if (OUTLINED_FUNCTION_149())
    {
      OUTLINED_FUNCTION_42_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_27_2();
      v18 = swift_slowAlloc();
      v78[0] = v18;
      OUTLINED_FUNCTION_137(4.8751e-34);
      sub_261F67FE4(v19, v20, v78);
      OUTLINED_FUNCTION_47_1();

      *(v2 + 4) = v0;
      OUTLINED_FUNCTION_50_1(&dword_261F5B000, v21, v22, "%{public}s: Ignoring invalid PairSetup request received by host");
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      v23 = OUTLINED_FUNCTION_9_2();
      MEMORY[0x266724180](v23);
      v24 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v24);
    }
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_31_2();
      v78[3] = MEMORY[0x277D837D0];
      v78[0] = 0xD00000000000004BLL;
      v78[1] = v25;
      LOBYTE(v78[4]) = 1;
      sub_261F65C5C();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      OUTLINED_FUNCTION_67_1();
      *v26 = 3;
      LOBYTE(__src[0]) = 3;
      ControlChannelConnectionError.Message.format(code:)(__src);
      OUTLINED_FUNCTION_76();
      sub_261F65C08(v78);
      OUTLINED_FUNCTION_7_3();
      v27 = OUTLINED_FUNCTION_72_1();
      sub_261F65D0C(v27);

      goto LABEL_11;
    }

    v8 = v5[1];
    v7 = v5[2];
    v9 = v5[3];
    v10 = v5[4];
    if ((v6 & 0x100) == 0)
    {
      LOBYTE(__src[0]) = 1;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v11 = *(v0 + 296);
      v12 = *(v0 + 304);
      v13 = OUTLINED_FUNCTION_126();
      sub_261F7D45C(v13);
      v14 = MEMORY[0x277D84F90];
      v15 = OUTLINED_FUNCTION_172();
      v16 = OUTLINED_FUNCTION_172();
      sub_261FB5DF0(__src, v11, v12, 0, v8, v7, v9, v10, v14, v15, v16);

      v17 = OUTLINED_FUNCTION_126();
LABEL_5:
      sub_261F665E4(v17);
      goto LABEL_11;
    }

    if (*(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__userHasDeclinedPairing))
    {
      v28 = sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      if (OUTLINED_FUNCTION_149())
      {
        OUTLINED_FUNCTION_42_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_27_2();
        v29 = swift_slowAlloc();
        v78[0] = v29;
        OUTLINED_FUNCTION_137(4.8751e-34);
        sub_261F67FE4(v30, v31, v78);
        OUTLINED_FUNCTION_114();
        *(v9 + 4) = v3;
        OUTLINED_FUNCTION_50_1(&dword_261F5B000, v32, v33, "%{public}s: Automatically rejecting pairing request from host since user has already declined previous attempt");
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        v34 = OUTLINED_FUNCTION_9_2();
        MEMORY[0x266724180](v34);
        v35 = OUTLINED_FUNCTION_8_2();
        MEMORY[0x266724180](v35);
      }

      sub_261F9D610();
      OUTLINED_FUNCTION_19();
      swift_allocError();
      OUTLINED_FUNCTION_67_1();
      sub_261F9BCE0();
      OUTLINED_FUNCTION_140_0();
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v36 = *(v0 + 528);
      if (!v36)
      {
        if (qword_28108B5C8 != -1)
        {
          OUTLINED_FUNCTION_5_3();
        }

        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v36 = qword_28108B5D0;
      }

      OUTLINED_FUNCTION_128(v36);
      if (v38 ^ v39 | v37)
      {

        v28 = 0;
        v49 = 0xC000000000000000;
      }

      else
      {
        v49 = 0x4000000000000000;
      }

      memset(&__src[1], 0, 64);
      __src[0] = v28;
      __src[9] = v49;
      memset(&__src[10], 0, 17);
      sub_261FBA7C0(__src);
      memcpy(__dst, __src, sizeof(__dst));
      OUTLINED_FUNCTION_58_1();
      sub_261FABDA0(v50, v51, v52);
      memcpy(v78, __dst, 0x82uLL);
      sub_261FBA880(v78);
    }

    else
    {
      v40 = v5[5];
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      if (*(v0 + 312) != 1)
      {
        v53 = sub_26203A4AC();
        if (qword_28108B600 != -1)
        {
          OUTLINED_FUNCTION_0_11();
          swift_once();
        }

        if (os_log_type_enabled(qword_28108B610, v53))
        {
          OUTLINED_FUNCTION_42_1();
          v54 = swift_slowAlloc();
          OUTLINED_FUNCTION_30();
          v55 = swift_slowAlloc();
          v78[0] = v55;
          *v54 = 136446210;
          sub_261F666D8();
          sub_261F67FE4(v56, v57, v78);
          OUTLINED_FUNCTION_61_1();

          *(v54 + 4) = v4;
          OUTLINED_FUNCTION_171(&dword_261F5B000, v58, v59, "%{public}s: Not requesting user consent for pairing attempt as requireUserConsentForPairing is set to false");
          __swift_destroy_boxed_opaque_existential_0Tm(v55);
          v60 = OUTLINED_FUNCTION_16_3();
          MEMORY[0x266724180](v60);
          OUTLINED_FUNCTION_26();
          MEMORY[0x266724180]();
        }

        LOBYTE(__src[0]) = 1;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v61 = *(v0 + 296);
        v62 = *(v0 + 304);
        v63 = OUTLINED_FUNCTION_39_1();
        sub_261F7D45C(v63);
        v64 = MEMORY[0x277D84F90];
        v65 = OUTLINED_FUNCTION_110();
        v74 = OUTLINED_FUNCTION_110();
        OUTLINED_FUNCTION_153();
        OUTLINED_FUNCTION_89_0();
        sub_261FB5DF0(v66, v67, v68, v69, v70, v71, v72, v73, v64, v65, v74);

        v17 = OUTLINED_FUNCTION_39_1();
        goto LABEL_5;
      }

      v78[0] = v8;
      v78[1] = v7;
      memset(&v78[2], 0, 24);
      LOBYTE(v78[5]) = 3;
      sub_261F6B73C(v8, v7);
      sub_261F68720(v78);
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      sub_261F674BC(v0 + 320, v78, &qword_27FEF99A0, &qword_26203F7D8);
      if (v78[3])
      {
        sub_261F79740(v78, __src);
        sub_261F66E60(v78, &qword_27FEF99A0, &qword_26203F7D8);
        v41 = __src[4];
        __swift_project_boxed_opaque_existential_0Tm(__src, __src[3]);
        v42 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData);
        v43 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData + 8);
        v75 = *(v41 + 24);

        v44 = OUTLINED_FUNCTION_155();
        sub_261F81D84(v44, v45);

        v46 = OUTLINED_FUNCTION_39_1();
        v75(v46);

        v47 = OUTLINED_FUNCTION_155();
        sub_261F6ADEC(v47, v48);

        __swift_destroy_boxed_opaque_existential_0Tm(__src);
      }

      else
      {
        sub_261F66E60(v78, &qword_27FEF99A0, &qword_26203F7D8);
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_31_0();
}

void sub_261FB2A68()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_35_1();
  if ((v5 & 0x8000) == 0)
  {
    v6 = v0;
    if (HIBYTE(v5) == 2 || (v5 & 0x1000000) == 0)
    {
      OUTLINED_FUNCTION_31_2();
      v78[3] = v28;
      v29 = 0xD000000000000025;
    }

    else
    {
      v7 = v3;
      v1 = *(v4 + 8);
      v2 = *(v4 + 16);
      v8 = *(v0 + 224);
      __swift_project_boxed_opaque_existential_0Tm((v0 + 192), *(v0 + 216));
      v9 = *(v8 + 16);
      v10 = OUTLINED_FUNCTION_126();
      if (v11(v10))
      {
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        if (*(v0 + 168) == 4 && *(v0 + 128) == 5)
        {
          OUTLINED_FUNCTION_22_3(*(v0 + 152), *(v0 + 136));
          if (!v12)
          {
            OUTLINED_FUNCTION_7_2();
            swift_beginAccess();
            sub_261F674BC(v0 + 320, v79, &qword_27FEF99A0, &qword_26203F7D8);
            v13 = v80;
            if (v80)
            {
              v14 = v81;
              v15 = __swift_project_boxed_opaque_existential_0Tm(v79, v80);
              v75 = v70;
              v16 = *(v13 - 8);
              v17 = *(v16 + 64);
              MEMORY[0x28223BE20](v15);
              v19 = &v70[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
              (*(v16 + 16))(v19);
              sub_261F66E60(v79, &qword_27FEF99A0, &qword_26203F7D8);
              v20 = *(v14 + 48);
              v21 = OUTLINED_FUNCTION_126();
              v22(v21);
              (*(v16 + 8))(v19, v13);
              v23 = v78[2];
              if (v78[2])
              {
                v24 = v78[0];
                if (v78[0])
                {
                  if ((v7 & 1) == 0)
                  {
                    v75 = v78[1];
                    v25 = &unk_287489208;
LABEL_29:
                    v40 = sub_26203A4AC();
                    if (qword_28108B600 != -1)
                    {
                      OUTLINED_FUNCTION_0_11();
                      swift_once();
                    }

                    v74 = qword_28108B610;
                    if (os_log_type_enabled(qword_28108B610, v40))
                    {
                      OUTLINED_FUNCTION_42_1();
                      v41 = swift_slowAlloc();
                      v73 = v25;
                      v42 = v41;
                      OUTLINED_FUNCTION_30();
                      v72 = swift_slowAlloc();
                      v78[0] = v72;
                      *v42 = 136315138;
                      LOBYTE(v77[0]) = v24 & 1;
                      v43 = sub_26203A20C();
                      v71 = v40;
                      v45 = sub_261F67FE4(v43, v44, v78);

                      *(v42 + 4) = v45;
                      _os_log_impl(&dword_261F5B000, v74, v71, "Host approved for promptless pairing of type %s.", v42, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0Tm(v72);
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                      v25 = v73;
                      OUTLINED_FUNCTION_26();
                      MEMORY[0x266724180]();
                    }

                    if (v7)
                    {
                      v46 = 3;
                    }

                    else
                    {
                      v46 = 2;
                    }

                    LOBYTE(v77[0]) = v46;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A98, &unk_2620402F0);
                    v47 = swift_allocObject();
                    *(v47 + 16) = xmmword_26203E9E0;
                    OUTLINED_FUNCTION_31_2();
                    v78[0] = 0xD00000000000001DLL;
                    v78[1] = v48;
                    v49 = MEMORY[0x277D837D0];
                    sub_26203A79C();
                    *(v47 + 96) = v49;
                    *(v47 + 72) = v75;
                    *(v47 + 80) = v23;
                    v50 = sub_26203A0FC();
                    v69 = sub_26203A0FC();
                    OUTLINED_FUNCTION_7_2();
                    OUTLINED_FUNCTION_89_0();
                    sub_261FB5DF0(v51, v52, v53, v54, v55, v56, v57, v58, v25, v69, v50);

                    goto LABEL_20;
                  }
                }

                else if (v7)
                {
                  v75 = v78[1];
                  v25 = &unk_2874891D8;
                  goto LABEL_29;
                }

                sub_261F9BCE0();
                OUTLINED_FUNCTION_135();
                sub_26203AD0C();
                v76[0] = v77[0];
                v76[1] = v77[1];
                OUTLINED_FUNCTION_53_1();
                sub_26203AD4C();
                v59 = v78[0];
                v60 = v78[1];
                sub_261F9D610();
                OUTLINED_FUNCTION_13_1();
                v37 = swift_allocError();
                *v61 = v59;
                v61[1] = v60;
                OUTLINED_FUNCTION_7_2();
                swift_beginAccess();
                v39 = *(v6 + 528);
                if (v39)
                {
                  goto LABEL_40;
                }

                if (qword_28108B5C8 == -1)
                {
                  goto LABEL_39;
                }

                goto LABEL_44;
              }
            }

            else
            {
              sub_261F66E60(v79, &qword_27FEF99A0, &qword_26203F7D8);
            }

            sub_261F9BCE0();
            OUTLINED_FUNCTION_135();
            sub_26203AD0C();
            v76[0] = v77[0];
            v76[1] = v77[1];
            OUTLINED_FUNCTION_53_1();
            sub_26203AD4C();
            v35 = v78[0];
            v36 = v78[1];
            sub_261F9D610();
            OUTLINED_FUNCTION_13_1();
            v37 = swift_allocError();
            *v38 = v35;
            v38[1] = v36;
            OUTLINED_FUNCTION_7_2();
            swift_beginAccess();
            v39 = *(v6 + 528);
            if (v39)
            {
LABEL_40:
              OUTLINED_FUNCTION_128(v39);
              if (v63 ^ v64 | v62)
              {

                v37 = 0;
                v65 = 0xC000000000000000;
              }

              else
              {
                v65 = 0x4000000000000000;
              }

              memset(&v77[1], 0, 64);
              v77[0] = v37;
              v77[9] = v65;
              memset(&v77[10], 0, 17);
              sub_261FBA7C0(v77);
              memcpy(v76, v77, 0x82uLL);
              OUTLINED_FUNCTION_58_1();
              sub_261FABDA0(v66, v67, v68);
              memcpy(v78, v76, 0x82uLL);
              sub_261FBA880(v78);
              goto LABEL_20;
            }

            if (qword_28108B5C8 == -1)
            {
LABEL_39:
              OUTLINED_FUNCTION_7_2();
              swift_beginAccess();
              v39 = qword_28108B5D0;
              goto LABEL_40;
            }

LABEL_44:
            OUTLINED_FUNCTION_5_3();
            goto LABEL_39;
          }
        }

        OUTLINED_FUNCTION_31_2();
        v78[3] = v34;
        v29 = 0xD000000000000046;
      }

      else
      {
        OUTLINED_FUNCTION_31_2();
        v78[3] = v33;
        v29 = 0xD00000000000003CLL;
      }
    }

    v78[0] = v29;
    v78[1] = v27;
    LOBYTE(v78[4]) = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    v30 = swift_allocError();
    OUTLINED_FUNCTION_77_0(v30, v31);
    LOBYTE(v77[0]) = v32;
    ControlChannelConnectionError.Message.format(code:)(v77);
    OUTLINED_FUNCTION_129();
    sub_261F65C08(v78);
    OUTLINED_FUNCTION_38_1();
    *(v2 + 56) = 0;
    sub_261F65D0C(v1);

LABEL_20:
    OUTLINED_FUNCTION_31_0();
    return;
  }

  sub_26203A48C();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  OUTLINED_FUNCTION_31_0();

  sub_26203969C();
}

void sub_261FB3208()
{
  OUTLINED_FUNCTION_96();
  v4 = v0;
  v6 = *v5;
  v7 = (v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData);
  v8 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__mdmChallengeData + 8);
  if (v8 >> 60 != 15)
  {
    v102[0] = *v7;
    v102[1] = v8;
    v9 = OUTLINED_FUNCTION_111();
    sub_261F6B73C(v9, v10);
    v11 = OUTLINED_FUNCTION_111();
    if (MEMORY[0x266721A20](v11) < 0)
    {
      __break(1u);
LABEL_42:
      OUTLINED_FUNCTION_0_11();
      swift_once();
LABEL_6:
      v13 = qword_28108B610;
      if (os_log_type_enabled(qword_28108B610, v3))
      {
        OUTLINED_FUNCTION_57_1();
        v14 = swift_slowAlloc();
        OUTLINED_FUNCTION_56();
        v102[0] = swift_slowAlloc();
        *v14 = 136446466;
        sub_261F666D8();
        OUTLINED_FUNCTION_184(v15, v16);
        OUTLINED_FUNCTION_70();

        *(v14 + 4) = v1;
        *(v14 + 12) = 2080;
        __src[0] = v6;
        sub_261FBC684(v6);
        v17 = sub_26203A20C();
        OUTLINED_FUNCTION_184(v17, v18);
        OUTLINED_FUNCTION_70();

        *(v14 + 14) = v1;
        _os_log_impl(&dword_261F5B000, v13, v3, "%{public}s: Received pairing consent collection outcome: %s", v14, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      switch(v6)
      {
        case 0uLL:
        case 2uLL:
          LOBYTE(v102[0]) = 1;
          sub_261F6B73C(v97, v98);
          v19 = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_47();
          v20 = sub_26203A0FC();
          OUTLINED_FUNCTION_47();
          v93 = sub_26203A0FC();
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_89_0();
          sub_261FB5DF0(v21, v22, v23, v24, v25, v26, v27, v28, v19, v20, v93);
          OUTLINED_FUNCTION_12_1();
          sub_261F68B30(v97, v98, v99, v95, v96, 3, sub_261F99050, sub_261F6ADEC, v29);

          sub_261F68B30(v97, v98, v99, v95, v96, 3, sub_261F99050, sub_261F6ADEC, v19);
          goto LABEL_40;
        case 1uLL:
          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          v37 = *(v0 + 528);
          if (!v37 || (OUTLINED_FUNCTION_128(v37), v38 ^ v39))
          {
            v40 = sub_26203A47C();
            if (os_log_type_enabled(v13, v40))
            {
              OUTLINED_FUNCTION_42_1();
              v41 = swift_slowAlloc();
              OUTLINED_FUNCTION_30();
              v42 = swift_slowAlloc();
              v102[0] = v42;
              *v41 = 136446210;
              sub_261F666D8();
              OUTLINED_FUNCTION_184(v43, v44);
              OUTLINED_FUNCTION_114();
              *(v41 + 4) = v0;
              _os_log_impl(&dword_261F5B000, v13, v40, "%{public}s: Not sending awaitingUserConsent message to host as its supported wire protocol is too old", v41, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v42);
              OUTLINED_FUNCTION_26();
              MEMORY[0x266724180]();
              OUTLINED_FUNCTION_26();
              MEMORY[0x266724180]();
            }

            OUTLINED_FUNCTION_1_9();
            v85 = v97;
            v86 = v98;
            v87 = v99;
            v88 = v95;
            v89 = v96;
          }

          else
          {
            memset(&v102[1], 0, 64);
            v102[0] = 3;
            v102[9] = 0xC000000000000000;
            memset(&v102[10], 0, 17);
            sub_261FBA7C0(v102);
            memcpy(__src, v102, 0x82uLL);
            OUTLINED_FUNCTION_58_1();
            sub_261FABDA0(v82, v83, v84);
            OUTLINED_FUNCTION_1_9();
            v85 = v97;
            v86 = v98;
            v87 = v99;
            v88 = v95;
            v89 = v96;
          }

          sub_261F68B30(v85, v86, v87, v88, v89, 3, sub_261F99050, sub_261F6ADEC, v90);
          goto LABEL_40;
        case 3uLL:
          v45 = static Data.randomBytes(ofLength:)(0x400uLL);
          v47 = v46;
          v48 = *v7;
          v49 = v7[1];
          *v7 = v45;
          v7[1] = v46;
          sub_261F6B73C(v45, v46);
          v50 = OUTLINED_FUNCTION_47();
          sub_261F6ADEC(v50, v51);
          OUTLINED_FUNCTION_95();
          static RemotePairingError.managedConfigurationChallengeRequired(with:)(v45, v47);
          v52 = v102[1];
          sub_261F9D610();
          OUTLINED_FUNCTION_72_0();
          v53 = swift_allocError();
          *v54 = v102[0];
          v54[1] = v52;
          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          v55 = *(v4 + 528);
          if (v55)
          {
            OUTLINED_FUNCTION_128(v55);
            if (!(v38 ^ v39 | v56))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if (qword_28108B5C8 != -1)
            {
              OUTLINED_FUNCTION_5_3();
            }

            OUTLINED_FUNCTION_7_2();
            swift_beginAccess();
            OUTLINED_FUNCTION_128(qword_28108B5D0);
            if (!(v38 ^ v39 | v56))
            {
              goto LABEL_37;
            }
          }

          v53 = 0;
LABEL_37:
          *&v71 = OUTLINED_FUNCTION_55_1();
          *&__src[5] = v71;
          *&__src[7] = v71;
          __src[0] = v53;
          __src[9] = v72;
          memset(&__src[10], 0, 17);
          sub_261FBA7C0(__src);
          memcpy(__dst, __src, sizeof(__dst));
          OUTLINED_FUNCTION_58_1();
          sub_261FABDA0(v73, v74, v75);
          OUTLINED_FUNCTION_1_9();
          OUTLINED_FUNCTION_145(v76, v77, v78, v79, v80, v81, sub_261F99050, sub_261F6ADEC, v90, v91, v92, v94, v95, v96, v97, v98);
          sub_261F6BFFC(v45, v47);
          goto LABEL_38;
        default:
          sub_261F9BCE0();
          sub_26203AD3C();
          __src[0] = v102[0];
          __src[1] = v102[1];
          v57 = sub_2620399BC();

          if (v57)
          {
            *(v0 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__userHasDeclinedPairing) = 1;
          }

          OUTLINED_FUNCTION_95();
          OUTLINED_FUNCTION_7_2();
          swift_beginAccess();
          v58 = *(v0 + 528);
          if (!v58)
          {
            if (qword_28108B5C8 != -1)
            {
              OUTLINED_FUNCTION_5_3();
            }

            OUTLINED_FUNCTION_7_2();
            swift_beginAccess();
            v58 = qword_28108B5D0;
          }

          if (*(v58 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) >= 11)
          {
            v59 = v6;
          }

          else
          {
            v6 = 0;
          }

          *&v60 = OUTLINED_FUNCTION_55_1();
          *&__src[5] = v60;
          *&__src[7] = v60;
          __src[0] = v6;
          __src[9] = v61;
          memset(&__src[10], 0, 17);
          sub_261FBA7C0(__src);
          memcpy(__dst, __src, sizeof(__dst));
          OUTLINED_FUNCTION_58_1();
          sub_261FABDA0(v62, v63, v64);
          OUTLINED_FUNCTION_1_9();
          OUTLINED_FUNCTION_145(v65, v66, v67, v68, v69, v70, sub_261F99050, sub_261F6ADEC, v90, v91, v92, v94, v95, v96, v97, v98);
LABEL_38:
          memcpy(v102, __dst, 0x82uLL);
          sub_261FBA880(v102);
          goto LABEL_40;
      }
    }

    sub_2620394BC();
    sub_261F6BFFC(v102[0], v102[1]);
    v8 = v7[1];
  }

  v12 = *v7;
  *v7 = xmmword_26203F730;
  sub_261F6ADEC(v12, v8);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v0 + 168) == 3)
  {
    v98 = *(v0 + 136);
    v99 = *(v0 + 144);
    v95 = *(v0 + 152);
    v96 = *(v0 + 160);
    v97 = *(v0 + 128);
    sub_261F6B73C(v97, v98);
    v3 = sub_26203A47C();
    if (qword_28108B600 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

  sub_26203A48C();
  if (qword_28108B600 != -1)
  {
    OUTLINED_FUNCTION_0_11();
    swift_once();
  }

  if (OUTLINED_FUNCTION_136())
  {
    OUTLINED_FUNCTION_42_1();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_30();
    v31 = swift_slowAlloc();
    v102[0] = v31;
    *v30 = 136446210;
    sub_261F666D8();
    OUTLINED_FUNCTION_184(v32, v33);
    OUTLINED_FUNCTION_65();

    *(v30 + 4) = v2;
    OUTLINED_FUNCTION_29_4(&dword_261F5B000, v34, v35, "%{public}s: User responded to pairing prompt but we are no longer in correct state to handle response");
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    v36 = OUTLINED_FUNCTION_8_2();
    MEMORY[0x266724180](v36);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

LABEL_40:
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FB3AA0(void *a1)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v1 + 168) == 1)
  {
    __dst[0] = 5;
    memset(&__dst[1], 0, 32);
    LOBYTE(__dst[5]) = 4;
    sub_261F68720(__dst);
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v4 = *(v1 + 528);
    if (!v4)
    {
      if (qword_28108B5C8 != -1)
      {
        OUTLINED_FUNCTION_5_3();
      }

      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v4 = qword_28108B5D0;
    }

    if (*(v4 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue) >= 11)
    {
      v14 = a1;
      v5 = 0x4000000000000000;
    }

    else
    {
      a1 = 0;
      v5 = 0xC000000000000000;
    }

    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    *__src = a1;
    v32 = v5;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v15 = sub_261FBA7C0(__src);
    OUTLINED_FUNCTION_104(v15, v16, v17, v18, v19, v20, v21, v22, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15], v26[16], __src[0]);
    OUTLINED_FUNCTION_58_1();
    sub_261FABDA0(v23, v24, v25);
    memcpy(__dst, v26, 0x82uLL);
    sub_261FBA880(__dst);
    return [*(v1 + OBJC_IVAR____TtC19RemotePairingDevice24ControlChannelConnection__pairingSession) invalidate];
  }

  else
  {
    sub_26203A48C();
    if (qword_28108B600 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    result = OUTLINED_FUNCTION_136();
    if (result)
    {
      OUTLINED_FUNCTION_42_1();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v8 = swift_slowAlloc();
      __dst[0] = v8;
      *v7 = 136446210;
      sub_261F666D8();
      sub_261F67FE4(v9, v10, __dst);
      OUTLINED_FUNCTION_65();

      *(v7 + 4) = v2;
      OUTLINED_FUNCTION_29_4(&dword_261F5B000, v11, v12, "%{public}s: Received PIN display error from user interaction provider but we are no longer in valid state for PIN pairing");
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      v13 = OUTLINED_FUNCTION_8_2();
      MEMORY[0x266724180](v13);
      OUTLINED_FUNCTION_26();
      return MEMORY[0x266724180]();
    }
  }

  return result;
}

uint64_t sub_261FB3CC4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  memcpy((v14 + 24), a7, 0x92uLL);
  v15 = *a3;
  swift_beginAccess();
  sub_261F674BC((a5 + 45), &v47, &qword_27FEF99A8, &qword_26203F7E0);
  if (v48)
  {
    sub_261F797BC(&v47, v49);
    v16 = v51;
    v35 = v50;
    v38 = a4;
    __swift_project_boxed_opaque_existential_0Tm(v49, v50);
    v37 = a1;
    v17 = v14;
    v18 = a5[27];
    v19 = a5[28];
    __swift_project_boxed_opaque_existential_0Tm(a5 + 24, v18);
    v39 = a7;
    v36 = a2;
    v20 = *(v19 + 80);

    sub_261FBCBCC(a7, v44);
    LOBYTE(v18) = v20(v18, v19);
    LOBYTE(v44[0]) = v15;
    v21 = a5[29];
    v22 = swift_allocObject();
    v22[2] = sub_261FBCEA8;
    v22[3] = v17;
    v22[4] = a5;
    v23 = *(v16 + 8);

    v23(v18 & 1, v37, v36, v44, v38, a5, v21, sub_261FBCEB4, v22, v35, v16);
    a7 = v39;

    __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  else
  {

    sub_261FBCBCC(a7, v44);
    sub_261F66E60(&v47, &qword_27FEF99A8, &qword_26203F7E0);
    v44[3] = MEMORY[0x277D837D0];
    v44[0] = 0xD00000000000001FLL;
    v44[1] = 0x800000026204F110;
    LOBYTE(v44[4]) = 1;
    LOBYTE(v41[0]) = 3;
    v24 = ControlChannelConnectionError.Message.format(code:)(v41);
    sub_261F65C08(v44);
    LOBYTE(v45) = 3;
    *(&v45 + 1) = v24._countAndFlagsBits;
    *v46 = v24._object;
    memset(&v46[8], 0, 40);
    sub_261F65C5C();
    v25 = swift_allocError();
    v26 = *&v46[32];
    v28 = v45;
    v27 = *v46;
    v29[2] = *&v46[16];
    v29[3] = v26;
    *v29 = v28;
    v29[1] = v27;
    swift_beginAccess();
    v30 = a5[66];
    if (v30)
    {
      sub_261F65CB0(&v45, v44);
      v31 = v30;
    }

    else
    {
      sub_261F65CB0(&v45, v44);
      if (qword_28108B5C8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v31 = qword_28108B5D0;
      v30 = 0;
    }

    v32 = v30;
    sub_262017A84(v25, v31, __src);

    memcpy(__dst, __src, 0x7AuLL);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v33 = a7[1];
      memcpy(&v41[1], __dst, 0x7AuLL);
      v41[0] = v33;
      sub_261FBCE10(v41);
      memcpy(v40, v41, 0x82uLL);
      sub_261FBC710(__dst, v44);
      sub_261FABDA0(v40, 0, 1);

      memcpy(v44, v40, 0x82uLL);
      sub_261FBA880(v44);
    }

    sub_261F6A70C(&v45);
    sub_261FBA8E0(__dst);
  }

  return sub_261FBCC40(a7);
}

uint64_t sub_261FB4110(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (*(a1 + 40))
  {
    swift_beginAccess();
    v7 = *(a4 + 528);
    if (v7)
    {
      v8 = *(a4 + 528);
    }

    else
    {
      if (qword_28108B5C8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v8 = qword_28108B5D0;
      v7 = 0;
    }

    v12 = v7;
    sub_262017A84(v5, v8, __src);

    a2(__src);
    v11 = __src;
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 8);
    LOWORD(__src[0]) = *a1;
    *(&__src[0] + 1) = v10;
    __src[1] = *(a1 + 16);
    v14 = *&__src[1];
    *&__src[2] = v9;
    sub_261FBCEC0(__src);
    memcpy(__dst, __src, 0x7AuLL);
    sub_261F6B73C(v10, v14);

    a2(__dst);
    v11 = __dst;
  }

  memcpy(v17, v11, 0x7AuLL);
  return sub_261FBA8E0(v17);
}

uint64_t sub_261FB4280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_261FB5370(__src);
  memcpy(__dst, __src, 0x61uLL);
  memcpy(v11, __src, 0x61uLL);
  sub_261FBCE24(v11);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = *(a3 + 8);
    memcpy(&v8[1], v11, 0x7AuLL);
    v8[0] = v4;
    sub_261FBCE10(v8);
    memcpy(v7, v8, 0x82uLL);
    sub_261FBA7D0(__dst, v9);
    sub_261FABDA0(v7, 0, 1);

    memcpy(v9, v7, 0x82uLL);
    sub_261FBA880(v9);
  }

  sub_261FBA82C(__dst);

  return sub_261FBCC40(a3);
}

uint64_t sub_261FB44F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 120);
  v6 = MEMORY[0x277D837D0];
  if (v5)
  {
    v7 = v5;
    v8 = CUPairedPeer.remoteUnlockKey.getter();
    v10 = v9;

    if (v10 >> 60 != 15)
    {
      sub_261F6ADEC(v8, v10);
      v44[3] = v6;
      v44[0] = 0xD00000000000002FLL;
      v44[1] = 0x800000026204F180;
      LOBYTE(v44[4]) = 1;
      sub_261F65C5C();
      v12 = swift_allocError();
      v14 = v13;
      *v13 = 2;
      v43[0] = 2;
      v15 = ControlChannelConnectionError.Message.format(code:)(v43);
      sub_261F65C08(v44);
      *(v14 + 8) = v15;
      *(v14 + 24) = 0u;
      *(v14 + 40) = 0u;
      *(v14 + 7) = 0;
      swift_willThrow();
LABEL_10:
      sub_26203A48C();
      if (qword_28108B600 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AA0, &qword_262040540);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_26203E9E0;
      v44[0] = v12;
      v23 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v24 = sub_26203A20C();
      v26 = v25;
      *(v22 + 56) = v6;
      *(v22 + 64) = sub_261FBC69C();
      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      sub_26203969C();

      swift_beginAccess();
      v27 = *(a1 + 528);
      if (v27)
      {
        v28 = *(a1 + 528);
      }

      else
      {
        if (qword_28108B5C8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v28 = qword_28108B5D0;
        v27 = 0;
      }

      v29 = v27;
      sub_262017A84(v12, v28, __src);

      memcpy(__dst, __src, 0x7AuLL);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v30 = *(a3 + 8);
        memcpy(&v43[8], __dst, 0x7AuLL);
        *v43 = v30;
        sub_261FBCE10(v43);
        memcpy(v42, v43, 0x82uLL);
        sub_261FBC710(__dst, v44);
        sub_261FABDA0(v42, 0, 1);

        memcpy(v44, v42, 0x82uLL);
        sub_261FBA880(v44);
      }

      sub_261FBA8E0(__dst);
LABEL_20:

      return sub_261FBCC40(a3);
    }
  }

  type metadata accessor for RemoteUnlockKeypair();
  swift_allocObject();
  v11 = sub_26202950C();
  swift_beginAccess();
  sub_261F674BC(a1 + 440, v43, &qword_27FEF99B0, &qword_26203F7E8);
  if (*&v43[24])
  {
    sub_261F797BC(v43, v44);
    sub_2620299B8(v44);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
  }

  else
  {
    sub_261F66E60(v43, &qword_27FEF99B0, &qword_26203F7E8);
  }

  sub_26202966C();
  swift_beginAccess();
  v16 = v11[5];
  if (v16 >> 60 == 15 || (v17 = v11[4], swift_beginAccess(), v18 = v11[3], v18 >> 60 == 15))
  {
    v44[3] = v6;
    v44[0] = 0xD000000000000019;
    v44[1] = 0x800000026204F160;
    LOBYTE(v44[4]) = 1;
    sub_261F65C5C();
    v12 = swift_allocError();
    v20 = v19;
    *v19 = 3;
    v43[0] = 3;
    v21 = ControlChannelConnectionError.Message.format(code:)(v43);
    sub_261F65C08(v44);
    *(v20 + 8) = v21;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 7) = 0;
    swift_willThrow();

    goto LABEL_10;
  }

  v32 = *(a1 + 120);
  if (v32)
  {
    v33 = v11[2];
    sub_261F81D84(v17, v16);
    sub_261F81D84(v17, v16);
    v34 = v32;
    v40 = v33;
    v41 = v18;
    sub_261F81D84(v33, v18);
    CUPairedPeer.remoteUnlockKey.setter(v17, v16);

    swift_beginAccess();
    sub_261F79740(a1 + 400, __dst);
    v35 = __dst[4];
    __swift_project_boxed_opaque_existential_0Tm(__dst, __dst[3]);
    v36 = *(a1 + 120);
    if (v36)
    {
      v39 = *(v35 + 24);
      v37 = v36;
      v39();

      __swift_destroy_boxed_opaque_existential_0Tm(__dst);
      __src[0] = v40;
      __src[1] = v41;
      sub_261FBCFB8(__src);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v38 = *(a3 + 8);
        memcpy(&v43[8], __src, 0x7AuLL);
        *v43 = v38;
        sub_261FBCE10(v43);
        memcpy(v42, v43, 0x82uLL);
        sub_261F81D84(v40, v41);
        sub_261F6B73C(v40, v41);
        sub_261FABDA0(v42, 0, 1);

        memcpy(v44, v42, 0x82uLL);
        sub_261FBA880(v44);
        sub_261F6ADEC(v40, v41);
      }

      sub_2620295C4();
      sub_261F6ADEC(v40, v41);
      sub_261F6ADEC(v17, v16);

      goto LABEL_20;
    }
  }

  else
  {

    sub_261FBCC40(a3);
    __break(1u);
  }

  result = sub_261FBCC40(a3);
  __break(1u);
  return result;
}

uint64_t sub_261FB4C2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a3 + 120);
  if (v9)
  {
    type metadata accessor for RemoteUnlockKeypair();
    v10 = v9;
    v11 = CUPairedPeer.remoteUnlockKey.getter();
    v13 = v12;

    sub_261F6B73C(a1, a2);
    sub_262028B90(a1, a2, v11, v13);
    swift_beginAccess();
    sub_261F674BC(a3 + 440, v17, &qword_27FEF99B0, &qword_26203F7E8);
    if (*&v17[24])
    {
      sub_261F797BC(v17, v18);
      sub_2620299B8(v18);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
    }

    else
    {
      sub_261F66E60(v17, &qword_27FEF99B0, &qword_26203F7E8);
    }

    sub_26202978C();
    sub_2620295C4();
    sub_261FBCFC4(__src);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v14 = *(a5 + 8);
      memcpy(&v17[8], __src, 0x7AuLL);
      *v17 = v14;
      sub_261FBCE10(v17);
      memcpy(__dst, v17, 0x82uLL);
      sub_261FABDA0(__dst, 0, 1);

      memcpy(v18, __dst, 0x82uLL);
      sub_261FBA880(v18);
    }

    return sub_261FBCC40(a5);
  }

  else
  {

    result = sub_261FBCC40(a5);
    __break(1u);
  }

  return result;
}