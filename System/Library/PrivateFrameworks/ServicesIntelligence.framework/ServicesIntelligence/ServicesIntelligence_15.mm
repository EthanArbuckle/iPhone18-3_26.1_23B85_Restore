uint64_t sub_230E3A2CC(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_230E49E88(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_230E6701C(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_230E49E88((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_230D912FC();
  *v1 = v4;
  return result;
}

uint64_t sub_230E3A588(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_230E4A9C4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Treatment();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_230E3A6B4(uint64_t result)
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

  result = sub_230E4AB9C(result, v12, 1, v3);
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

uint64_t sub_230E3A7A0(uint64_t a1, char *a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v16 = *a2;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_230D1BF00;

  return sub_230E37CA0(a1, v16, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_230E3A898(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v16 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v16;
  *(v8 + 48) = *(a2 + 32);
  v17 = swift_task_alloc();
  *(v8 + 56) = v17;
  *v17 = v8;
  v17[1] = sub_230E3A994;

  return sub_230E388F0(a1, v8 + 16, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_230E3A994()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_230E3AA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_230D65D5C;

  return sub_230E075CC(a2, a3, a4, a5);
}

uint64_t sub_230E3AB40(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = sub_230E68D80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v54 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v54 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v54 - v24;
  if (a2)
  {
    sub_230E68D70();
    v26 = sub_230E68D60();
    v27 = sub_230E693E0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_230D02000, v26, v27, "[ServicesIntelligenceProvider][processConfiguration] First-time setup detected, proceeding with sync", v28, 2u);
      MEMORY[0x23191EAE0](v28, -1, -1);
    }

    (*(v9 + 8))(v25, v8);
    return 1;
  }

  v29 = *(a3 + 40);
  if (v29 > a1)
  {
    sub_230E68D70();
    sub_230E1E0EC(a3, v58);
    v30 = sub_230E68D60();
    v31 = sub_230E693E0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      *(v32 + 4) = a1;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v29;
      sub_230D814C8(a3);
      _os_log_impl(&dword_230D02000, v30, v31, "[ServicesIntelligenceProvider][processConfiguration] New version available (%ld → %ld), proceeding with sync", v32, 0x16u);
      MEMORY[0x23191EAE0](v32, -1, -1);
    }

    else
    {
      sub_230D814C8(a3);
    }

    (*(v9 + 8))(v22, v8);
    return 1;
  }

  v33 = 0xEC000000676E697ALL;
  v34 = 0x696C616974696E69;
  v57 = v8;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
LABEL_26:

LABEL_27:
      sub_230E68D70();
      v42 = sub_230E68D60();
      v43 = sub_230E693E0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v58[0] = v45;
        *v44 = 136315138;
        v46 = 0xE800000000000000;
        v47 = 0xE500000000000000;
        v48 = 0x726F727265;
        if (a4 == 2)
        {
          v48 = 0x6465646172676564;
        }

        else
        {
          v46 = 0xE500000000000000;
        }

        v49 = 0x7964616572;
        if (!a4)
        {
          v49 = 0x696C616974696E69;
          v47 = 0xEC000000676E697ALL;
        }

        if (a4 <= 1u)
        {
          v50 = v49;
        }

        else
        {
          v50 = v48;
        }

        if (a4 <= 1u)
        {
          v51 = v47;
        }

        else
        {
          v51 = v46;
        }

        v52 = sub_230D7E620(v50, v51, v58);

        *(v44 + 4) = v52;
        _os_log_impl(&dword_230D02000, v42, v43, "[ServicesIntelligenceProvider][processConfiguration] System status is %s, proceeding with recovery sync", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x23191EAE0](v45, -1, -1);
        MEMORY[0x23191EAE0](v44, -1, -1);

        (*(v9 + 8))(v18, v57);
      }

      else
      {

        (*(v9 + 8))(v18, v8);
      }

      return 1;
    }

    v56 = v29;
  }

  else
  {
    v56 = v29;
  }

  v35 = sub_230E698C0();

  v8 = v57;
  if (v35)
  {
    goto LABEL_27;
  }

  if (a4 > 2u)
  {
    goto LABEL_26;
  }

  v36 = sub_230E698C0();

  v8 = v57;
  if (v36)
  {
    goto LABEL_27;
  }

  sub_230E68D70();
  sub_230E1E0EC(a3, v58);
  v37 = sub_230E68D60();
  v38 = sub_230E693E0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58[0] = v55;
    *v39 = 134218498;
    *(v39 + 4) = v56;
    sub_230D814C8(a3);
    *(v39 + 12) = 2048;
    *(v39 + 14) = a1;
    *(v39 + 22) = 2080;
    if (a4)
    {
      if (a4 == 1)
      {
        v34 = 0x7964616572;
      }

      else
      {
        v34 = 0x6465646172676564;
      }

      if (a4 == 1)
      {
        v33 = 0xE500000000000000;
      }

      else
      {
        v33 = 0xE800000000000000;
      }
    }

    v40 = sub_230D7E620(v34, v33, v58);

    *(v39 + 24) = v40;
    _os_log_impl(&dword_230D02000, v37, v38, "[ServicesIntelligenceProvider][processConfiguration] Version %ld ≤ current %ld and system status is %s, skipping update", v39, 0x20u);
    v41 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x23191EAE0](v41, -1, -1);
    MEMORY[0x23191EAE0](v39, -1, -1);

    (*(v9 + 8))(v14, v57);
  }

  else
  {
    sub_230D814C8(a3);

    (*(v9 + 8))(v14, v8);
  }

  return 0;
}

uint64_t sub_230E3B334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_230E3B394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_230E3B450(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  v8 = *(v1 + 48);
  v9 = *(v1 + 24);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_230D1BF00;

  return sub_230E1E2D4(a1, v4, v9, v5, v6, v7, v8);
}

uint64_t sub_230E3B58C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D8A8, &qword_230E7F1D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230E3B5FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 49);
  v10 = *(v1 + 48);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_230D1D2F8;

  return sub_230E39550(a1, v4, v11, v5, v6, v10, v9, v7);
}

void sub_230E3B6F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 64);
  v11 = *(v0 + 56);
  v6 = *(v0 + 49);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_230D1D2F8;

  JUMPOUT(0x230E3A898);
}

void sub_230E3B7F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 64);
  v11 = *(v0 + 56);
  v6 = *(v0 + 49);
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_230D1D2F8;

  JUMPOUT(0x230E3A7A0);
}

uint64_t sub_230E3B8F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230E3B96C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_230D1D2F8;

  return sub_230E3AA88(a1, v4, v5, v7, v6);
}

uint64_t static SystemDatabase.storeDatabaseConfiguration<A>(_:type:identifier:using:requestContext:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;
  *(v7 + 96) = a1;
  *(v7 + 104) = a4;
  *(v7 + 233) = *a2;
  *(v7 + 234) = *a3;
  v8 = *(a3 + 16);
  *(v7 + 128) = *(a3 + 8);
  *(v7 + 136) = v8;
  *(v7 + 235) = *(a3 + 24);
  v9 = *(a5 + 16);
  *(v7 + 144) = *a5;
  *(v7 + 160) = v9;
  *(v7 + 176) = *(a5 + 32);
  return MEMORY[0x2822009F8](sub_230E3BA94, 0, 0);
}

uint64_t sub_230E3BA94()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v17 = v0 + 16;
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 192) = v1;
    *(v0 + 200) = v3;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 235);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 234);
    v10 = *(v0 + 233);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    v13 = swift_task_alloc();
    *(v0 + 208) = v13;
    *(v13 + 16) = *(v0 + 112);
    *(v13 + 32) = v11;
    *(v13 + 40) = v9;
    *(v13 + 48) = v8;
    *(v13 + 56) = v7;
    *(v13 + 64) = v6;
    *(v13 + 65) = v10;
    *(v13 + 72) = v12;
    *(v13 + 80) = v17;
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_230E3BF64;

    return sub_230D12EB8(sub_230D12EB8, 45, v17, &unk_230E7F350, v13);
  }

  else
  {
    *(v0 + 232) = 45;
    v16 = swift_task_alloc();
    *(v0 + 184) = v16;
    *v16 = v0;
    v16[1] = sub_230E3BCC8;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 232), 0, 0);
  }
}

uint64_t sub_230E3BCC8()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_230E3BDC4, 0, 0);
}

uint64_t sub_230E3BDC4()
{
  *(v0 + 16) = *(v0 + 56);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 81);
  v5 = *(v0 + 88);
  *(v0 + 192) = v2;
  *(v0 + 200) = v5;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 41) = v4;
  *(v0 + 48) = v5;
  sub_230D0585C(v10, v8, v9);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 235);
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 234);
  v15 = *(v0 + 233);
  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  v18 = swift_task_alloc();
  *(v0 + 208) = v18;
  *(v18 + 16) = *(v0 + 112);
  *(v18 + 32) = v16;
  *(v18 + 40) = v14;
  *(v18 + 48) = v13;
  *(v18 + 56) = v12;
  *(v18 + 64) = v11;
  *(v18 + 65) = v15;
  *(v18 + 72) = v17;
  *(v18 + 80) = v0 + 16;
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  v19[1] = sub_230E3BF64;

  return (sub_230D12EB8)();
}

uint64_t sub_230E3BF64()
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v6 = sub_230E3C0D4;
  }

  else
  {
    v6 = sub_230D63F54;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230E3C0EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 624) = v15;
  *(v8 + 608) = v14;
  *(v8 + 600) = a8;
  *(v8 + 722) = a7;
  *(v8 + 721) = a6;
  *(v8 + 592) = a5;
  *(v8 + 584) = a4;
  *(v8 + 720) = a3;
  *(v8 + 576) = a2;
  v9 = sub_230E68910();
  *(v8 + 632) = v9;
  v10 = *(v9 - 8);
  *(v8 + 640) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 648) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E3C1D8, 0, 0);
}

uint64_t sub_230E3C1D8()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  v7 = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v10 = *(v0 + 624);
  v11 = *(v0 + 616);
  v12 = *(v0 + 576);
  v13 = sub_230E686F0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_230E686E0();
  v16 = *(v10 + 16);
  v17 = sub_230E686D0();
  *(v0 + 656) = v17;
  *(v0 + 664) = v18;
  LOBYTE(v12) = *(v0 + 721);
  v19 = *(v0 + 592);
  v20 = *(v0 + 584);
  v21 = *(v0 + 720);
  v22 = v17;
  v37 = v18;

  v23 = DatabaseIdentifier.stringRepresentation()();
  *(v0 + 672) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v40 = swift_allocObject();
  *(v0 + 688) = v40;
  *(v40 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v23;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v25 = *&aLanguagesecuri_0[8 * v21 + 16];
  v26 = *(v0 + 722);
  *(inited + 88) = *&aInternalapps_0[8 * v21];
  *(inited + 96) = v25;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v27 = qword_230E7F410[v26];
  v28 = qword_230E7F428[v26];
  v29 = *(v0 + 624);
  v36 = *(v0 + 616);
  v38 = *(v0 + 608);
  v39 = *(v0 + 600);
  v30 = *(v0 + 592);
  v31 = *(v0 + 584);
  v35 = *(v0 + 576);
  *(inited + 128) = v27;
  *(inited + 136) = v28;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = v31;
  *(inited + 176) = v30;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = v22;
  *(inited + 256) = v37;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = xmmword_230E7F100;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  v32 = *(v29 + 32);

  sub_230D0DD0C(v22, v37);
  v32(v36, v29);
  *(inited + 328) = 0x6365746F72706E75;
  *(inited + 336) = 0xEB00000000646574;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = xmmword_230E6E720;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v5;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v5;
  *(inited + 456) = 0;
  *(inited + 464) = 2;
  v33 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v40 + 32) = v33;
  *(v0 + 696) = sub_230E1CA68(&unk_2845A6640);
  swift_arrayDestroy();
  sub_230D1CDE0(v38, v0 + 488);
  v7 = sub_230E3C714;
  v8 = v39;
  v9 = 0;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_230E3C714()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[75];
  sub_230D1CDE0(v0[76], (v0 + 66));

  v4 = swift_task_alloc();
  v0[88] = v4;
  *v4 = v0;
  v4[1] = sub_230E3C83C;
  v5 = v0[86];
  v6 = v0[76];
  v8 = v0[75];

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E3C83C()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v4 = *v1;
  *(*v1 + 712) = v0;

  v5 = *(v2 + 608);
  v6 = *(v2 + 600);
  sub_230D1CE3C(v5);
  if (v0)
  {
    v7 = sub_230E3CC8C;
  }

  else
  {
    v7 = sub_230E3C984;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E3C984()
{
  v1 = v0[87];
  v2 = v0[86];
  sub_230D1CE3C(v0[76]);

  return MEMORY[0x2822009F8](sub_230E3CA20, 0, 0);
}

uint64_t sub_230E3CA20()
{
  v25 = v0;
  v1 = *(v0 + 568);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 680);
  v3 = sub_230E68D80();
  __swift_project_value_buffer(v3, qword_27DB80BC0);

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v23 = v1;
    v6 = *(v0 + 722);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315650;
    v9 = 0xE600000000000000;
    v10 = 0x524F54434556;
    if (v6 != 1)
    {
      v10 = 22091;
      v9 = 0xE200000000000000;
    }

    if (v6)
    {
      v11 = v10;
    }

    else
    {
      v11 = 5001555;
    }

    if (v6)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    v13 = *(v0 + 680);
    v14 = *(v0 + 672);
    v22 = *(v0 + 664);
    v15 = *(v0 + 656);
    v16 = sub_230D7E620(v11, v12, &v24);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2080;
    v17 = sub_230D7E620(v14, v13, &v24);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2048;
    *(v7 + 24) = v23;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][storeDatabaseConfiguration] Upserted %s database config: %s, processed: %lld", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
    sub_230D0F4A8(v15, v22);
  }

  else
  {
    v18 = *(v0 + 680);
    sub_230D0F4A8(*(v0 + 656), *(v0 + 664));
  }

  v19 = *(v0 + 648);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_230E3CC8C()
{
  v1 = *(v0 + 680);
  sub_230D1CE3C(*(v0 + 608));

  return MEMORY[0x2822009F8](sub_230E3CD00, 0, 0);
}

uint64_t sub_230E3CD00()
{
  v1 = v0[87];
  v2 = v0[86];
  sub_230D0F4A8(v0[82], v0[83]);

  v3 = v0[89];
  v4 = v0[81];

  v5 = v0[1];

  return v5();
}

uint64_t sub_230E3CDA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 80);
  v16 = *(v1 + 72);
  v9 = *(v1 + 65);
  v10 = *(v1 + 64);
  v11 = *(v1 + 40);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_230D1BF00;

  return sub_230E3C0EC(a1, v5, v11, v6, v7, v10, v9, v16);
}

uint64_t sub_230E3CEA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 504) = a1;
  v3 = *(a2 + 16);
  *(v2 + 512) = *a2;
  *(v2 + 528) = v3;
  *(v2 + 544) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E3CED4, 0, 0);
}

uint64_t sub_230E3CED4()
{
  v1 = *(v0 + 544);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  v8 = *(v0 + 528);
  v9 = *(v0 + 512);
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000230E81B30;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xD000000000000012;
  *(v0 + 96) = 0x8000000230E84E30;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  v2 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v2;
  *(v0 + 232) = *(v0 + 112);
  v3 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v3;
  v4 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 128) = 1;
  *(v0 + 248) = 1;
  *(v0 + 184) = v4;
  *(v0 + 456) = v9;
  *(v0 + 472) = v8;
  *(v0 + 488) = v1;
  v5 = swift_task_alloc();
  *(v0 + 552) = v5;
  *v5 = v0;
  v5[1] = sub_230E3D044;
  v6 = *(v0 + 504);

  return sub_230D3ED1C(v0 + 496, v0 + 136, v0 + 456);
}

uint64_t sub_230E3D044()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v6 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = sub_230E3D328;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v4 = sub_230E3D160;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_230E3D160()
{
  v1 = *(v0 + 496);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v2 - 1;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v3 = v6 + 1;
        v7 = *(v1 + 32 + 8 * v6);

        sub_230E67C98(v8, (v0 + 360));
        v16 = *(v0 + 392);
        v17 = *(v0 + 408);
        v18 = *(v0 + 424);
        v19 = *(v0 + 440);
        v14 = *(v0 + 360);
        v15 = *(v0 + 376);

        if (*(v0 + 368))
        {
          break;
        }

        ++v6;
        if (v2 == v3)
        {
          goto LABEL_15;
        }
      }

      v13 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_230E4AC90(0, *(v5 + 2) + 1, 1, v5);
      }

      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      if (v10 >= v9 >> 1)
      {
        v5 = sub_230E4AC90((v9 > 1), v10 + 1, 1, v5);
      }

      *(v5 + 2) = v10 + 1;
      v11 = &v5[96 * v10];
      *(v11 + 3) = v15;
      *(v11 + 6) = v18;
      *(v11 + 7) = v19;
      *(v11 + 4) = v16;
      *(v11 + 5) = v17;
      *(v11 + 2) = v14;
      v4 = v13;
    }

    while (v13 != v6);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v12 = *(v0 + 8);

  v12(v5);
}

uint64_t sub_230E3D328()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 560);

  return v1();
}

uint64_t sub_230E3D38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 592) = a4;
  *(v5 + 584) = a3;
  *(v5 + 576) = a2;
  *(v5 + 568) = a1;
  v7 = sub_230E68860();
  *(v5 + 600) = v7;
  v8 = *(v7 - 8);
  *(v5 + 608) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 616) = swift_task_alloc();
  v10 = sub_230E68910();
  *(v5 + 624) = v10;
  v11 = *(v10 - 8);
  *(v5 + 632) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 640) = swift_task_alloc();
  v13 = *(a5 + 16);
  *(v5 + 648) = *a5;
  *(v5 + 664) = v13;
  *(v5 + 680) = *(a5 + 32);

  return MEMORY[0x2822009F8](sub_230E3D4CC, 0, 0);
}

uint64_t sub_230E3D4CC()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  result = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v20 = *(v0 + 680);
  v8 = *(v0 + 584);
  v9 = *(v0 + 576);
  v10 = *(v0 + 568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v11 = swift_allocObject();
  *(v0 + 688) = v11;
  *(v11 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  v18 = *(v0 + 664);
  v19 = *(v0 + 648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v10;
  *(inited + 56) = v9;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  *(inited + 88) = xmmword_230E7F330;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = xmmword_230E7F330;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = xmmword_230E7F330;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = xmmword_230E6E750;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  *(inited + 288) = xmmword_230E7F100;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = 0x6E776F6E6B6E75;
  *(inited + 336) = 0xE700000000000000;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;

  *(inited + 368) = sub_230E68820();
  *(inited + 376) = v13;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v5;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v5;
  *(inited + 456) = 0;
  *(inited + 464) = 2;
  v14 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v11 + 32) = v14;
  v15 = sub_230E1CA68(&unk_2845A51A8);
  *(v0 + 696) = v15;
  swift_arrayDestroy();
  *(v0 + 528) = 0xD000000000000012;
  *(v0 + 536) = 0x8000000230E81B30;
  *(v0 + 544) = v11;
  *(v0 + 552) = v15;
  *(v0 + 488) = v19;
  *(v0 + 504) = v18;
  *(v0 + 520) = v20;
  v16 = swift_task_alloc();
  *(v0 + 704) = v16;
  *v16 = v0;
  v16[1] = sub_230E3D918;
  v17 = *(v0 + 592);

  return sub_230D41CA0(v0 + 560, v0 + 528, v0 + 488);
}

uint64_t sub_230E3D918()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v8 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v4 = sub_230E3DCD0;
  }

  else
  {
    v5 = *(v2 + 696);
    v6 = *(v2 + 688);

    v4 = sub_230E3DA54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E3DA54()
{
  v28 = v0;
  v1 = v0[70];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[73];
  v6 = v0[72];
  v7 = sub_230E68D80();
  __swift_project_value_buffer(v7, qword_27DB80BC0);
  (*(v3 + 16))(v2, v5, v4);

  v8 = sub_230E68D60();
  v9 = sub_230E693F0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[75];
  if (v10)
  {
    v26 = v1;
    v14 = v0[72];
    v15 = v0[71];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_230D7E620(v15, v14, &v27);
    *(v16 + 12) = 2080;
    v18 = sub_230E68820();
    v20 = v19;
    (*(v12 + 8))(v11, v13);
    v21 = sub_230D7E620(v18, v20, &v27);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v26;
    _os_log_impl(&dword_230D02000, v8, v9, "[SystemDatabase][updateDatabaseFilePath] Updated file path for %s: %s, processed: %lld", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v17, -1, -1);
    MEMORY[0x23191EAE0](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[80];
  v23 = v0[77];

  v24 = v0[1];

  return v24();
}

uint64_t sub_230E3DCD0()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[80];
  v4 = v0[77];

  v5 = v0[1];
  v6 = v0[89];

  return v5();
}

uint64_t sub_230E3DD74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 584) = a4;
  *(v5 + 688) = a3;
  *(v5 + 576) = a2;
  *(v5 + 568) = a1;
  v7 = sub_230E68910();
  *(v5 + 592) = v7;
  v8 = *(v7 - 8);
  *(v5 + 600) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 608) = swift_task_alloc();
  v10 = *(a5 + 16);
  *(v5 + 616) = *a5;
  *(v5 + 632) = v10;
  *(v5 + 648) = *(a5 + 32);

  return MEMORY[0x2822009F8](sub_230E3DE58, 0, 0);
}

uint64_t sub_230E3DE58()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  result = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 688);
  v9 = *(v0 + 576);
  v10 = *(v0 + 568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v11 = swift_allocObject();
  *(v0 + 656) = v11;
  *(v11 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F0E0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v10;
  *(inited + 56) = v9;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  *(inited + 88) = xmmword_230E7F330;
  *(inited + 104) = 3;
  strcpy((inited + 112), "databaseType");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = xmmword_230E7F330;
  *(inited + 144) = 3;
  *(inited + 152) = 1701667182;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = xmmword_230E7F330;
  *(inited + 184) = 3;
  strcpy((inited + 192), "schemaVersion");
  *(inited + 206) = -4864;
  *(inited + 208) = xmmword_230E7F0F0;
  *(inited + 224) = 2;
  *(inited + 232) = 0x6144616D65686373;
  *(inited + 240) = 0xEA00000000006174;
  *(inited + 248) = xmmword_230E6E750;
  *(inited + 264) = 0;
  *(inited + 272) = 0x737574617473;
  *(inited + 280) = 0xE600000000000000;
  v13 = *&aPending[8 * v8];
  v14 = *&aDeprecat[8 * v8 + 8];
  v15 = *(v0 + 648);
  v16 = *(v0 + 576);
  v21 = *(v0 + 632);
  v22 = *(v0 + 616);
  *(inited + 288) = v13;
  *(inited + 296) = v14;
  *(inited + 304) = 3;
  strcpy((inited + 312), "storageClass");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = 0x6E776F6E6B6E75;
  *(inited + 336) = 0xE700000000000000;
  *(inited + 344) = 3;
  *(inited + 352) = 0x68746150656C6966;
  *(inited + 360) = 0xE800000000000000;
  *(inited + 368) = xmmword_230E6E720;
  *(inited + 384) = 3;
  strcpy((inited + 392), "creationTime");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = v5;
  *(inited + 416) = 0;
  *(inited + 424) = 2;
  *(inited + 432) = 0x616470557473616CLL;
  *(inited + 440) = 0xEF656D6954646574;
  *(inited + 448) = v5;
  *(inited + 456) = 0;
  *(inited + 464) = 2;

  v17 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v11 + 32) = v17;
  v18 = sub_230E1CA68(&unk_2845A51E8);
  *(v0 + 664) = v18;
  swift_arrayDestroy();
  *(v0 + 528) = 0xD000000000000012;
  *(v0 + 536) = 0x8000000230E81B30;
  *(v0 + 544) = v11;
  *(v0 + 552) = v18;
  *(v0 + 488) = v22;
  *(v0 + 504) = v21;
  *(v0 + 520) = v15;
  v19 = swift_task_alloc();
  *(v0 + 672) = v19;
  *v19 = v0;
  v19[1] = sub_230E3E28C;
  v20 = *(v0 + 584);

  return sub_230D41CA0(v0 + 560, v0 + 528, v0 + 488);
}

uint64_t sub_230E3E28C()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v8 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v4 = sub_230E3E61C;
  }

  else
  {
    v5 = *(v2 + 664);
    v6 = *(v2 + 656);

    v4 = sub_230E3E3C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E3E3C8()
{
  v22 = v0;
  v1 = *(v0 + 560);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 576);
  v3 = sub_230E68D80();
  __swift_project_value_buffer(v3, qword_27DB80BC0);

  v4 = sub_230E68D60();
  v5 = sub_230E693F0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 688);
    v7 = *(v0 + 576);
    v8 = *(v0 + 568);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(v8, v7, &v21);
    v11 = 0xE700000000000000;
    *(v9 + 12) = 2080;
    v12 = 0x676E69646E6570;
    v13 = 0xE500000000000000;
    v14 = 0x726F727265;
    if (v6 != 2)
    {
      v14 = 0x7461636572706564;
      v13 = 0xEA00000000006465;
    }

    if (v6)
    {
      v12 = 0x657669746361;
      v11 = 0xE600000000000000;
    }

    if (v6 <= 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }

    if (v6 <= 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    v17 = sub_230D7E620(v15, v16, &v21);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v1;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][updateDatabaseStatus] Updated database status for %s to %s, processed: %lld", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  v18 = *(v0 + 608);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_230E3E61C()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[76];

  v4 = v0[1];
  v5 = v0[85];

  return v4();
}

uint64_t static SystemDatabase.getMetricsTopicConfiguration(_:using:requestContext:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v4 + 104) = a1;
  *(v4 + 112) = a3;
  v7 = sub_230E68D80();
  *(v4 + 120) = v7;
  v8 = *(v7 - 8);
  *(v4 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 653) = *a2;
  v10 = *(a4 + 16);
  *(v4 + 144) = *a4;
  *(v4 + 160) = v10;
  *(v4 + 176) = *(a4 + 32);
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E3E7C0, 0, 0);
}

uint64_t sub_230E3E7C0()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 200) = v1;
    *(v0 + 208) = v3;
    *(v0 + 656) = BYTE1(v2);
    *(v0 + 655) = v2 & 1;
    *(v0 + 192) = v5;
    *(v0 + 654) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 112);
    v7 = qword_27DB5A438;
    *(v0 + 216) = qword_27DB5A438;

    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E3EC0C, v7, 0);
  }

  else
  {
    *(v0 + 652) = 40;
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_230E3E9A4;
    v10 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 652), 0, 0);
  }
}

uint64_t sub_230E3E9A4()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 184);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E3EACC, 0, 0);
}

uint64_t sub_230E3EACC()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 200) = v3;
  *(v0 + 208) = v6;
  *(v0 + 656) = v5;
  *(v0 + 655) = v4;
  *(v0 + 192) = v2;
  *(v0 + 654) = v1;
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 112);
  v13 = qword_27DB5A438;
  *(v0 + 216) = qword_27DB5A438;

  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E3EC0C, v13, 0);
}

uint64_t sub_230E3EC0C()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 136);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 654);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0xD00000000000001CLL, 0x8000000230E808D0, v33);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v33);
    *(v9 + 22) = 2080;
    v31 = 0x6C616E7265746E69;
    v32 = 0xE90000000000002ELL;
    v30 = v8;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 656);
  v15 = *(v0 + 654);
  LOBYTE(v31) = *(v0 + 655);
  BYTE1(v31) = v14;
  v32 = v13;
  v30 = 40;
  LOBYTE(v33[0]) = v15;

  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v30, v33);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0;
    *(v0 + 644) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 272), (v0 + 644));
    *(v0 + 648) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 320);
      v20 = *(v0 + 392);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 248) = v18;
    *(v0 + 96) = 0;
    v23 = swift_task_alloc();
    *(v0 + 256) = v23;
    *v23 = v0;
    v24 = sub_230E3F144;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 232) = v23;
    *v23 = v0;
    v24 = sub_230E3EFEC;
  }

  v23[1] = v24;
  v25 = *(v0 + 104);
  v26 = *(v0 + 112);
  v27 = *(v0 + 653);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230E41A9C(v25, v27, v26, v0 + 16);
}

uint64_t sub_230E3EFEC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_230E3F5D4;
  }

  else
  {
    v6 = sub_230E3F500;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E3F144()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_230E3F3AC;
  }

  else
  {
    v6 = sub_230E3F29C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E3F29C()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  sub_230D340D4(40, *(v0 + 248), *(v0 + 648) != 0, v0 + 16, (v0 + 96), *(v0 + 224));
  (*(v4 + 8))(v3, v5);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v7 = *(v0 + 136);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_230E3F3AC()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 648) != 0;
  *(v0 + 96) = v1;
  swift_willThrow();
  v9 = v1;
  sub_230D340D4(40, v2, v8, v0 + 16, (v0 + 96), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v5, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v10 = *(v0 + 264);
  v11 = *(v0 + 136);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230E3F500()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[14];
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v4 = v0[17];

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230E3F5D4()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[14];
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v4 = v0[30];
  v5 = v0[17];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t static SystemDatabase.storeLoggingConfiguration(_:using:requestContext:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  *(v4 + 96) = a1;
  *(v4 + 104) = a3;
  v7 = sub_230E68D80();
  *(v4 + 112) = v7;
  v8 = *(v7 - 8);
  *(v4 + 120) = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v4 + 128) = v10;
  *(v4 + 136) = v11;
  v12 = *(a4 + 16);
  *(v4 + 144) = *a4;
  *(v4 + 160) = v12;
  *(v4 + 176) = *(a4 + 32);
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E3F7B8, 0, 0);
}

uint64_t sub_230E3F7B8()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 200) = v1;
    *(v0 + 208) = v3;
    *(v0 + 639) = BYTE1(v2);
    *(v0 + 638) = v2 & 1;
    *(v0 + 192) = v5;
    *(v0 + 637) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 136);
    v7 = *(v0 + 104);
    v8 = qword_27DB5A438;
    *(v0 + 216) = qword_27DB5A438;

    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E3FC1C, v8, 0);
  }

  else
  {
    *(v0 + 636) = 43;
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_230E3F9A8;
    v11 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 636), 0, 0);
  }
}

uint64_t sub_230E3F9A8()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 184);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E3FAD0, 0, 0);
}

uint64_t sub_230E3FAD0()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 200) = v3;
  *(v0 + 208) = v6;
  *(v0 + 639) = v5;
  *(v0 + 638) = v4;
  *(v0 + 192) = v2;
  *(v0 + 637) = v1;
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 136);
  v13 = *(v0 + 104);
  v14 = qword_27DB5A438;
  *(v0 + 216) = qword_27DB5A438;

  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E3FC1C, v14, 0);
}

uint64_t sub_230E3FC1C()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 128);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 637);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0xD000000000000019, 0x8000000230E80930, v32);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v32);
    *(v9 + 22) = 2080;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  if (*(v0 + 638) != 1)
  {
    goto LABEL_6;
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 639);
  v31 = *(v0 + 637);
  v15 = RequestType.rawValue.getter();
  v17 = v16;

  LOBYTE(v15) = sub_230D33FDC(v15, v17, v13);

  if ((v15 & 1) != 0 || v14 >= 2)
  {
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0;
    *(v0 + 628) = 93;
    v20 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 256), (v0 + 628));
    *(v0 + 632) = v20;
    v21 = 0.0;
    if (!v20)
    {
      v22 = *(v0 + 304);
      v23 = *(v0 + 376);
      v24 = __CFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
      }

      v21 = vcvtd_n_f64_u64(v25, 0x14uLL);
    }

    *(v0 + 240) = v21;
    v18 = swift_task_alloc();
    *(v0 + 248) = v18;
    *v18 = v0;
    v19 = sub_230E40234;
  }

  else
  {
LABEL_6:
    v18 = swift_task_alloc();
    *(v0 + 232) = v18;
    *v18 = v0;
    v19 = sub_230E40010;
  }

  v18[1] = v19;
  v26 = *(v0 + 136);
  v27 = *(v0 + 96);
  v28 = *(v0 + 104);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230E40478(v27, v26, v28, v0 + 16);
}

uint64_t sub_230E40010()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4014C, v2, 0);
}

uint64_t sub_230E4014C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[17];
  v4 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230E40234()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E40370, v2, 0);
}

uint64_t sub_230E40370()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_230E4D2AC(43, *(v0 + 240), *(v0 + 632) != 0, v0 + 16, *(v0 + 224));
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 136);
  v4 = *(v0 + 104);
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230E40478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;
  *(v4 + 313) = *a4;
  *(v4 + 200) = *(a4 + 8);
  *(v4 + 314) = *(a4 + 24);
  *(v4 + 216) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230E404BC, 0, 0);
}

uint64_t sub_230E404BC()
{
  v1 = *(v0 + 176);
  v2 = sub_230D0F35C(MEMORY[0x277D84F90]);
  v3 = v2;
  v4 = *(v1 + 32);
  *(v0 + 316) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  *(v0 + 224) = v2;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;

  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 176);
LABEL_8:
    *(v0 + 248) = v7;
    *(v0 + 256) = v8;
    v12 = *(v0 + 208);
    v11 = *(v0 + 216);
    v13 = *(v0 + 313);
    v15 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 314) & 1 | (*(v0 + 315) << 8);
    v17 = __clz(__rbit64(v7)) | (v8 << 6);
    v18 = *(*(v9 + 48) + v17);
    *(v0 + 317) = v18;
    v19 = *(v9 + 56) + 48 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    *(v0 + 264) = v21;
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    *(v0 + 272) = v23;
    v24 = *(v19 + 32);
    *(v0 + 280) = v24;
    v25 = *(v19 + 40);
    *(v0 + 288) = v25;
    *(v0 + 312) = v18;
    *(v0 + 16) = v20;
    *(v0 + 24) = v21;
    *(v0 + 32) = v22;
    *(v0 + 40) = v23;
    *(v0 + 48) = v24;
    *(v0 + 56) = v25;
    *(v0 + 64) = v13;
    *(v0 + 72) = v14;
    *(v0 + 80) = v12;
    *(v0 + 88) = v16;
    *(v0 + 96) = v11;

    sub_230D1CDE0(v15, v0 + 104);
    v26 = swift_task_alloc();
    *(v0 + 296) = v26;
    *v26 = v0;
    v26[1] = sub_230E4082C;
    v27 = *(v0 + 184);

    return sub_230E42B80((v0 + 312), v0 + 16, v27, v0 + 64);
  }

  else
  {
    v10 = 0;
    v9 = *(v0 + 176);
    while (((63 - v6) >> 6) - 1 != v10)
    {
      v8 = v10 + 1;
      v7 = *(v9 + 8 * v10++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v29 = *(v3 + 16);
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 224);
    v31 = *(v0 + 176);
    v32 = sub_230E68D80();
    __swift_project_value_buffer(v32, qword_27DB80BC0);

    v33 = sub_230E68D60();
    v34 = sub_230E693E0();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 224);
    v37 = *(v0 + 176);
    if (v35)
    {
      v38 = swift_slowAlloc();
      *v38 = 134218496;
      *(v38 + 4) = *(v37 + 16);

      *(v38 + 12) = 2048;
      *(v38 + 14) = 0;
      *(v38 + 22) = 2048;
      *(v38 + 24) = v29;

      _os_log_impl(&dword_230D02000, v33, v34, "[SystemDatabase][storeLoggingConfiguration] Processed %ld telemetry topics: %ld succeeded, %ld failed", v38, 0x20u);
      MEMORY[0x23191EAE0](v38, -1, -1);
    }

    else
    {
      v39 = *(v0 + 224);
    }

    v40 = *(v0 + 224);
    v41 = *(v0 + 168);
    *v41 = 0;
    v41[1] = v29;
    v41[2] = v40;
    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_230E4082C()
{
  v2 = *v1;
  v3 = (*v1)[37];
  v14 = *v1;
  (*v1)[38] = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[12];
    sub_230D666B4(v2[8], v2[9], v2[10]);
    v6 = sub_230E40E6C;
  }

  else
  {
    v8 = v2[35];
    v7 = v2[36];
    v10 = v2[33];
    v9 = v2[34];
    v11 = v2[11];
    v12 = v2[12];
    sub_230D666B4(v2[8], v2[9], v2[10]);

    v6 = sub_230E40998;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_230E40998()
{
  v2 = *(v0 + 232);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_31:
    __break(1u);
  }

  else
  {
    v1 = 0x27DB5A000uLL;
    if (qword_27DB5A4B0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_230E68D80();
  __swift_project_value_buffer(v4, qword_27DB80BC0);
  v5 = sub_230E68D60();
  v6 = sub_230E693F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 317);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *(v0 + 160) = v9;
    *v8 = 136315138;
    v10 = 0x8000000230E802F0;
    v11 = 0xD00000000000001FLL;
    if (v7 != 1)
    {
      v11 = 0xD000000000000012;
      v10 = 0x8000000230E80310;
    }

    if (v7)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x6F5F706D615F7078;
    }

    if (v7)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xEE00676F6C5F7064;
    }

    v14 = sub_230D7E620(v12, v13, (v0 + 160));

    *(v8 + 4) = v14;
    _os_log_impl(&dword_230D02000, v5, v6, "[SystemDatabase][storeLoggingConfiguration] Successfully processed topic: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
  }

  v16 = *(v0 + 248);
  v15 = *(v0 + 256);
  *(v0 + 232) = v3;
  *(v0 + 240) = v3;
  v17 = (v16 - 1) & v16;
  if (v17)
  {
    v18 = *(v0 + 176);
LABEL_19:
    *(v0 + 248) = v17;
    *(v0 + 256) = v15;
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v0 + 313);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v25 = *(v0 + 314) & 1 | (*(v0 + 315) << 8);
    v26 = __clz(__rbit64(v17)) | (v15 << 6);
    v27 = *(*(v18 + 48) + v26);
    *(v0 + 317) = v27;
    v28 = *(v18 + 56) + 48 * v26;
    v29 = *v28;
    v30 = *(v28 + 8);
    *(v0 + 264) = v30;
    v31 = *(v28 + 16);
    v32 = *(v28 + 24);
    *(v0 + 272) = v32;
    v33 = *(v28 + 32);
    *(v0 + 280) = v33;
    v34 = *(v28 + 40);
    *(v0 + 288) = v34;
    *(v0 + 312) = v27;
    *(v0 + 16) = v29;
    *(v0 + 24) = v30;
    *(v0 + 32) = v31;
    *(v0 + 40) = v32;
    *(v0 + 48) = v33;
    *(v0 + 56) = v34;
    *(v0 + 64) = v22;
    *(v0 + 72) = v23;
    *(v0 + 80) = v21;
    *(v0 + 88) = v25;
    *(v0 + 96) = v20;

    sub_230D1CDE0(v24, v0 + 104);
    v35 = swift_task_alloc();
    *(v0 + 296) = v35;
    *v35 = v0;
    v35[1] = sub_230E4082C;
    v36 = *(v0 + 184);

    return sub_230E42B80((v0 + 312), v0 + 16, v36, v0 + 64);
  }

  else
  {
    while (1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v19 >= (((1 << *(v0 + 316)) + 63) >> 6))
      {
        break;
      }

      v18 = *(v0 + 176);
      v17 = *(v18 + 8 * v19 + 64);
      ++v15;
      if (v17)
      {
        v15 = v19;
        goto LABEL_19;
      }
    }

    v38 = *(v0 + 224);
    v39 = *(v0 + 176);

    v40 = *(v38 + 16);
    if (*(v1 + 1200) != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 224);
    v42 = *(v0 + 176);
    __swift_project_value_buffer(v4, qword_27DB80BC0);

    v43 = sub_230E68D60();
    v44 = sub_230E693E0();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 224);
    v47 = *(v0 + 176);
    if (v45)
    {
      v48 = swift_slowAlloc();
      *v48 = 134218496;
      *(v48 + 4) = *(v47 + 16);

      *(v48 + 12) = 2048;
      *(v48 + 14) = v3;
      *(v48 + 22) = 2048;
      *(v48 + 24) = v40;

      _os_log_impl(&dword_230D02000, v43, v44, "[SystemDatabase][storeLoggingConfiguration] Processed %ld telemetry topics: %ld succeeded, %ld failed", v48, 0x20u);
      MEMORY[0x23191EAE0](v48, -1, -1);
    }

    else
    {
      v49 = *(v0 + 224);
    }

    v50 = *(v0 + 224);
    v51 = *(v0 + 168);
    *v51 = v3;
    v51[1] = v40;
    v51[2] = v50;
    v52 = *(v0 + 8);

    return v52();
  }
}

uint64_t sub_230E40E6C()
{
  v1 = 0xEE00676F6C5F7064;
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = *(v0 + 317);

  v7 = "t32";
  v8 = 0x8000000230E802F0;
  v9 = 0xD00000000000001FLL;
  v10 = "xp_ops_activity_personalization";
  if (v6 != 1)
  {
    v9 = 0xD000000000000012;
    v8 = 0x8000000230E80310;
  }

  v11 = v6 == 0;
  if (v6)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0x6F5F706D615F7078;
  }

  if (v11)
  {
    v13 = 0xEE00676F6C5F7064;
  }

  else
  {
    v13 = v8;
  }

  v14 = *(v0 + 224);
  v15 = *(v0 + 304);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 144) = v14;
  v17 = sub_230DA41A0(v12, v13);
  v19 = *(v14 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_21;
  }

  v23 = v18;
  if (*(*(v0 + 224) + 24) >= v22)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v82 = v17;
      sub_230DBB0CC();
      v17 = v82;
    }
  }

  else
  {
    sub_230DB8CBC(v22, isUniquelyReferenced_nonNull_native);
    v24 = *(v0 + 144);
    v17 = sub_230DA41A0(v12, v13);
    if ((v23 & 1) != (v25 & 1))
    {

      return sub_230E69950();
    }
  }

  isUniquelyReferenced_nonNull_native = *(v0 + 144);
  v27 = *(v0 + 304);
  if (v23)
  {
    v28 = *(isUniquelyReferenced_nonNull_native + 56);
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = v27;
    MEMORY[0x23191E910](v29);
  }

  else
  {
    sub_230E1C668(v17, v12, v13, v27, *(v0 + 144));
  }

  if (qword_27DB5A4B0 != -1)
  {
    goto LABEL_51;
  }

LABEL_21:
  v30 = *(v0 + 304);
  v83 = sub_230E68D80();
  __swift_project_value_buffer(v83, qword_27DB80BC0);
  v31 = v30;
  v32 = sub_230E68D60();
  v33 = sub_230E69400();
  MEMORY[0x23191E910](v30);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 317);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v1;
    v39 = v37;
    *(v0 + 152) = v37;
    *v35 = 136315394;
    v40 = v7 | 0x8000000000000000;
    v41 = 0xD00000000000001FLL;
    if (v34 != 1)
    {
      v41 = 0xD000000000000012;
      v40 = v10 | 0x8000000000000000;
    }

    if (v34)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0x6F5F706D615F7078;
    }

    if (v34)
    {
      v10 = v40;
    }

    else
    {
      v10 = v38;
    }

    v7 = *(v0 + 304);
    v43 = sub_230D7E620(v42, v10, (v0 + 152));

    *(v35 + 4) = v43;
    *(v35 + 12) = 2112;
    v44 = v7;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v45;
    *v36 = v45;
    _os_log_impl(&dword_230D02000, v32, v33, "[SystemDatabase][storeLoggingConfiguration] Failed to process topic %s: %@", v35, 0x16u);
    sub_230E437AC(v36);
    MEMORY[0x23191EAE0](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x23191EAE0](v39, -1, -1);
    MEMORY[0x23191EAE0](v35, -1, -1);
    MEMORY[0x23191E910](v7);
  }

  else
  {
    v46 = *(v0 + 304);

    MEMORY[0x23191E910](v46);
  }

  v48 = *(v0 + 248);
  v47 = *(v0 + 256);
  v1 = *(v0 + 240);
  *(v0 + 224) = isUniquelyReferenced_nonNull_native;
  v49 = (v48 - 1) & v48;
  if (v49)
  {
    v50 = *(v0 + 176);
LABEL_38:
    *(v0 + 248) = v49;
    *(v0 + 256) = v47;
    v53 = *(v0 + 208);
    v52 = *(v0 + 216);
    v54 = *(v0 + 313);
    v56 = *(v0 + 192);
    v55 = *(v0 + 200);
    v57 = *(v0 + 314) & 1 | (*(v0 + 315) << 8);
    v58 = __clz(__rbit64(v49)) | (v47 << 6);
    v59 = *(*(v50 + 48) + v58);
    *(v0 + 317) = v59;
    v60 = *(v50 + 56) + 48 * v58;
    v61 = *v60;
    v62 = *(v60 + 8);
    *(v0 + 264) = v62;
    v63 = *(v60 + 16);
    v64 = *(v60 + 24);
    *(v0 + 272) = v64;
    v65 = *(v60 + 32);
    *(v0 + 280) = v65;
    v66 = *(v60 + 40);
    *(v0 + 288) = v66;
    *(v0 + 312) = v59;
    *(v0 + 16) = v61;
    *(v0 + 24) = v62;
    *(v0 + 32) = v63;
    *(v0 + 40) = v64;
    *(v0 + 48) = v65;
    *(v0 + 56) = v66;
    *(v0 + 64) = v54;
    *(v0 + 72) = v55;
    *(v0 + 80) = v53;
    *(v0 + 88) = v57;
    *(v0 + 96) = v52;

    sub_230D1CDE0(v56, v0 + 104);
    v67 = swift_task_alloc();
    *(v0 + 296) = v67;
    *v67 = v0;
    v67[1] = sub_230E4082C;
    v68 = *(v0 + 184);

    return sub_230E42B80((v0 + 312), v0 + 16, v68, v0 + 64);
  }

  else
  {
    while (1)
    {
      v51 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      v50 = *(v0 + 176);
      if (v51 >= (((1 << *(v0 + 316)) + 63) >> 6))
      {
        break;
      }

      v49 = *(v50 + 8 * v51 + 64);
      ++v47;
      if (v49)
      {
        v47 = v51;
        goto LABEL_38;
      }
    }

    v69 = *(isUniquelyReferenced_nonNull_native + 16);
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v70 = *(v0 + 224);
    v71 = *(v0 + 176);
    __swift_project_value_buffer(v83, qword_27DB80BC0);

    v72 = sub_230E68D60();
    v73 = sub_230E693E0();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 224);
    v76 = *(v0 + 176);
    if (v74)
    {
      v77 = swift_slowAlloc();
      *v77 = 134218496;
      *(v77 + 4) = *(v76 + 16);

      *(v77 + 12) = 2048;
      *(v77 + 14) = v1;
      *(v77 + 22) = 2048;
      *(v77 + 24) = v69;

      _os_log_impl(&dword_230D02000, v72, v73, "[SystemDatabase][storeLoggingConfiguration] Processed %ld telemetry topics: %ld succeeded, %ld failed", v77, 0x20u);
      MEMORY[0x23191EAE0](v77, -1, -1);
    }

    else
    {
      v78 = *(v0 + 224);
    }

    v79 = *(v0 + 224);
    v80 = *(v0 + 168);
    *v80 = v1;
    v80[1] = v69;
    v80[2] = v79;
    v81 = *(v0 + 8);

    return v81();
  }
}

uint64_t sub_230E4151C()
{
  v1 = sub_230E690B0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_230E686F0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_230E686E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D46AD4(&qword_27DB5B148);
  v8 = sub_230E686D0();
  v10 = v9;

  if (!v0)
  {
    sub_230E690A0();
    v11 = sub_230E69080();
    if (v12)
    {
      v7 = v11;
      sub_230D0F4A8(v8, v10);
    }

    else
    {
      sub_230D0F4A8(v8, v10);
      return 32123;
    }
  }

  return v7;
}

uint64_t sub_230E41684()
{
  v1 = sub_230E690B0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_230E686F0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_230E686E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAC8, &qword_230E72370);
  sub_230D6C2C4(&qword_281565FC8);
  v8 = sub_230E686D0();
  v10 = v9;

  if (!v0)
  {
    sub_230E690A0();
    v11 = sub_230E69080();
    if (v12)
    {
      v7 = v11;
      sub_230D0F4A8(v8, v10);
    }

    else
    {
      sub_230D0F4A8(v8, v10);
      return 32123;
    }
  }

  return v7;
}

uint64_t sub_230E417EC()
{
  v1 = sub_230E690B0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_230E686F0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_230E686E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
  sub_230D6C1DC(&unk_281565FA0);
  v8 = sub_230E686D0();
  v10 = v9;

  if (!v0)
  {
    sub_230E690A0();
    v11 = sub_230E69080();
    if (v12)
    {
      v7 = v11;
      sub_230D0F4A8(v8, v10);
    }

    else
    {
      sub_230D0F4A8(v8, v10);
      return 32123;
    }
  }

  return v7;
}

uint64_t sub_230E4195C(uint64_t a1)
{
  v3 = sub_230E690B0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = a1;
  v8 = sub_230E686F0();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_230E686E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D910, &qword_230E7F4B8);
  sub_230E43814();
  v11 = sub_230E686D0();
  v13 = v12;

  if (!v1)
  {
    sub_230E690A0();
    v14 = sub_230E69080();
    if (v15)
    {
      v7 = v14;
      sub_230D0F4A8(v11, v13);
    }

    else
    {
      sub_230D0F4A8(v11, v13);
      return 32123;
    }
  }

  return v7;
}

uint64_t sub_230E41A9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 472) = a3;
  *(v4 + 480) = a4;
  *(v4 + 129) = a2;
  *(v4 + 464) = a1;
  return MEMORY[0x2822009F8](sub_230E41AC4, 0, 0);
}

uint64_t sub_230E41AC4()
{
  v1 = *(v0 + 129);
  sub_230E69540();

  *(v0 + 440) = 0xD000000000000013;
  *(v0 + 448) = 0x8000000230E84E50;
  v2 = 0x8000000230E802F0;
  v3 = 0xD00000000000001FLL;
  if (v1 != 1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000230E80310;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6F5F706D615F7078;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xEE00676F6C5F7064;
  }

  v6 = *(v0 + 472);
  v7 = *(v0 + 480);
  MEMORY[0x23191DA00](v4, v5);

  MEMORY[0x23191DA00](39, 0xE100000000000000);
  v8 = *(v0 + 440);
  v9 = *(v0 + 448);
  *(v0 + 512) = 1;
  *(v0 + 504) = 1;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 504) = 1;
  *(v0 + 16) = 0x656D656C65545F5FLL;
  *(v0 + 24) = 0xEF63657053797274;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = v8;
  *(v0 + 96) = v9;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  sub_230D1CDE0(v7, v0 + 360);

  return MEMORY[0x2822009F8](sub_230E41C7C, v6, 0);
}

uint64_t sub_230E41C7C()
{
  v1 = v0[59];
  sub_230D1CDE0(v0[60], (v0 + 50));
  sub_230D1D0EC((v0 + 2), (v0 + 17));

  v2 = swift_task_alloc();
  v0[61] = v2;
  *v2 = v0;
  v2[1] = sub_230E41D5C;
  v4 = v0[59];
  v3 = v0[60];

  return (sub_230D70F74)(v0 + 57, 2, v3);
}

uint64_t sub_230E41D5C()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *(*v1 + 480);
  v5 = *v1;
  *(*v1 + 496) = v0;

  sub_230D1CE3C(v4);
  v6 = *(v2 + 472);
  if (v0)
  {
    v7 = sub_230E41FC4;
  }

  else
  {
    v7 = sub_230E41EA4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E41EA4()
{
  sub_230D1CE3C(*(v0 + 480));
  sub_230D1D148(v0 + 16);

  return MEMORY[0x2822009F8](sub_230E41F14, 0, 0);
}

uint64_t sub_230E41F14()
{
  v2 = v0[57];
  v1 = v0[58];
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);

    sub_230E42090(v3, v1);
  }

  else
  {
    v4 = v0[57];

    v1[1] = 0u;
    v1[2] = 0u;
    *v1 = 0u;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_230E41FC4()
{
  sub_230D1CE3C(*(v0 + 480));

  return MEMORY[0x2822009F8](sub_230E4202C, 0, 0);
}

uint64_t sub_230E4202C()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 496);

  return v1();
}

void sub_230E42090(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_230E690B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v10 = sub_230DA41A0(0x6E69616D6F64, 0xE600000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_23;
  }

  v12 = *(a1 + 56) + 24 * v10;
  v13 = *(v12 + 8);
  v14 = *(v12 + 16) != 3 || v13 == 0;
  if (v14 || !*(a1 + 16))
  {
    goto LABEL_23;
  }

  v15 = *v12;
  v16 = *(v12 + 8);

  v17 = sub_230DA41A0(0x656873696C627570, 0xEA00000000007372);
  if ((v18 & 1) == 0)
  {
    goto LABEL_21;
  }

  v19 = *(a1 + 56) + 24 * v17;
  if (*(v19 + 16) != 3)
  {
    goto LABEL_21;
  }

  v21 = *v19;
  v20 = *(v19 + 8);
  if (!v20)
  {
    sub_230D0DCD8(*v19, 0, 3);
    goto LABEL_21;
  }

  if (!*(a1 + 16))
  {
LABEL_21:
    v30 = v15;
    v31 = v13;
LABEL_22:
    sub_230D0F474(v30, v31, 3);
LABEL_23:
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v32 = sub_230E68D80();
    __swift_project_value_buffer(v32, qword_27DB80BC0);
    v33 = sub_230E68D60();
    v34 = sub_230E69400();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_230D02000, v33, v34, "[SystemDatabase][parseMetricsConfigFromRow] Missing required fields", v35, 2u);
      MEMORY[0x23191EAE0](v35, -1, -1);
    }

    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  v22 = sub_230DA41A0(0xD000000000000010, 0x8000000230E80210);
  if ((v23 & 1) == 0 || (v24 = *(a1 + 56) + 24 * v22, *(v24 + 16) != 3))
  {
    v36 = v15;
    v37 = v13;
LABEL_29:
    sub_230D0F474(v36, v37, 3);
    v30 = v21;
    v31 = v20;
    goto LABEL_22;
  }

  v25 = *v24;
  v26 = *(v24 + 8);
  if (!v26)
  {
    sub_230D0DCD8(v25, 0, 3);
    goto LABEL_31;
  }

  if (!*(a1 + 16))
  {
    v38 = *v24;
    sub_230D0DCD8(v25, v26, 3);
    sub_230D0F474(v15, v13, 3);
    sub_230D0F474(v21, v20, 3);
    v30 = v38;
LABEL_35:
    v31 = v26;
    goto LABEL_22;
  }

  v108 = *v24;

  v109 = v26;
  v27 = sub_230DA41A0(0x676E696C706D6173, 0xEC00000065746152);
  if ((v28 & 1) == 0)
  {
    sub_230D0F474(v15, v13, 3);
    sub_230D0F474(v21, v20, 3);
    v30 = v108;
    v31 = v109;
    goto LABEL_22;
  }

  v26 = v109;
  v29 = *(a1 + 56) + 24 * v27;
  if (*(v29 + 16) != 1)
  {
    sub_230D0F474(v15, v13, 3);
    sub_230D0F474(v21, v20, 3);
    v30 = v108;
    goto LABEL_35;
  }

  if (*(v29 + 8))
  {
    sub_230D0F474(v108, v109, 3);
LABEL_31:
    sub_230D0F474(v21, v20, 3);
    goto LABEL_21;
  }

  v105 = *v29;
  v39._countAndFlagsBits = v15;
  v39._object = v13;
  Domain.init(rawValue:)(v39);
  v40 = v110;
  if (v110 == 10)
  {
    v36 = v108;
    v37 = v26;
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAA8, &qword_230E72358);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_230E6B3B0;
  v102 = v40;
  v104 = v41;
  *(v41 + 32) = v40;
  sub_230E690A0();
  v100 = sub_230E69070();
  v43 = v42;
  sub_230D0F474(v21, v20, 3);
  v103 = *(v5 + 8);
  v103(v9, v4);
  v101 = v43;
  if (v43 >> 60 == 15)
  {
    v106 = 0;
LABEL_51:
    v107 = sub_230D0EBD4(MEMORY[0x277D84F90]);
    sub_230E690A0();
    v57 = v108;
    v58 = v109;
    v59 = sub_230E69070();
    v61 = v60;
    sub_230D0F474(v57, v58, 3);
    v103(v9, v4);
    if (v61 >> 60 != 15)
    {

      v62 = sub_230E686C0();
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      swift_allocObject();
      sub_230E686B0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAC8, &qword_230E72370);
      sub_230D6C2C4(&qword_27DB5BAE8);
      v65 = v106;
      sub_230E686A0();
      v106 = v65;
      if (v65)
      {
        MEMORY[0x23191E910](v106);

        v107 = sub_230D0EBD4(MEMORY[0x277D84F90]);
        sub_230D0F494(v59, v61);
        v106 = 0;
      }

      else
      {

        sub_230D0F494(v59, v61);
        v107 = v110;
      }
    }

    v66 = MEMORY[0x277D84F90];
    v67 = sub_230D0EAD0(MEMORY[0x277D84F90]);
    if (!*(a1 + 16))
    {
      goto LABEL_75;
    }

    v68 = sub_230DA41A0(0xD00000000000001ALL, 0x8000000230E80230);
    if (v69)
    {
      v70 = *(a1 + 56) + 24 * v68;
      v71 = *(v70 + 8);
      if (*(v70 + 16) == 3 && v71 != 0)
      {
        v73 = *v70;
        v74 = *(v70 + 8);

        sub_230E690A0();
        v109 = sub_230E69070();
        v76 = v75;
        sub_230D0F474(v73, v71, 3);
        v103(v9, v4);
        if (v76 >> 60 != 15)
        {

          v77 = sub_230E686C0();
          v78 = *(v77 + 48);
          v79 = *(v77 + 52);
          swift_allocObject();
          sub_230E686B0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
          sub_230D6C1DC(&qword_27DB5D980);
          v80 = v106;
          sub_230E686A0();
          v106 = v80;
          if (v80)
          {
            MEMORY[0x23191E910](v106);

            v67 = sub_230D0EAD0(MEMORY[0x277D84F90]);
            sub_230D0F494(v109, v76);
            v106 = 0;
          }

          else
          {

            sub_230D0F494(v109, v76);
            v67 = v110;
          }
        }
      }
    }

    if (*(a1 + 16))
    {
      v81 = sub_230DA41A0(0xD000000000000015, 0x8000000230E80250);
      if (v82)
      {
        v83 = *(a1 + 56) + 24 * v81;
        v84 = *(v83 + 8);
        if (*(v83 + 16) == 3 && v84 != 0)
        {
          v86 = *v83;
          v87 = *(v83 + 8);

          sub_230E690A0();
          v88 = sub_230E69070();
          v90 = v89;
          sub_230D0F474(v86, v84, 3);
          v103(v9, v4);
          if (v90 >> 60 != 15)
          {
            v91 = sub_230E686C0();
            v92 = *(v91 + 48);
            v93 = *(v91 + 52);
            swift_allocObject();
            sub_230E686B0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
            sub_230D46AD4(&qword_27DB5B170);
            v94 = v106;
            sub_230E686A0();
            if (!v94)
            {

              sub_230D0F494(v88, v90);
              v66 = v110;
              goto LABEL_75;
            }

            MEMORY[0x23191E910](v94);

            sub_230D0F494(v88, v90);
          }
        }
      }
    }

    v66 = MEMORY[0x277D84F90];
LABEL_75:
    v95 = v104;
    v96 = v105;
    *a2 = v102;
    *(a2 + 8) = v95;
    v97 = v107;
    *(a2 + 16) = v96;
    *(a2 + 24) = v97;
    *(a2 + 32) = v67;
    *(a2 + 40) = v66;
    return;
  }

  v44 = sub_230E686C0();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_230E686B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D46AD4(&qword_27DB5B170);
  sub_230E686A0();
  v106 = 0;

  v47 = 0;
  v48 = v110;
  v107 = *(v110 + 16);
  v99 = v110 + 40;
  v104 = MEMORY[0x277D84F90];
LABEL_41:
  v49 = (v99 + 16 * v47);
  while (1)
  {
    if (v107 == v47)
    {
      sub_230D0F494(v100, v101);

      goto LABEL_51;
    }

    if (v47 >= *(v48 + 16))
    {
      break;
    }

    ++v47;
    v50 = v49 + 2;
    v51 = *(v49 - 1);
    v52 = *v49;

    v53 = sub_230E69680();

    v49 = v50;
    if (v53 < 0xA)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v104 = sub_230E4ADB0(0, *(v104 + 2) + 1, 1, v104);
      }

      v55 = *(v104 + 2);
      v54 = *(v104 + 3);
      if (v55 >= v54 >> 1)
      {
        v104 = sub_230E4ADB0((v54 > 1), v55 + 1, 1, v104);
      }

      v56 = v104;
      *(v104 + 2) = v55 + 1;
      v56[v55 + 32] = v53;
      goto LABEL_41;
    }
  }

  __break(1u);
}

uint64_t sub_230E42B80(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 488) = a3;
  v8 = sub_230E68910();
  *(v4 + 496) = v8;
  v9 = *(v8 - 8);
  *(v4 + 504) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 512) = swift_task_alloc();
  *(v4 + 632) = *a1;
  *(v4 + 633) = *a2;
  v11 = *(a2 + 16);
  *(v4 + 520) = *(a2 + 8);
  *(v4 + 528) = v11;
  *(v4 + 536) = *(a2 + 24);
  *(v4 + 552) = *(a2 + 40);
  v12 = *(a4 + 16);
  *(v4 + 560) = *a4;
  *(v4 + 576) = v12;
  *(v4 + 592) = *(a4 + 32);

  return MEMORY[0x2822009F8](sub_230E42C94, 0, 0);
}

uint64_t sub_230E42C94()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 496);
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  result = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 520);
  v9 = *(v8 + 16);
  if (v9)
  {
    v62 = MEMORY[0x277D84F90];
    sub_230D48880(0, v9, 0);
    v10 = (v8 + 32);
    do
    {
      v12 = *v10++;
      v11 = v12;
      if (v12 > 4)
      {
        if (v11 == 8)
        {
          v13 = 0x65676175676E616CLL;
        }

        else
        {
          v13 = 0x7974697275636573;
        }

        v14 = 0xE800000000000000;
        if (v11 == 7)
        {
          v13 = 0x6E6F6D6D6F63;
          v14 = 0xE600000000000000;
        }

        if (v11 == 5)
        {
          v15 = 0x7374736163646F70;
        }

        else
        {
          v15 = 0x6F65646976;
        }

        if (v11 == 5)
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = 0xE500000000000000;
        }

        v17 = v11 <= 6;
      }

      else
      {
        if (v11 == 3)
        {
          v13 = 0x7373656E746966;
        }

        else
        {
          v13 = 0x636973756DLL;
        }

        if (v11 == 3)
        {
          v14 = 0xE700000000000000;
        }

        else
        {
          v14 = 0xE500000000000000;
        }

        if (v11 == 2)
        {
          v13 = 0x736B6F6F62;
          v14 = 0xE500000000000000;
        }

        if (v11)
        {
          v15 = 1936748641;
        }

        else
        {
          v15 = 0x6C616E7265746E69;
        }

        if (v11)
        {
          v16 = 0xE400000000000000;
        }

        else
        {
          v16 = 0xE800000000000000;
        }

        v17 = v11 <= 1;
      }

      if (v17)
      {
        v18 = v15;
      }

      else
      {
        v18 = v13;
      }

      if (v17)
      {
        v19 = v16;
      }

      else
      {
        v19 = v14;
      }

      v21 = *(v62 + 16);
      v20 = *(v62 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_230D48880((v20 > 1), v21 + 1, 1);
      }

      *(v62 + 16) = v21 + 1;
      v22 = v62 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      --v9;
    }

    while (v9);
  }

  v23 = sub_230E4151C();
  v25 = v24;
  v26 = *(v0 + 536);

  v27 = sub_230E41684();
  v29 = v28;
  v30 = v27;
  v31 = *(v0 + 544);
  v32 = sub_230E417EC();
  v34 = v33;
  v35 = v32;
  v36 = sub_230E4195C(*(v0 + 552));
  v59 = v37;
  v57 = v36;
  v61 = (v0 + 408);
  v38 = *(v0 + 632);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v39 = swift_allocObject();
  *(v0 + 600) = v39;
  *(v39 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F480;
  *(inited + 32) = 0x6564496369706F74;
  *(inited + 40) = 0xEF7265696669746ELL;
  if (v38)
  {
    v41 = v35;
    if (v38 == 1)
    {
      v42 = 0x8000000230E802F0;
      v43 = 0xD00000000000001FLL;
    }

    else
    {
      v42 = 0x8000000230E80310;
      v43 = 0xD000000000000012;
    }

    v44 = v25;
    v45 = v57;
    v46 = v59;
  }

  else
  {
    v42 = 0xEE00676F6C5F7064;
    v43 = 0x6F5F706D615F7078;
    v44 = v25;
    v41 = v35;
    v45 = v57;
    v46 = v59;
  }

  v47 = v0;
  v48 = *(v0 + 633);
  *(inited + 48) = v43;
  *(inited + 56) = v42;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v49 = *&aInternalapps_1[8 * v48];
  v50 = *&aLanguagesecuri_1[8 * v48 + 16];
  v51 = *(v0 + 592);
  v52 = v47[66];
  v58 = *(v61 + 168);
  v60 = *(v61 + 152);
  *(inited + 88) = v49;
  *(inited + 96) = v50;
  *(inited + 104) = 3;
  *(inited + 112) = 0x656873696C627570;
  *(inited + 120) = 0xEA00000000007372;
  *(inited + 128) = v23;
  *(inited + 136) = v44;
  *(inited + 144) = 3;
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x8000000230E80210;
  *(inited + 168) = v30;
  *(inited + 176) = v29;
  *(inited + 184) = 3;
  strcpy((inited + 192), "samplingRate");
  *(inited + 205) = 0;
  *(inited + 206) = -5120;
  *(inited + 208) = v52;
  *(inited + 216) = 0;
  *(inited + 224) = 1;
  *(inited + 232) = 0xD00000000000001ALL;
  *(inited + 240) = 0x8000000230E80230;
  *(inited + 248) = v41;
  *(inited + 256) = v34;
  *(inited + 264) = 3;
  *(inited + 272) = 0xD000000000000015;
  *(inited + 280) = 0x8000000230E80250;
  *(inited + 288) = v45;
  *(inited + 296) = v46;
  *(inited + 304) = 3;
  strcpy((inited + 312), "creationTime");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 328) = v5;
  *(inited + 336) = 0;
  *(inited + 344) = 2;
  *(inited + 352) = 0x616470557473616CLL;
  *(inited + 360) = 0xEF656D6954646574;
  *(inited + 368) = v5;
  *(inited + 376) = 0;
  *(inited + 384) = 2;
  v53 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v39 + 32) = v53;
  v54 = sub_230E1CA68(&unk_2845A5118);
  v47[76] = v54;
  swift_arrayDestroy();
  v47[57] = 0xEF63657053797274;
  v47[58] = v39;
  v47[59] = v54;
  *v61 = v60;
  v61[1] = v58;
  v47[55] = v51;
  v47[56] = 0x656D656C65545F5FLL;
  v55 = swift_task_alloc();
  v47[77] = v55;
  *v55 = v47;
  v55[1] = sub_230E433E8;
  v56 = v47[61];

  return sub_230D41CA0((v47 + 60), (v47 + 56), v61);
}

uint64_t sub_230E433E8()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v8 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v4 = sub_230E4371C;
  }

  else
  {
    v5 = *(v2 + 608);
    v6 = *(v2 + 600);

    v4 = sub_230E43528;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E43528()
{
  v16 = v0;
  v1 = *(v0 + 480);
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_230E68D80();
  __swift_project_value_buffer(v2, qword_27DB80BC0);
  v3 = sub_230E68D60();
  v4 = sub_230E693F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 632);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315394;
    if (v5)
    {
      v8 = "t32";
      if (v5 == 1)
      {
        v9 = 0xD00000000000001FLL;
      }

      else
      {
        v8 = "xp_ops_activity_personalization";
        v9 = 0xD000000000000012;
      }

      v10 = v8 | 0x8000000000000000;
    }

    else
    {
      v10 = 0xEE00676F6C5F7064;
      v9 = 0x6F5F706D615F7078;
    }

    v11 = sub_230D7E620(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v1;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][upsertMetricsTopicConfiguration] Upserted telemetry topic: %s, processed: %lld", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v12 = *(v0 + 512);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_230E4371C()
{
  v1 = v0[76];
  v2 = v0[75];

  v3 = v0[78];
  v4 = v0[64];

  v5 = v0[1];

  return v5();
}

uint64_t sub_230E437AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D0, &qword_230E734E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230E43814()
{
  result = qword_27DB5D918;
  if (!qword_27DB5D918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB5D910, &qword_230E7F4B8);
    sub_230D46AD4(&qword_27DB5B148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D918);
  }

  return result;
}

uint64_t static SystemDatabase.updateSystemStatus(_:using:requestContext:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_230D1BF00;

  return sub_230E46438(a1, a2, a3);
}

uint64_t static SystemDatabase.updateConfigurationVersion(_:using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  v5 = sub_230E68D80();
  *(v3 + 120) = v5;
  v6 = *(v5 - 8);
  *(v3 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v8 = *(a3 + 16);
  *(v3 + 144) = *a3;
  *(v3 + 160) = v8;
  *(v3 + 176) = *(a3 + 32);
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E43A7C, 0, 0);
}

uint64_t sub_230E43A7C()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 200) = v1;
    *(v0 + 208) = v3;
    *(v0 + 663) = BYTE1(v2);
    *(v0 + 662) = v2 & 1;
    *(v0 + 192) = v5;
    *(v0 + 661) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 112);
    v7 = qword_27DB5A438;
    *(v0 + 216) = qword_27DB5A438;

    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E43EC8, v7, 0);
  }

  else
  {
    *(v0 + 660) = 42;
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_230E43C60;
    v10 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 660), 0, 0);
  }
}

uint64_t sub_230E43C60()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 184);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E43D88, 0, 0);
}

uint64_t sub_230E43D88()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 200) = v3;
  *(v0 + 208) = v6;
  *(v0 + 663) = v5;
  *(v0 + 662) = v4;
  *(v0 + 192) = v2;
  *(v0 + 661) = v1;
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 112);
  v13 = qword_27DB5A438;
  *(v0 + 216) = qword_27DB5A438;

  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E43EC8, v13, 0);
}

uint64_t sub_230E43EC8()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 136);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 661);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0xD00000000000001ALL, 0x8000000230E80910, v31);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v31);
    *(v9 + 22) = 2080;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  if (*(v0 + 662) != 1)
  {
    goto LABEL_6;
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 663);
  v30 = *(v0 + 661);
  v15 = RequestType.rawValue.getter();
  v17 = v16;

  LOBYTE(v15) = sub_230D33FDC(v15, v17, v13);

  if ((v15 & 1) != 0 || v14 >= 2)
  {
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 600) = 0u;
    *(v0 + 616) = 0u;
    *(v0 + 632) = 0u;
    *(v0 + 648) = 0;
    *(v0 + 652) = 93;
    v20 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 280), (v0 + 652));
    *(v0 + 656) = v20;
    v21 = 0.0;
    if (!v20)
    {
      v22 = *(v0 + 328);
      v23 = *(v0 + 400);
      v24 = __CFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
      }

      v21 = vcvtd_n_f64_u64(v25, 0x14uLL);
    }

    *(v0 + 248) = v21;
    *(v0 + 96) = 0;
    v18 = swift_task_alloc();
    *(v0 + 256) = v18;
    *v18 = v0;
    v19 = sub_230E44410;
  }

  else
  {
LABEL_6:
    v18 = swift_task_alloc();
    *(v0 + 232) = v18;
    *v18 = v0;
    v19 = sub_230E442B8;
  }

  v18[1] = v19;
  v26 = *(v0 + 104);
  v27 = *(v0 + 112);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230E454F8(v18, v26, v27, v0 + 16);
}

uint64_t sub_230E442B8()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_230E449BC;
  }

  else
  {
    v6 = sub_230E448EC;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E44410()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_230E44674;
  }

  else
  {
    v6 = sub_230E44568;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E44568()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  sub_230D38814(42, *(v0 + 248), *(v0 + 656) != 0, v0 + 16, (v0 + 96), *(v0 + 224));
  (*(v4 + 8))(v3, v5);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E447CC, 0, 0);
}

uint64_t sub_230E44674()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 656) != 0;
  *(v0 + 96) = v1;
  swift_willThrow();
  v9 = v1;
  sub_230D38814(42, v2, v8, v0 + 16, (v0 + 96), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v5, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *(v0 + 272) = *(v0 + 264);
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4485C, 0, 0);
}

uint64_t sub_230E447CC()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_230E4485C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[17];

  v2 = v0[1];
  v3 = v0[34];
  v4 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_230E448EC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[14];
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E447CC, 0, 0);
}

uint64_t sub_230E449BC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[14];
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v0[34] = v0[30];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4485C, 0, 0);
}

uint64_t static SystemDatabase.getCurrentConfigurationVersion(using:requestContext:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_230E44B48;

  return sub_230E45E9C(a1, a2);
}

uint64_t sub_230E44B48(uint64_t a1, char a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = *(v7 + 8);

    return v10(a1, a2 & 1);
  }
}

uint64_t static SystemDatabase.getSystemStatus(using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 408) = a1;
  *(v3 + 416) = a2;
  v4 = *(a3 + 16);
  *(v3 + 424) = *a3;
  *(v3 + 440) = v4;
  *(v3 + 456) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230E44CC0, 0, 0);
}

uint64_t sub_230E44CC0()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = (v0 + 360);
  v2 = sub_230E68D80();
  *(v0 + 464) = __swift_project_value_buffer(v2, qword_27DB80BC0);
  v3 = sub_230E68D60();
  v4 = sub_230E693F0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][getSystemStatus] Retrieving current system status", v5, 2u);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v6 = *(v0 + 456);
  v14 = *(v0 + 440);
  v15 = *(v0 + 424);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_230E6B3B0;
  strcpy((v7 + 32), "systemStatus");
  *(v7 + 45) = 0;
  *(v7 + 46) = -5120;
  *(v7 + 48) = 3;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000230E84E70;
  *(v0 + 32) = v7;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  v8 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v8;
  *(v0 + 232) = *(v0 + 112);
  v9 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v9;
  v10 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 128) = 1;
  *(v0 + 248) = 1;
  *(v0 + 184) = v10;
  *v1 = v15;
  *(v0 + 376) = v14;
  *(v0 + 392) = v6;
  v11 = swift_task_alloc();
  *(v0 + 472) = v11;
  *v11 = v0;
  v11[1] = sub_230E44F40;
  v12 = *(v0 + 416);

  return sub_230D3ED1C(v0 + 400, v0 + 136, v1);
}

uint64_t sub_230E44F40()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v6 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = sub_230E45394;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v4 = sub_230E4505C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E4505C()
{
  v29 = v0;
  v1 = *(v0 + 400);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);

    if (*(v2 + 16) && (v3 = sub_230DA41A0(0x74536D6574737973, 0xEC00000073757461), (v4 & 1) != 0))
    {
      v5 = *(v2 + 56) + 24 * v3;
      v7 = *v5;
      v6 = *(v5 + 8);
      v8 = *(v5 + 16);
      sub_230D0DCD8(*v5, v6, *(v5 + 16));

      if (v8 != 3)
      {
        v18 = v7;
        v19 = v6;
        v20 = v8;
LABEL_15:
        sub_230D0F474(v18, v19, v20);
        goto LABEL_16;
      }

      if (v6)
      {
        sub_230D0DCD8(v7, v6, 3);
        v9 = sub_230E69680();
        sub_230D0F474(v7, v6, 3);
        if (v9 < 4)
        {
          v10 = *(v0 + 464);
          v11 = sub_230E68D60();
          v12 = sub_230E693F0();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            v14 = swift_slowAlloc();
            v28 = v14;
            *v13 = 136315138;
            if (v9 > 1u)
            {
              if (v9 == 2)
              {
                v15 = 0xE800000000000000;
                v16 = 0x6465646172676564;
              }

              else
              {
                v15 = 0xE500000000000000;
                v16 = 0x726F727265;
              }
            }

            else if (v9)
            {
              v15 = 0xE500000000000000;
              v16 = 0x7964616572;
            }

            else
            {
              v15 = 0xEC000000676E697ALL;
              v16 = 0x696C616974696E69;
            }

            v27 = sub_230D7E620(v16, v15, &v28);

            *(v13 + 4) = v27;
            _os_log_impl(&dword_230D02000, v11, v12, "[SystemDatabase][getSystemStatus] Current system status: %s", v13, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v14);
            MEMORY[0x23191EAE0](v14, -1, -1);
            MEMORY[0x23191EAE0](v13, -1, -1);
          }

          sub_230D0F474(v7, v6, 3);

          goto LABEL_19;
        }

        v18 = v7;
        v19 = v6;
        v20 = 3;
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  else
  {
    v17 = *(v0 + 400);
  }

LABEL_16:
  v21 = *(v0 + 464);
  v22 = sub_230E68D60();
  v23 = sub_230E69400();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_230D02000, v22, v23, "[SystemDatabase][getSystemStatus] Failed to retrieve valid system status, returning error", v24, 2u);
    MEMORY[0x23191EAE0](v24, -1, -1);
  }

  LOBYTE(v9) = 3;
LABEL_19:
  **(v0 + 408) = v9;
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_230E45394()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  sub_230D1D148(v0 + 16);
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 480);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][getSystemStatus] Failed to get system status: %@", v8, 0xCu);
    sub_230E437AC(v9);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191E910](v7);
  }

  else
  {

    MEMORY[0x23191E910](v7);
  }

  **(v0 + 408) = 3;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_230E454F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[48] = a3;
  v4[49] = a4;
  v4[47] = a2;
  v5 = sub_230E68910();
  v4[50] = v5;
  v6 = *(v5 - 8);
  v4[51] = v6;
  v7 = *(v6 + 64) + 15;
  v4[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E455BC, 0, 0);
}

uint64_t sub_230E455BC()
{
  sub_230E68478(0xD00000000000001ALL, 0x8000000230E80910);
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[51];
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  v7 = (*(v3 + 8))(v1, v2);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  v11 = v0[48];
  v10 = v0[49];
  v12 = v0[47];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v13 = swift_allocObject();
  v0[53] = v13;
  *(v13 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 32) = 0x696669746E656469;
  *(inited + 16) = xmmword_230E7F560;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = xmmword_230E7F570;
  *(inited + 64) = 3;
  strcpy((inited + 72), "systemStatus");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  *(inited + 88) = xmmword_230E7F580;
  *(inited + 104) = 3;
  strcpy((inited + 112), "lastSyncTime");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = v5;
  *(inited + 136) = 0;
  *(inited + 144) = 2;
  strcpy((inited + 152), "configVersion");
  *(inited + 166) = -4864;
  *(inited + 168) = v12;
  *(inited + 176) = 0;
  *(inited + 184) = 2;
  *(inited + 192) = 0xD000000000000016;
  *(inited + 200) = 0x8000000230E84EE0;
  *(inited + 208) = xmmword_230E7F590;
  *(inited + 224) = 2;
  *(inited + 232) = 0x616470557473616CLL;
  *(inited + 240) = 0xEF656D6954646574;
  *(inited + 248) = v5;
  *(inited + 256) = 0;
  *(inited + 264) = 2;
  v15 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v13 + 32) = v15;
  v0[54] = sub_230E1CA68(&unk_2845A4E70);
  swift_arrayDestroy();
  sub_230D1CDE0(v10, (v0 + 36));
  v7 = sub_230E4590C;
  v8 = v11;
  v9 = 0;

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_230E4590C()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[48];
  sub_230D1CDE0(v0[49], (v0 + 41));

  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_230E45A28;
  v5 = v0[53];
  v6 = v0[49];
  v8 = v0[48];

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E45A28()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 392);
  v6 = *(v2 + 384);
  sub_230D1CE3C(v5);
  if (v0)
  {
    v7 = sub_230E45DAC;
  }

  else
  {
    v7 = sub_230E45B70;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E45B70()
{
  v1 = v0[53];
  v2 = v0[54];
  sub_230D1CE3C(v0[49]);

  return MEMORY[0x2822009F8](sub_230E45C08, 0, 0);
}

uint64_t sub_230E45C08()
{
  if (v0[46])
  {
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v1 = sub_230E68D80();
    __swift_project_value_buffer(v1, qword_27DB80BC0);
    v2 = sub_230E68D60();
    v3 = sub_230E693E0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[47];
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;
      _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][updateConfigurationVersion] Updated configuration version to: %ld", v5, 0xCu);
      MEMORY[0x23191EAE0](v5, -1, -1);
    }

    v6 = v0[52];

    v7 = v0[1];
  }

  else
  {
    sub_230D0D224();
    swift_allocError();
    *v8 = 0xD000000000000026;
    *(v8 + 8) = 0x8000000230E84F00;
    *(v8 + 16) = 2;
    swift_willThrow();
    v9 = v0[52];

    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_230E45DAC()
{
  sub_230D1CE3C(*(v0 + 392));

  return MEMORY[0x2822009F8](sub_230E45E14, 0, 0);
}

uint64_t sub_230E45E14()
{
  v1 = v0[53];
  v2 = v0[54];

  v3 = v0[56];
  v4 = v0[52];

  v5 = v0[1];

  return v5();
}

uint64_t sub_230E45E9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 408) = a1;
  v3 = *(a2 + 16);
  *(v2 + 416) = *a2;
  *(v2 + 432) = v3;
  *(v2 + 448) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E45ECC, 0, 0);
}

uint64_t sub_230E45ECC()
{
  v1 = *(v0 + 448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_230E6B3B0;
  strcpy((v2 + 32), "configVersion");
  *(v2 + 46) = -4864;
  *(v2 + 48) = 2;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  v9 = *(v0 + 432);
  v10 = *(v0 + 416);
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000230E84E70;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0xD000000000000015;
  *(v0 + 96) = 0x8000000230E84E90;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  v3 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v3;
  *(v0 + 232) = *(v0 + 112);
  v4 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v4;
  v5 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 128) = 1;
  *(v0 + 248) = 1;
  *(v0 + 184) = v5;
  *(v0 + 360) = v10;
  *(v0 + 376) = v9;
  *(v0 + 392) = v1;
  v6 = swift_task_alloc();
  *(v0 + 456) = v6;
  *v6 = v0;
  v6[1] = sub_230E460B8;
  v7 = *(v0 + 408);

  return sub_230D3ED1C(v0 + 400, v0 + 136, v0 + 360);
}

uint64_t sub_230E460B8()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v6 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_230D4FD9C;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v4 = sub_230E461D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E461D4()
{
  v1 = *(v0 + 400);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);

    if (*(v2 + 16) && (v3 = sub_230DA41A0(0x65566769666E6F63, 0xED00006E6F697372), (v4 & 1) != 0))
    {
      v5 = *(v2 + 56) + 24 * v3;
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v8 = *v5;
      sub_230D0DCD8(*v5, v6, *(v5 + 16));

      if (v7 == 2)
      {
        if ((v6 & 1) == 0)
        {
          v9 = 0;
          v10 = v8;
LABEL_13:
          v15 = *(v0 + 8);

          return v15(v10, v9);
        }
      }

      else
      {
        sub_230D0F474(v8, v6, v7);
      }
    }

    else
    {
    }

    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v11 = sub_230E68D80();
    __swift_project_value_buffer(v11, qword_27DB80BC0);
    v12 = sub_230E68D60();
    v13 = sub_230E693F0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_230D02000, v12, v13, "[SystemDatabase][getCurrentConfigurationVersion] configVersion is NULL, returning nil (first-time setup)", v14, 2u);
      MEMORY[0x23191EAE0](v14, -1, -1);
    }

    v10 = 0;
    v9 = 1;
    goto LABEL_13;
  }

  v17 = *(v0 + 400);

  sub_230D0D224();
  swift_allocError();
  *v18 = 0xD000000000000020;
  *(v18 + 8) = 0x8000000230E84EB0;
  *(v18 + 16) = 4;
  swift_willThrow();
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_230E46438(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 368) = a2;
  v6 = sub_230E68910();
  *(v3 + 376) = v6;
  v7 = *(v6 - 8);
  *(v3 + 384) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 480) = *a1;
  v9 = *(a3 + 16);
  *(v3 + 400) = *a3;
  *(v3 + 416) = v9;
  *(v3 + 432) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E46518, 0, 0);
}

uint64_t sub_230E46518()
{
  v33 = v0;
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 440) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 480);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    v7 = 0xEC000000676E697ALL;
    *v5 = 136315138;
    v8 = 0x696C616974696E69;
    v9 = 0xE800000000000000;
    v10 = 0x6465646172676564;
    if (v4 != 2)
    {
      v10 = 0x726F727265;
      v9 = 0xE500000000000000;
    }

    if (v4)
    {
      v8 = 0x7964616572;
      v7 = 0xE500000000000000;
    }

    if (v4 <= 1)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (v4 <= 1)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    v13 = sub_230D7E620(v11, v12, &v32);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][updateSystemStatus] Updating system status to: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  sub_230E68478(0xD000000000000012, 0x8000000230E808F0);
  v15 = *(v0 + 384);
  v14 = *(v0 + 392);
  v16 = *(v0 + 376);
  sub_230E68900();
  sub_230E688D0();
  v18 = v17;
  v19 = v17;
  result = (*(v15 + 8))(v14, v16);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v21 = *(v0 + 480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v22 = swift_allocObject();
  *(v0 + 448) = v22;
  *(v22 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 32) = 0x696669746E656469;
  *(inited + 16) = xmmword_230E7F560;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = xmmword_230E7F570;
  *(inited + 64) = 3;
  strcpy((inited + 72), "systemStatus");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  v24 = *&aZing[8 * v21];
  v25 = *(v0 + 432);
  v30 = *(v0 + 416);
  v31 = *(v0 + 400);
  *(inited + 88) = *&aInitialiready[8 * v21];
  *(inited + 96) = v24;
  *(inited + 104) = 3;
  strcpy((inited + 112), "lastSyncTime");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = xmmword_230E6E730;
  *(inited + 144) = 2;
  strcpy((inited + 152), "configVersion");
  *(inited + 166) = -4864;
  *(inited + 168) = xmmword_230E6E730;
  *(inited + 184) = 2;
  *(inited + 192) = 0xD000000000000016;
  *(inited + 200) = 0x8000000230E84EE0;
  *(inited + 208) = xmmword_230E7F590;
  *(inited + 224) = 2;
  *(inited + 232) = 0x616470557473616CLL;
  *(inited + 240) = 0xEF656D6954646574;
  *(inited + 248) = v18;
  *(inited + 256) = 0;
  *(inited + 264) = 2;
  v26 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v22 + 32) = v26;
  v27 = sub_230E1CA68(&unk_2845A4FB8);
  *(v0 + 456) = v27;
  swift_arrayDestroy();
  *(v0 + 336) = 0x8000000230E84E70;
  *(v0 + 344) = v22;
  *(v0 + 352) = v27;
  *(v0 + 288) = v31;
  *(v0 + 304) = v30;
  *(v0 + 320) = v25;
  *(v0 + 328) = 0xD000000000000010;
  v28 = swift_task_alloc();
  *(v0 + 464) = v28;
  *v28 = v0;
  v28[1] = sub_230E46B3C;
  v29 = *(v0 + 368);

  return sub_230D41CA0(v0 + 360, v0 + 328, v0 + 288);
}

uint64_t sub_230E46B3C()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v8 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = sub_230E46E34;
  }

  else
  {
    v5 = *(v2 + 448);
    v6 = *(v2 + 456);

    v4 = sub_230E46C74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E46C74()
{
  v19 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 360);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 480);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    v8 = 0xEC000000676E697ALL;
    *v6 = 136315394;
    v9 = 0x696C616974696E69;
    v10 = 0xE800000000000000;
    v11 = 0x6465646172676564;
    if (v5 != 2)
    {
      v11 = 0x726F727265;
      v10 = 0xE500000000000000;
    }

    if (v5)
    {
      v9 = 0x7964616572;
      v8 = 0xE500000000000000;
    }

    if (v5 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    if (v5 <= 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v10;
    }

    v14 = sub_230D7E620(v12, v13, &v18);

    *(v6 + 4) = v14;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v2;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][updateSystemStatus] System status updated to: %s, processed: %lld", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v15 = *(v0 + 392);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_230E46E34()
{
  v1 = v0[56];
  v2 = v0[57];

  v3 = v0[59];
  v4 = v0[55];
  v5 = v3;
  v6 = sub_230E68D60();
  v7 = sub_230E69400();
  MEMORY[0x23191E910](v3);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_230D02000, v6, v7, "[SystemDatabase][updateSystemStatus] Failed to update system status: %@", v8, 0xCu);
    sub_230E437AC(v9);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
  }

  v12 = v0[49];

  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t static SystemDatabase.fetchActiveTreatments(for:using:requestContext:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 424) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D920, &qword_230E7F620) - 8) + 64) + 15;
  *(v3 + 432) = swift_task_alloc();
  v7 = type metadata accessor for Treatment();
  *(v3 + 440) = v7;
  v8 = *(v7 - 8);
  *(v3 + 448) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 456) = swift_task_alloc();
  v10 = sub_230E68910();
  *(v3 + 464) = v10;
  v11 = *(v10 - 8);
  *(v3 + 472) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 480) = swift_task_alloc();
  *(v3 + 129) = *a1;
  v13 = *(a3 + 16);
  *(v3 + 488) = *a3;
  *(v3 + 504) = v13;
  *(v3 + 520) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E47124, 0, 0);
}

uint64_t sub_230E47124()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  result = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v8 = (v0 + 360);
  v9 = *(v0 + 129);
  if (v9 == 10)
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    sub_230E69540();

    if (v9 > 4)
    {
      v20 = 0xE600000000000000;
      v21 = 0x6E6F6D6D6F63;
      v22 = 0x65676175676E616CLL;
      if (v9 != 8)
      {
        v22 = 0x7974697275636573;
      }

      if (v9 != 7)
      {
        v21 = v22;
        v20 = 0xE800000000000000;
      }

      v23 = 0xE800000000000000;
      v24 = 0x7374736163646F70;
      if (v9 != 5)
      {
        v24 = 0x6F65646976;
        v23 = 0xE500000000000000;
      }

      if (v9 <= 6)
      {
        v18 = v24;
      }

      else
      {
        v18 = v21;
      }

      if (v9 <= 6)
      {
        v19 = v23;
      }

      else
      {
        v19 = v20;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      v13 = 0x6C616E7265746E69;
      v14 = 0xE500000000000000;
      v15 = 0x736B6F6F62;
      v16 = 0xE700000000000000;
      v17 = 0x7373656E746966;
      if (v9 != 3)
      {
        v17 = 0x636973756DLL;
        v16 = 0xE500000000000000;
      }

      if (v9 != 2)
      {
        v15 = v17;
        v14 = v16;
      }

      if (v9)
      {
        v13 = 1936748641;
        v12 = 0xE400000000000000;
      }

      if (v9 <= 1)
      {
        v18 = v13;
      }

      else
      {
        v18 = v15;
      }

      if (v9 <= 1)
      {
        v19 = v12;
      }

      else
      {
        v19 = v14;
      }
    }

    MEMORY[0x23191DA00](v18, v19);

    MEMORY[0x23191DA00](0x20444E412027, 0xE600000000000000);
    v10 = 0x3D206E69616D6F64;
    v11 = 0xEA00000000002720;
  }

  v25 = *(v0 + 520);
  v33 = *(v0 + 504);
  v34 = *(v0 + 488);
  sub_230E69540();

  MEMORY[0x23191DA00](0x7461447472617473, 0xED0000203D3C2065);
  *(v0 + 400) = v5;
  v26 = sub_230E69890();
  MEMORY[0x23191DA00](v26);

  MEMORY[0x23191DA00](0xD000000000000010, 0x8000000230E84F30);
  *(v0 + 408) = v5;
  v27 = sub_230E69890();
  MEMORY[0x23191DA00](v27);

  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0x6D74616572545F5FLL;
  *(v0 + 24) = 0xEB00000000746E65;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = v10;
  *(v0 + 96) = v11;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  v28 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v28;
  *(v0 + 232) = *(v0 + 112);
  v29 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v29;
  v30 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 128) = 1;
  *(v0 + 248) = 1;
  *(v0 + 184) = v30;
  *v8 = v34;
  *(v0 + 376) = v33;
  *(v0 + 392) = v25;
  v31 = swift_task_alloc();
  *(v0 + 528) = v31;
  *v31 = v0;
  v31[1] = sub_230E4757C;
  v32 = *(v0 + 424);

  return sub_230D3ED1C(v0 + 416, v0 + 136, v8);
}

uint64_t sub_230E4757C()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v6 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v4 = sub_230E47874;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v4 = sub_230E47698;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_230E47698()
{
  v1 = v0[52];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[56];
    v5 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      v7 = v0[54];
      v6 = v0[55];
      v8 = *(v1 + 32 + 8 * v3);

      sub_230E49A80(v9, v7);

      if ((*(v4 + 48))(v7, 1, v6) == 1)
      {
        sub_230E49E20(v0[54]);
      }

      else
      {
        sub_230DC28F8(v0[54], v0[57]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_230E4A9C4(0, v5[2] + 1, 1, v5);
        }

        v11 = v5[2];
        v10 = v5[3];
        if (v11 >= v10 >> 1)
        {
          v5 = sub_230E4A9C4(v10 > 1, v11 + 1, 1, v5);
        }

        v12 = v0[57];
        v5[2] = v11 + 1;
        sub_230DC28F8(v12, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
      }

      if (v2 == ++v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_13:
    v13 = v0[60];
    v14 = v0[57];
    v15 = v0[54];

    v16 = v0[1];

    v16(v5);
  }
}

uint64_t sub_230E47874()
{
  v1 = v0[60];
  v2 = v0[57];
  v3 = v0[54];
  sub_230D1D148((v0 + 2));

  v4 = v0[1];
  v5 = v0[67];

  return v4();
}

uint64_t static SystemDatabase.storeTreatments(_:using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  v5 = sub_230E68D80();
  *(v3 + 120) = v5;
  v6 = *(v5 - 8);
  *(v3 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v8 = *(a3 + 16);
  *(v3 + 144) = *a3;
  *(v3 + 160) = v8;
  *(v3 + 176) = *(a3 + 32);
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E47A04, 0, 0);
}

uint64_t sub_230E47A04()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 200) = v1;
    *(v0 + 208) = v3;
    *(v0 + 663) = BYTE1(v2);
    *(v0 + 662) = v2 & 1;
    *(v0 + 192) = v5;
    *(v0 + 661) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = qword_27DB5A438;
    *(v0 + 216) = qword_27DB5A438;

    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E47E60, v8, 0);
  }

  else
  {
    *(v0 + 660) = 30;
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_230E47BF0;
    v11 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 660), 0, 0);
  }
}

uint64_t sub_230E47BF0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 184);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E47D18, 0, 0);
}

uint64_t sub_230E47D18()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 200) = v3;
  *(v0 + 208) = v6;
  *(v0 + 663) = v5;
  *(v0 + 662) = v4;
  *(v0 + 192) = v2;
  *(v0 + 661) = v1;
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = qword_27DB5A438;
  *(v0 + 216) = qword_27DB5A438;

  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E47E60, v14, 0);
}

uint64_t sub_230E47E60()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 136);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 661);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0x65725465726F7473, 0xEF73746E656D7461, v31);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v31);
    *(v9 + 22) = 2080;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  if (*(v0 + 662) != 1)
  {
    goto LABEL_6;
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 663);
  v30 = *(v0 + 661);
  v15 = RequestType.rawValue.getter();
  v17 = v16;

  LOBYTE(v15) = sub_230D33FDC(v15, v17, v13);

  if ((v15 & 1) != 0 || v14 >= 2)
  {
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
    *(v0 + 472) = 0u;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 600) = 0u;
    *(v0 + 616) = 0u;
    *(v0 + 632) = 0u;
    *(v0 + 648) = 0;
    *(v0 + 652) = 93;
    v20 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 280), (v0 + 652));
    *(v0 + 656) = v20;
    v21 = 0.0;
    if (!v20)
    {
      v22 = *(v0 + 328);
      v23 = *(v0 + 400);
      v24 = __CFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
      }

      v21 = vcvtd_n_f64_u64(v25, 0x14uLL);
    }

    *(v0 + 248) = v21;
    *(v0 + 96) = 0;
    v18 = swift_task_alloc();
    *(v0 + 256) = v18;
    *v18 = v0;
    v19 = sub_230E483B4;
  }

  else
  {
LABEL_6:
    v18 = swift_task_alloc();
    *(v0 + 232) = v18;
    *v18 = v0;
    v19 = sub_230E4825C;
  }

  v18[1] = v19;
  v27 = *(v0 + 104);
  v26 = *(v0 + 112);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230E4896C(v18, v26, v0 + 16, v27);
}

uint64_t sub_230E4825C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_230E48880;
  }

  else
  {
    v6 = sub_230E48794;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E483B4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_230E4862C;
  }

  else
  {
    v6 = sub_230E4850C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E4850C()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  sub_230D38814(30, *(v0 + 248), *(v0 + 656) != 0, v0 + 16, (v0 + 96), *(v0 + 224));
  (*(v4 + 8))(v3, v5);

  v8 = *(v0 + 200);
  v9 = *(v0 + 208);

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E447CC, 0, 0);
}

uint64_t sub_230E4862C()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v13 = *(v0 + 200);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 104);
  v14 = *(v0 + 208);
  v9 = *(v0 + 656) != 0;
  *(v0 + 96) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D38814(30, v2, v9, v0 + 16, (v0 + 96), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v5, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  *(v0 + 272) = *(v0 + 264);
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4485C, 0, 0);
}

uint64_t sub_230E48794()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[14];
  v4 = v0[13];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v5 = v0[25];
  v6 = v0[26];

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E447CC, 0, 0);
}

uint64_t sub_230E48880()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[14];
  v4 = v0[13];
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v0[34] = v0[30];
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4485C, 0, 0);
}

uint64_t sub_230E4896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 552) = a4;
  *(v4 + 544) = a3;
  *(v4 + 536) = a2;
  *(v4 + 688) = *a3;
  *(v4 + 560) = *(a3 + 8);
  *(v4 + 689) = *(a3 + 24);
  *(v4 + 576) = *(a3 + 32);
  v5 = type metadata accessor for Treatment();
  *(v4 + 584) = v5;
  v6 = *(v5 - 8);
  *(v4 + 592) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 600) = swift_task_alloc();
  v8 = sub_230E68910();
  *(v4 + 608) = v8;
  v9 = *(v8 - 8);
  *(v4 + 616) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 624) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E48AB4, 0, 0);
}

uint64_t sub_230E48AB4()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  *(v0 + 632) = v4;
  result = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 576);
  v9 = *(v0 + 568);
  v10 = *(v0 + 560);
  v11 = *(v0 + 544);
  v12 = *(v0 + 689) & 1 | (*(v0 + 690) << 8);
  *(v0 + 368) = *(v0 + 688);
  *(v0 + 376) = v10;
  *(v0 + 384) = v9;
  *(v0 + 392) = v12;
  *(v0 + 400) = v8;
  sub_230D1CDE0(v11, v0 + 408);
  v13 = swift_task_alloc();
  *(v0 + 640) = v13;
  *v13 = v0;
  v13[1] = sub_230E48C14;
  v14 = *(v0 + 536);

  return sub_230E4B384(v5, v14, v0 + 368);
}

uint64_t sub_230E48C14()
{
  v2 = *v1;
  v3 = (*v1)[80];
  v4 = *v1;
  v2[81] = v0;

  v5 = v2[49];
  v6 = v2[50];
  sub_230D666B4(v2[46], v2[47], v2[48]);
  if (v0)
  {
    v7 = sub_230E494C8;
  }

  else
  {
    v7 = sub_230E48D88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_230E48D88()
{
  v68 = *(v0 + 600);
  v1 = *(v0 + 592);
  v2 = *(v0 + 552);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = *(v0 + 584);
  v7 = -1;
  v8 = -1 << *(*(v0 + 552) + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v66 = v7 & v3;
  v65 = (63 - v8) >> 6;

  v10 = 0;
  v67 = (v0 + 80);
  v11 = MEMORY[0x277D84F90];
LABEL_4:
  *(v0 + 656) = v11;
  v12 = v66;
  while (v12)
  {
LABEL_5:
    v13 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(v9 + 56) + 8 * v14);
    if (*(v15 + 16))
    {
      v59 = *(v15 + 16);
      v66 = v12;
      v56 = v4;
      v57 = v9;
      v63 = v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      v64 = *(*(v9 + 48) + v14);

      v17 = 0;
      v58 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A920, &unk_230E6B9C0);
      v62 = *(v1 + 72);
      v60 = v6;
      v61 = v0;
      while (1)
      {
        v18 = *(v0 + 600);
        v70 = v17;
        sub_230DBCB98(v63 + v17 * v62, v18);
        strcpy((v0 + 48), "areaIdentifier");
        *(v0 + 63) = -18;
        v19 = *(v68 + 8);
        *(v0 + 64) = *v18;
        *(v0 + 72) = v19;
        *(v0 + 80) = 3;
        *(v0 + 88) = 0x696669746E656469;
        *(v0 + 96) = 0xEA00000000007265;
        v20 = *(v68 + 24);
        *(v0 + 104) = *(v68 + 16);
        *(v0 + 112) = v20;
        *(v0 + 120) = 3;
        *(v0 + 128) = 0x6E69616D6F64;
        *(v0 + 136) = 0xE600000000000000;
        v21 = *&aPodcasts_2[8 * v64 + 8];
        *(v0 + 144) = *&aApps_2[8 * v64];
        *(v0 + 152) = v21;
        *(v0 + 160) = 3;
        *(v0 + 168) = 0x74656B637562;
        *(v0 + 176) = 0xE600000000000000;
        v22 = *(v0 + 600);
        *(v0 + 184) = -*(v68 + 32);
        *(v0 + 192) = 0;
        *(v0 + 200) = 2;
        *(v0 + 208) = 0x7461447472617473;
        *(v0 + 216) = 0xE900000000000065;
        v23 = *(v6 + 28);

        sub_230E688D0();
        if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v24 <= -9.22337204e18)
        {
          goto LABEL_42;
        }

        if (v24 >= 9.22337204e18)
        {
          goto LABEL_43;
        }

        v25 = *(v0 + 600);
        *(v0 + 224) = v24;
        *(v0 + 232) = 0;
        *(v0 + 240) = 2;
        *(v0 + 248) = 0x65746144646E65;
        *(v0 + 256) = 0xE700000000000000;
        v26 = v25 + *(v6 + 32);
        sub_230E688D0();
        if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_44;
        }

        if (v27 <= -9.22337204e18)
        {
          goto LABEL_45;
        }

        if (v27 >= 9.22337204e18)
        {
          goto LABEL_46;
        }

        v69 = v11;
        v71 = v70 + 1;
        v28 = *(v0 + 632);
        *(v0 + 264) = v27;
        *(v0 + 272) = 0;
        *(v0 + 280) = 2;
        strcpy((v0 + 288), "creationTime");
        *(v0 + 301) = 0;
        *(v0 + 302) = -5120;
        *(v0 + 304) = v28;
        *(v0 + 312) = 0;
        *(v0 + 320) = 2;
        *(v0 + 328) = 0x616470557473616CLL;
        *(v0 + 336) = 0xEF656D6954646574;
        *(v0 + 344) = v28;
        *(v0 + 352) = 0;
        *(v0 + 360) = 2;
        v29 = sub_230E69640();

        v30 = v67;
        v0 = 8;
        do
        {
          v31 = *(v30 - 4);
          v32 = *(v30 - 3);
          v33 = *(v30 - 2);
          v34 = *(v30 - 1);
          v35 = *v30;

          sub_230D0DCD8(v33, v34, v35);
          v36 = sub_230DA41A0(v31, v32);
          if (v37)
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          *(v29 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v36;
          v38 = (v29[6] + 16 * v36);
          *v38 = v31;
          v38[1] = v32;
          v39 = v29[7] + 24 * v36;
          *v39 = v33;
          *(v39 + 8) = v34;
          *(v39 + 16) = v35;
          v40 = v29[2];
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            goto LABEL_39;
          }

          v30 += 40;
          v29[2] = v42;
          --v0;
        }

        while (v0);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
        v0 = v61;
        swift_arrayDestroy();
        v11 = v69;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_230E4A61C(0, v69[2] + 1, 1, v69, &qword_27DB5B2C0, &unk_230E6F630, &qword_27DB5AC20, &qword_230E6C230);
        }

        v6 = v60;
        v17 = v71;
        v44 = v11[2];
        v43 = v11[3];
        if (v44 >= v43 >> 1)
        {
          v11 = sub_230E4A61C((v43 > 1), v44 + 1, 1, v11, &qword_27DB5B2C0, &unk_230E6F630, &qword_27DB5AC20, &qword_230E6C230);
        }

        sub_230DBCBFC(*(v61 + 600));
        v11[2] = v44 + 1;
        v11[v44 + 4] = v29;
        if (v71 == v59)
        {

          v9 = v57;
          v1 = v58;
          v4 = v56;
          goto LABEL_4;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
      goto LABEL_33;
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v16 >= v65)
    {
      break;
    }

    v12 = *(v4 + 8 * v16);
    ++v10;
    if (v12)
    {
      v10 = v16;
      goto LABEL_5;
    }
  }

  v45 = *(v0 + 552);

  if (!v11[2])
  {

    if (qword_27DB5A4B0 != -1)
    {
      goto LABEL_47;
    }

LABEL_33:
    v48 = sub_230E68D80();
    __swift_project_value_buffer(v48, qword_27DB80BC0);
    v49 = sub_230E68D60();
    v50 = sub_230E69400();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_230D02000, v49, v50, "[SystemDatabase][storeTreatments] No treatment data was stored.", v51, 2u);
      MEMORY[0x23191EAE0](v51, -1, -1);
    }

    v52 = *(v0 + 624);
    v53 = *(v0 + 600);

    v54 = *(v0 + 8);

    return v54();
  }

  v46 = *(v0 + 544);
  v47 = *(v0 + 536);
  *(v0 + 664) = sub_230E1CA68(&unk_2845A4DD0);
  swift_arrayDestroy();
  sub_230D1CDE0(v46, v0 + 448);

  return MEMORY[0x2822009F8](sub_230E49538, v47, 0);
}

uint64_t sub_230E494C8()
{
  v1 = v0[81];
  v2 = v0[78];
  v3 = v0[75];

  v4 = v0[1];

  return v4();
}

void sub_230E49538()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[67];
  sub_230D1CDE0(v0[68], (v0 + 61));

  v4 = swift_task_alloc();
  v0[84] = v4;
  *v4 = v0;
  v4[1] = sub_230E49668;
  v5 = v0[82];
  v6 = v0[68];
  v8 = v0[67];

  JUMPOUT(0x230D70398);
}

uint64_t sub_230E49668()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v4 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 680) = v0;

  sub_230D1CE3C(v4);
  v6 = *(v2 + 536);
  if (v0)
  {
    v7 = sub_230E49980;
  }

  else
  {
    v7 = sub_230E497B0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E497B0()
{
  v1 = v0[83];
  v2 = v0[82];
  sub_230D1CE3C(v0[68]);

  return MEMORY[0x2822009F8](sub_230E49840, 0, 0);
}

uint64_t sub_230E49840()
{
  v1 = v0[66];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_230E68D80();
  __swift_project_value_buffer(v2, qword_27DB80BC0);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][storeTreatments] Upserted %lld treatments", v5, 0xCu);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v6 = v0[78];
  v7 = v0[75];

  v8 = v0[1];

  return v8();
}

uint64_t sub_230E49980()
{
  sub_230D1CE3C(*(v0 + 544));

  return MEMORY[0x2822009F8](sub_230E499E8, 0, 0);
}

uint64_t sub_230E499E8()
{
  v1 = v0[83];
  v2 = v0[82];

  v3 = v0[85];
  v4 = v0[78];
  v5 = v0[75];

  v6 = v0[1];

  return v6();
}

uint64_t sub_230E49A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v4 = sub_230DA41A0(0x6E65644961657261, 0xEE00726569666974);
  if ((v5 & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = *(a1 + 56) + 24 * v4;
  v7 = *(v6 + 8);
  v8 = *(v6 + 16) != 3 || v7 == 0;
  if (v8 || !*(a1 + 16))
  {
    goto LABEL_19;
  }

  v9 = *v6;
  v10 = *(v6 + 8);

  v11 = sub_230DA41A0(0x696669746E656469, 0xEA00000000007265);
  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  v13 = *(a1 + 56) + 24 * v11;
  if (*(v13 + 16) != 3)
  {
    goto LABEL_17;
  }

  v15 = *v13;
  v14 = *(v13 + 8);
  if (!v14)
  {
    sub_230D0DCD8(*v13, 0, 3);
    goto LABEL_17;
  }

  if (*(a1 + 16))
  {

    v16 = sub_230DA41A0(0x74656B637562, 0xE600000000000000);
    if (v17)
    {
      v18 = *(a1 + 56) + 24 * v16;
      if (*(v18 + 16) == 2)
      {
        if (*(v18 + 8))
        {
LABEL_15:
          sub_230D0F474(v15, v14, 3);
          goto LABEL_17;
        }

        if (*(a1 + 16))
        {
          v31 = *v18;
          v32 = sub_230DA41A0(0x7461447472617473, 0xE900000000000065);
          if (v33)
          {
            v34 = *(a1 + 56) + 24 * v32;
            if (*(v34 + 16) == 2)
            {
              if (*(v34 + 8))
              {
                goto LABEL_15;
              }

              if (*(a1 + 16))
              {
                v35 = *v34;
                v36 = sub_230DA41A0(0x65746144646E65, 0xE700000000000000);
                if (v37)
                {
                  v38 = *(a1 + 56) + 24 * v36;
                  if (*(v38 + 16) == 2)
                  {
                    if ((*(v38 + 8) & 1) == 0)
                    {
                      v39 = v31 + 2;
                      if ((v31 + 2) < 3)
                      {
                        v40 = *v38;
                        v41 = 2 - v39;
                        v42 = type metadata accessor for Treatment();
                        v43 = a2 + *(v42 + 28);
                        sub_230E688C0();
                        v44 = a2 + *(v42 + 32);
                        sub_230E688C0();
                        *a2 = v9;
                        *(a2 + 8) = v7;
                        *(a2 + 16) = v15;
                        *(a2 + 24) = v14;
                        *(a2 + 32) = v41;
                        v26 = *(*(v42 - 8) + 56);
                        v28 = a2;
                        v29 = 0;
                        v27 = v42;
                        goto LABEL_24;
                      }
                    }

                    goto LABEL_15;
                  }
                }
              }
            }
          }
        }
      }
    }

    sub_230D0F474(v9, v7, 3);
    v19 = v15;
    v20 = v14;
    goto LABEL_18;
  }

LABEL_17:
  v19 = v9;
  v20 = v7;
LABEL_18:
  sub_230D0F474(v19, v20, 3);
LABEL_19:
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v21 = sub_230E68D80();
  __swift_project_value_buffer(v21, qword_27DB80BC0);
  v22 = sub_230E68D60();
  v23 = sub_230E69400();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_230D02000, v22, v23, "[SystemDatabase][parseTreatmentFromRow] Failed to parse treatment row", v24, 2u);
    MEMORY[0x23191EAE0](v24, -1, -1);
  }

  v25 = type metadata accessor for Treatment();
  v26 = *(*(v25 - 8) + 56);
  v27 = v25;
  v28 = a2;
  v29 = 1;
LABEL_24:

  return v26(v28, v29, 1, v27);
}

uint64_t sub_230E49E20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D920, &qword_230E7F620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_230E49E88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230E49F94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230E4A0DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D960, &qword_230E7F678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_230E4A1E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2E0, &qword_230E6F660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_230E4A2E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2D8, &qword_230E6F658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_230E4A3E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D930, &qword_230E7F640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_230E4A4EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B310, &qword_230E6F690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230E4A61C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_230E4A750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2F8, &qword_230E6F678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230E4A87C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B300, &qword_230E6F680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B308, &qword_230E6F688);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_230E4A9C4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D958, &qword_230E7F670);
  v10 = *(type metadata accessor for Treatment() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Treatment() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_230E4AB9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C8, &unk_230E6F640);
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

char *sub_230E4AC90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D950, &qword_230E7F660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230E4ADB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAA8, &qword_230E72358);
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

void *sub_230E4AEA4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D940, &qword_230E7F650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D948, &qword_230E7F658);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230E4AFF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D938, &qword_230E7F648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230E4B114(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_230E4B198(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B328, &qword_230E6F6A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_230E4B26C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 3) + (v9 >> 63));
  return result;
}

void *sub_230E4B308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 + 31;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 6);
  return result;
}

uint64_t sub_230E4B384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  v4 = *(a3 + 16);
  *(v3 + 120) = *a3;
  *(v3 + 136) = v4;
  *(v3 + 152) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230E4B3B8, 0, 0);
}

uint64_t sub_230E4B3B8()
{
  v1 = *(v0 + 152);
  *(v0 + 88) = *(v0 + 104);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  v2 = sub_230E69890();
  MEMORY[0x23191DA00](v2);

  *(v0 + 160) = 0xEA0000000000203CLL;
  swift_bridgeObjectRelease_n();
  *(v0 + 56) = 0x6D74616572545F5FLL;
  *(v0 + 64) = 0xEB00000000746E65;
  *(v0 + 72) = 0x2065746144646E65;
  *(v0 + 80) = 0xEA0000000000203CLL;
  *(v0 + 32) = v6;
  *(v0 + 16) = v7;
  *(v0 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_230E4B51C;
  v4 = *(v0 + 112);

  return sub_230D41368(v0 + 96, v0 + 56, (v0 + 16));
}

uint64_t sub_230E4B51C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_230E4B77C;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_230E4B64C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E4B64C()
{
  v1 = *(v0 + 96);
  if (v1 >= 1)
  {
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v2 = sub_230E68D80();
    __swift_project_value_buffer(v2, qword_27DB80BC0);
    v3 = sub_230E68D60();
    v4 = sub_230E693E0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][cleanupExpiredTreatments] Removed %lld expired treatments", v5, 0xCu);
      MEMORY[0x23191EAE0](v5, -1, -1);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_230E4B77C()
{
  v1 = v0[20];

  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

uint64_t sub_230E4B7F4(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v40 - v13;
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v42) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v42 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v43, &v42);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v44, *(&v48 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v44 + *(&v48 + 1), 0x14uLL);
  }

  v41 = v14;
  v19 = Current - a5;
  v20 = v18 - *&a2;
  v21 = (v17 != 0) | a3 & 1;
  if (v21)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v20;
  }

  sub_230E68950();
  LOBYTE(v43[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v40 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  v43[0] = 0x6C616E7265746E69;
  v43[1] = 0xE90000000000002ELL;
  LOBYTE(v42) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v43[1];
  *(v26 + 32) = v43[0];
  *(v26 + 40) = v28;
  *(v26 + 48) = v19;
  *(v26 + 56) = 0;
  *(v26 + 64) = v22;
  *(v26 + 72) = v21;
  *(v26 + 80) = 0;
  v29 = *(a4 + 8);
  v30 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v31 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v32 = swift_allocObject();
  *(v32 + 16) = v40;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v23;
  *(v33 + 32) = v25;
  *(v33 + 40) = 1;
  *(v33 + 48) = v26;
  *(v33 + 56) = v29;
  *(v33 + 64) = v30;
  *(v33 + 72) = 257;
  *(v33 + 80) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_230E7F768;
  *(v34 + 24) = v33;
  *(v32 + 32) = &unk_230E7F770;
  *(v32 + 40) = v34;
  v35 = sub_230E69310();
  v36 = v41;
  (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v32;

  sub_230D8F204(0, 0, v36, &unk_230E7F778, v37);

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230E4BC68(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v40 - v13;
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v42) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v42 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v43, &v42);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v44, *(&v48 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v44 + *(&v48 + 1), 0x14uLL);
  }

  v41 = v14;
  v19 = Current - a5;
  v20 = v18 - *&a2;
  v21 = (v17 != 0) | a3 & 1;
  if (v21)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v20;
  }

  sub_230E68950();
  LOBYTE(v43[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v40 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  v43[0] = 0x6C616E7265746E69;
  v43[1] = 0xE90000000000002ELL;
  LOBYTE(v42) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v43[1];
  *(v26 + 32) = v43[0];
  *(v26 + 40) = v28;
  *(v26 + 48) = v19;
  *(v26 + 56) = 0;
  *(v26 + 64) = v22;
  *(v26 + 72) = v21;
  *(v26 + 80) = 0;
  v29 = *(a4 + 8);
  v30 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v31 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v32 = swift_allocObject();
  *(v32 + 16) = v40;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v23;
  *(v33 + 32) = v25;
  *(v33 + 40) = 1;
  *(v33 + 48) = v26;
  *(v33 + 56) = v29;
  *(v33 + 64) = v30;
  *(v33 + 72) = 257;
  *(v33 + 80) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_230E7F6E8;
  *(v34 + 24) = v33;
  *(v32 + 32) = &unk_230E7F6F0;
  *(v32 + 40) = v34;
  v35 = sub_230E69310();
  v36 = v41;
  (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v32;

  sub_230D8F204(0, 0, v36, &unk_230E7F6F8, v37);

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230E4C0DC(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v40 - v13;
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v42) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v42 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v43, &v42);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v44, *(&v48 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v44 + *(&v48 + 1), 0x14uLL);
  }

  v41 = v14;
  v19 = Current - a5;
  v20 = v18 - *&a2;
  v21 = (v17 != 0) | a3 & 1;
  if (v21)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v20;
  }

  sub_230E68950();
  LOBYTE(v43[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v40 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  v43[0] = 0x6C616E7265746E69;
  v43[1] = 0xE90000000000002ELL;
  LOBYTE(v42) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v43[1];
  *(v26 + 32) = v43[0];
  *(v26 + 40) = v28;
  *(v26 + 48) = v19;
  *(v26 + 56) = 0;
  *(v26 + 64) = v22;
  *(v26 + 72) = v21;
  *(v26 + 80) = 0;
  v29 = *(a4 + 8);
  v30 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v31 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v32 = swift_allocObject();
  *(v32 + 16) = v40;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v23;
  *(v33 + 32) = v25;
  *(v33 + 40) = 1;
  *(v33 + 48) = v26;
  *(v33 + 56) = v29;
  *(v33 + 64) = v30;
  *(v33 + 72) = 257;
  *(v33 + 80) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_230E7F750;
  *(v34 + 24) = v33;
  *(v32 + 32) = &unk_230E7F758;
  *(v32 + 40) = v34;
  v35 = sub_230E69310();
  v36 = v41;
  (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v32;

  sub_230D8F204(0, 0, v36, &unk_230E7F760, v37);

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230E4C550(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v40 - v13;
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v42) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v42 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v43, &v42);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v44, *(&v48 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v44 + *(&v48 + 1), 0x14uLL);
  }

  v41 = v14;
  v19 = Current - a5;
  v20 = v18 - *&a2;
  v21 = (v17 != 0) | a3 & 1;
  if (v21)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v20;
  }

  sub_230E68950();
  LOBYTE(v43[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v40 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  v43[0] = 0x6C616E7265746E69;
  v43[1] = 0xE90000000000002ELL;
  LOBYTE(v42) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v43[1];
  *(v26 + 32) = v43[0];
  *(v26 + 40) = v28;
  *(v26 + 48) = v19;
  *(v26 + 56) = 0;
  *(v26 + 64) = v22;
  *(v26 + 72) = v21;
  *(v26 + 80) = 0;
  v29 = *(a4 + 8);
  v30 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v31 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v32 = swift_allocObject();
  *(v32 + 16) = v40;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v23;
  *(v33 + 32) = v25;
  *(v33 + 40) = 1;
  *(v33 + 48) = v26;
  *(v33 + 56) = v29;
  *(v33 + 64) = v30;
  *(v33 + 72) = 257;
  *(v33 + 80) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_230E7F738;
  *(v34 + 24) = v33;
  *(v32 + 32) = &unk_230E7F740;
  *(v32 + 40) = v34;
  v35 = sub_230E69310();
  v36 = v41;
  (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v32;

  sub_230D8F204(0, 0, v36, &unk_230E7F748, v37);

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230E4C9C4(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v40 - v13;
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v42) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v42 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v43, &v42);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v44, *(&v48 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v44 + *(&v48 + 1), 0x14uLL);
  }

  v41 = v14;
  v19 = Current - a5;
  v20 = v18 - *&a2;
  v21 = (v17 != 0) | a3 & 1;
  if (v21)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v20;
  }

  sub_230E68950();
  LOBYTE(v43[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v40 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  v43[0] = 0x6C616E7265746E69;
  v43[1] = 0xE90000000000002ELL;
  LOBYTE(v42) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v43[1];
  *(v26 + 32) = v43[0];
  *(v26 + 40) = v28;
  *(v26 + 48) = v19;
  *(v26 + 56) = 0;
  *(v26 + 64) = v22;
  *(v26 + 72) = v21;
  *(v26 + 80) = 0;
  v29 = *(a4 + 8);
  v30 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v31 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v32 = swift_allocObject();
  *(v32 + 16) = v40;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v23;
  *(v33 + 32) = v25;
  *(v33 + 40) = 1;
  *(v33 + 48) = v26;
  *(v33 + 56) = v29;
  *(v33 + 64) = v30;
  *(v33 + 72) = 257;
  *(v33 + 80) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_230E73410;
  *(v34 + 24) = v33;
  *(v32 + 32) = &unk_230E6E478;
  *(v32 + 40) = v34;
  v35 = sub_230E69310();
  v36 = v41;
  (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v32;

  sub_230D8F204(0, 0, v36, &unk_230E73420, v37);

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230E4CE38(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v40 - v13;
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v42) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v42 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v43, &v42);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v44, *(&v48 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v44 + *(&v48 + 1), 0x14uLL);
  }

  v41 = v14;
  v19 = Current - a5;
  v20 = v18 - *&a2;
  v21 = (v17 != 0) | a3 & 1;
  if (v21)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v20;
  }

  sub_230E68950();
  LOBYTE(v43[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v40 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  v43[0] = 0x6C616E7265746E69;
  v43[1] = 0xE90000000000002ELL;
  LOBYTE(v42) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v43[1];
  *(v26 + 32) = v43[0];
  *(v26 + 40) = v28;
  *(v26 + 48) = v19;
  *(v26 + 56) = 0;
  *(v26 + 64) = v22;
  *(v26 + 72) = v21;
  *(v26 + 80) = 0;
  v29 = *(a4 + 8);
  v30 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v31 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v32 = swift_allocObject();
  *(v32 + 16) = v40;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v23;
  *(v33 + 32) = v25;
  *(v33 + 40) = 1;
  *(v33 + 48) = v26;
  *(v33 + 56) = v29;
  *(v33 + 64) = v30;
  *(v33 + 72) = 257;
  *(v33 + 80) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_230E7F788;
  *(v34 + 24) = v33;
  *(v32 + 32) = &unk_230E7F790;
  *(v32 + 40) = v34;
  v35 = sub_230E69310();
  v36 = v41;
  (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v32;

  sub_230D8F204(0, 0, v36, &unk_230E7F798, v37);

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230E4D2AC(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v40 - v13;
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v42) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v42 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v43, &v42);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v44, *(&v48 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v44 + *(&v48 + 1), 0x14uLL);
  }

  v41 = v14;
  v19 = Current - a5;
  v20 = v18 - *&a2;
  v21 = (v17 != 0) | a3 & 1;
  if (v21)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v20;
  }

  sub_230E68950();
  LOBYTE(v43[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v40 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  v43[0] = 0x6C616E7265746E69;
  v43[1] = 0xE90000000000002ELL;
  LOBYTE(v42) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v43[1];
  *(v26 + 32) = v43[0];
  *(v26 + 40) = v28;
  *(v26 + 48) = v19;
  *(v26 + 56) = 0;
  *(v26 + 64) = v22;
  *(v26 + 72) = v21;
  *(v26 + 80) = 0;
  v29 = *(a4 + 8);
  v30 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v31 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v32 = swift_allocObject();
  *(v32 + 16) = v40;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v23;
  *(v33 + 32) = v25;
  *(v33 + 40) = 1;
  *(v33 + 48) = v26;
  *(v33 + 56) = v29;
  *(v33 + 64) = v30;
  *(v33 + 72) = 257;
  *(v33 + 80) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_230E7F708;
  *(v34 + 24) = v33;
  *(v32 + 32) = &unk_230E7F710;
  *(v32 + 40) = v34;
  v35 = sub_230E69310();
  v36 = v41;
  (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v32;

  sub_230D8F204(0, 0, v36, &unk_230E7F718, v37);

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230E4D720(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v65 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v40 - v13;
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v42) = a1;
  v15 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v15);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  memset(v43, 0, sizeof(v43));
  v42 = 93;
  v17 = task_info(*MEMORY[0x277D85F48], 0x16u, v43, &v42);
  v18 = 0.0;
  if (!v17)
  {
    if (__CFADD__(v44, *(&v48 + 1)))
    {
      __break(1u);
    }

    v18 = vcvtd_n_f64_u64(v44 + *(&v48 + 1), 0x14uLL);
  }

  v41 = v14;
  v19 = Current - a5;
  v20 = v18 - *&a2;
  v21 = (v17 != 0) | a3 & 1;
  if (v21)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v20;
  }

  sub_230E68950();
  LOBYTE(v43[0]) = *a4;
  v23 = RequestType.rawValue.getter();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v26 = swift_allocObject();
  v40 = xmmword_230E6B3B0;
  *(v26 + 16) = xmmword_230E6B3B0;
  v43[0] = 0x6C616E7265746E69;
  v43[1] = 0xE90000000000002ELL;
  LOBYTE(v42) = a1;
  v27 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v27);

  v28 = v43[1];
  *(v26 + 32) = v43[0];
  *(v26 + 40) = v28;
  *(v26 + 48) = v19;
  *(v26 + 56) = 0;
  *(v26 + 64) = v22;
  *(v26 + 72) = v21;
  *(v26 + 80) = 0;
  v29 = *(a4 + 8);
  v30 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v31 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v32 = swift_allocObject();
  *(v32 + 16) = v40;
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v23;
  *(v33 + 32) = v25;
  *(v33 + 40) = 1;
  *(v33 + 48) = v26;
  *(v33 + 56) = v29;
  *(v33 + 64) = v30;
  *(v33 + 72) = 257;
  *(v33 + 80) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_230E7F7A0;
  *(v34 + 24) = v33;
  *(v32 + 32) = &unk_230E7F7A8;
  *(v32 + 40) = v34;
  v35 = sub_230E69310();
  v36 = v41;
  (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v32;

  sub_230D8F204(0, 0, v36, &unk_230E7F7B0, v37);

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static SystemDatabase.queryWorkflow(useCaseRequest:using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  *(v4 + 688) = a3;
  *(v4 + 680) = a1;
  v7 = sub_230E68D80();
  *(v4 + 696) = v7;
  v8 = *(v7 - 8);
  *(v4 + 704) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 712) = swift_task_alloc();
  v10 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v10;
  *(v4 + 112) = *(a2 + 96);
  v11 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v11;
  v12 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v12;
  v13 = *(a4 + 16);
  *(v4 + 720) = *a4;
  *(v4 + 736) = v13;
  *(v4 + 752) = *(a4 + 32);
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4DCC4, 0, 0);
}

uint64_t sub_230E4DCC4()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 736);
  if (v1)
  {
    v2 = *(v0 + 752);
    v3 = *(v0 + 744);
    v4 = *(v0 + 720);
    v5 = *(v0 + 728);
    *(v0 + 784) = v2;
    *(v0 + 585) = BYTE1(v3);
    *(v0 + 115) = v3 & 1;
    *(v0 + 776) = v1;
    *(v0 + 768) = v5;
    *(v0 + 114) = v4;
    *(v0 + 592) = v4;
    *(v0 + 600) = v5;
    *(v0 + 608) = v1;
    *(v0 + 616) = v3 & 1;
    *(v0 + 617) = BYTE1(v3);
    *(v0 + 624) = v2;
    sub_230D0585C(v4, v5, v1);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 688);
    v7 = qword_27DB5A438;
    *(v0 + 792) = qword_27DB5A438;
    sub_230DC7630(v0 + 16, v0 + 488);

    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E4E158, v7, 0);
  }

  else
  {
    *(v0 + 113) = 48;
    v9 = swift_task_alloc();
    *(v0 + 760) = v9;
    *v9 = v0;
    v9[1] = sub_230E4DECC;
    v10 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 632, (v0 + 113), 0, 0);
  }
}

uint64_t sub_230E4DECC()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 760);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4DFF4, 0, 0);
}

uint64_t sub_230E4DFF4()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);
  v3 = *(v0 + 648);
  v4 = *(v0 + 656);
  v5 = *(v0 + 657);
  v6 = *(v0 + 664);
  *(v0 + 784) = v6;
  *(v0 + 585) = v5;
  *(v0 + 115) = v4;
  *(v0 + 776) = v3;
  *(v0 + 768) = v2;
  *(v0 + 114) = v1;
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);
  v9 = *(v0 + 736);
  v10 = *(v0 + 728);
  v11 = *(v0 + 720);
  *(v0 + 592) = v1;
  *(v0 + 600) = v2;
  *(v0 + 608) = v3;
  *(v0 + 616) = v4;
  *(v0 + 617) = v5;
  *(v0 + 624) = v6;
  sub_230D0585C(v11, v10, v9);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 688);
  v13 = qword_27DB5A438;
  *(v0 + 792) = qword_27DB5A438;
  sub_230DC7630(v0 + 16, v0 + 488);

  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4E158, v13, 0);
}

uint64_t sub_230E4E158()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 712);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 776);
    v7 = *(v0 + 768);
    v8 = *(v0 + 114);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0x726F577972657571, 0xED0000776F6C666BLL, v31);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v31);
    *(v9 + 22) = 2080;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  if (*(v0 + 115) != 1)
  {
    goto LABEL_6;
  }

  v13 = *(v0 + 784);
  v14 = *(v0 + 585);
  v30 = *(v0 + 114);
  v15 = RequestType.rawValue.getter();
  v17 = v16;

  LOBYTE(v15) = sub_230D33FDC(v15, v17, v13);

  if ((v15 & 1) != 0 || v14 >= 2)
  {
    sub_230E68950();
    *(v0 + 800) = CFAbsoluteTimeGetCurrent();
    *(v0 + 116) = 0u;
    *(v0 + 132) = 0u;
    *(v0 + 148) = 0u;
    *(v0 + 164) = 0u;
    *(v0 + 180) = 0u;
    *(v0 + 196) = 0u;
    *(v0 + 212) = 0u;
    *(v0 + 228) = 0u;
    *(v0 + 244) = 0u;
    *(v0 + 260) = 0u;
    *(v0 + 276) = 0u;
    *(v0 + 292) = 0u;
    *(v0 + 308) = 0u;
    *(v0 + 324) = 0u;
    *(v0 + 340) = 0u;
    *(v0 + 356) = 0u;
    *(v0 + 372) = 0u;
    *(v0 + 388) = 0u;
    *(v0 + 404) = 0u;
    *(v0 + 420) = 0u;
    *(v0 + 436) = 0u;
    *(v0 + 452) = 0u;
    *(v0 + 468) = 0u;
    *(v0 + 484) = 0;
    *(v0 + 588) = 93;
    v20 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
    *(v0 + 848) = v20;
    v21 = 0.0;
    if (!v20)
    {
      v22 = *(v0 + 164);
      v23 = *(v0 + 236);
      v24 = __CFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
      }

      v21 = vcvtd_n_f64_u64(v25, 0x14uLL);
    }

    *(v0 + 824) = v21;
    *(v0 + 672) = 0;
    v18 = swift_task_alloc();
    *(v0 + 832) = v18;
    *v18 = v0;
    v19 = sub_230E4E6C4;
  }

  else
  {
LABEL_6:
    v18 = swift_task_alloc();
    *(v0 + 808) = v18;
    *v18 = v0;
    v19 = sub_230E4E56C;
  }

  v18[1] = v19;
  v26 = *(v0 + 688);
  v27 = *(v0 + 680);
  v28 = *MEMORY[0x277D85DE8];

  return sub_230E56CCC(v27, v0 + 16, v26, v0 + 592);
}

uint64_t sub_230E4E56C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 808);
  v4 = *v1;
  *(*v1 + 816) = v0;

  v5 = *(v2 + 792);
  if (v0)
  {
    v6 = sub_230E4EBAC;
  }

  else
  {
    v6 = sub_230E4EAB4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E4E6C4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 832);
  v4 = *v1;
  *(*v1 + 840) = v0;

  v5 = *(v2 + 792);
  if (v0)
  {
    v6 = sub_230E4E950;
  }

  else
  {
    v6 = sub_230E4E81C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E4E81C()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  sub_230D3A494(48, *(v0 + 824), *(v0 + 848) != 0, v0 + 592, (v0 + 672), *(v0 + 800));
  (*(v4 + 8))(v3, v5);
  sub_230D8151C(v0 + 16);

  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 712);

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_230E4E950()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 840);
  v2 = *(v0 + 824);
  v3 = *(v0 + 800);
  v16 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 712);
  v6 = *(v0 + 704);
  v7 = *(v0 + 696);
  v8 = *(v0 + 688);
  v9 = *(v0 + 848) != 0;
  *(v0 + 672) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D3A494(48, v2, v9, v0 + 592, (v0 + 672), v3);
  MEMORY[0x23191E910](v1);
  (*(v6 + 8))(v5, v7);
  sub_230D8151C(v0 + 16);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v11 = *(v0 + 840);
  v12 = *(v0 + 712);

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_230E4EAB4()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[86];
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[89];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230E4EBAC()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[86];
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v4 = v0[102];
  v5 = v0[89];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t static SystemDatabase.storeUseCaseConfiguration(_:using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  *(v4 + 96) = a1;
  v6 = sub_230E68D80();
  *(v4 + 120) = v6;
  v7 = *(v6 - 8);
  *(v4 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v9 = *(a4 + 16);
  *(v4 + 144) = *a4;
  *(v4 + 160) = v9;
  *(v4 + 176) = *(a4 + 32);
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4ED98, 0, 0);
}

uint64_t sub_230E4ED98()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 200) = v1;
    *(v0 + 208) = v3;
    *(v0 + 639) = BYTE1(v2);
    *(v0 + 638) = v2 & 1;
    *(v0 + 192) = v5;
    *(v0 + 637) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v8 = qword_27DB5A438;
    *(v0 + 216) = qword_27DB5A438;

    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E4F1F4, v8, 0);
  }

  else
  {
    *(v0 + 636) = 44;
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_230E4EF84;
    v11 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 636), 0, 0);
  }
}

uint64_t sub_230E4EF84()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 184);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4F0AC, 0, 0);
}

uint64_t sub_230E4F0AC()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 200) = v3;
  *(v0 + 208) = v6;
  *(v0 + 639) = v5;
  *(v0 + 638) = v4;
  *(v0 + 192) = v2;
  *(v0 + 637) = v1;
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 104);
  v13 = *(v0 + 112);
  v14 = qword_27DB5A438;
  *(v0 + 216) = qword_27DB5A438;

  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4F1F4, v14, 0);
}

uint64_t sub_230E4F1F4()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 136);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 637);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0xD000000000000019, 0x8000000230E80950, v32);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v32);
    *(v9 + 22) = 2080;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v32);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  if (*(v0 + 638) != 1)
  {
    goto LABEL_6;
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 639);
  v31 = *(v0 + 637);
  v15 = RequestType.rawValue.getter();
  v17 = v16;

  LOBYTE(v15) = sub_230D33FDC(v15, v17, v13);

  if ((v15 & 1) != 0 || v14 >= 2)
  {
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0;
    *(v0 + 628) = 93;
    v20 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 256), (v0 + 628));
    *(v0 + 632) = v20;
    v21 = 0.0;
    if (!v20)
    {
      v22 = *(v0 + 304);
      v23 = *(v0 + 376);
      v24 = __CFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
      }

      v21 = vcvtd_n_f64_u64(v25, 0x14uLL);
    }

    *(v0 + 240) = v21;
    v18 = swift_task_alloc();
    *(v0 + 248) = v18;
    *v18 = v0;
    v19 = sub_230E4F80C;
  }

  else
  {
LABEL_6:
    v18 = swift_task_alloc();
    *(v0 + 232) = v18;
    *v18 = v0;
    v19 = sub_230E4F5E8;
  }

  v18[1] = v19;
  v26 = *(v0 + 104);
  v27 = *(v0 + 112);
  v28 = *(v0 + 96);
  v29 = *MEMORY[0x277D85DE8];

  return sub_230E4FA50(v28, v26, v27, v0 + 16);
}

uint64_t sub_230E4F5E8()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4F724, v2, 0);
}

uint64_t sub_230E4F724()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[14];
  v4 = v0[13];
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v5 = v0[1];
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230E4F80C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E4F948, v2, 0);
}

uint64_t sub_230E4F948()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_230E4D2AC(44, *(v0 + 240), *(v0 + 632) != 0, v0 + 16, *(v0 + 224));
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_230E4FA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 368) = a3;
  *(v4 + 376) = a4;
  *(v4 + 352) = a1;
  *(v4 + 360) = a2;
  *(v4 + 504) = *a4;
  *(v4 + 384) = *(a4 + 8);
  *(v4 + 505) = *(a4 + 24);
  *(v4 + 400) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230E4FA98, 0, 0);
}

uint64_t sub_230E4FA98()
{
  v57 = v0;
  v1 = *(v0 + 360);
  v2 = sub_230D0F35C(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  *(v0 + 408) = v3;
  if (v3)
  {
    v4 = 0;
    do
    {
      *(v0 + 440) = v4;
      *(v0 + 448) = v2;
      *(v0 + 424) = 0;
      *(v0 + 432) = 0;
      *(v0 + 416) = v2;
      v5 = *(v0 + 360) + 32 * v4;
      v6 = *(v5 + 32);
      *(v0 + 456) = v6;
      v7 = *(v5 + 40);
      *(v0 + 464) = v7;
      v8 = *(v5 + 48);
      *(v0 + 507) = v8;
      v9 = *(v5 + 56);
      *(v0 + 472) = v9;
      if (*(v9 + 16))
      {
        v49 = *(v0 + 392);
        v48 = *(v0 + 400);
        v50 = *(v0 + 504);
        v52 = *(v0 + 376);
        v51 = *(v0 + 384);
        v53 = *(v0 + 505) & 1 | (*(v0 + 506) << 8);
        *(v0 + 176) = v6;
        *(v0 + 184) = v7;
        *(v0 + 192) = v8;
        *(v0 + 200) = v9;
        *(v0 + 16) = v50;
        *(v0 + 24) = v51;
        *(v0 + 32) = v49;
        *(v0 + 40) = v53;
        *(v0 + 48) = v48;

        sub_230D1CDE0(v52, v0 + 56);
        v54 = swift_task_alloc();
        *(v0 + 480) = v54;
        *v54 = v0;
        v54[1] = sub_230E500E8;
        v55 = *(v0 + 368);

        return sub_230E5818C(v0 + 176, v55, v0 + 16);
      }

      *(v0 + 312) = 0;
      *(v0 + 320) = 0xE000000000000000;

      sub_230E69540();
      v10 = *(v0 + 320);
      *(v0 + 296) = *(v0 + 312);
      *(v0 + 304) = v10;
      MEMORY[0x23191DA00](0x6573616320657355, 0xEA00000000002720);

      MEMORY[0x23191DA00](v6, v7);

      MEMORY[0x23191DA00](0xD000000000000036, 0x8000000230E85030);
      v11 = *(v0 + 296);
      v12 = *(v0 + 304);
      sub_230D0D224();
      v13 = swift_allocError();
      *v14 = v11;
      *(v14 + 8) = v12;
      *(v14 + 16) = 2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 344) = v2;
      v17 = sub_230DA41A0(v6, v7);
      v18 = v2[2];
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v21 = v16;
      if (v2[3] >= v20)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v2 = *(v0 + 344);
          if (v16)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_230DBB0CC();
          v2 = *(v0 + 344);
          if (v21)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        sub_230DB8CBC(v20, isUniquelyReferenced_nonNull_native);
        v22 = *(v0 + 344);
        v23 = sub_230DA41A0(v6, v7);
        if ((v21 & 1) != (v24 & 1))
        {

          return sub_230E69950();
        }

        v17 = v23;
        v2 = *(v0 + 344);
        if (v21)
        {
LABEL_13:
          v25 = v2[7];
          v26 = *(v25 + 8 * v17);
          *(v25 + 8 * v17) = v13;
          MEMORY[0x23191E910](v26);

          goto LABEL_17;
        }
      }

      v2[(v17 >> 6) + 8] |= 1 << v17;
      v27 = (v2[6] + 16 * v17);
      *v27 = v6;
      v27[1] = v7;
      *(v2[7] + 8 * v17) = v13;
      v28 = v2[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_35;
      }

      v2[2] = v30;
LABEL_17:
      if (qword_27DB5A4B0 != -1)
      {
        swift_once();
      }

      v31 = sub_230E68D80();
      __swift_project_value_buffer(v31, qword_27DB80BC0);

      v32 = sub_230E68D60();
      v33 = sub_230E69400();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v56 = v35;
        *v34 = 136315138;

        v36 = sub_230D7E620(v6, v7, &v56);

        *(v34 + 4) = v36;
        _os_log_impl(&dword_230D02000, v32, v33, "[SystemDatabase][storeUseCaseConfiguration] Use case %s failed validation: no workflows provided", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x23191EAE0](v35, -1, -1);
        MEMORY[0x23191EAE0](v34, -1, -1);
      }

      else
      {
      }

      v4 = *(v0 + 440) + 1;
    }

    while (v4 != *(v0 + 408));
  }

  v6 = v2[2];
  if (qword_27DB5A4B0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v37 = *(v0 + 360);
  v38 = sub_230E68D80();
  __swift_project_value_buffer(v38, qword_27DB80BC0);

  v39 = sub_230E68D60();
  v40 = sub_230E693E0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = *(v0 + 408);
    v42 = *(v0 + 360);
    v43 = swift_slowAlloc();
    *v43 = 134218496;
    *(v43 + 4) = v41;

    *(v43 + 12) = 2048;
    *(v43 + 14) = 0;
    *(v43 + 22) = 2048;
    *(v43 + 24) = v6;

    _os_log_impl(&dword_230D02000, v39, v40, "[SystemDatabase][storeUseCaseConfiguration] Processed %ld use cases: %ld succeeded, %ld failed", v43, 0x20u);
    MEMORY[0x23191EAE0](v43, -1, -1);
  }

  else
  {
    v44 = *(v0 + 360);
  }

  v45 = *(v0 + 352);
  *v45 = 0;
  v45[1] = v6;
  v45[2] = v2;
  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_230E500E8()
{
  v2 = *v1;
  v3 = (*v1)[60];
  v4 = *v1;
  v2[61] = v0;

  v5 = v2[5];
  v6 = v2[6];
  sub_230D666B4(v2[2], v2[3], v2[4]);
  if (v0)
  {
    v7 = sub_230E50F7C;
  }

  else
  {
    v7 = sub_230E5025C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_230E5025C()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 507);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = *(v0 + 504);
  v7 = *(v0 + 376);
  v8 = *(v0 + 384);
  v9 = *(v0 + 505) & 1 | (*(v0 + 506) << 8);
  *(v0 + 208) = *(v0 + 456);
  *(v0 + 216) = v2;
  *(v0 + 224) = v3;
  *(v0 + 232) = v1;
  *(v0 + 96) = v6;
  *(v0 + 104) = v8;
  *(v0 + 112) = v5;
  *(v0 + 120) = v9;
  *(v0 + 128) = v4;
  sub_230D1CDE0(v7, v0 + 136);
  v10 = swift_task_alloc();
  *(v0 + 496) = v10;
  *v10 = v0;
  v10[1] = sub_230E50350;
  v11 = *(v0 + 368);

  return sub_230E518C4(v0 + 240, v0 + 208, v11, v0 + 96);
}

uint64_t sub_230E50350()
{
  v1 = *v0;
  v2 = (*v0)[62];
  v6 = *v0;

  v3 = v1[15];
  v4 = v1[16];
  sub_230D666B4(v1[12], v1[13], v1[14]);

  return MEMORY[0x2822009F8](sub_230E504B8, 0, 0);
}

uint64_t sub_230E504B8()
{
  v97 = v0;
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  if (v3 <= 0)
  {
    v27 = *(v0 + 424);
    v95 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
    }

    else
    {
      v1 = *(v0 + 240);
      if (qword_27DB5A4B0 == -1)
      {
LABEL_8:
        v29 = *(v0 + 464);
        v28 = *(v0 + 472);
        v30 = sub_230E68D80();
        __swift_project_value_buffer(v30, qword_27DB80BC0);

        v31 = sub_230E68D60();
        v32 = sub_230E693F0();

        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 464);
        v35 = *(v0 + 472);
        if (v33)
        {
          v36 = v1;
          v37 = *(v0 + 456);
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v96 = v39;
          *v38 = 136315394;

          v40 = sub_230D7E620(v37, v34, &v96);

          *(v38 + 4) = v40;
          *(v38 + 12) = 2048;

          *(v38 + 14) = v36;

          _os_log_impl(&dword_230D02000, v31, v32, "[SystemDatabase][storeUseCaseConfiguration] Successfully processed use case: %s with %ld workflows", v38, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v39);
          MEMORY[0x23191EAE0](v39, -1, -1);
          MEMORY[0x23191EAE0](v38, -1, -1);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v42 = *(v0 + 448);
        v14 = *(v0 + 416);
        v41 = v95;
        goto LABEL_14;
      }
    }

    swift_once();
    goto LABEL_8;
  }

  v5 = *(v0 + 456);
  v4 = *(v0 + 464);
  v6 = *(v0 + 416);
  *(v0 + 280) = 0;
  *(v0 + 288) = 0xE000000000000000;
  sub_230E69540();
  v7 = *(v0 + 288);

  *(v0 + 264) = 0xD000000000000010;
  *(v0 + 272) = 0x8000000230E84FF0;
  v94 = v3;
  *(v0 + 336) = v3;
  v8 = sub_230E69890();
  MEMORY[0x23191DA00](v8);

  MEMORY[0x23191DA00](0xD000000000000018, 0x8000000230E85010);

  MEMORY[0x23191DA00](v5, v4);

  v9 = *(v0 + 264);
  v10 = *(v0 + 272);
  sub_230D0D224();
  v11 = swift_allocError();
  *v12 = v9;
  *(v12 + 8) = v10;
  *(v12 + 16) = 2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = v6;
  sub_230E1C2F0(v11, v5, v4, isUniquelyReferenced_nonNull_native);

  v14 = v6;
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 464);
  v15 = *(v0 + 472);
  v17 = sub_230E68D80();
  __swift_project_value_buffer(v17, qword_27DB80BC0);

  v18 = sub_230E68D60();
  v19 = sub_230E69400();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 464);
  v22 = *(v0 + 472);
  if (v20)
  {
    v23 = *(v0 + 456);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v96 = v25;
    *v24 = 136315394;

    v26 = sub_230D7E620(v23, v21, &v96);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2048;

    *(v24 + 14) = v94;

    _os_log_impl(&dword_230D02000, v18, v19, "[SystemDatabase][storeUseCaseConfiguration] Use case %s failed due to workflow failures: %ld workflows failed", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x23191EAE0](v25, -1, -1);
    MEMORY[0x23191EAE0](v24, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v41 = *(v0 + 432);
  v95 = *(v0 + 424);
  v42 = v14;
LABEL_14:
  v43 = *(v0 + 440) + 1;
  if (v43 != *(v0 + 408))
  {
    v93 = v41;
    do
    {
      *(v0 + 440) = v43;
      *(v0 + 448) = v42;
      *(v0 + 424) = v95;
      *(v0 + 432) = v41;
      *(v0 + 416) = v14;
      v54 = *(v0 + 360) + 32 * v43;
      v41 = *(v54 + 32);
      *(v0 + 456) = v41;
      v55 = *(v54 + 40);
      *(v0 + 464) = v55;
      v56 = *(v54 + 48);
      *(v0 + 507) = v56;
      v57 = *(v54 + 56);
      *(v0 + 472) = v57;
      if (*(v57 + 16))
      {
        v86 = *(v0 + 392);
        v85 = *(v0 + 400);
        v87 = *(v0 + 504);
        v89 = *(v0 + 376);
        v88 = *(v0 + 384);
        v90 = *(v0 + 505) & 1 | (*(v0 + 506) << 8);
        *(v0 + 176) = v41;
        *(v0 + 184) = v55;
        *(v0 + 192) = v56;
        *(v0 + 200) = v57;
        *(v0 + 16) = v87;
        *(v0 + 24) = v88;
        *(v0 + 32) = v86;
        *(v0 + 40) = v90;
        *(v0 + 48) = v85;

        sub_230D1CDE0(v89, v0 + 56);
        v91 = swift_task_alloc();
        *(v0 + 480) = v91;
        *v91 = v0;
        v91[1] = sub_230E500E8;
        v92 = *(v0 + 368);

        return sub_230E5818C(v0 + 176, v92, v0 + 16);
      }

      *(v0 + 312) = 0;
      *(v0 + 320) = 0xE000000000000000;

      sub_230E69540();
      v58 = *(v0 + 320);
      *(v0 + 296) = *(v0 + 312);
      *(v0 + 304) = v58;
      MEMORY[0x23191DA00](0x6573616320657355, 0xEA00000000002720);

      MEMORY[0x23191DA00](v41, v55);

      MEMORY[0x23191DA00](0xD000000000000036, 0x8000000230E85030);
      v60 = *(v0 + 296);
      v59 = *(v0 + 304);
      sub_230D0D224();
      v61 = swift_allocError();
      *v62 = v60;
      *(v62 + 8) = v59;
      *(v62 + 16) = 2;

      v42 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 344) = v14;
      v64 = sub_230DA41A0(v41, v55);
      v65 = *(v14 + 16);
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v68 = v63;
      if (*(v14 + 24) >= v67)
      {
        if (v42)
        {
          v42 = *(v0 + 344);
          if (v63)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_230DBB0CC();
          v42 = *(v0 + 344);
          if (v68)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        sub_230DB8CBC(v67, v42);
        v69 = *(v0 + 344);
        v70 = sub_230DA41A0(v41, v55);
        if ((v68 & 1) != (v71 & 1))
        {

          return sub_230E69950();
        }

        v64 = v70;
        v42 = *(v0 + 344);
        if (v68)
        {
LABEL_29:
          v72 = *(v42 + 56);
          v73 = *(v72 + 8 * v64);
          *(v72 + 8 * v64) = v61;
          MEMORY[0x23191E910](v73);

          goto LABEL_33;
        }
      }

      *(v42 + 8 * (v64 >> 6) + 64) |= 1 << v64;
      v74 = (*(v42 + 48) + 16 * v64);
      *v74 = v41;
      v74[1] = v55;
      *(*(v42 + 56) + 8 * v64) = v61;
      v75 = *(v42 + 16);
      v76 = __OFADD__(v75, 1);
      v77 = v75 + 1;
      if (v76)
      {
        goto LABEL_48;
      }

      *(v42 + 16) = v77;
LABEL_33:
      if (qword_27DB5A4B0 != -1)
      {
        swift_once();
      }

      v78 = sub_230E68D80();
      __swift_project_value_buffer(v78, qword_27DB80BC0);

      v79 = sub_230E68D60();
      v80 = sub_230E69400();

      if (os_log_type_enabled(v79, v80))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v96 = v52;
        *v51 = 136315138;

        v53 = sub_230D7E620(v41, v55, &v96);

        *(v51 + 4) = v53;
        _os_log_impl(&dword_230D02000, v79, v80, "[SystemDatabase][storeUseCaseConfiguration] Use case %s failed validation: no workflows provided", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x23191EAE0](v52, -1, -1);
        MEMORY[0x23191EAE0](v51, -1, -1);
      }

      else
      {
      }

      v41 = v93;
      v43 = *(v0 + 440) + 1;
      v14 = v42;
    }

    while (v43 != *(v0 + 408));
  }

  v14 = *(v42 + 16);
  if (qword_27DB5A4B0 != -1)
  {
LABEL_49:
    swift_once();
  }

  v44 = *(v0 + 360);
  v45 = sub_230E68D80();
  __swift_project_value_buffer(v45, qword_27DB80BC0);

  v46 = sub_230E68D60();
  v47 = sub_230E693E0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 408);
    v49 = *(v0 + 360);
    v50 = swift_slowAlloc();
    *v50 = 134218496;
    *(v50 + 4) = v48;

    *(v50 + 12) = 2048;
    *(v50 + 14) = v41;
    *(v50 + 22) = 2048;
    *(v50 + 24) = v14;

    _os_log_impl(&dword_230D02000, v46, v47, "[SystemDatabase][storeUseCaseConfiguration] Processed %ld use cases: %ld succeeded, %ld failed", v50, 0x20u);
    MEMORY[0x23191EAE0](v50, -1, -1);
  }

  else
  {
    v81 = *(v0 + 360);
  }

  v82 = *(v0 + 352);
  *v82 = v41;
  v82[1] = v14;
  v82[2] = v42;
  v83 = *(v0 + 8);

  return v83();
}

unint64_t sub_230E50F7C()
{
  v98 = v0;
  v1 = *(v0 + 488);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 416);

  v5 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 328) = v4;
  result = sub_230DA41A0(v3, v2);
  v9 = *(v4 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
LABEL_50:
    __break(1u);
  }

  else
  {
    v13 = v8;
    if (*(*(v0 + 416) + 24) >= v12)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v92 = result;
        sub_230DBB0CC();
        result = v92;
      }
    }

    else
    {
      v15 = *(v0 + 456);
      v14 = *(v0 + 464);
      sub_230DB8CBC(v12, isUniquelyReferenced_nonNull_native);
      v16 = *(v0 + 328);
      result = sub_230DA41A0(v15, v14);
      if ((v13 & 1) != (v17 & 1))
      {
LABEL_4:

        return sub_230E69950();
      }
    }

    isUniquelyReferenced_nonNull_native = *(v0 + 328);
    v18 = *(v0 + 488);
    v19 = *(v0 + 464);
    if (v13)
    {
      v20 = *(isUniquelyReferenced_nonNull_native + 56);
      v21 = *(v20 + 8 * result);
      *(v20 + 8 * result) = v18;
      MEMORY[0x23191E910](v21);
    }

    else
    {
      v22 = *(v0 + 456);
      *(isUniquelyReferenced_nonNull_native + 8 * (result >> 6) + 64) |= 1 << result;
      v23 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * result);
      *v23 = v22;
      v23[1] = v19;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * result) = v18;
      v24 = *(isUniquelyReferenced_nonNull_native + 16);
      v11 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v11)
      {
        __break(1u);
        return result;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v25;
    }

    if (qword_27DB5A4B0 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v26 = *(v0 + 488);
  v28 = *(v0 + 464);
  v27 = *(v0 + 472);
  v96 = sub_230E68D80();
  __swift_project_value_buffer(v96, qword_27DB80BC0);

  v29 = v26;
  v30 = sub_230E68D60();
  v31 = sub_230E69400();

  MEMORY[0x23191E910](v26);
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 488);
  v35 = *(v0 + 464);
  v34 = *(v0 + 472);
  if (v32)
  {
    v94 = *(v0 + 456);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v97 = v38;
    *v36 = 136315394;

    v39 = sub_230D7E620(v94, v35, &v97);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2112;
    v40 = v33;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 14) = v41;
    *v37 = v41;
    _os_log_impl(&dword_230D02000, v30, v31, "[SystemDatabase][storeUseCaseConfiguration] Failed to process use case %s: %@", v36, 0x16u);
    sub_230D2D9F8(v37, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v37, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x23191EAE0](v38, -1, -1);
    MEMORY[0x23191EAE0](v36, -1, -1);
    MEMORY[0x23191E910](v33);
  }

  else
  {

    MEMORY[0x23191E910](v33);
  }

  v42 = *(v0 + 432);
  v43 = *(v0 + 440) + 1;
  if (v43 == *(v0 + 408))
  {
LABEL_18:
    v44 = *(isUniquelyReferenced_nonNull_native + 16);
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 360);
    __swift_project_value_buffer(v96, qword_27DB80BC0);

    v46 = sub_230E68D60();
    v47 = sub_230E693E0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = *(v0 + 408);
      v49 = *(v0 + 360);
      v50 = swift_slowAlloc();
      *v50 = 134218496;
      *(v50 + 4) = v48;

      *(v50 + 12) = 2048;
      *(v50 + 14) = v42;
      *(v50 + 22) = 2048;
      *(v50 + 24) = v44;

      _os_log_impl(&dword_230D02000, v46, v47, "[SystemDatabase][storeUseCaseConfiguration] Processed %ld use cases: %ld succeeded, %ld failed", v50, 0x20u);
      MEMORY[0x23191EAE0](v50, -1, -1);
    }

    else
    {
      v81 = *(v0 + 360);
    }

    v82 = *(v0 + 352);
    *v82 = v42;
    v82[1] = v44;
    v82[2] = isUniquelyReferenced_nonNull_native;
    v83 = *(v0 + 8);

    return v83();
  }

  v95 = *(v0 + 424);
  v93 = *(v0 + 432);
  while (1)
  {
    *(v0 + 440) = v43;
    *(v0 + 448) = isUniquelyReferenced_nonNull_native;
    *(v0 + 424) = v95;
    *(v0 + 432) = v42;
    *(v0 + 416) = isUniquelyReferenced_nonNull_native;
    v54 = *(v0 + 360) + 32 * v43;
    v55 = *(v54 + 32);
    *(v0 + 456) = v55;
    v56 = *(v54 + 40);
    *(v0 + 464) = v56;
    v57 = *(v54 + 48);
    *(v0 + 507) = v57;
    v58 = *(v54 + 56);
    *(v0 + 472) = v58;
    if (*(v58 + 16))
    {
      break;
    }

    *(v0 + 312) = 0;
    *(v0 + 320) = 0xE000000000000000;

    sub_230E69540();
    v59 = *(v0 + 320);
    *(v0 + 296) = *(v0 + 312);
    *(v0 + 304) = v59;
    MEMORY[0x23191DA00](0x6573616320657355, 0xEA00000000002720);

    MEMORY[0x23191DA00](v55, v56);

    MEMORY[0x23191DA00](0xD000000000000036, 0x8000000230E85030);
    v60 = *(v0 + 296);
    v61 = *(v0 + 304);
    sub_230D0D224();
    v62 = swift_allocError();
    *v63 = v60;
    *(v63 + 8) = v61;
    *(v63 + 16) = 2;

    v64 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 344) = isUniquelyReferenced_nonNull_native;
    v66 = sub_230DA41A0(v55, v56);
    v67 = *(isUniquelyReferenced_nonNull_native + 16);
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v70 = v65;
    if (*(isUniquelyReferenced_nonNull_native + 24) >= v69)
    {
      if (v64)
      {
        isUniquelyReferenced_nonNull_native = *(v0 + 344);
        if (v65)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_230DBB0CC();
        isUniquelyReferenced_nonNull_native = *(v0 + 344);
        if (v70)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      sub_230DB8CBC(v69, v64);
      v71 = *(v0 + 344);
      v72 = sub_230DA41A0(v55, v56);
      if ((v70 & 1) != (v73 & 1))
      {
        goto LABEL_4;
      }

      v66 = v72;
      isUniquelyReferenced_nonNull_native = *(v0 + 344);
      if (v70)
      {
LABEL_33:
        v74 = *(isUniquelyReferenced_nonNull_native + 56);
        v75 = *(v74 + 8 * v66);
        *(v74 + 8 * v66) = v62;
        MEMORY[0x23191E910](v75);

        goto LABEL_37;
      }
    }

    *(isUniquelyReferenced_nonNull_native + 8 * (v66 >> 6) + 64) |= 1 << v66;
    v76 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v66);
    *v76 = v55;
    v76[1] = v56;
    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v66) = v62;
    v77 = *(isUniquelyReferenced_nonNull_native + 16);
    v11 = __OFADD__(v77, 1);
    v78 = v77 + 1;
    if (v11)
    {
      goto LABEL_49;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v78;
LABEL_37:
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v96, qword_27DB80BC0);

    v79 = sub_230E68D60();
    v80 = sub_230E69400();

    if (os_log_type_enabled(v79, v80))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v97 = v52;
      *v51 = 136315138;

      v53 = sub_230D7E620(v55, v56, &v97);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_230D02000, v79, v80, "[SystemDatabase][storeUseCaseConfiguration] Use case %s failed validation: no workflows provided", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x23191EAE0](v52, -1, -1);
      MEMORY[0x23191EAE0](v51, -1, -1);
    }

    else
    {
    }

    v42 = v93;
    v43 = *(v0 + 440) + 1;
    if (v43 == *(v0 + 408))
    {
      goto LABEL_18;
    }
  }

  v85 = *(v0 + 392);
  v84 = *(v0 + 400);
  v86 = *(v0 + 504);
  v88 = *(v0 + 376);
  v87 = *(v0 + 384);
  v89 = *(v0 + 505) & 1 | (*(v0 + 506) << 8);
  *(v0 + 176) = v55;
  *(v0 + 184) = v56;
  *(v0 + 192) = v57;
  *(v0 + 200) = v58;
  *(v0 + 16) = v86;
  *(v0 + 24) = v87;
  *(v0 + 32) = v85;
  *(v0 + 40) = v89;
  *(v0 + 48) = v84;

  sub_230D1CDE0(v88, v0 + 56);
  v90 = swift_task_alloc();
  *(v0 + 480) = v90;
  *v90 = v0;
  v90[1] = sub_230E500E8;
  v91 = *(v0 + 368);

  return sub_230E5818C(v0 + 176, v91, v0 + 16);
}

uint64_t sub_230E518C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 584) = a3;
  *(v4 + 576) = a1;
  *(v4 + 592) = *a2;
  *(v4 + 608) = *(a2 + 24);
  v5 = *(a4 + 16);
  *(v4 + 616) = *a4;
  *(v4 + 632) = v5;
  *(v4 + 648) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230E5190C, 0, 0);
}

uint64_t sub_230E5190C()
{
  v1 = *(v0 + 608);
  v2 = sub_230D0F35C(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  *(v0 + 656) = v3;
  if (v3)
  {
    v4 = 0x746C7561666564;
    v5 = *(v0 + 608);
    *(v0 + 696) = v2;
    *(v0 + 672) = 0;
    *(v0 + 688) = 0;
    *(v0 + 680) = 0;
    *(v0 + 664) = v2;
    v6 = v5[5];
    v7 = v5[6];
    v8 = v5[7];
    *(v0 + 105) = *(v5 + 121);
    *(v0 + 80) = v7;
    *(v0 + 96) = v8;
    *(v0 + 64) = v6;
    v9 = v5[2];
    v10 = v5[4];
    *(v0 + 32) = v5[3];
    *(v0 + 48) = v10;
    *(v0 + 16) = v9;
    v11 = *(v0 + 24);
    v12 = *(v0 + 600);
    v13 = *(v0 + 592);
    if (*(v0 + 120))
    {
      v14 = (v0 + 552);
      v15 = (v0 + 560);
      v17 = *(v0 + 104);
      v16 = *(v0 + 112);
      v18 = *(v0 + 16);
      *(v0 + 552) = v13;
      *(v0 + 560) = v12;

      sub_230D2D898(v0 + 16, v0 + 352);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v16)
      {
        v4 = v17;
        v19 = v16;
      }

      else
      {
        v19 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v4, v19);

      MEMORY[0x23191DA00](95, 0xE100000000000000);
      v20 = v18;
      v21 = v11;
    }

    else
    {
      v14 = (v0 + 504);
      v26 = *(v0 + 32);
      v15 = (v0 + 512);
      *(v0 + 504) = v13;
      *(v0 + 512) = v12;

      sub_230D2D898(v0 + 16, v0 + 128);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v11 = 0x746C7561666564;
        v27 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v11, v27);

      v20 = 0x747369727565685FLL;
      v21 = 0xEA00000000006369;
    }

    MEMORY[0x23191DA00](v20, v21);
    v28 = *v14;
    v29 = *v15;
    *(v0 + 712) = *v15;
    *(v0 + 704) = v28;
    v30 = *(v0 + 648);
    v31 = *(v0 + 96);
    *(v0 + 304) = *(v0 + 80);
    *(v0 + 320) = v31;
    *(v0 + 329) = *(v0 + 105);
    v32 = *(v0 + 32);
    *(v0 + 240) = *(v0 + 16);
    *(v0 + 256) = v32;
    v33 = *(v0 + 64);
    *(v0 + 272) = *(v0 + 48);
    *(v0 + 288) = v33;
    v34 = *(v0 + 632);
    *(v0 + 464) = *(v0 + 616);
    *(v0 + 480) = v34;
    *(v0 + 496) = v30;
    v35 = swift_task_alloc();
    *(v0 + 720) = v35;
    *v35 = v0;
    v35[1] = sub_230E51BCC;
    v36 = *(v0 + 600);
    v37 = *(v0 + 592);
    v38 = *(v0 + 584);

    return sub_230E58914(v0 + 240, v28, v29, v37, v36, v38, v0 + 464);
  }

  else
  {
    v22 = *(v0 + 576);
    v23 = *(v2 + 16);
    *v22 = 0;
    v22[1] = v23;
    v22[2] = v2;
    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_230E51BCC()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v7 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v4 = *(v2 + 712);

    v5 = sub_230E52100;
  }

  else
  {
    sub_230D2D8F4(v2 + 16);
    v5 = sub_230E51CF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_230E51CF0()
{
  v51 = v0;
  v1 = *(v0 + 680);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else if (qword_27DB5A4B0 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v3 = *(v0 + 712);
  v4 = sub_230E68D80();
  __swift_project_value_buffer(v4, qword_27DB80BC0);

  v5 = sub_230E68D60();
  v6 = sub_230E693F0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 712);
  if (v7)
  {
    v9 = *(v0 + 704);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v50 = v11;
    *v10 = 136315138;
    v12 = sub_230D7E620(v9, v8, &v50);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_230D02000, v5, v6, "[SystemDatabase][upsertWorkflowsForUseCase] Successfully processed workflow: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 696);
  v14 = *(v0 + 688) + 1;
  if (v14 == *(v0 + 656))
  {
    v15 = *(v0 + 576);
    v16 = *(v13 + 16);
    *v15 = v2;
    v15[1] = v16;
    v15[2] = v13;
    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = 0x746C7561666564;
    *(v0 + 696) = v13;
    *(v0 + 688) = v14;
    *(v0 + 680) = v2;
    *(v0 + 672) = v2;
    v20 = (*(v0 + 608) + 112 * v14);
    v22 = v20[3];
    v21 = v20[4];
    *(v0 + 16) = v20[2];
    *(v0 + 32) = v22;
    *(v0 + 48) = v21;
    v24 = v20[6];
    v23 = v20[7];
    v25 = v20[5];
    *(v0 + 105) = *(v20 + 121);
    *(v0 + 80) = v24;
    *(v0 + 96) = v23;
    *(v0 + 64) = v25;
    v26 = *(v0 + 24);
    v27 = *(v0 + 600);
    v28 = *(v0 + 592);
    if (*(v0 + 120))
    {
      v29 = (v0 + 552);
      v30 = (v0 + 560);
      v32 = *(v0 + 104);
      v31 = *(v0 + 112);
      v33 = *(v0 + 16);
      *(v0 + 552) = v28;
      *(v0 + 560) = v27;

      sub_230D2D898(v0 + 16, v0 + 352);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v31)
      {
        v19 = v32;
        v34 = v31;
      }

      else
      {
        v34 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v19, v34);

      MEMORY[0x23191DA00](95, 0xE100000000000000);
      v35 = v33;
      v36 = v26;
    }

    else
    {
      v29 = (v0 + 504);
      v37 = *(v0 + 32);
      v30 = (v0 + 512);
      *(v0 + 504) = v28;
      *(v0 + 512) = v27;

      sub_230D2D898(v0 + 16, v0 + 128);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v26 = 0x746C7561666564;
        v38 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v26, v38);

      v35 = 0x747369727565685FLL;
      v36 = 0xEA00000000006369;
    }

    MEMORY[0x23191DA00](v35, v36);
    v39 = *v29;
    v40 = *v30;
    *(v0 + 712) = *v30;
    *(v0 + 704) = v39;
    v41 = *(v0 + 648);
    v42 = *(v0 + 96);
    *(v0 + 304) = *(v0 + 80);
    *(v0 + 320) = v42;
    *(v0 + 329) = *(v0 + 105);
    v43 = *(v0 + 32);
    *(v0 + 240) = *(v0 + 16);
    *(v0 + 256) = v43;
    v44 = *(v0 + 64);
    *(v0 + 272) = *(v0 + 48);
    *(v0 + 288) = v44;
    v45 = *(v0 + 632);
    *(v0 + 464) = *(v0 + 616);
    *(v0 + 480) = v45;
    *(v0 + 496) = v41;
    v46 = swift_task_alloc();
    *(v0 + 720) = v46;
    *v46 = v0;
    v46[1] = sub_230E51BCC;
    v47 = *(v0 + 600);
    v48 = *(v0 + 592);
    v49 = *(v0 + 584);

    return sub_230E58914(v0 + 240, v39, v40, v48, v47, v49, v0 + 464);
  }
}

unint64_t sub_230E52100()
{
  v87 = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  if (*(v0 + 120))
  {
    v5 = (v0 + 536);
    v6 = (v0 + 544);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 16);
    *(v0 + 536) = v4;
    *(v0 + 544) = v3;

    MEMORY[0x23191DA00](95, 0xE100000000000000);
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v8 = 0x746C7561666564;
      v10 = 0xE700000000000000;
    }

    MEMORY[0x23191DA00](v8, v10);

    MEMORY[0x23191DA00](95, 0xE100000000000000);
    v11 = v9;
    v12 = v2;
  }

  else
  {
    v5 = (v0 + 520);
    v13 = *(v0 + 32);
    v6 = (v0 + 528);
    *(v0 + 520) = v4;
    *(v0 + 528) = v3;

    MEMORY[0x23191DA00](95, 0xE100000000000000);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v2 = 0x746C7561666564;
      v14 = 0xE700000000000000;
    }

    MEMORY[0x23191DA00](v2, v14);

    v11 = 0x747369727565685FLL;
    v12 = 0xEA00000000006369;
  }

  MEMORY[0x23191DA00](v11, v12);
  sub_230D2D8F4(v0 + 16);
  v15 = *v5;
  v16 = *v6;
  v17 = *(v0 + 728);
  v18 = *(v0 + 664);

  v19 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 568) = v18;
  result = sub_230DA41A0(v15, v16);
  v23 = *(v18 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_23;
  }

  v27 = v22;
  if (*(*(v0 + 664) + 24) >= v26)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v85 = result;
      sub_230DBB0CC();
      result = v85;
    }
  }

  else
  {
    sub_230DB8CBC(v26, isUniquelyReferenced_nonNull_native);
    v28 = *(v0 + 568);
    result = sub_230DA41A0(v15, v16);
    if ((v27 & 1) != (v29 & 1))
    {

      return sub_230E69950();
    }
  }

  v1 = *(v0 + 568);
  v30 = *(v0 + 728);
  if (v27)
  {
    v31 = v1[7];
    v32 = *(v31 + 8 * result);
    *(v31 + 8 * result) = v30;
    MEMORY[0x23191E910](v32);
  }

  else
  {
    v1[(result >> 6) + 8] |= 1 << result;
    v33 = (v1[6] + 16 * result);
    *v33 = v15;
    v33[1] = v16;
    *(v1[7] + 8 * result) = v30;
    v34 = v1[2];
    v25 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v25)
    {
      __break(1u);
      return result;
    }

    v1[2] = v35;
  }

  if (qword_27DB5A4B0 != -1)
  {
    goto LABEL_43;
  }

LABEL_23:
  v36 = *(v0 + 728);
  v37 = sub_230E68D80();
  __swift_project_value_buffer(v37, qword_27DB80BC0);

  v38 = v36;
  v39 = sub_230E68D60();
  v40 = sub_230E69400();

  MEMORY[0x23191E910](v36);
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 728);
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v86 = v45;
    *v43 = 136315394;
    v46 = sub_230D7E620(v15, v16, &v86);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2112;
    v47 = v42;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 14) = v48;
    *v44 = v48;
    _os_log_impl(&dword_230D02000, v39, v40, "[SystemDatabase][upsertWorkflowsForUseCase] Failed to process workflow %s: %@", v43, 0x16u);
    sub_230D2D9F8(v44, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v44, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x23191EAE0](v45, -1, -1);
    MEMORY[0x23191EAE0](v43, -1, -1);
    MEMORY[0x23191E910](v42);
  }

  else
  {

    MEMORY[0x23191E910](v42);
  }

  v49 = *(v0 + 672);
  v50 = *(v0 + 688) + 1;
  if (v50 == *(v0 + 656))
  {
    v51 = *(v0 + 576);
    v52 = v1[2];
    *v51 = v49;
    v51[1] = v52;
    v51[2] = v1;
    v53 = *(v0 + 8);

    return v53();
  }

  else
  {
    v54 = (v0 + 240);
    *(v0 + 696) = v1;
    *(v0 + 688) = v50;
    *(v0 + 672) = v49;
    *(v0 + 664) = v1;
    v55 = (*(v0 + 608) + 112 * v50);
    v57 = v55[3];
    v56 = v55[4];
    *(v0 + 16) = v55[2];
    *(v0 + 32) = v57;
    *(v0 + 48) = v56;
    v59 = v55[6];
    v58 = v55[7];
    v60 = v55[5];
    *(v0 + 105) = *(v55 + 121);
    *(v0 + 80) = v59;
    *(v0 + 96) = v58;
    *(v0 + 64) = v60;
    v61 = *(v0 + 24);
    v62 = *(v0 + 600);
    v63 = *(v0 + 592);
    if (*(v0 + 120))
    {
      v64 = (v0 + 552);
      v65 = (v0 + 560);
      v67 = *(v0 + 104);
      v66 = *(v0 + 112);
      v68 = *(v0 + 16);
      *(v0 + 552) = v63;
      *(v0 + 560) = v62;

      sub_230D2D898(v0 + 16, v0 + 352);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v66)
      {
        v69 = v66;
      }

      else
      {
        v67 = 0x746C7561666564;
        v69 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v67, v69);

      MEMORY[0x23191DA00](95, 0xE100000000000000);
      v70 = v68;
      v71 = v61;
    }

    else
    {
      v64 = (v0 + 504);
      v72 = *(v0 + 32);
      v65 = (v0 + 512);
      *(v0 + 504) = v63;
      *(v0 + 512) = v62;

      sub_230D2D898(v0 + 16, v0 + 128);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v72)
      {
        v73 = v72;
      }

      else
      {
        v61 = 0x746C7561666564;
        v73 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v61, v73);

      v70 = 0x747369727565685FLL;
      v71 = 0xEA00000000006369;
    }

    MEMORY[0x23191DA00](v70, v71);
    v74 = *v64;
    v75 = *v65;
    *(v0 + 712) = *v65;
    *(v0 + 704) = v74;
    v76 = *(v0 + 648);
    v77 = *(v0 + 96);
    *(v0 + 304) = *(v0 + 80);
    *(v0 + 320) = v77;
    *(v0 + 329) = *(v0 + 105);
    v78 = *(v0 + 32);
    *v54 = *(v0 + 16);
    *(v0 + 256) = v78;
    v79 = *(v0 + 64);
    *(v0 + 272) = *(v0 + 48);
    *(v0 + 288) = v79;
    v80 = *(v0 + 632);
    *(v0 + 464) = *(v0 + 616);
    *(v0 + 480) = v80;
    *(v0 + 496) = v76;
    v81 = swift_task_alloc();
    *(v0 + 720) = v81;
    *v81 = v0;
    v81[1] = sub_230E51BCC;
    v82 = *(v0 + 600);
    v83 = *(v0 + 592);
    v84 = *(v0 + 584);

    return sub_230E58914(v54, v74, v75, v83, v82, v84, v0 + 464);
  }
}

uint64_t sub_230E527E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_230E690B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6, v9);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_54;
  }

  result = sub_230DA41A0(0x776F6C666B726F77, 0xEC00000065707954);
  if ((v13 & 1) == 0)
  {
    goto LABEL_54;
  }

  v14 = *(a1 + 56) + 24 * result;
  v15 = *(v14 + 8);
  if (*(v14 + 16) != 3 || v15 == 0)
  {
    goto LABEL_54;
  }

  v17 = *v14;
  result = 0x636E657265666E69;
  v18 = *v14 == 0x636E657265666E69 && v15 == 0xE900000000000065;
  if (v18 || (result = sub_230E698C0(), (result & 1) != 0))
  {
    if (!*(a1 + 16))
    {
      goto LABEL_54;
    }

    result = sub_230DA41A0(0x6564496C65646F6DLL, 0xEF7265696669746ELL);
    if ((v19 & 1) == 0)
    {
      goto LABEL_54;
    }

    v20 = *(a1 + 56) + 24 * result;
    v21 = *(v20 + 8);
    v22 = *(v20 + 16) != 3 || v21 == 0;
    if (v22 || !*(a1 + 16))
    {
      goto LABEL_54;
    }

    v111 = *v20;

    v23 = sub_230DA41A0(0x726F466C65646F6DLL, 0xEB0000000074616DLL);
    if (v24)
    {
      v110 = v21;
      v25 = *(a1 + 56) + 24 * v23;
      if (*(v25 + 16) == 3)
      {
        v21 = *(v25 + 8);
        if (v21)
        {
          if (*(a1 + 16))
          {
            v109 = *v25;

            v26 = sub_230DA41A0(0x6564497465737361, 0xEF7265696669746ELL);
            if (v27)
            {
              v28 = *(a1 + 56) + 24 * v26;
              v29 = v111;
              if (*(v28 + 16) == 3)
              {
                v30 = *v28;
                v31 = *(v28 + 8);
                if (!v31)
                {
                  sub_230D0DCD8(v30, 0, 3);
                  sub_230D0F474(v109, v21, 3);
                  v59 = v29;
                  v60 = v110;
                  goto LABEL_53;
                }

                if (!*(a1 + 16))
                {
                  v62 = *v28;
                  sub_230D0DCD8(v30, *(v28 + 8), 3);
                  sub_230D0F474(v111, v110, 3);
                  sub_230D0F474(v109, v21, 3);
                  v59 = v62;
                  v60 = v31;
                  goto LABEL_53;
                }

                v107 = *v28;
                v108 = v31;

                v32 = sub_230DA41A0(0xD000000000000015, 0x8000000230E80190);
                if ((v33 & 1) == 0 || (v34 = *(a1 + 56) + 24 * v32, *(v34 + 16) != 3))
                {
                  sub_230D0F474(v111, v110, 3);
                  sub_230D0F474(v109, v21, 3);
                  v59 = v107;
                  v60 = v108;
                  goto LABEL_53;
                }

                v36 = *v34;
                v35 = *(v34 + 8);
                v105 = v36;
                v106 = v35;
                if (v35)
                {

                  v37 = v109;
                  v38 = v21;
                  v39 = sub_230E69680();
                  sub_230D0F474(v37, v38, 3);
                  if (!v39)
                  {
                    v104 = 0;
LABEL_66:
                    v65 = sub_230E532B0(a1);
                    v102 = v66;
                    v103 = v65;
                    v67 = sub_230E53350(a1);
                    v100 = v68;
                    v101 = v67;
                    v109 = sub_230D0EE04(MEMORY[0x277D84F90]);
                    if (*(a1 + 16))
                    {
                      v69 = sub_230DA41A0(0xD000000000000010, 0x8000000230E801B0);
                      if (v70)
                      {
                        v71 = *(a1 + 56) + 24 * v69;
                        if (*(v71 + 16) == 3)
                        {
                          v72 = *(v71 + 8);
                          if (v72)
                          {
                            v73 = *v71;
                            v74 = HIBYTE(v72) & 0xF;
                            if ((v72 & 0x2000000000000000) == 0)
                            {
                              v74 = v73 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v74)
                            {

                              sub_230E690A0();
                              v98 = sub_230E69070();
                              v76 = v75;
                              sub_230D0F474(v73, v72, 3);
                              (*(v7 + 8))(v12, v6);
                              v99 = v76;
                              if (v76 >> 60 != 15)
                              {

                                v77 = sub_230E686C0();
                                v78 = *(v77 + 48);
                                v79 = *(v77 + 52);
                                swift_allocObject();
                                sub_230E686B0();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9A0, &qword_230E77D90);
                                sub_230DD705C(&qword_27DB5C818, sub_230DCA5F4);
                                sub_230E686A0();
                                if (v2)
                                {
                                  MEMORY[0x23191E910](v2);

                                  v109 = sub_230D0EE04(MEMORY[0x277D84F90]);
                                  sub_230D0F494(v98, v99);
                                  v3 = 0;
                                }

                                else
                                {

                                  sub_230D0F494(v98, v99);
                                  v109 = v112;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v80 = sub_230D0EF6C(MEMORY[0x277D84F90]);
                    if (*(a1 + 16))
                    {
                      v81 = sub_230DA41A0(0xD000000000000011, 0x8000000230E801D0);
                      if (v82)
                      {
                        v83 = *(a1 + 56) + 24 * v81;
                        if (*(v83 + 16) == 3)
                        {
                          v84 = *(v83 + 8);
                          if (v84)
                          {
                            v85 = *v83;
                            v86 = HIBYTE(v84) & 0xF;
                            if ((v84 & 0x2000000000000000) == 0)
                            {
                              v86 = v85 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v86)
                            {

                              sub_230E690A0();
                              v99 = sub_230E69070();
                              v88 = v87;
                              sub_230D0F474(v85, v84, 3);
                              (*(v7 + 8))(v12, v6);
                              if (v88 >> 60 != 15)
                              {

                                v89 = sub_230E686C0();
                                v90 = *(v89 + 48);
                                v91 = *(v89 + 52);
                                swift_allocObject();
                                sub_230E686B0();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C828, &qword_230E77DA0);
                                sub_230DD6854(&unk_27DB5D990, sub_230DCA6CC);
                                sub_230E686A0();
                                if (v3)
                                {
                                  MEMORY[0x23191E910](v3);

                                  v80 = sub_230D0EF6C(MEMORY[0x277D84F90]);
                                  sub_230D0F494(v99, v88);
                                }

                                else
                                {

                                  sub_230D0F494(v99, v88);
                                  v80 = v112;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v92 = MEMORY[0x277D84F90];
                    sub_230D0EE04(MEMORY[0x277D84F90]);
                    sub_230D0EF6C(v92);

                    v93 = v110;
                    *a2 = v111;
                    *(a2 + 8) = v93;
                    *(a2 + 16) = v104;
                    v94 = v108;
                    *(a2 + 24) = v107;
                    *(a2 + 32) = v94;
                    v95 = v106;
                    *(a2 + 40) = v105;
                    *(a2 + 48) = v95;
                    v96 = v102;
                    *(a2 + 56) = v103;
                    *(a2 + 64) = v96;
                    *(a2 + 72) = v109;
                    *(a2 + 80) = v80;
                    v97 = v100;
                    *(a2 + 88) = v101;
                    *(a2 + 96) = v97;
                    *(a2 + 104) = 1;
                    return result;
                  }

                  if (v39 == 1)
                  {
                    v104 = 1;
                    goto LABEL_66;
                  }

                  sub_230D0F474(v105, v106, 3);
                  v63 = v107;
                  v64 = v108;
                }

                else
                {
                  sub_230D0DCD8(v105, 0, 3);
                  sub_230D0F474(v107, v108, 3);
                  v63 = v109;
                  v64 = v21;
                }

                sub_230D0F474(v63, v64, 3);
                goto LABEL_52;
              }

              v61 = v111;
            }

            else
            {
              v61 = v111;
            }

            sub_230D0F474(v61, v110, 3);
            v59 = v109;
LABEL_50:
            v60 = v21;
LABEL_53:
            result = sub_230D0F474(v59, v60, 3);
LABEL_54:
            *(a2 + 96) = 0;
            *(a2 + 64) = 0u;
            *(a2 + 80) = 0u;
            *(a2 + 32) = 0u;
            *(a2 + 48) = 0u;
            *a2 = 0u;
            *(a2 + 16) = 0u;
            *(a2 + 104) = -1;
            return result;
          }
        }

        else
        {
          sub_230D0DCD8(*v25, 0, 3);
        }
      }

LABEL_52:
      v60 = v110;
      v59 = v111;
      goto LABEL_53;
    }

    v59 = v111;
    goto LABEL_50;
  }

  v40 = v17 == 1701606770 && v15 == 0xE400000000000000;
  if (v40 || (sub_230E698C0() & 1) != 0)
  {
    v41 = sub_230E53350(a1);
    v43 = v42;
    v44 = sub_230D0EAD0(MEMORY[0x277D84F90]);
    if (*(a1 + 16))
    {
      v111 = v41;
      v45 = sub_230DA41A0(0x6574656D61726170, 0xEA00000000007372);
      if (v46)
      {
        v47 = *(a1 + 56) + 24 * v45;
        if (*(v47 + 16) == 3)
        {
          v48 = *(v47 + 8);
          if (v48)
          {
            v49 = *v47;
            v50 = HIBYTE(v48) & 0xF;
            if ((v48 & 0x2000000000000000) == 0)
            {
              v50 = v49 & 0xFFFFFFFFFFFFLL;
            }

            if (v50)
            {

              sub_230E690A0();
              v109 = sub_230E69070();
              v110 = v51;
              sub_230D0F474(v49, v48, 3);
              v52 = v12;
              v53 = v110;
              (*(v7 + 8))(v52, v6);
              if (v53 >> 60 != 15)
              {

                v54 = sub_230E686C0();
                v55 = *(v54 + 48);
                v56 = *(v54 + 52);
                swift_allocObject();
                sub_230E686B0();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
                sub_230D6C1DC(&qword_27DB5D980);
                v57 = v109;
                sub_230E686A0();
                if (v2)
                {
                  MEMORY[0x23191E910](v2);

                  v44 = sub_230D0EAD0(MEMORY[0x277D84F90]);
                  sub_230D0F494(v57, v53);
                }

                else
                {

                  sub_230D0F494(v57, v53);
                  v44 = v112;
                }
              }
            }
          }
        }
      }

      v41 = v111;
    }

    sub_230D0EAD0(MEMORY[0x277D84F90]);

    LOBYTE(v112) = 0;
    *a2 = v44;
    *(a2 + 8) = v41;
    *(a2 + 16) = v43;
    *(a2 + 104) = 0;
  }

  else
  {
    sub_230E57704();
    swift_allocError();
    *v58 = 0;
    v58[1] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_230E532B0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_230DA41A0(0x7269447465737361, 0xEE0079726F746365);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 56) + 24 * v2;
  if (*(v4 + 16) != 3 || *(v4 + 8) == 0)
  {
    return 0;
  }

  v6 = *v4;
  v7 = *(v4 + 8);

  return v6;
}

uint64_t sub_230E53350(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_230DA41A0(0xD000000000000013, 0x8000000230E801F0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 56) + 24 * v2;
  if (*(v4 + 16) != 3 || *(v4 + 8) == 0)
  {
    return 0;
  }

  v6 = *v4;
  v7 = *(v4 + 8);

  return v6;
}

uint64_t static SystemDatabase.queryActiveWorkflowByAsset(_:using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v5 + 120) = a3;
  *(v5 + 128) = a4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a2;
  v7 = sub_230E68D80();
  *(v5 + 136) = v7;
  v8 = *(v7 - 8);
  *(v5 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  v10 = *(a5 + 16);
  *(v5 + 160) = *a5;
  *(v5 + 176) = v10;
  *(v5 + 192) = *(a5 + 32);
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E534EC, 0, 0);
}

uint64_t sub_230E534EC()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 192);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    *(v0 + 216) = v1;
    *(v0 + 224) = v3;
    *(v0 + 671) = BYTE1(v2);
    *(v0 + 670) = v2 & 1;
    *(v0 + 208) = v5;
    *(v0 + 669) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = qword_27DB5A438;
    *(v0 + 232) = qword_27DB5A438;

    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E53948, v8, 0);
  }

  else
  {
    *(v0 + 668) = 46;
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_230E536D8;
    v11 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 668), 0, 0);
  }
}

uint64_t sub_230E536D8()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 200);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E53800, 0, 0);
}

uint64_t sub_230E53800()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 216) = v3;
  *(v0 + 224) = v6;
  *(v0 + 671) = v5;
  *(v0 + 670) = v4;
  *(v0 + 208) = v2;
  *(v0 + 669) = v1;
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = qword_27DB5A438;
  *(v0 + 232) = qword_27DB5A438;

  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E53948, v14, 0);
}

uint64_t sub_230E53948()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 152);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = *(v0 + 669);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0xD00000000000001ALL, 0x8000000230E80990, v33);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v33);
    *(v9 + 22) = 2080;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v33);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  if (*(v0 + 670) != 1)
  {
    goto LABEL_6;
  }

  v13 = *(v0 + 224);
  v14 = *(v0 + 671);
  v32 = *(v0 + 669);
  v15 = RequestType.rawValue.getter();
  v17 = v16;

  LOBYTE(v15) = sub_230D33FDC(v15, v17, v13);

  if ((v15 & 1) != 0 || v14 >= 2)
  {
    sub_230E68950();
    *(v0 + 240) = CFAbsoluteTimeGetCurrent();
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0u;
    *(v0 + 656) = 0;
    *(v0 + 660) = 93;
    v20 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 288), (v0 + 660));
    *(v0 + 664) = v20;
    v21 = 0.0;
    if (!v20)
    {
      v22 = *(v0 + 336);
      v23 = *(v0 + 408);
      v24 = __CFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
      }

      v21 = vcvtd_n_f64_u64(v25, 0x14uLL);
    }

    *(v0 + 264) = v21;
    *(v0 + 96) = 0;
    v18 = swift_task_alloc();
    *(v0 + 272) = v18;
    *v18 = v0;
    v19 = sub_230E53E98;
  }

  else
  {
LABEL_6:
    v18 = swift_task_alloc();
    *(v0 + 248) = v18;
    *v18 = v0;
    v19 = sub_230E53D40;
  }

  v18[1] = v19;
  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *(v0 + 104);
  v29 = *(v0 + 112);
  v30 = *MEMORY[0x277D85DE8];

  return sub_230E54458(v28, v29, v26, v27, v0 + 16);
}

uint64_t sub_230E53D40()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_230E54370;
  }

  else
  {
    v6 = sub_230E5427C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E53E98()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_230E54118;
  }

  else
  {
    v6 = sub_230E53FF0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E53FF0()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  sub_230D3BC54(46, *(v0 + 264), *(v0 + 664) != 0, v0 + 16, (v0 + 96), *(v0 + 240));
  (*(v4 + 8))(v3, v5);

  v8 = *(v0 + 216);
  v9 = *(v0 + 224);
  v10 = *(v0 + 152);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_230E54118()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v16 = *(v0 + 216);
  v17 = *(v0 + 224);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v15 = *(v0 + 128);
  v7 = *(v0 + 120);
  v8 = *(v0 + 664) != 0;
  *(v0 + 96) = v1;
  swift_willThrow();
  v9 = v1;
  sub_230D3BC54(46, v2, v8, v0 + 16, (v0 + 96), v3);
  MEMORY[0x23191E910](v1);
  (*(v5 + 8))(v4, v6);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v10 = *(v0 + 280);
  v11 = *(v0 + 152);

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_230E5427C()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[16];
  v4 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[19];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_230E54370()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[16];
  v4 = v0[15];
  (*(v0[18] + 8))(v0[19], v0[17]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v5 = v0[32];
  v6 = v0[19];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_230E54458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[136] = a5;
  v5[135] = a4;
  v5[134] = a3;
  v5[133] = a2;
  v5[132] = a1;
  v6 = *(type metadata accessor for Treatment() - 8);
  v5[137] = v6;
  v7 = *(v6 + 64) + 15;
  v5[138] = swift_task_alloc();
  v5[139] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E54530, 0, 0);
}

uint64_t sub_230E54530()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000013, 0x8000000230E84F50);
  MEMORY[0x23191DA00](v4, v3);
  MEMORY[0x23191DA00](0xD000000000000020, 0x8000000230E84F70);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 0u;
  *(v0 + 880) = 1;
  sub_230D1D098(v0 + 784);
  *(v0 + 16) = 0x6C666B726F575F5FLL;
  *(v0 + 24) = 0xEA0000000000776FLL;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  sub_230D1CDE0(v1, v0 + 928);

  return MEMORY[0x2822009F8](sub_230E54698, v2, 0);
}

uint64_t sub_230E54698()
{
  v1 = v0[135];
  sub_230D1CDE0(v0[136], (v0 + 121));
  sub_230D1D0EC((v0 + 2), (v0 + 17));

  v2 = swift_task_alloc();
  v0[140] = v2;
  *v2 = v0;
  v2[1] = sub_230E54780;
  v3 = v0[136];
  v4 = v0[135];

  return (sub_230D70F74)(v0 + 131, 2, v3);
}

uint64_t sub_230E54780()
{
  v2 = *v1;
  v3 = *(*v1 + 1120);
  v4 = *v1;
  *(*v1 + 1128) = v0;

  v5 = *(v2 + 1088);
  v6 = *(v2 + 1080);
  sub_230D1CE3C(v5);
  if (v0)
  {
    v7 = sub_230E54F40;
  }

  else
  {
    v7 = sub_230E548C8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E548C8()
{
  sub_230D1CE3C(*(v0 + 1088));

  return MEMORY[0x2822009F8](sub_230E54930, 0, 0);
}

uint64_t sub_230E54930()
{
  v63 = v0;
  v1 = *(v0 + 1048);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 1128);
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_44:
        swift_once();
LABEL_33:
        *(v0 + 1144) = qword_27DB5A438;
        *(v0 + 129) = 27;
        v33 = swift_task_alloc();
        *(v0 + 1152) = v33;
        *v33 = v0;
        v33[1] = sub_230E55020;

        return static RequestContext.from(_:correlationID:)(v0 + 1008, (v0 + 129), 0, 0);
      }

      v6 = *(v1 + 32 + 8 * v3);

      sub_230E527E0(v7, &v50);
      if (v4)
      {
        break;
      }

      *(v0 + 345) = *&v55[9];
      v8 = *v55;
      *(v0 + 320) = v54;
      *(v0 + 336) = v8;
      v9 = v51;
      *(v0 + 256) = v50;
      *(v0 + 272) = v9;
      v10 = v53;
      *(v0 + 288) = v52;
      *(v0 + 304) = v10;
      v11 = *(v0 + 360);
      if (v11 == 255)
      {
        goto LABEL_18;
      }

      if ((v11 & 1) == 0 || !*(v6 + 16) || (v12 = sub_230DA41A0(0xD000000000000013, 0x8000000230E801F0), (v13 & 1) == 0))
      {
        sub_230D2D9F8(v0 + 256, &qword_27DB5CD10, &qword_230E7AE20);
        goto LABEL_18;
      }

      v49 = v5;
      v14 = *(v6 + 56) + 24 * v12;
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_230D0DCD8(*v14, v15, *(v14 + 16));

      if (v17 == 3)
      {
        if (v15)
        {
          v18 = v49;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_230E4AEA4(0, v49[2] + 1, 1, v49);
          }

          v20 = v18[2];
          v19 = v18[3];
          v21 = v18;
          if (v20 >= v19 >> 1)
          {
            v21 = sub_230E4AEA4((v19 > 1), v20 + 1, 1, v18);
          }

          v62 = *&v55[16];
          v60 = v54;
          v61 = *v55;
          v58 = v52;
          v59 = v53;
          v56 = v50;
          v57 = v51;
          v21[2] = v20 + 1;
          v22 = &v21[15 * v20];
          v5 = v21;
          v22[4] = v16;
          v22[5] = v15;
          v23 = v56;
          v24 = v58;
          *(v22 + 4) = v57;
          *(v22 + 5) = v24;
          *(v22 + 3) = v23;
          v25 = v59;
          v26 = v60;
          v27 = v61;
          v22[18] = v62;
          *(v22 + 7) = v26;
          *(v22 + 8) = v27;
          *(v22 + 6) = v25;
          goto LABEL_19;
        }
      }

      else
      {
        sub_230D0F474(v16, v15, v17);
      }

      sub_230D2D9F8(v0 + 256, &qword_27DB5CD10, &qword_230E7AE20);
      v5 = v49;
LABEL_19:
      v4 = 0;
      v28 = 0;
      if (v2 == ++v3)
      {
        goto LABEL_24;
      }
    }

    MEMORY[0x23191E910](v4);
LABEL_18:

    goto LABEL_19;
  }

  v28 = *(v0 + 1128);
  v5 = MEMORY[0x277D84F90];
LABEL_24:

  if (v5[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C450, &qword_230E75CA8);
    v29 = sub_230E69640();
  }

  else
  {
    v29 = MEMORY[0x277D84F98];
  }

  *&v50 = v29;

  sub_230E57758(v30, 1, &v50);
  if (v28)
  {

    return swift_unexpectedError();
  }

  else
  {
    sub_230D1D148(v0 + 16);

    v32 = v50;
    *(v0 + 1136) = v50;
    if (*(v32 + 16))
    {
      if (qword_27DB5A430 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_33;
    }

    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 1072);
    v35 = sub_230E68D80();
    __swift_project_value_buffer(v35, qword_27DB80BC0);

    v36 = sub_230E68D60();
    v37 = sub_230E69400();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 1072);
      v39 = *(v0 + 1064);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v50 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_230D7E620(v39, v38, &v50);
      _os_log_impl(&dword_230D02000, v36, v37, "[SystemDatabase][queryActiveWorkflowByAsset] No workflows found for asset: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x23191EAE0](v41, -1, -1);
      MEMORY[0x23191EAE0](v40, -1, -1);
    }

    v42 = *(v0 + 1072);
    v43 = *(v0 + 1064);
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_230E69540();

    *&v50 = 0xD00000000000001ELL;
    *(&v50 + 1) = 0x8000000230E84FD0;
    MEMORY[0x23191DA00](v43, v42);
    v44 = v50;
    sub_230D0D224();
    swift_allocError();
    *v45 = v44;
    *(v45 + 16) = 4;
    swift_willThrow();
    v46 = *(v0 + 1112);
    v47 = *(v0 + 1104);

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_230E54F40()
{
  sub_230D1CE3C(*(v0 + 1088));

  return MEMORY[0x2822009F8](sub_230E54FA8, 0, 0);
}

uint64_t sub_230E54FA8()
{
  sub_230D1D148((v0 + 2));
  v1 = v0[141];
  v2 = v0[139];
  v3 = v0[138];

  v4 = v0[1];

  return v4();
}

uint64_t sub_230E55020()
{
  v1 = *(*v0 + 1152);
  v2 = *(*v0 + 1144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_230E55130, v2, 0);
}

uint64_t sub_230E55130()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1024);
  *(v0 + 1160) = v4;
  v5 = *(v0 + 1032);
  v6 = *(v0 + 1033);
  v7 = *(v0 + 1040);
  *(v0 + 1168) = v7;
  *(v0 + 888) = v2;
  *(v0 + 896) = v3;
  *(v0 + 904) = v4;
  *(v0 + 912) = v5;
  *(v0 + 913) = v6;
  *(v0 + 920) = v7;

  v8 = swift_task_alloc();
  *(v0 + 1176) = v8;
  *v8 = v0;
  v8[1] = sub_230E55240;
  v9 = *(v0 + 1144);

  return sub_230D76A40(27, v0 + 888, v9, v9, v0 + 888);
}

uint64_t sub_230E55240(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1176);
  v6 = *v2;
  v4[148] = v1;

  v7 = v4[146];
  v8 = v4[145];
  if (v1)
  {
    v9 = v4[143];

    v10 = sub_230E55A0C;
    v11 = v9;
  }

  else
  {

    v4[149] = a1;
    v10 = sub_230E553BC;
    v11 = 0;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_230E553BC()
{
  v79 = v0;
  v1 = *(v0 + 1192);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 576);
    v5 = *(v0 + 1112);
    v6 = *(v0 + 1096);
    v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v8 = *(v0 + 1136);
      sub_230DBCB98(v7 + *(v6 + 72) * v3, *(v0 + 1112));
      if (*(v8 + 16))
      {
        v9 = *(v0 + 1136);
        v10 = sub_230DA41A0(*(v5 + 16), *(v5 + 24));
        if (v11)
        {
          break;
        }
      }

      ++v3;
      sub_230DBCBFC(*(v0 + 1112));
      if (v2 == v3)
      {
        goto LABEL_11;
      }
    }

    v12 = *(v0 + 1136);
    v13 = v10;

    v14 = *(v12 + 56) + 104 * v13;
    v15 = *v14;
    v16 = *(v14 + 32);
    *(v0 + 592) = *(v14 + 16);
    *(v0 + 608) = v16;
    *v4 = v15;
    v17 = *(v14 + 48);
    v18 = *(v14 + 64);
    v19 = *(v14 + 80);
    *(v0 + 672) = *(v14 + 96);
    *(v0 + 640) = v18;
    *(v0 + 656) = v19;
    *(v0 + 624) = v17;
    sub_230DBB6FC(v0 + 576, v0 + 680);

    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 1112);
    v21 = *(v0 + 1104);
    v22 = sub_230E68D80();
    __swift_project_value_buffer(v22, qword_27DB80BC0);
    sub_230DBCB98(v20, v21);
    v23 = sub_230E68D60();
    v24 = sub_230E693E0();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 1112);
    v27 = *(v0 + 1104);
    if (v25)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = v29;
      *v28 = 136315138;
      v30 = *(v27 + 16);
      v31 = *(v27 + 24);

      sub_230DBCBFC(v27);
      v32 = sub_230D7E620(v30, v31, &v77);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_230D02000, v23, v24, "[SystemDatabase][queryActiveWorkflowByAsset] Found workflow for active treatment: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x23191EAE0](v29, -1, -1);
      MEMORY[0x23191EAE0](v28, -1, -1);
    }

    else
    {

      sub_230DBCBFC(v27);
    }

    sub_230DBCBFC(v26);
    goto LABEL_24;
  }

LABEL_11:
  v33 = *(v0 + 1136);

  if (*(v33 + 16))
  {
    v34 = *(v0 + 1136);
    v35 = sub_230DA41A0(0x746C7561666564, 0xE700000000000000);
    if (v36)
    {
      v4 = (v0 + 368);
      v37 = *(*(v0 + 1136) + 56) + 104 * v35;
      v39 = *(v37 + 16);
      v38 = *(v37 + 32);
      *(v0 + 368) = *v37;
      *(v0 + 384) = v39;
      *(v0 + 400) = v38;
      v41 = *(v37 + 64);
      v40 = *(v37 + 80);
      v42 = *(v37 + 48);
      *(v0 + 464) = *(v37 + 96);
      *(v0 + 432) = v41;
      *(v0 + 448) = v40;
      *(v0 + 416) = v42;
      sub_230DBB6FC(v0 + 368, v0 + 472);

      if (qword_27DB5A4B0 != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 1072);
      v44 = sub_230E68D80();
      __swift_project_value_buffer(v44, qword_27DB80BC0);

      v45 = sub_230E68D60();
      v46 = sub_230E693E0();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = *(v0 + 1072);
        v48 = *(v0 + 1064);
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v77 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_230D7E620(v48, v47, &v77);
        _os_log_impl(&dword_230D02000, v45, v46, "[SystemDatabase][queryActiveWorkflowByAsset] Using default workflow for asset: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x23191EAE0](v50, -1, -1);
        MEMORY[0x23191EAE0](v49, -1, -1);
      }

LABEL_24:
      v68 = *(v0 + 1056);
      v69 = *v4;
      v70 = v4[2];
      *(v68 + 16) = v4[1];
      *(v68 + 32) = v70;
      *v68 = v69;
      v71 = v4[3];
      v72 = v4[4];
      v73 = v4[5];
      *(v68 + 96) = *(v4 + 12);
      *(v68 + 64) = v72;
      *(v68 + 80) = v73;
      *(v68 + 48) = v71;
      v74 = *(v0 + 1112);
      v75 = *(v0 + 1104);

      v67 = *(v0 + 8);
      goto LABEL_25;
    }
  }

  v51 = *(v0 + 1136);

  if (qword_27DB5A4B0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v52 = *(v0 + 1072);
  v53 = sub_230E68D80();
  __swift_project_value_buffer(v53, qword_27DB80BC0);

  v54 = sub_230E68D60();
  v55 = sub_230E69400();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = *(v0 + 1072);
    v57 = *(v0 + 1064);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v77 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_230D7E620(v57, v56, &v77);
    _os_log_impl(&dword_230D02000, v54, v55, "[SystemDatabase][queryActiveWorkflowByAsset] No default workflow found for asset: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x23191EAE0](v59, -1, -1);
    MEMORY[0x23191EAE0](v58, -1, -1);
  }

  v60 = *(v0 + 1072);
  v61 = *(v0 + 1064);
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_230E69540();

  v77 = 0xD000000000000026;
  v78 = 0x8000000230E84FA0;
  MEMORY[0x23191DA00](v61, v60);
  v62 = v77;
  v63 = v78;
  sub_230D0D224();
  swift_allocError();
  *v64 = v62;
  *(v64 + 8) = v63;
  *(v64 + 16) = 3;
  swift_willThrow();
  v65 = *(v0 + 1112);
  v66 = *(v0 + 1104);

  v67 = *(v0 + 8);
LABEL_25:

  return v67();
}

uint64_t sub_230E55A0C()
{
  MEMORY[0x23191E910](*(v0 + 1184));

  return MEMORY[0x2822009F8](sub_230E55A74, 0, 0);
}

uint64_t sub_230E55A74()
{
  v79 = v0;
  v1 = MEMORY[0x277D84F90];
  v2 = *(MEMORY[0x277D84F90] + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 576);
    v5 = *(v0 + 1112);
    v6 = *(v0 + 1096);
    v7 = MEMORY[0x277D84F90] + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v8 = *(v0 + 1136);
      sub_230DBCB98(v7 + *(v6 + 72) * v3, *(v0 + 1112));
      if (*(v8 + 16))
      {
        v9 = *(v0 + 1136);
        v10 = sub_230DA41A0(*(v5 + 16), *(v5 + 24));
        if (v11)
        {
          break;
        }
      }

      ++v3;
      sub_230DBCBFC(*(v0 + 1112));
      if (v2 == v3)
      {
        goto LABEL_11;
      }
    }

    v12 = *(v0 + 1136);
    v13 = v10;

    v14 = *(v12 + 56) + 104 * v13;
    v15 = *v14;
    v16 = *(v14 + 32);
    *(v0 + 592) = *(v14 + 16);
    *(v0 + 608) = v16;
    *v4 = v15;
    v17 = *(v14 + 48);
    v18 = *(v14 + 64);
    v19 = *(v14 + 80);
    *(v0 + 672) = *(v14 + 96);
    *(v0 + 640) = v18;
    *(v0 + 656) = v19;
    *(v0 + 624) = v17;
    sub_230DBB6FC(v0 + 576, v0 + 680);

    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 1112);
    v21 = *(v0 + 1104);
    v22 = sub_230E68D80();
    __swift_project_value_buffer(v22, qword_27DB80BC0);
    sub_230DBCB98(v20, v21);
    v23 = sub_230E68D60();
    v24 = sub_230E693E0();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 1112);
    v27 = *(v0 + 1104);
    if (v25)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v77 = v29;
      *v28 = 136315138;
      v30 = *(v27 + 16);
      v31 = *(v27 + 24);

      sub_230DBCBFC(v27);
      v32 = sub_230D7E620(v30, v31, &v77);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_230D02000, v23, v24, "[SystemDatabase][queryActiveWorkflowByAsset] Found workflow for active treatment: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x23191EAE0](v29, -1, -1);
      MEMORY[0x23191EAE0](v28, -1, -1);
    }

    else
    {

      sub_230DBCBFC(v27);
    }

    sub_230DBCBFC(v26);
    goto LABEL_24;
  }

LABEL_11:
  v33 = *(v0 + 1136);

  if (*(v33 + 16))
  {
    v34 = *(v0 + 1136);
    v35 = sub_230DA41A0(0x746C7561666564, 0xE700000000000000);
    if (v36)
    {
      v4 = (v0 + 368);
      v37 = *(*(v0 + 1136) + 56) + 104 * v35;
      v39 = *(v37 + 16);
      v38 = *(v37 + 32);
      *(v0 + 368) = *v37;
      *(v0 + 384) = v39;
      *(v0 + 400) = v38;
      v41 = *(v37 + 64);
      v40 = *(v37 + 80);
      v42 = *(v37 + 48);
      *(v0 + 464) = *(v37 + 96);
      *(v0 + 432) = v41;
      *(v0 + 448) = v40;
      *(v0 + 416) = v42;
      sub_230DBB6FC(v0 + 368, v0 + 472);

      if (qword_27DB5A4B0 != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 1072);
      v44 = sub_230E68D80();
      __swift_project_value_buffer(v44, qword_27DB80BC0);

      v45 = sub_230E68D60();
      v46 = sub_230E693E0();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = *(v0 + 1072);
        v48 = *(v0 + 1064);
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v77 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_230D7E620(v48, v47, &v77);
        _os_log_impl(&dword_230D02000, v45, v46, "[SystemDatabase][queryActiveWorkflowByAsset] Using default workflow for asset: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x23191EAE0](v50, -1, -1);
        MEMORY[0x23191EAE0](v49, -1, -1);
      }

LABEL_24:
      v68 = *(v0 + 1056);
      v69 = *v4;
      v70 = v4[2];
      *(v68 + 16) = v4[1];
      *(v68 + 32) = v70;
      *v68 = v69;
      v71 = v4[3];
      v72 = v4[4];
      v73 = v4[5];
      *(v68 + 96) = *(v4 + 12);
      *(v68 + 64) = v72;
      *(v68 + 80) = v73;
      *(v68 + 48) = v71;
      v74 = *(v0 + 1112);
      v75 = *(v0 + 1104);

      v67 = *(v0 + 8);
      goto LABEL_25;
    }
  }

  v51 = *(v0 + 1136);

  if (qword_27DB5A4B0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v52 = *(v0 + 1072);
  v53 = sub_230E68D80();
  __swift_project_value_buffer(v53, qword_27DB80BC0);

  v54 = sub_230E68D60();
  v55 = sub_230E69400();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = *(v0 + 1072);
    v57 = *(v0 + 1064);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v77 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_230D7E620(v57, v56, &v77);
    _os_log_impl(&dword_230D02000, v54, v55, "[SystemDatabase][queryActiveWorkflowByAsset] No default workflow found for asset: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x23191EAE0](v59, -1, -1);
    MEMORY[0x23191EAE0](v58, -1, -1);
  }

  v60 = *(v0 + 1072);
  v61 = *(v0 + 1064);
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_230E69540();

  v77 = 0xD000000000000026;
  v78 = 0x8000000230E84FA0;
  MEMORY[0x23191DA00](v61, v60);
  v62 = v77;
  v63 = v78;
  sub_230D0D224();
  swift_allocError();
  *v64 = v62;
  *(v64 + 8) = v63;
  *(v64 + 16) = 3;
  swift_willThrow();
  v65 = *(v0 + 1112);
  v66 = *(v0 + 1104);

  v67 = *(v0 + 8);
LABEL_25:

  return v67();
}

uint64_t static SystemDatabase.queryAllWorkflows(using:requestContext:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  v3 = *(a2 + 16);
  *(v2 + 104) = *a2;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E56108, 0, 0);
}

uint64_t sub_230E56108()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v3;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 96);
    v7 = qword_27DB5A438;

    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *v8 = v0;
    v8[1] = sub_230D0571C;
    v9 = *(v0 + 96);

    return sub_230D7A638(47, v0 + 16, v7, v9, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 47;
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_230E562E8;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230E562E8()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_230E563E4, 0, 0);
}

uint64_t sub_230E563E4()
{
  *(v0 + 16) = *(v0 + 56);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 81);
  v5 = *(v0 + 88);
  *(v0 + 152) = v2;
  *(v0 + 160) = v5;
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 41) = v4;
  *(v0 + 48) = v5;
  sub_230D0585C(v10, v8, v9);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 96);
  v12 = qword_27DB5A438;

  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_230D0571C;
  v14 = *(v0 + 96);

  return sub_230D7A638(47, v0 + 16, v12, v14, v0 + 16);
}

uint64_t sub_230E5653C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[72] = a3;
  v3[71] = a2;
  v3[70] = a1;
  return MEMORY[0x2822009F8](sub_230E56564, 0, 0);
}

uint64_t sub_230E56564()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 1;
  sub_230D1D098(v0 + 368);
  *(v0 + 16) = 0x6C666B726F575F5FLL;
  *(v0 + 24) = 0xEA0000000000776FLL;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 1;
  sub_230D1CDE0(v1, v0 + 472);

  return MEMORY[0x2822009F8](sub_230E56638, v2, 0);
}

uint64_t sub_230E56638()
{
  v1 = v0[71];
  sub_230D1CDE0(v0[72], (v0 + 64));
  sub_230D1D0EC((v0 + 2), (v0 + 17));

  v2 = swift_task_alloc();
  v0[73] = v2;
  *v2 = v0;
  v2[1] = sub_230E56720;
  v3 = v0[72];
  v4 = v0[71];

  return (sub_230D70F74)(v0 + 69, 2, v3);
}

uint64_t sub_230E56720()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  v5 = *(v2 + 576);
  v6 = *(v2 + 568);
  sub_230D1CE3C(v5);
  if (v0)
  {
    v7 = sub_230E56C00;
  }

  else
  {
    v7 = sub_230E56868;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E56868()
{
  sub_230D1CE3C(*(v0 + 576));
  sub_230D1D148(v0 + 16);

  return MEMORY[0x2822009F8](sub_230E568D8, 0, 0);
}

void sub_230E568D8()
{
  v44 = v0;
  v1 = *(v0 + 552);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 256);
    v5 = *(v0 + 592);
    v6 = v2 - 1;
    v31 = MEMORY[0x277D84F90];
    v28 = *(v1 + 16);
    while (v3 < *(v1 + 16))
    {
      v7 = v3;
      v8 = *(v1 + 32 + 8 * v3);
      v30 = v3 + 1;

      sub_230E527E0(v9, &v32);
      if (v5)
      {
        MEMORY[0x23191E910](v5);

        v36 = 0u;
        memset(v37, 0, 24);
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v37[24] = -1;
LABEL_6:
        v10 = *v37;
        v4[4] = v36;
        v4[5] = v10;
        *(v4 + 89) = *&v37[9];
        v11 = v33;
        *v4 = v32;
        v4[1] = v11;
        v12 = v35;
        v4[2] = v34;
        v4[3] = v12;
        sub_230D2D9F8(v4, &qword_27DB5CD10, &qword_230E7AE20);
        if (v30 == v28)
        {
          goto LABEL_20;
        }

        while (v7 + 1 < *(v1 + 16))
        {
          v16 = *(v1 + 40 + 8 * v7);

          sub_230E527E0(v17, &v32);

          if (v37[24] != 255)
          {
            v30 = v7 + 2;
            goto LABEL_13;
          }

          v13 = *v37;
          v4[4] = v36;
          v4[5] = v13;
          *(v4 + 89) = *&v37[9];
          v14 = v33;
          *v4 = v32;
          v4[1] = v14;
          v15 = v35;
          v4[2] = v34;
          v4[3] = v15;
          sub_230D2D9F8(v4, &qword_27DB5CD10, &qword_230E7AE20);
          if (v6 == ++v7)
          {
            goto LABEL_20;
          }
        }

        break;
      }

      if (v37[24] == 255)
      {
        goto LABEL_6;
      }

LABEL_13:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_230E4AFF0(0, *(v31 + 2) + 1, 1, v31);
      }

      v19 = *(v31 + 2);
      v18 = *(v31 + 3);
      if (v19 >= v18 >> 1)
      {
        v31 = sub_230E4AFF0((v18 > 1), v19 + 1, 1, v31);
      }

      v5 = 0;
      v42 = v36;
      v43[0] = *v37;
      *(v43 + 9) = *&v37[9];
      v40 = v34;
      v41 = v35;
      v20 = v32;
      v38 = v32;
      v39 = v33;
      *(v31 + 2) = v19 + 1;
      v21 = &v31[112 * v19];
      v22 = v40;
      *(v21 + 3) = v39;
      *(v21 + 4) = v22;
      v23 = v41;
      v24 = v42;
      v25 = v43[0];
      *(v21 + 121) = *(v43 + 9);
      *(v21 + 6) = v24;
      *(v21 + 7) = v25;
      *(v21 + 5) = v23;
      *(v21 + 2) = v20;
      v3 = v30;
      if (v30 == v28)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
LABEL_20:
    v26 = *(v29 + 560);

    *v26 = v31;
    v27 = *(v29 + 8);

    v27();
  }
}

uint64_t sub_230E56C00()
{
  sub_230D1CE3C(*(v0 + 576));

  return MEMORY[0x2822009F8](sub_230E56C68, 0, 0);
}

uint64_t sub_230E56C68()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 592);

  return v1();
}

uint64_t sub_230E56CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[58] = a3;
  v4[59] = a4;
  v4[56] = a1;
  v4[57] = a2;
  return MEMORY[0x2822009F8](sub_230E56CF0, 0, 0);
}

uint64_t sub_230E56CF0()
{
  v1 = *(v0 + 456);
  v2 = *v1;
  *(v0 + 480) = *v1;
  v3 = v1[1];
  *(v0 + 488) = v3;
  if (v1[11])
  {
    v4 = v1[10];
    v5 = v1[11];
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x746C7561666564;
  }

  *(v0 + 496) = v4;
  *(v0 + 504) = v5;
  v6 = *(v0 + 464);
  v7 = *(v0 + 472);

  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000015, 0x8000000230E85070);
  MEMORY[0x23191DA00](v2, v3);
  MEMORY[0x23191DA00](0xD00000000000001DLL, 0x8000000230E850E0);
  MEMORY[0x23191DA00](v4, v5);
  MEMORY[0x23191DA00](39, 0xE100000000000000);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0x6C666B726F575F5FLL;
  *(v0 + 24) = 0xEA0000000000776FLL;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  sub_230D1CDE0(v7, v0 + 360);

  return MEMORY[0x2822009F8](sub_230E56EB8, v6, 0);
}

uint64_t sub_230E56EB8()
{
  v1 = v0[58];
  sub_230D1CDE0(v0[59], (v0 + 50));
  sub_230D1D0EC((v0 + 2), (v0 + 17));

  v2 = swift_task_alloc();
  v0[64] = v2;
  *v2 = v0;
  v2[1] = sub_230E56F98;
  v4 = v0[58];
  v3 = v0[59];

  return (sub_230D70F74)(v0 + 55, 2, v3);
}

uint64_t sub_230E56F98()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 472);
  v6 = *(v2 + 464);
  sub_230D1CE3C(v5);
  if (v0)
  {
    v7 = sub_230E5762C;
  }

  else
  {
    v7 = sub_230E570E0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_230E570E0()
{
  sub_230D1CE3C(*(v0 + 472));
  sub_230D1D148(v0 + 16);

  return MEMORY[0x2822009F8](sub_230E57150, 0, 0);
}

uint64_t sub_230E57150()
{
  v45 = v0;
  v1 = v0[55];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v7 = v0[55];

    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v8 = v0[63];
    v9 = v0[61];
    v10 = sub_230E68D80();
    __swift_project_value_buffer(v10, qword_27DB80BC0);

    v11 = sub_230E68D60();
    v12 = sub_230E693E0();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[63];
    if (v13)
    {
      v16 = v0[61];
      v15 = v0[62];
      v17 = v0[60];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v43 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_230D7E620(v17, v16, &v43);
      *(v18 + 12) = 2080;
      v20 = sub_230D7E620(v15, v14, &v43);

      *(v18 + 14) = v20;
      _os_log_impl(&dword_230D02000, v11, v12, "[SystemDatabase][queryWorkflow] No workflow found for useCaseIdentifier: %s, treatmentIdentifier: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v19, -1, -1);
      MEMORY[0x23191EAE0](v18, -1, -1);
    }

    else
    {
    }

    v32 = v0[56];
    *(v32 + 96) = 0;
    *(v32 + 64) = 0u;
    *(v32 + 80) = 0u;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *v32 = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 104) = -1;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = *(v1 + 32);
    v4 = v0[65];
    v5 = v0[63];
    v6 = v0[56];

    sub_230E527E0(v3, v6);

    if (!v4)
    {
LABEL_15:
      v33 = v0[1];
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v21 = v0[63];
    v22 = v0[61];
    v23 = sub_230E68D80();
    __swift_project_value_buffer(v23, qword_27DB80BC0);

    v24 = sub_230E68D60();
    v25 = sub_230E69400();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[62];
      v42 = v0[63];
      v28 = v0[60];
      v27 = v0[61];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v29 = 134218498;
      v31 = *(v1 + 16);

      *(v29 + 4) = v31;

      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_230D7E620(v28, v27, &v43);
      *(v29 + 22) = 2080;
      *(v29 + 24) = sub_230D7E620(v26, v42, &v43);
      _os_log_impl(&dword_230D02000, v24, v25, "[SystemDatabase][queryWorkflow] Data integrity violation: Found %ld workflows for useCaseIdentifier: %s, treatmentIdentifier: %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v30, -1, -1);
      MEMORY[0x23191EAE0](v29, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v35 = v0[62];
    v34 = v0[63];
    v37 = v0[60];
    v36 = v0[61];
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000030, 0x8000000230E85100);
    MEMORY[0x23191DA00](v37, v36);
    MEMORY[0x23191DA00](0xD000000000000017, 0x8000000230E85140);
    MEMORY[0x23191DA00](v35, v34);

    v38 = v43;
    v39 = v44;
    sub_230D0D224();
    swift_allocError();
    *v40 = v38;
    *(v40 + 8) = v39;
    *(v40 + 16) = 4;
    swift_willThrow();
  }

  v33 = v0[1];
LABEL_19:

  return v33();
}

uint64_t sub_230E5762C()
{
  v1 = *(v0 + 504);
  sub_230D1CE3C(*(v0 + 472));

  return MEMORY[0x2822009F8](sub_230E576A0, 0, 0);
}

uint64_t sub_230E576A0()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 520);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_230E57704()
{
  result = qword_27DB5D970;
  if (!qword_27DB5D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D970);
  }

  return result;
}

uint64_t sub_230E57758(uint64_t a1, char a2, void *a3)
{
  v36 = *(a1 + 16);
  if (!v36)
  {
  }

  v6 = 0;
  for (i = 32; ; i += 120)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_230E69950();
      __break(1u);
      goto LABEL_23;
    }

    v8 = *(a1 + i + 96);
    v49 = *(a1 + i + 80);
    v50 = v8;
    v9 = *(a1 + i + 64);
    v47 = *(a1 + i + 48);
    v48 = v9;
    v10 = *(a1 + i + 32);
    v45 = *(a1 + i + 16);
    v46 = v10;
    v44 = *(a1 + i);
    v11 = *(a1 + i + 112);
    v51 = v11;
    v41 = v49;
    v42 = v50;
    v39 = v47;
    v40 = v48;
    v37 = v45;
    v38 = v10;
    v12 = v44;
    sub_230E57AB0(&v44, &v43);
    if (!*(&v12 + 1))
    {
    }

    v43 = v12;
    v44 = v37;
    v45 = v38;
    v46 = v39;
    v47 = v40;
    v48 = v41;
    v49 = v42;
    *&v50 = v11;
    v13 = *a3;
    v14 = sub_230DA41A0(v12, *(&v12 + 1));
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_20;
    }

    v20 = v15;
    if (v13[3] >= v19)
    {
      break;
    }

    sub_230DB928C(v19, a2 & 1);
    v21 = *a3;
    v14 = sub_230DA41A0(v12, *(&v12 + 1));
    if ((v20 & 1) != (v22 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_11:
    v23 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v23[6] + 16 * v14) = v12;
    v24 = v23[7] + 104 * v14;
    v25 = v44;
    v26 = v46;
    *(v24 + 16) = v45;
    *(v24 + 32) = v26;
    *v24 = v25;
    v27 = v47;
    v28 = v48;
    v29 = v49;
    *(v24 + 96) = v50;
    *(v24 + 64) = v28;
    *(v24 + 80) = v29;
    *(v24 + 48) = v27;
    v30 = v23[2];
    v18 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v18)
    {
      goto LABEL_21;
    }

    ++v6;
    v23[2] = v31;
    a2 = 1;
    if (v36 == v6)
    {
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v32 = v14;
  sub_230DBB414();
  v14 = v32;
  if ((v20 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v33 = swift_allocError();
  swift_willThrow();
  v52 = v33;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_230DD70E0(&v44);

    return MEMORY[0x23191E910](v52);
  }

LABEL_23:
  sub_230E69540();
  MEMORY[0x23191DA00](0xD00000000000001BLL, 0x8000000230E82200);
  sub_230E695F0();
  MEMORY[0x23191DA00](39, 0xE100000000000000);
  result = sub_230E69600();
  __break(1u);
  return result;
}

uint64_t sub_230E57AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D948, &qword_230E7F658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230E57B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 416) = a2;
  *(v4 + 424) = a3;
  *(v4 + 408) = a1;
  v5 = *(a4 + 16);
  *(v4 + 432) = *a4;
  *(v4 + 448) = v5;
  *(v4 + 464) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230E57B54, 0, 0);
}

uint64_t sub_230E57B54()
{
  v1 = *(v0 + 464);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_230E6B3B0;
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = 0x8000000230E80190;
  *(v4 + 48) = 3;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  v11 = *(v0 + 448);
  v12 = *(v0 + 432);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000015, 0x8000000230E85070);
  MEMORY[0x23191DA00](v3, v2);
  MEMORY[0x23191DA00](0xD000000000000046, 0x8000000230E85090);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0x6C666B726F575F5FLL;
  *(v0 + 24) = 0xEA0000000000776FLL;
  *(v0 + 32) = v4;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  v5 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v5;
  *(v0 + 232) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v6;
  v7 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 128) = 1;
  *(v0 + 248) = 1;
  *(v0 + 184) = v7;
  *(v0 + 360) = v12;
  *(v0 + 376) = v11;
  *(v0 + 392) = v1;
  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  *v8 = v0;
  v8[1] = sub_230E57D9C;
  v9 = *(v0 + 424);

  return sub_230D3ED1C(v0 + 400, v0 + 136, v0 + 360);
}

uint64_t sub_230E57D9C()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v6 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = sub_230E58128;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v4 = sub_230E57EB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_230E57EB8()
{
  v29 = v0;
  v1 = *(v0 + 400);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v27 = v4;
      v5 = v3;
      while (1)
      {
        if (v5 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v6 = *(v1 + 32 + 8 * v5);
        if (*(v6 + 16))
        {
          v7 = *(v1 + 32 + 8 * v5);

          v8 = sub_230DA41A0(0xD000000000000015, 0x8000000230E80190);
          if ((v9 & 1) == 0)
          {

            goto LABEL_5;
          }

          v10 = *(v6 + 56) + 24 * v8;
          v11 = *v10;
          v12 = *(v10 + 8);
          v13 = *(v10 + 16);
          sub_230D0DCD8(*v10, v12, *(v10 + 16));

          if (v13 != 3)
          {
            sub_230D0F474(v11, v12, v13);
            goto LABEL_5;
          }

          if (v12)
          {
            break;
          }
        }

LABEL_5:
        if (v2 == ++v5)
        {
          v0 = v26;
          v4 = v27;
          goto LABEL_22;
        }
      }

      v14 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_230E49E88(0, *(v27 + 16) + 1, 1, v27);
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v14;
      if (v17 >= v16 >> 1)
      {
        v18 = sub_230E49E88((v16 > 1), v17 + 1, 1, v14);
      }

      v3 = v5 + 1;
      *(v18 + 2) = v17 + 1;
      v4 = v18;
      v19 = &v18[16 * v17];
      *(v19 + 4) = v11;
      *(v19 + 5) = v12;
      v20 = v2 - 1 == v5;
      v0 = v26;
      if (v20)
      {
        goto LABEL_22;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_22:

  v21 = sub_230D0ABEC(v4);

  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = sub_230E4B114(*(v21 + 16), 0);
  v24 = sub_230E6701C(&v28, v23 + 4, v22, v21);
  sub_230D912FC();
  if (v24 != v22)
  {
    __break(1u);
LABEL_25:

    v23 = MEMORY[0x277D84F90];
  }

  v25 = *(v0 + 8);

  v25(v23);
}

uint64_t sub_230E58128()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 480);

  return v1();
}

uint64_t sub_230E5818C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 288) = a2;
  v6 = sub_230E68910();
  *(v3 + 296) = v6;
  v7 = *(v6 - 8);
  *(v3 + 304) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = *a1;
  *(v3 + 416) = *(a1 + 16);
  *(v3 + 336) = *(a1 + 24);
  v9 = *(a3 + 16);
  *(v3 + 344) = *a3;
  *(v3 + 360) = v9;
  *(v3 + 376) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E58288, 0, 0);
}

uint64_t sub_230E58288()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  result = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 416);
  v10 = *(v0 + 320);
  v9 = *(v0 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v11 = swift_allocObject();
  *(v0 + 384) = v11;
  *(v11 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B790;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v10;
  *(inited + 56) = v9;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v13 = *&aLanguagesecuri_2[8 * v8 + 16];
  v14 = *(v0 + 376);
  v15 = *(v0 + 328);
  v20 = *(v0 + 360);
  v21 = *(v0 + 344);
  *(inited + 88) = *&aInternalapps_2[8 * v8];
  *(inited + 96) = v13;
  *(inited + 104) = 3;
  strcpy((inited + 112), "creationTime");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = v5;
  *(inited + 136) = 0;
  *(inited + 144) = 2;
  *(inited + 152) = 0x616470557473616CLL;
  *(inited + 160) = 0xEF656D6954646574;
  *(inited + 168) = v5;
  *(inited + 176) = 0;
  *(inited + 184) = 2;

  v16 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v11 + 32) = v16;
  v17 = sub_230E1CA68(&unk_2845A4FF8);
  *(v0 + 392) = v17;
  swift_arrayDestroy();
  *(v0 + 248) = 0x7361436573555F5FLL;
  *(v0 + 256) = 0xE900000000000065;
  *(v0 + 264) = v11;
  *(v0 + 272) = v17;
  *(v0 + 224) = v20;
  *(v0 + 208) = v21;
  *(v0 + 240) = v14;
  v18 = swift_task_alloc();
  *(v0 + 400) = v18;
  *v18 = v0;
  v18[1] = sub_230E585A0;
  v19 = *(v0 + 288);

  return sub_230D41CA0(v0 + 280, v0 + 248, v0 + 208);
}

uint64_t sub_230E585A0()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v9 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_230E58884;
  }

  else
  {
    v7 = v2 + 384;
    v5 = *(v2 + 384);
    v6 = *(v7 + 8);

    v4 = sub_230E586D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E586D4()
{
  v15 = v0;
  v1 = v0[35];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v3 = v0[41];
  v2 = v0[42];
  v4 = sub_230E68D80();
  __swift_project_value_buffer(v4, qword_27DB80BC0);

  v5 = sub_230E68D60();
  v6 = sub_230E693F0();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[40];
    v7 = v0[41];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_230D7E620(v8, v7, &v14);
    *(v9 + 12) = 2048;
    *(v9 + 14) = v1;
    _os_log_impl(&dword_230D02000, v5, v6, "[SystemDatabase][upsertUseCaseConfiguration] Upserted use case: %s, processed: %lld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  v11 = v0[39];

  v12 = v0[1];

  return v12();
}

uint64_t sub_230E58884()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[39];

  v4 = v0[1];
  v5 = v0[51];

  return v4();
}

uint64_t sub_230E58914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 336) = a5;
  *(v7 + 344) = a6;
  *(v7 + 320) = a3;
  *(v7 + 328) = a4;
  *(v7 + 312) = a2;
  v10 = *(*(sub_230E690B0() - 8) + 64) + 15;
  *(v7 + 352) = swift_task_alloc();
  v11 = sub_230E68910();
  *(v7 + 360) = v11;
  v12 = *(v11 - 8);
  *(v7 + 368) = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  *(v7 + 384) = *a1;
  *(v7 + 416) = *(a1 + 32);
  *(v7 + 440) = *(a1 + 56);
  *(v7 + 456) = *(a1 + 72);
  *(v7 + 472) = *(a1 + 88);
  v15 = *(a7 + 16);
  *(v7 + 488) = *a7;
  *(v7 + 376) = v14;
  v16 = *(a1 + 17);
  *(v7 + 560) = *(a1 + 16);
  v17 = *(a1 + 21);
  *(v7 + 400) = v16;
  *(v7 + 404) = v17;
  *(v7 + 406) = *(a1 + 23);
  *(v7 + 408) = *(a1 + 24);
  *(v7 + 432) = *(a1 + 48);
  *(v7 + 561) = *(a1 + 104);
  *(v7 + 504) = v15;
  *(v7 + 520) = *(a7 + 32);

  return MEMORY[0x2822009F8](sub_230E58A94, 0, 0);
}

uint64_t sub_230E58A94()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);
  sub_230E68900();
  sub_230E688D0();
  v5 = v4;
  v6 = v4;
  result = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v8 = (v0 + 400);
  v105 = *(v0 + 561);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 32) = 0x696669746E656469;
  *(inited + 16) = xmmword_230E6B790;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v12;
  *(inited + 56) = v11;
  *(inited + 64) = 3;
  *(inited + 72) = 0xD000000000000011;
  *(inited + 80) = 0x8000000230E80170;
  *(inited + 88) = v10;
  *(inited + 96) = v9;
  *(inited + 104) = 3;
  strcpy((inited + 112), "creationTime");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = v5;
  *(inited + 136) = 0;
  *(inited + 144) = 2;
  *(inited + 152) = 0x616470557473616CLL;
  *(inited + 160) = 0xEF656D6954646574;
  *(inited + 168) = v5;
  *(inited + 176) = 0;
  *(inited + 184) = 2;

  v14 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  if (v105)
  {
    v15 = *(v0 + 480);
    v16 = *(v0 + 448);
    v101 = *(v0 + 472);
    v102 = *(v0 + 456);
    v17 = *(v0 + 432);
    v18 = *(v0 + 416);
    v99 = *(v0 + 424);
    v100 = *(v0 + 440);
    v98 = *(v0 + 408);
    v19 = *(v0 + 560);
    v21 = *(v0 + 384);
    v20 = *(v0 + 392);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(0x636E657265666E69, 0xE900000000000065, 3, 0x776F6C666B726F77, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v21, v20, 3, 0x6564496C65646F6DLL, 0xEF7265696669746ELL, v23);
    if (v19)
    {
      v24 = 0x69706D6F63657270;
    }

    else
    {
      v24 = 0x6F73736572707365;
    }

    if (v19)
    {
      v25 = 0xEB0000000064656CLL;
    }

    else
    {
      v25 = 0xEA00000000003256;
    }

    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v24, v25, 3, 0x726F466C65646F6DLL, 0xEB0000000074616DLL, v26);

    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v98, v18, 3, 0x6564497465737361, 0xEF7265696669746ELL, v27);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v99, v17, 3, 0xD000000000000015, 0x8000000230E80190, v28);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v100, v16, 3, 0x7269447465737361, 0xEE0079726F746365, v29);
    if (v15)
    {
      v30 = v101;
    }

    else
    {
      v30 = 0x746C7561666564;
    }

    if (v15)
    {
      v31 = v15;
    }

    else
    {
      v31 = 0xE700000000000000;
    }

    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v30, v31, 3, 0xD000000000000013, 0x8000000230E801F0, v32);
    v33 = v14;
    if (*(v102 + 16))
    {
      v34 = *(v0 + 456);
      v35 = sub_230E686F0();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();

      sub_230E686E0();
      *(v0 + 296) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9A0, &qword_230E77D90);
      sub_230DD705C(&qword_281565FC0, sub_230DD6800);
      v38 = sub_230E686D0();
      v39 = *(v0 + 456);
      v50 = *(v0 + 352);
      v51 = v38;
      v53 = v52;

      sub_230E690A0();
      v54 = sub_230E69080();
      if (v55)
      {
        v56 = v54;
      }

      else
      {
        v56 = 32123;
      }

      if (v55)
      {
        v57 = v55;
      }

      else
      {
        v57 = 0xE200000000000000;
      }

      v58 = swift_isUniquelyReferenced_nonNull_native();
      sub_230E1B948(v56, v57, 3, 0xD000000000000010, 0x8000000230E801B0, v58);
      sub_230D0F4A8(v51, v53);
    }

    v59 = *(v0 + 464);
    v8 = (v0 + 400);
    if (!*(v59 + 16))
    {
      goto LABEL_45;
    }

    v60 = sub_230E686F0();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();

    sub_230E686E0();
    *(v0 + 304) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C828, &qword_230E77DA0);
    sub_230DD6854(&unk_281565FB0, sub_230DD68D8);
    v63 = sub_230E686D0();
    v64 = *(v0 + 464);
    v88 = *(v0 + 352);
    v89 = v63;
    v91 = v90;

    sub_230E690A0();
    v92 = sub_230E69080();
    if (v93)
    {
      v94 = v92;
    }

    else
    {
      v94 = 32123;
    }

    if (v93)
    {
      v95 = v93;
    }

    else
    {
      v95 = 0xE200000000000000;
    }

    v96 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v14;
    sub_230E1B948(v94, v95, 3, 0xD000000000000011, 0x8000000230E801D0, v96);
    v97 = v91;
    v8 = (v0 + 400);
    sub_230D0F4A8(v89, v97);
  }

  else
  {
    v40 = *(v0 + 406);
    v41 = *(v0 + 404);
    v42 = *v8;
    v43 = *(v0 + 560);
    v44 = *(v0 + 384);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(1701606770, 0xE400000000000000, 3, 0x776F6C666B726F77, 0xEC00000065707954, v45);
    if (*(v44 + 16))
    {
      v46 = sub_230E686F0();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_allocObject();

      sub_230E686E0();
      *(v0 + 280) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
      sub_230D6C1DC(&unk_281565FA0);
      v49 = sub_230E686D0();
      v65 = *(v0 + 352);
      v66 = v49;
      v103 = v67;

      sub_230E690A0();
      v68 = sub_230E69080();
      if (v69)
      {
        v70 = v68;
      }

      else
      {
        v70 = 32123;
      }

      v71 = v41;
      v72 = v40;
      v73 = v42;
      v74 = v43;
      if (v69)
      {
        v75 = v69;
      }

      else
      {
        v75 = 0xE200000000000000;
      }

      v76 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v75;
      v43 = v74;
      v42 = v73;
      v40 = v72;
      v41 = v71;
      sub_230E1B948(v70, v77, 3, 0x6574656D61726170, 0xEA00000000007372, v76);
      v78 = v66;
      v8 = (v0 + 400);
      sub_230D0F4A8(v78, v103);
    }

    v79 = (v42 << 8) | ((v41 | (v40 << 16)) << 40) | v43;
    if (v79)
    {
      v80 = *(v0 + 392);
    }

    else
    {
      v80 = 0x746C7561666564;
    }

    if (v79)
    {
      v81 = (v42 << 8) | ((v41 | (v40 << 16)) << 40) | v43;
    }

    else
    {
      v81 = 0xE700000000000000;
    }

    v82 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v14;
    sub_230E1B948(v80, v81, 3, 0xD000000000000013, 0x8000000230E801F0, v82);
  }

  v33 = v107;
LABEL_45:
  v83 = *(v0 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v84 = swift_allocObject();
  *(v0 + 528) = v84;
  *(v84 + 16) = xmmword_230E6B3B0;
  *(v84 + 32) = v33;
  v104 = *(v8 + 26);
  v106 = *(v8 + 22);
  v85 = sub_230E1CA68(&unk_2845A5038);
  *(v0 + 536) = v85;
  swift_arrayDestroy();
  *(v0 + 248) = 0x6C666B726F575F5FLL;
  *(v0 + 256) = 0xEA0000000000776FLL;
  *(v0 + 264) = v84;
  *(v0 + 272) = v85;
  *(v0 + 224) = v104;
  *(v0 + 208) = v106;
  *(v0 + 240) = v83;
  v86 = swift_task_alloc();
  *(v0 + 544) = v86;
  *v86 = v0;
  v86[1] = sub_230E595B8;
  v87 = *(v0 + 344);

  return sub_230D41CA0(v0 + 288, v0 + 248, v0 + 208);
}

uint64_t sub_230E595B8()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v8 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v4 = sub_230E5989C;
  }

  else
  {
    v5 = *(v2 + 536);
    v6 = *(v2 + 528);

    v4 = sub_230E596F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E596F0()
{
  v15 = v0;
  v1 = v0[36];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = v0[40];
  v3 = sub_230E68D80();
  __swift_project_value_buffer(v3, qword_27DB80BC0);

  v4 = sub_230E68D60();
  v5 = sub_230E693F0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[39];
    v6 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_230D7E620(v7, v6, &v14);
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][upsertWorkflow] Upserted workflow: %s, processed: %lld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
  }

  v10 = v0[47];
  v11 = v0[44];

  v12 = v0[1];

  return v12();
}

uint64_t sub_230E5989C()
{
  v1 = v0[67];
  v2 = v0[66];

  v3 = v0[69];
  v4 = v0[47];
  v5 = v0[44];

  v6 = v0[1];

  return v6();
}

uint64_t sub_230E59930()
{
  v0 = type metadata accessor for SQLDatabaseConfiguration();
  __swift_allocate_value_buffer(v0, qword_27DB80B18);
  v1 = __swift_project_value_buffer(v0, qword_27DB80B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A950, &qword_230E6B9F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_230E7F560;
  if (qword_27DB5A480 != -1)
  {
    swift_once();
  }

  v3 = *algn_27DB80B38;
  v4 = qword_27DB80B40;
  *(v2 + 32) = qword_27DB80B30;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v5 = qword_27DB5A488;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = unk_27DB80B50;
  v7 = qword_27DB80B58;
  *(v2 + 56) = qword_27DB80B48;
  *(v2 + 64) = v6;
  *(v2 + 72) = v7;
  v8 = qword_27DB5A490;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *algn_27DB80B68;
  v10 = qword_27DB80B70;
  *(v2 + 80) = qword_27DB80B60;
  *(v2 + 88) = v9;
  *(v2 + 96) = v10;
  v11 = qword_27DB5A498;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = unk_27DB80B80;
  v13 = qword_27DB80B88;
  *(v2 + 104) = qword_27DB80B78;
  *(v2 + 112) = v12;
  *(v2 + 120) = v13;
  v14 = qword_27DB5A4A0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *algn_27DB80B98;
  v16 = qword_27DB80BA0;
  *(v2 + 128) = qword_27DB80B90;
  *(v2 + 136) = v15;
  *(v2 + 144) = v16;
  v17 = qword_27DB5A4A8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = unk_27DB80BB0;
  v19 = qword_27DB80BB8;
  *(v2 + 152) = qword_27DB80BA8;
  *(v2 + 160) = v18;
  *(v2 + 168) = v19;
  v20 = *(v0 + 32);
  v21 = sub_230E68860();
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  *v1 = 0x6D6574737973;
  *(v1 + 8) = 0xE600000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
}

uint64_t sub_230E59C20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E7F560;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x696669746E656469;
  *(v0 + 40) = 0xEA00000000007265;
  *(v0 + 48) = 3;
  *(v0 + 56) = xmmword_230E7F570;
  *(v0 + 72) = 3;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  v5 = *(v0 + 112);
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  strcpy((v0 + 120), "systemStatus");
  *(v0 + 133) = 0;
  *(v0 + 134) = -5120;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  v10 = *(v0 + 200);
  *(v0 + 200) = 0;
  sub_230D0F4FC(v6, v7);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  strcpy((v0 + 208), "lastSyncTime");
  *(v0 + 221) = 0;
  *(v0 + 222) = -5120;
  *(v0 + 224) = 2;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 1;
  *(v0 + 251) = 0;
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  v15 = *(v0 + 288);
  *(v0 + 288) = 0;
  sub_230D0F4FC(v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  strcpy((v0 + 296), "configVersion");
  *(v0 + 310) = -4864;
  *(v0 + 312) = 2;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 1;
  *(v0 + 339) = 0;
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 360);
  v19 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  v20 = *(v0 + 376);
  *(v0 + 376) = 0;
  sub_230D0F4FC(v16, v17);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  *(v0 + 384) = 0xD000000000000016;
  *(v0 + 392) = 0x8000000230E84EE0;
  *(v0 + 400) = 2;
  *(v0 + 408) = 1;
  *(v0 + 416) = 0;
  *(v0 + 424) = 2;
  sub_230D0F460(0, 0, 255);
  *(v0 + 425) = 0;
  *(v0 + 427) = 0;
  v21 = *(v0 + 432);
  v22 = *(v0 + 440);
  v23 = *(v0 + 448);
  v24 = *(v0 + 456);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  v25 = *(v0 + 464);
  *(v0 + 464) = 0;
  sub_230D0F4FC(v21, v22);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  *(v0 + 472) = 0x616470557473616CLL;
  *(v0 + 480) = 0xEF656D6954646574;
  *(v0 + 488) = 2;
  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  *(v0 + 512) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 513) = 0;
  *(v0 + 515) = 0;
  v26 = *(v0 + 520);
  v27 = *(v0 + 528);
  v28 = *(v0 + 536);
  v29 = *(v0 + 544);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  v30 = *(v0 + 552);
  *(v0 + 552) = 0;
  result = sub_230D0F4FC(v26, v27);
  qword_27DB80B30 = 0xD000000000000010;
  *algn_27DB80B38 = 0x8000000230E84E70;
  qword_27DB80B40 = v0;
  return result;
}

uint64_t sub_230E59F6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E7F0E0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x696669746E656469;
  *(v0 + 40) = 0xEA00000000007265;
  *(v0 + 48) = 3;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  v5 = *(v0 + 112);
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 120) = 0x6E69616D6F64;
  *(v0 + 128) = 0xE600000000000000;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  v10 = *(v0 + 200);
  *(v0 + 200) = 0;
  sub_230D0F4FC(v6, v7);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  strcpy((v0 + 208), "databaseType");
  *(v0 + 221) = 0;
  *(v0 + 222) = -5120;
  *(v0 + 224) = 3;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 0;
  *(v0 + 251) = 0;
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  v15 = *(v0 + 288);
  *(v0 + 288) = 0;
  sub_230D0F4FC(v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  *(v0 + 296) = 1701667182;
  *(v0 + 304) = 0xE400000000000000;
  *(v0 + 312) = 3;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 0;
  *(v0 + 339) = 0;
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 360);
  v19 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  v20 = *(v0 + 376);
  *(v0 + 376) = 0;
  sub_230D0F4FC(v16, v17);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  strcpy((v0 + 384), "schemaVersion");
  *(v0 + 398) = -4864;
  *(v0 + 400) = 2;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 425) = 0;
  *(v0 + 427) = 0;
  v21 = *(v0 + 432);
  v22 = *(v0 + 440);
  v23 = *(v0 + 448);
  v24 = *(v0 + 456);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  v25 = *(v0 + 464);
  *(v0 + 464) = 0;
  sub_230D0F4FC(v21, v22);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  *(v0 + 472) = 0x6144616D65686373;
  *(v0 + 480) = 0xEA00000000006174;
  *(v0 + 488) = 0;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 513) = 1;
  *(v0 + 515) = 0;
  v26 = *(v0 + 520);
  v27 = *(v0 + 528);
  v28 = *(v0 + 536);
  v29 = *(v0 + 544);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  v30 = *(v0 + 552);
  *(v0 + 552) = 0;
  sub_230D0F4FC(v26, v27);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  *(v0 + 560) = 0x737574617473;
  *(v0 + 568) = 0xE600000000000000;
  *(v0 + 576) = 3;
  *(v0 + 584) = 0x676E69646E6570;
  *(v0 + 592) = 0xE700000000000000;
  *(v0 + 600) = 3;
  sub_230D0F460(0, 0, 255);
  *(v0 + 601) = 0;
  *(v0 + 603) = 0;
  v31 = *(v0 + 608);
  v32 = *(v0 + 616);
  v33 = *(v0 + 624);
  v34 = *(v0 + 632);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  v35 = *(v0 + 640);
  *(v0 + 640) = 0;
  sub_230D0F4FC(v31, v32);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  strcpy((v0 + 648), "storageClass");
  *(v0 + 661) = 0;
  *(v0 + 662) = -5120;
  *(v0 + 664) = 3;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 689) = 0;
  *(v0 + 691) = 0;
  v36 = *(v0 + 696);
  v37 = *(v0 + 704);
  v38 = *(v0 + 712);
  v39 = *(v0 + 720);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  v40 = *(v0 + 728);
  *(v0 + 728) = 0;
  sub_230D0F4FC(v36, v37);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0;
  *(v0 + 736) = 0x68746150656C6966;
  *(v0 + 744) = 0xE800000000000000;
  *(v0 + 752) = 3;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 777) = 0;
  *(v0 + 779) = 0;
  v41 = *(v0 + 784);
  v42 = *(v0 + 792);
  v43 = *(v0 + 800);
  v44 = *(v0 + 808);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  v45 = *(v0 + 816);
  *(v0 + 816) = 0;
  sub_230D0F4FC(v41, v42);
  *(v0 + 872) = 0u;
  *(v0 + 888) = 0u;
  *(v0 + 904) = 0;
  strcpy((v0 + 824), "creationTime");
  *(v0 + 837) = 0;
  *(v0 + 838) = -5120;
  *(v0 + 840) = 2;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 865) = 0;
  *(v0 + 867) = 0;
  v46 = *(v0 + 872);
  v47 = *(v0 + 880);
  v48 = *(v0 + 888);
  v49 = *(v0 + 896);
  *(v0 + 872) = 0u;
  *(v0 + 888) = 0u;
  v50 = *(v0 + 904);
  *(v0 + 904) = 0;
  sub_230D0F4FC(v46, v47);
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0;
  *(v0 + 912) = 0x616470557473616CLL;
  *(v0 + 920) = 0xEF656D6954646574;
  *(v0 + 928) = 2;
  *(v0 + 936) = 0u;
  *(v0 + 952) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 953) = 0;
  *(v0 + 955) = 0;
  v51 = *(v0 + 960);
  v52 = *(v0 + 968);
  v53 = *(v0 + 976);
  v54 = *(v0 + 984);
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  v55 = *(v0 + 992);
  *(v0 + 992) = 0;
  result = sub_230D0F4FC(v51, v52);
  qword_27DB80B48 = 0xD000000000000012;
  unk_27DB80B50 = 0x8000000230E81B30;
  qword_27DB80B58 = v0;
  return result;
}

uint64_t sub_230E5A518()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E7F480;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x6564496369706F74;
  *(v0 + 40) = 0xEF7265696669746ELL;
  *(v0 + 48) = 3;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  v5 = *(v0 + 112);
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 120) = 0x6E69616D6F64;
  *(v0 + 128) = 0xE600000000000000;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  v10 = *(v0 + 200);
  *(v0 + 200) = 0;
  sub_230D0F4FC(v6, v7);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  *(v0 + 208) = 0x656873696C627570;
  *(v0 + 216) = 0xEA00000000007372;
  *(v0 + 224) = 3;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 0;
  *(v0 + 251) = 0;
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  v15 = *(v0 + 288);
  *(v0 + 288) = 0;
  sub_230D0F4FC(v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  *(v0 + 296) = 0xD000000000000010;
  *(v0 + 304) = 0x8000000230E80210;
  *(v0 + 312) = 3;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 0;
  *(v0 + 339) = 0;
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 360);
  v19 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  v20 = *(v0 + 376);
  *(v0 + 376) = 0;
  sub_230D0F4FC(v16, v17);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  strcpy((v0 + 384), "samplingRate");
  *(v0 + 397) = 0;
  *(v0 + 398) = -5120;
  *(v0 + 400) = 1;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 425) = 0;
  *(v0 + 427) = 0;
  v21 = *(v0 + 432);
  v22 = *(v0 + 440);
  v23 = *(v0 + 448);
  v24 = *(v0 + 456);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  v25 = *(v0 + 464);
  *(v0 + 464) = 0;
  sub_230D0F4FC(v21, v22);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  *(v0 + 472) = 0xD00000000000001ALL;
  *(v0 + 480) = 0x8000000230E80230;
  *(v0 + 488) = 3;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 513) = 1;
  *(v0 + 515) = 0;
  v26 = *(v0 + 520);
  v27 = *(v0 + 528);
  v28 = *(v0 + 536);
  v29 = *(v0 + 544);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  v30 = *(v0 + 552);
  *(v0 + 552) = 0;
  sub_230D0F4FC(v26, v27);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  *(v0 + 560) = 0xD000000000000015;
  *(v0 + 568) = 0x8000000230E80250;
  *(v0 + 576) = 3;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 601) = 1;
  *(v0 + 603) = 0;
  v31 = *(v0 + 608);
  v32 = *(v0 + 616);
  v33 = *(v0 + 624);
  v34 = *(v0 + 632);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  v35 = *(v0 + 640);
  *(v0 + 640) = 0;
  sub_230D0F4FC(v31, v32);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  strcpy((v0 + 648), "creationTime");
  *(v0 + 661) = 0;
  *(v0 + 662) = -5120;
  *(v0 + 664) = 2;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 689) = 0;
  *(v0 + 691) = 0;
  v36 = *(v0 + 696);
  v37 = *(v0 + 704);
  v38 = *(v0 + 712);
  v39 = *(v0 + 720);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  v40 = *(v0 + 728);
  *(v0 + 728) = 0;
  sub_230D0F4FC(v36, v37);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0;
  *(v0 + 736) = 0x616470557473616CLL;
  *(v0 + 744) = 0xEF656D6954646574;
  *(v0 + 752) = 2;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 777) = 0;
  *(v0 + 779) = 0;
  v41 = *(v0 + 784);
  v42 = *(v0 + 792);
  v43 = *(v0 + 800);
  v44 = *(v0 + 808);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  v45 = *(v0 + 816);
  *(v0 + 816) = 0;
  result = sub_230D0F4FC(v41, v42);
  qword_27DB80B60 = 0x656D656C65545F5FLL;
  *algn_27DB80B68 = 0xEF63657053797274;
  qword_27DB80B70 = v0;
  return result;
}

uint64_t sub_230E5A9D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E6B790;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x696669746E656469;
  *(v0 + 40) = 0xEA00000000007265;
  *(v0 + 48) = 3;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  v5 = *(v0 + 112);
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 120) = 0x6E69616D6F64;
  *(v0 + 128) = 0xE600000000000000;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  v10 = *(v0 + 200);
  *(v0 + 200) = 0;
  sub_230D0F4FC(v6, v7);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  strcpy((v0 + 208), "creationTime");
  *(v0 + 221) = 0;
  *(v0 + 222) = -5120;
  *(v0 + 224) = 2;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 0;
  *(v0 + 251) = 0;
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  v15 = *(v0 + 288);
  *(v0 + 288) = 0;
  sub_230D0F4FC(v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  *(v0 + 296) = 0x616470557473616CLL;
  *(v0 + 304) = 0xEF656D6954646574;
  *(v0 + 312) = 2;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 0;
  *(v0 + 339) = 0;
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 360);
  v19 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  v20 = *(v0 + 376);
  *(v0 + 376) = 0;
  result = sub_230D0F4FC(v16, v17);
  qword_27DB80B78 = 0x7361436573555F5FLL;
  unk_27DB80B80 = 0xE900000000000065;
  qword_27DB80B88 = v0;
  return result;
}

uint64_t sub_230E5AC20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E7F860;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x696669746E656469;
  *(v0 + 40) = 0xEA00000000007265;
  *(v0 + 48) = 3;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  v5 = *(v0 + 112);
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 120) = 0xD000000000000011;
  *(v0 + 128) = 0x8000000230E80170;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  *(v0 + 168) = xmmword_230E7F870;
  *(v0 + 184) = xmmword_230E7F880;
  v10 = *(v0 + 200);
  *(v0 + 200) = 2;
  sub_230D0F4FC(v6, v7);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  strcpy((v0 + 208), "workflowType");
  *(v0 + 221) = 0;
  *(v0 + 222) = -5120;
  *(v0 + 224) = 3;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 0;
  *(v0 + 251) = 0;
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  v15 = *(v0 + 288);
  *(v0 + 288) = 0;
  sub_230D0F4FC(v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  *(v0 + 296) = 0x6564496C65646F6DLL;
  *(v0 + 304) = 0xEF7265696669746ELL;
  *(v0 + 312) = 3;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 1;
  *(v0 + 339) = 0;
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 360);
  v19 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  v20 = *(v0 + 376);
  *(v0 + 376) = 0;
  sub_230D0F4FC(v16, v17);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  *(v0 + 384) = 0x726F466C65646F6DLL;
  *(v0 + 392) = 0xEB0000000074616DLL;
  *(v0 + 400) = 3;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 425) = 1;
  *(v0 + 427) = 0;
  v21 = *(v0 + 432);
  v22 = *(v0 + 440);
  v23 = *(v0 + 448);
  v24 = *(v0 + 456);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  v25 = *(v0 + 464);
  *(v0 + 464) = 0;
  sub_230D0F4FC(v21, v22);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  *(v0 + 472) = 0x6564497465737361;
  *(v0 + 480) = 0xEF7265696669746ELL;
  *(v0 + 488) = 3;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 513) = 1;
  *(v0 + 515) = 0;
  v26 = *(v0 + 520);
  v27 = *(v0 + 528);
  v28 = *(v0 + 536);
  v29 = *(v0 + 544);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  v30 = *(v0 + 552);
  *(v0 + 552) = 0;
  sub_230D0F4FC(v26, v27);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  *(v0 + 560) = 0xD000000000000015;
  *(v0 + 568) = 0x8000000230E80190;
  *(v0 + 576) = 3;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 601) = 1;
  *(v0 + 603) = 0;
  v31 = *(v0 + 608);
  v32 = *(v0 + 616);
  v33 = *(v0 + 624);
  v34 = *(v0 + 632);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  v35 = *(v0 + 640);
  *(v0 + 640) = 0;
  sub_230D0F4FC(v31, v32);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  strcpy((v0 + 648), "assetDirectory");
  *(v0 + 663) = -18;
  *(v0 + 664) = 3;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 689) = 1;
  *(v0 + 691) = 0;
  v36 = *(v0 + 696);
  v37 = *(v0 + 704);
  v38 = *(v0 + 712);
  v39 = *(v0 + 720);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  v40 = *(v0 + 728);
  *(v0 + 728) = 0;
  sub_230D0F4FC(v36, v37);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0;
  *(v0 + 736) = 0xD000000000000010;
  *(v0 + 744) = 0x8000000230E801B0;
  *(v0 + 752) = 3;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 777) = 1;
  *(v0 + 779) = 0;
  v41 = *(v0 + 784);
  v42 = *(v0 + 792);
  v43 = *(v0 + 800);
  v44 = *(v0 + 808);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  v45 = *(v0 + 816);
  *(v0 + 816) = 0;
  sub_230D0F4FC(v41, v42);
  *(v0 + 872) = 0u;
  *(v0 + 888) = 0u;
  *(v0 + 904) = 0;
  *(v0 + 824) = 0xD000000000000011;
  *(v0 + 832) = 0x8000000230E801D0;
  *(v0 + 840) = 3;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 865) = 1;
  *(v0 + 867) = 0;
  v46 = *(v0 + 872);
  v47 = *(v0 + 880);
  v48 = *(v0 + 888);
  v49 = *(v0 + 896);
  *(v0 + 872) = 0u;
  *(v0 + 888) = 0u;
  v50 = *(v0 + 904);
  *(v0 + 904) = 0;
  sub_230D0F4FC(v46, v47);
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0;
  *(v0 + 912) = 0x6574656D61726170;
  *(v0 + 920) = 0xEA00000000007372;
  *(v0 + 928) = 3;
  *(v0 + 936) = 0u;
  *(v0 + 952) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 953) = 1;
  *(v0 + 955) = 0;
  v51 = *(v0 + 960);
  v52 = *(v0 + 968);
  v53 = *(v0 + 976);
  v54 = *(v0 + 984);
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  v55 = *(v0 + 992);
  *(v0 + 992) = 0;
  sub_230D0F4FC(v51, v52);
  *(v0 + 1048) = 0u;
  *(v0 + 1064) = 0u;
  *(v0 + 1080) = 0;
  *(v0 + 1000) = 0xD000000000000013;
  *(v0 + 1008) = 0x8000000230E801F0;
  *(v0 + 1016) = 3;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 1041) = 1;
  *(v0 + 1043) = 0;
  v56 = *(v0 + 1048);
  v57 = *(v0 + 1056);
  v58 = *(v0 + 1064);
  v59 = *(v0 + 1072);
  *(v0 + 1048) = 0u;
  *(v0 + 1064) = 0u;
  v60 = *(v0 + 1080);
  *(v0 + 1080) = 0;
  sub_230D0F4FC(v56, v57);
  *(v0 + 1136) = 0u;
  *(v0 + 1152) = 0u;
  *(v0 + 1168) = 0;
  strcpy((v0 + 1088), "creationTime");
  *(v0 + 1101) = 0;
  *(v0 + 1102) = -5120;
  *(v0 + 1104) = 2;
  *(v0 + 1112) = 0u;
  *(v0 + 1128) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 1129) = 0;
  *(v0 + 1131) = 0;
  v61 = *(v0 + 1136);
  v62 = *(v0 + 1144);
  v63 = *(v0 + 1152);
  v64 = *(v0 + 1160);
  *(v0 + 1136) = 0u;
  *(v0 + 1152) = 0u;
  v65 = *(v0 + 1168);
  *(v0 + 1168) = 0;
  sub_230D0F4FC(v61, v62);
  *(v0 + 1224) = 0u;
  *(v0 + 1240) = 0u;
  *(v0 + 1256) = 0;
  *(v0 + 1176) = 0x616470557473616CLL;
  *(v0 + 1184) = 0xEF656D6954646574;
  *(v0 + 1192) = 2;
  *(v0 + 1200) = 0u;
  *(v0 + 1216) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 1217) = 0;
  *(v0 + 1219) = 0;
  v66 = *(v0 + 1224);
  v67 = *(v0 + 1232);
  v68 = *(v0 + 1240);
  v69 = *(v0 + 1248);
  *(v0 + 1224) = 0u;
  *(v0 + 1240) = 0u;
  v70 = *(v0 + 1256);
  *(v0 + 1256) = 0;
  result = sub_230D0F4FC(v66, v67);
  qword_27DB80B90 = 0x6C666B726F575F5FLL;
  *algn_27DB80B98 = 0xEA0000000000776FLL;
  qword_27DB80BA0 = v0;
  return result;
}

uint64_t sub_230E5B354()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E7F890;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  strcpy((v0 + 32), "areaIdentifier");
  *(v0 + 47) = -18;
  *(v0 + 48) = 3;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  v5 = *(v0 + 112);
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 120) = 0x696669746E656469;
  *(v0 + 128) = 0xEA00000000007265;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 1;
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  v10 = *(v0 + 200);
  *(v0 + 200) = 0;
  sub_230D0F4FC(v6, v7);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  *(v0 + 208) = 0x6E69616D6F64;
  *(v0 + 216) = 0xE600000000000000;
  *(v0 + 224) = 3;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 0;
  *(v0 + 251) = 0;
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  v15 = *(v0 + 288);
  *(v0 + 288) = 0;
  sub_230D0F4FC(v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  *(v0 + 296) = 0x74656B637562;
  *(v0 + 304) = 0xE600000000000000;
  *(v0 + 312) = 2;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 0;
  *(v0 + 339) = 0;
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 360);
  v19 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  v20 = *(v0 + 376);
  *(v0 + 376) = 0;
  sub_230D0F4FC(v16, v17);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  *(v0 + 384) = 0x7461447472617473;
  *(v0 + 392) = 0xE900000000000065;
  *(v0 + 400) = 2;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 425) = 0;
  *(v0 + 427) = 0;
  v21 = *(v0 + 432);
  v22 = *(v0 + 440);
  v23 = *(v0 + 448);
  v24 = *(v0 + 456);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  v25 = *(v0 + 464);
  *(v0 + 464) = 0;
  sub_230D0F4FC(v21, v22);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  *(v0 + 472) = 0x65746144646E65;
  *(v0 + 480) = 0xE700000000000000;
  *(v0 + 488) = 2;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 513) = 0;
  *(v0 + 515) = 0;
  v26 = *(v0 + 520);
  v27 = *(v0 + 528);
  v28 = *(v0 + 536);
  v29 = *(v0 + 544);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  v30 = *(v0 + 552);
  *(v0 + 552) = 0;
  sub_230D0F4FC(v26, v27);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  strcpy((v0 + 560), "creationTime");
  *(v0 + 573) = 0;
  *(v0 + 574) = -5120;
  *(v0 + 576) = 2;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 601) = 0;
  *(v0 + 603) = 0;
  v31 = *(v0 + 608);
  v32 = *(v0 + 616);
  v33 = *(v0 + 624);
  v34 = *(v0 + 632);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  v35 = *(v0 + 640);
  *(v0 + 640) = 0;
  sub_230D0F4FC(v31, v32);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  *(v0 + 648) = 0x616470557473616CLL;
  *(v0 + 656) = 0xEF656D6954646574;
  *(v0 + 664) = 2;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 689) = 0;
  *(v0 + 691) = 0;
  v36 = *(v0 + 696);
  v37 = *(v0 + 704);
  v38 = *(v0 + 712);
  v39 = *(v0 + 720);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  v40 = *(v0 + 728);
  *(v0 + 728) = 0;
  result = sub_230D0F4FC(v36, v37);
  qword_27DB80BA8 = 0x6D74616572545F5FLL;
  unk_27DB80BB0 = 0xEB00000000746E65;
  qword_27DB80BB8 = v0;
  return result;
}

uint64_t static SystemDatabase.initialize(using:requestContext:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 336) = a1;
  v3 = *(a2 + 16);
  *(v2 + 344) = *a2;
  *(v2 + 360) = v3;
  *(v2 + 376) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E5B7AC, 0, 0);
}

uint64_t sub_230E5B7AC()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 384) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][initialize] Starting system database initialization", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  sub_230E68478(0x696C616974696E69, 0xEA0000000000657ALL);
  v5 = *(v0 + 376);
  v6 = *(v0 + 360);
  *(v0 + 16) = *(v0 + 344);
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  v7 = swift_task_alloc();
  *(v0 + 392) = v7;
  *v7 = v0;
  v7[1] = sub_230E5B97C;
  v8 = *(v0 + 336);

  return sub_230E5FE4C(v8, v0 + 16);
}

uint64_t sub_230E5B97C(char a1)
{
  v2 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 515) = a1;

  return MEMORY[0x2822009F8](sub_230E5BA7C, 0, 0);
}

uint64_t sub_230E5BA7C()
{
  v37 = v0;
  v1 = *(v0 + 384);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 515);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136315138;
    v7 = 0xE800000000000000;
    v8 = 0x686374616D73696DLL;
    if (v4 != 1)
    {
      v8 = 0x676E697373696DLL;
      v7 = 0xE700000000000000;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x74636572726F63;
    }

    if (v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_230D7E620(v9, v10, &v36);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][initialize] Schema check result: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v12 = (v0 + 344);
  v13 = *(v0 + 515);
  v14 = *(v0 + 384);
  v15 = sub_230E68D60();
  v16 = sub_230E693E0();
  v17 = os_log_type_enabled(v15, v16);
  if (v13)
  {
    if (v13 == 1)
    {
      if (v17)
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_230D02000, v15, v16, "[SystemDatabase][initialize] Schema version mismatch, applying schema updates", v18, 2u);
        MEMORY[0x23191EAE0](v18, -1, -1);
      }

      v19 = *(v0 + 376);
      v32 = *(v0 + 360);
      v34 = *v12;

      *(v0 + 256) = v34;
      *(v0 + 272) = v32;
      *(v0 + 288) = v19;
      v20 = swift_task_alloc();
      *(v0 + 400) = v20;
      *v20 = v0;
      v20[1] = sub_230E5BEB0;
      v21 = *(v0 + 336);

      return sub_230E62B48(v21, v0 + 256);
    }

    else
    {
      if (v17)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_230D02000, v15, v16, "[SystemDatabase][initialize] System database missing or inaccessible, performing full bootstrap", v28, 2u);
        MEMORY[0x23191EAE0](v28, -1, -1);
      }

      v29 = *(v0 + 376);
      v33 = *(v0 + 360);
      v35 = *v12;

      *(v0 + 56) = v35;
      *(v0 + 72) = v33;
      *(v0 + 88) = v29;
      v30 = swift_task_alloc();
      *(v0 + 432) = v30;
      *v30 = v0;
      v30[1] = sub_230E5C54C;
      v31 = *(v0 + 336);

      return sub_230E5D628(v31, v0 + 56);
    }
  }

  else
  {
    if (v17)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_230D02000, v15, v16, "[SystemDatabase][initialize] System database exists with correct schema version", v23, 2u);
      MEMORY[0x23191EAE0](v23, -1, -1);
    }

    v24 = *(v0 + 376);
    v25 = *(v0 + 360);
    *(v0 + 136) = *v12;
    *(v0 + 152) = v25;
    *(v0 + 168) = v24;
    v26 = swift_task_alloc();
    *(v0 + 448) = v26;
    *v26 = v0;
    v26[1] = sub_230E5C6DC;
    v27 = *(v0 + 336);

    return sub_230E5FE4C(v27, v0 + 136);
  }
}

uint64_t sub_230E5BEB0()
{
  v2 = *(*v1 + 400);
  v3 = *v1;
  *(v3 + 408) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230E5C1C4, 0, 0);
  }

  else
  {
    *(v3 + 296) = *(v3 + 344);
    v4 = *(v3 + 368);
    *(v3 + 304) = *(v3 + 352);
    *(v3 + 320) = v4;
    v5 = swift_task_alloc();
    *(v3 + 416) = v5;
    *v5 = v3;
    v5[1] = sub_230E5C034;
    v6 = *(v3 + 336);

    return sub_230E5F590(v6, v3 + 296);
  }
}

uint64_t sub_230E5C034()
{
  v2 = *(*v1 + 416);
  v3 = *v1;
  *(v3 + 424) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230E5C388, 0, 0);
  }

  else
  {
    *(v3 + 136) = *(v3 + 344);
    v4 = *(v3 + 376);
    *(v3 + 152) = *(v3 + 360);
    *(v3 + 168) = v4;
    v5 = swift_task_alloc();
    *(v3 + 448) = v5;
    *v5 = v3;
    v5[1] = sub_230E5C6DC;
    v6 = *(v3 + 336);

    return sub_230E5FE4C(v6, v3 + 136);
  }
}

uint64_t sub_230E5C1C4()
{
  v1 = *(v0 + 408);
  *(v0 + 488) = v1;
  v2 = *(v0 + 384);
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][initialize] System database initialization failed: %@", v6, 0xCu);
    sub_230E437AC(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 376);
  v14 = *(v0 + 360);
  v15 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v15;
  *(v0 + 112) = v14;
  *(v0 + 128) = v10;
  v11 = swift_task_alloc();
  *(v0 + 496) = v11;
  *v11 = v0;
  v11[1] = sub_230E5D280;
  v12 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v12, v0 + 96);
}

uint64_t sub_230E5C388()
{
  v1 = *(v0 + 424);
  *(v0 + 488) = v1;
  v2 = *(v0 + 384);
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][initialize] System database initialization failed: %@", v6, 0xCu);
    sub_230E437AC(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 376);
  v14 = *(v0 + 360);
  v15 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v15;
  *(v0 + 112) = v14;
  *(v0 + 128) = v10;
  v11 = swift_task_alloc();
  *(v0 + 496) = v11;
  *v11 = v0;
  v11[1] = sub_230E5D280;
  v12 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v12, v0 + 96);
}

uint64_t sub_230E5C54C()
{
  v2 = *(*v1 + 432);
  v3 = *v1;
  *(v3 + 440) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230E5D464, 0, 0);
  }

  else
  {
    *(v3 + 136) = *(v3 + 344);
    v4 = *(v3 + 376);
    *(v3 + 152) = *(v3 + 360);
    *(v3 + 168) = v4;
    v5 = swift_task_alloc();
    *(v3 + 448) = v5;
    *v5 = v3;
    v5[1] = sub_230E5C6DC;
    v6 = *(v3 + 336);

    return sub_230E5FE4C(v6, v3 + 136);
  }
}

uint64_t sub_230E5C6DC(char a1)
{
  v2 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 516) = a1;

  return MEMORY[0x2822009F8](sub_230E5C7DC, 0, 0);
}

uint64_t sub_230E5C7DC()
{
  v1 = (v0 + 344);
  if (*(v0 + 516))
  {
    v2 = sub_230E698C0();

    if ((v2 & 1) == 0)
    {
      v3 = *(v0 + 384);
      v4 = sub_230E68D60();
      v5 = sub_230E69400();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][initialize] System database initialization failed - final verification failed", v6, 2u);
        MEMORY[0x23191EAE0](v6, -1, -1);
      }

      v7 = *(v0 + 376);
      v19 = *(v0 + 360);
      v21 = *v1;

      *(v0 + 513) = 3;
      *(v0 + 176) = v21;
      v8 = v0 + 176;
      *(v0 + 192) = v19;
      *(v0 + 208) = v7;
      v9 = swift_task_alloc();
      *(v0 + 472) = v9;
      *v9 = v0;
      v9[1] = sub_230E5CD9C;
      v10 = *(v0 + 336);
      v11 = (v0 + 513);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = *(v0 + 384);
  v13 = sub_230E68D60();
  v14 = sub_230E693E0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_230D02000, v13, v14, "[SystemDatabase][initialize] System database initialization completed successfully", v15, 2u);
    MEMORY[0x23191EAE0](v15, -1, -1);
  }

  v16 = *(v0 + 376);
  v20 = *(v0 + 360);
  v22 = *v1;

  *(v0 + 514) = 1;
  *(v0 + 216) = v22;
  v8 = v0 + 216;
  *(v0 + 232) = v20;
  *(v0 + 248) = v16;
  v17 = swift_task_alloc();
  *(v0 + 456) = v17;
  *v17 = v0;
  v17[1] = sub_230E5CAA4;
  v10 = *(v0 + 336);
  v11 = (v0 + 514);
LABEL_10:

  return sub_230E46438(v11, v10, v8);
}

uint64_t sub_230E5CAA4()
{
  v2 = *(*v1 + 456);
  v3 = *v1;
  *(v3 + 464) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230E5CBD8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_230E5CBD8()
{
  v1 = *(v0 + 464);
  *(v0 + 488) = v1;
  v2 = *(v0 + 384);
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][initialize] System database initialization failed: %@", v6, 0xCu);
    sub_230E437AC(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 376);
  v14 = *(v0 + 360);
  v15 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v15;
  *(v0 + 112) = v14;
  *(v0 + 128) = v10;
  v11 = swift_task_alloc();
  *(v0 + 496) = v11;
  *v11 = v0;
  v11[1] = sub_230E5D280;
  v12 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v12, v0 + 96);
}

uint64_t sub_230E5CD9C()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_230E5D0BC;
  }

  else
  {
    v3 = sub_230E5CEB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E5CEB0()
{
  sub_230D0D224();
  v1 = swift_allocError();
  *v2 = 0xD00000000000002ALL;
  *(v2 + 8) = 0x8000000230E85160;
  *(v2 + 16) = 2;
  swift_willThrow();
  *(v0 + 488) = v1;
  v3 = *(v0 + 384);
  v4 = v1;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_230D02000, v5, v6, "[SystemDatabase][initialize] System database initialization failed: %@", v7, 0xCu);
    sub_230E437AC(v8);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v11 = *(v0 + 376);
  v15 = *(v0 + 360);
  v16 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v16;
  *(v0 + 112) = v15;
  *(v0 + 128) = v11;
  v12 = swift_task_alloc();
  *(v0 + 496) = v12;
  *v12 = v0;
  v12[1] = sub_230E5D280;
  v13 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v13, v0 + 96);
}

uint64_t sub_230E5D0BC()
{
  v1 = *(v0 + 480);
  *(v0 + 488) = v1;
  v2 = *(v0 + 384);
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][initialize] System database initialization failed: %@", v6, 0xCu);
    sub_230E437AC(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 376);
  v14 = *(v0 + 360);
  v15 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v15;
  *(v0 + 112) = v14;
  *(v0 + 128) = v10;
  v11 = swift_task_alloc();
  *(v0 + 496) = v11;
  *v11 = v0;
  v11[1] = sub_230E5D280;
  v12 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v12, v0 + 96);
}

uint64_t sub_230E5D280()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_230E5D400;
  }

  else
  {
    v3 = sub_230E5D394;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E5D394()
{
  v1 = *(v0 + 488);
  swift_willThrow();
  v2 = *(v0 + 488);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_230E5D400()
{
  MEMORY[0x23191E910](v0[61]);
  v1 = v0[63];
  v2 = v0[1];

  return v2();
}

uint64_t sub_230E5D464()
{
  v1 = *(v0 + 440);
  *(v0 + 488) = v1;
  v2 = *(v0 + 384);
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][initialize] System database initialization failed: %@", v6, 0xCu);
    sub_230E437AC(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 376);
  v14 = *(v0 + 360);
  v15 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v15;
  *(v0 + 112) = v14;
  *(v0 + 128) = v10;
  v11 = swift_task_alloc();
  *(v0 + 496) = v11;
  *v11 = v0;
  v11[1] = sub_230E5D280;
  v12 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v12, v0 + 96);
}

uint64_t sub_230E5D628(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(v2 + 104) = a1;
  v4 = sub_230E68D80();
  *(v2 + 112) = v4;
  v5 = *(v4 - 8);
  *(v2 + 120) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v2 + 136) = *a2;
  *(v2 + 152) = v7;
  *(v2 + 168) = *(a2 + 32);
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E5D72C, 0, 0);
}

uint64_t sub_230E5D72C()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    *(v0 + 192) = v1;
    *(v0 + 200) = v3;
    *(v0 + 655) = BYTE1(v2);
    *(v0 + 654) = v2 & 1;
    *(v0 + 184) = v5;
    *(v0 + 653) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 104);
    v7 = qword_27DB5A438;
    *(v0 + 208) = qword_27DB5A438;

    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E5DB80, v7, 0);
  }

  else
  {
    *(v0 + 652) = 38;
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_230E5D914;
    v10 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 652), 0, 0);
  }
}

uint64_t sub_230E5D914()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 176);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E5DA3C, 0, 0);
}

uint64_t sub_230E5DA3C()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 192) = v3;
  *(v0 + 200) = v6;
  *(v0 + 655) = v5;
  *(v0 + 654) = v4;
  *(v0 + 184) = v2;
  *(v0 + 653) = v1;
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 136);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 104);
  v13 = qword_27DB5A438;
  *(v0 + 208) = qword_27DB5A438;

  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E5DB80, v13, 0);
}

uint64_t sub_230E5DB80()
{
  v32 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 128);
  sub_230E68D70();

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 653);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_230D7E620(0xD000000000000017, 0x8000000230E80890, v31);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v7, v6, v31);
    *(v9 + 22) = 2080;
    v29 = 0x6C616E7265746E69;
    v30 = 0xE90000000000002ELL;
    v28 = v8;
    v11 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v11);

    v12 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v31);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_230D02000, v4, v5, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  v13 = *(v0 + 200);
  v14 = *(v0 + 655);
  v15 = *(v0 + 653);
  LOBYTE(v29) = *(v0 + 654);
  BYTE1(v29) = v14;
  v30 = v13;
  v28 = 38;
  LOBYTE(v31[0]) = v15;

  v16 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v28, v31);

  if (v16)
  {
    sub_230E68950();
    *(v0 + 216) = CFAbsoluteTimeGetCurrent();
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0;
    *(v0 + 644) = 93;
    v17 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 272), (v0 + 644));
    *(v0 + 648) = v17;
    v18 = 0.0;
    if (!v17)
    {
      v19 = *(v0 + 320);
      v20 = *(v0 + 392);
      v21 = __CFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      v18 = vcvtd_n_f64_u64(v22, 0x14uLL);
    }

    *(v0 + 240) = v18;
    *(v0 + 96) = 0;
    v23 = swift_task_alloc();
    *(v0 + 248) = v23;
    *v23 = v0;
    v24 = sub_230E5E0AC;
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *v23 = v0;
    v24 = sub_230E5DF54;
  }

  v23[1] = v24;
  v25 = *(v0 + 104);
  v26 = *MEMORY[0x277D85DE8];

  return sub_230E5E730(v23, v0 + 16, v25);
}

uint64_t sub_230E5DF54()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_230E5E658;
  }

  else
  {
    v6 = sub_230E5E588;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E5E0AC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_230E5E310;
  }

  else
  {
    v6 = sub_230E5E204;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E5E204()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  sub_230D38814(38, *(v0 + 240), *(v0 + 648) != 0, v0 + 16, (v0 + 96), *(v0 + 216));
  (*(v4 + 8))(v3, v5);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E5E468, 0, 0);
}

uint64_t sub_230E5E310()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 192);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v13 = *(v0 + 200);
  v9 = *(v0 + 648) != 0;
  *(v0 + 96) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D38814(38, v2, v9, v0 + 16, (v0 + 96), v3);
  MEMORY[0x23191E910](v1);
  (*(v6 + 8))(v5, v8);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  *(v0 + 264) = *(v0 + 256);
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E5E4F8, 0, 0);
}

uint64_t sub_230E5E468()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_230E5E4F8()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[16];

  v2 = v0[1];
  v3 = v0[33];
  v4 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_230E5E588()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E5E468, 0, 0);
}

uint64_t sub_230E5E658()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v0[33] = v0[29];
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E5E4F8, 0, 0);
}

uint64_t sub_230E5E730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 176) = a2;
  *(v3 + 184) = a3;
  *(v3 + 256) = *a2;
  *(v3 + 192) = *(a2 + 8);
  *(v3 + 257) = *(a2 + 24);
  *(v3 + 208) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E5E774, 0, 0);
}

uint64_t sub_230E5E774()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 216) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][bootstrapSystemDatabase] Starting bootstrap process", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  sub_230E68478(0xD000000000000017, 0x8000000230E80890);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v9 = *(v0 + 257) & 1 | (*(v0 + 258) << 8);
  *(v0 + 16) = *(v0 + 256);
  *(v0 + 24) = v7;
  *(v0 + 32) = v6;
  *(v0 + 40) = v9;
  *(v0 + 48) = v5;
  sub_230D1CDE0(v8, v0 + 56);
  v10 = swift_task_alloc();
  *(v0 + 224) = v10;
  *v10 = v0;
  v10[1] = sub_230E5E958;

  return sub_230E5EE00(v0 + 16);
}

uint64_t sub_230E5E958()
{
  v2 = *v1;
  v3 = (*v1)[28];
  v10 = *v1;
  v2[29] = v0;

  v4 = v2[2];
  v5 = v2[3];
  v2 += 2;
  v6 = v2[3];
  v7 = v2[4];
  sub_230D666B4(v4, v5, v2[2]);
  if (v0)
  {
    v8 = sub_230E5EBD8;
  }

  else
  {
    v8 = sub_230E5EA7C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_230E5EA7C()
{
  v1 = *(v0 + 216);
  v2 = sub_230E68D60();
  v3 = sub_230E693F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][bootstrapSystemDatabase] Database and tables created", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 258);
  v8 = *(v0 + 257);
  v9 = *(v0 + 192);
  v10 = *(v0 + 256);
  v11 = *(v0 + 176);

  *(v0 + 96) = v10;
  *(v0 + 104) = v9;
  *(v0 + 112) = v6;
  *(v0 + 120) = v8 & 1 | (v7 << 8);
  *(v0 + 128) = v5;
  sub_230D1CDE0(v11, v0 + 136);
  v12 = swift_task_alloc();
  *(v0 + 240) = v12;
  *v12 = v0;
  v12[1] = sub_230E5EBF0;
  v13 = *(v0 + 184);

  return sub_230E5F590(v13, v0 + 96);
}

uint64_t sub_230E5EBF0()
{
  v2 = *v1;
  v3 = (*v1)[30];
  v10 = *v1;
  v2[31] = v0;

  v4 = v2[12];
  v5 = v2[13];
  v2 += 12;
  v6 = v2[3];
  v7 = v2[4];
  sub_230D666B4(v4, v5, v2[2]);
  if (v0)
  {
    v8 = sub_230E5EDE8;
  }

  else
  {
    v8 = sub_230E5ED14;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_230E5ED14()
{
  v1 = *(v0 + 216);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][bootstrapSystemDatabase] Bootstrap process completed", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_230E5EE00(uint64_t a1)
{
  v3 = *(*(type metadata accessor for CreateSQLDatabaseResponse(0) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v4 = *(*(type metadata accessor for CreateSQLDatabaseRequest(0) - 8) + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  v5 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v5;
  *(v1 + 112) = *(a1 + 32);

  return MEMORY[0x2822009F8](sub_230E5EED8, 0, 0);
}

uint64_t sub_230E5EED8()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 120) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][createSystemDatabase] Creating system database", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  sub_230E68478(0xD000000000000014, 0x8000000230E851F0);
  if (qword_27DB5A478 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 72);
  v6 = type metadata accessor for SQLDatabaseConfiguration();
  v7 = __swift_project_value_buffer(v6, qword_27DB80B18);
  sub_230E64EF8(v7, v5, type metadata accessor for SQLDatabaseConfiguration);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v9;
  *(v0 + 48) = v8;
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_230E5F15C;
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);

  return sub_230D31538(v11, v12, v0 + 16);
}

uint64_t sub_230E5F15C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_230E5F4F4;
  }

  else
  {
    v3 = sub_230E5F270;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E5F270()
{
  v22 = v0;
  v1 = v0[15];
  sub_230E64EF8(v0[8], v0[7], type metadata accessor for CreateSQLDatabaseResponse);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    sub_230E68860();
    sub_230E64FC0();
    v8 = sub_230E69890();
    v10 = v9;
    sub_230E64F60(v5, type metadata accessor for CreateSQLDatabaseResponse);
    v11 = sub_230D7E620(v8, v10, &v21);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][createSystemDatabase] system database created at: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  else
  {

    sub_230E64F60(v5, type metadata accessor for CreateSQLDatabaseResponse);
  }

  v12 = v0[15];
  v13 = sub_230E68D60();
  v14 = sub_230E693E0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_230D02000, v13, v14, "[SystemDatabase][createSystemDatabase] System database and client initialized", v15, 2u);
    MEMORY[0x23191EAE0](v15, -1, -1);
  }

  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[7];

  sub_230E64F60(v17, type metadata accessor for CreateSQLDatabaseResponse);
  sub_230E64F60(v16, type metadata accessor for CreateSQLDatabaseRequest);

  v19 = v0[1];

  return v19();
}

uint64_t sub_230E5F4F4()
{
  sub_230E64F60(v0[9], type metadata accessor for CreateSQLDatabaseRequest);
  v1 = v0[17];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_230E5F590(uint64_t a1, uint64_t a2)
{
  *(v2 + 368) = a1;
  v4 = sub_230E68910();
  *(v2 + 376) = v4;
  v5 = *(v4 - 8);
  *(v2 + 384) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 392) = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v2 + 400) = *a2;
  *(v2 + 416) = v7;
  *(v2 + 432) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_230E5F664, 0, 0);
}

uint64_t sub_230E5F664()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 440) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][initializeSystemMetadata] Initializing system metadata", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  sub_230E68478(0xD000000000000018, 0x8000000230E85190);
  v5 = *(v0 + 392);
  v6 = *(v0 + 376);
  v7 = *(v0 + 384);
  sub_230E68900();
  sub_230E688D0();
  v9 = v8;
  v10 = v8;
  result = (*(v7 + 8))(v5, v6);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v12 = *(v0 + 432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v13 = swift_allocObject();
  *(v0 + 448) = v13;
  *(v13 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  v18 = *(v0 + 416);
  v19 = *(v0 + 400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F560;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = xmmword_230E7F570;
  *(inited + 64) = 3;
  strcpy((inited + 72), "systemStatus");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  *(inited + 88) = xmmword_230E7F8A0;
  *(inited + 104) = 3;
  strcpy((inited + 112), "lastSyncTime");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = xmmword_230E6E730;
  *(inited + 144) = 2;
  strcpy((inited + 152), "configVersion");
  *(inited + 166) = -4864;
  *(inited + 168) = xmmword_230E6E730;
  *(inited + 184) = 2;
  *(inited + 192) = 0xD000000000000016;
  *(inited + 200) = 0x8000000230E84EE0;
  *(inited + 208) = xmmword_230E7F590;
  *(inited + 224) = 2;
  *(inited + 232) = 0x616470557473616CLL;
  *(inited + 240) = 0xEF656D6954646574;
  *(inited + 248) = v9;
  *(inited + 256) = 0;
  *(inited + 264) = 2;
  v15 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v13 + 32) = v15;
  *(v0 + 336) = 0x8000000230E84E70;
  *(v0 + 344) = v13;
  *(v0 + 352) = 0;
  *(v0 + 288) = v19;
  *(v0 + 304) = v18;
  *(v0 + 320) = v12;
  *(v0 + 328) = 0xD000000000000010;
  v16 = swift_task_alloc();
  *(v0 + 456) = v16;
  *v16 = v0;
  v16[1] = sub_230E5FAB8;
  v17 = *(v0 + 368);

  return sub_230D41CA0(v0 + 360, v0 + 328, v0 + 288);
}

uint64_t sub_230E5FAB8()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v7 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_230E5FCE0;
  }

  else
  {
    v5 = *(v2 + 448);

    v4 = sub_230E5FBF0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E5FBF0()
{
  v1 = v0[55];
  v2 = v0[45];
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][initializeSystemMetadata] System metadata initialized successfully, processed: %lld", v5, 0xCu);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v6 = v0[49];

  v7 = v0[1];

  return v7();
}

uint64_t sub_230E5FCE0()
{
  v1 = v0[58];
  v3 = v0[55];
  v2 = v0[56];

  v4 = v1;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[58];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_230D02000, v5, v6, "[SystemDatabase][initializeSystemMetadata] Failed to initialize system metadata: %@", v8, 0xCu);
    sub_230E437AC(v9);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
  }

  v12 = v0[58];

  swift_willThrow();
  v13 = v0[58];
  v14 = v0[49];

  v15 = v0[1];

  return v15();
}

uint64_t sub_230E5FE4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 408) = a1;
  v3 = *(a2 + 16);
  *(v2 + 416) = *a2;
  *(v2 + 432) = v3;
  *(v2 + 448) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E5FE7C, 0, 0);
}

uint64_t sub_230E5FE7C()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 456) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][checkSystemDBSchemaVersion] Checking system database schema version", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v5 = *(v0 + 448);
  v13 = *(v0 + 432);
  v14 = *(v0 + 416);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_230E6B3B0;
  *(v6 + 32) = 0xD000000000000016;
  *(v6 + 40) = 0x8000000230E84EE0;
  *(v6 + 48) = 2;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000230E84E70;
  *(v0 + 32) = v6;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  v7 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v7;
  *(v0 + 232) = *(v0 + 112);
  v8 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v8;
  v9 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 128) = 1;
  *(v0 + 248) = 1;
  *(v0 + 184) = v9;
  *(v0 + 360) = v14;
  *(v0 + 376) = v13;
  *(v0 + 392) = v5;
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_230E600FC;
  v11 = *(v0 + 408);

  return sub_230D3ED1C(v0 + 400, v0 + 136, v0 + 360);
}

uint64_t sub_230E600FC()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v6 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = sub_230E6044C;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v4 = sub_230E60218;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E60218()
{
  v1 = v0[50];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);

    if (*(v2 + 16) && (v3 = sub_230DA41A0(0xD000000000000016, 0x8000000230E84EE0), (v4 & 1) != 0))
    {
      v5 = *(v2 + 56) + 24 * v3;
      v6 = *v5;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      sub_230D0DCD8(*v5, v7, *(v5 + 16));

      if (v8 == 2)
      {
        if ((v7 & 1) == 0)
        {
          v9 = v0[57];
          v10 = sub_230E68D60();
          v11 = sub_230E693E0();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 134218496;
            *(v12 + 4) = v6;
            *(v12 + 12) = 2048;
            *(v12 + 14) = 2;
            *(v12 + 22) = 1024;
            *(v12 + 24) = v6 == 2;
            _os_log_impl(&dword_230D02000, v10, v11, "[SystemDatabase][checkSystemDBSchemaVersion] Schema version check: current=%lld, expected=%ld, matches=%{BOOL}d", v12, 0x1Cu);
            MEMORY[0x23191EAE0](v12, -1, -1);
          }

          v13 = v6 != 2;
          goto LABEL_15;
        }
      }

      else
      {
        sub_230D0F474(v6, v7, v8);
      }
    }

    else
    {
    }
  }

  else
  {
    v14 = v0[50];
  }

  v15 = v0[57];
  v16 = sub_230E68D60();
  v17 = sub_230E69400();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_230D02000, v16, v17, "[SystemDatabase][checkSystemDBSchemaVersion] Database exists but no valid bootstrapSchemaVersion found", v18, 2u);
    MEMORY[0x23191EAE0](v18, -1, -1);
  }

  v13 = 1;
LABEL_15:
  v19 = v0[1];

  return v19(v13);
}

uint64_t sub_230E6044C()
{
  v1 = v0[59];
  v2 = v0[57];
  sub_230D1D148((v0 + 2));
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E693E0();
  MEMORY[0x23191E910](v1);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[59];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][checkSystemDBSchemaVersion] Could not access system DB or system metadata: %@", v8, 0xCu);
    sub_230E437AC(v9);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191E910](v7);
  }

  else
  {

    MEMORY[0x23191E910](v7);
  }

  v12 = v0[1];

  return v12(2);
}

uint64_t sub_230E605A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *(v3 + 1216) = a1;
  v6 = sub_230E68D80();
  *(v3 + 1224) = v6;
  v7 = *(v6 - 8);
  *(v3 + 1232) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 1240) = swift_task_alloc();
  v9 = *a2;
  v10 = a2[1];
  *(v3 + 1248) = *a2;
  *(v3 + 1256) = v10;
  v11 = a2[2];
  *(v3 + 1264) = v11;
  v12 = *(a3 + 16);
  *(v3 + 1272) = *a3;
  *(v3 + 1288) = v12;
  *(v3 + 1304) = *(a3 + 32);
  *(v3 + 1168) = v9;
  *(v3 + 1176) = v10;
  *(v3 + 1184) = v11;
  v13 = swift_task_alloc();
  *(v3 + 1312) = v13;
  *v13 = v3;
  v13[1] = sub_230E60718;
  v14 = *MEMORY[0x277D85DE8];

  return sub_230D3E0C0((v3 + 1168));
}

uint64_t sub_230E60718(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 1312);
  v9 = *v2;
  *(v3 + 1320) = a1;
  *(v3 + 1328) = v1;

  if (v1)
  {
    v5 = sub_230E628FC;
  }

  else
  {
    v5 = sub_230E6085C;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_230E6085C()
{
  v71 = v0;
  v70[9] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1320);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v70[0] = MEMORY[0x277D84F90];
    sub_230D48880(0, v2, 0);
    v3 = v70[0];
    v4 = *(v70[0] + 16);
    v5 = 16 * v4;
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v70[0] = v3;
      v9 = *(v3 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_230D48880((v9 > 1), v4 + 1, 1);
        v3 = v70[0];
      }

      *(v3 + 16) = v4 + 1;
      v10 = v3 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 11;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v11 = *(v0 + 1264);
  v12 = sub_230D0ABEC(v3);
  *(v0 + 1336) = v12;

  v68 = *(v11 + 16);
  v69 = v11;
  if (!v68)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_28:
    *(v0 + 1344) = v16;
    v38 = *(v16 + 16);
    *(v0 + 1352) = v38;
    if (v38)
    {
      if (qword_27DB5A4B0 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_30;
    }

    v47 = *(v0 + 1320);

    if (qword_27DB5A4B0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_33;
  }

  v13 = 0;
  v14 = (v0 + 472);
  v67 = *(v0 + 1264) + 32;
  v15 = v12 + 56;
  v16 = MEMORY[0x277D84F90];
  while (v13 < *(v69 + 16))
  {
    v17 = v67 + 88 * v13;
    v18 = *(v17 + 16);
    *v14 = *v17;
    *(v0 + 488) = v18;
    v19 = *(v17 + 32);
    v20 = *(v17 + 48);
    v21 = *(v17 + 64);
    *(v0 + 552) = *(v17 + 80);
    *(v0 + 520) = v20;
    *(v0 + 536) = v21;
    *(v0 + 504) = v19;
    ++v13;
    if (*(v12 + 16))
    {
      v23 = *(v0 + 472);
      v22 = *(v0 + 480);
      v24 = *(v12 + 40);
      sub_230E699B0();
      sub_230D2C310(v0 + 472, v0 + 560);

      sub_230E69100();
      v25 = sub_230E699D0();
      v26 = -1 << *(v12 + 32);
      v27 = v25 & ~v26;
      if ((*(v15 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v28 = ~v26;
        while (1)
        {
          v29 = (*(v12 + 48) + 16 * v27);
          v30 = *v29 == v23 && v29[1] == v22;
          if (v30 || (sub_230E698C0() & 1) != 0)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v15 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        sub_230D2C348(v0 + 472);
        goto LABEL_9;
      }

LABEL_20:
    }

    else
    {
      sub_230D2C310(v0 + 472, v0 + 648);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_230D488A0(0, *(v16 + 16) + 1, 1);
    }

    v32 = *(v16 + 16);
    v31 = *(v16 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_230D488A0((v31 > 1), v32 + 1, 1);
    }

    *(v16 + 16) = v32 + 1;
    v33 = v16 + 88 * v32;
    v34 = *(v0 + 488);
    *(v33 + 32) = *v14;
    *(v33 + 48) = v34;
    v35 = *(v0 + 504);
    v36 = *(v0 + 520);
    v37 = *(v0 + 536);
    *(v33 + 112) = *(v0 + 552);
    *(v33 + 80) = v36;
    *(v33 + 96) = v37;
    *(v33 + 64) = v35;
LABEL_9:
    if (v13 == v68)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_44:
  swift_once();
LABEL_30:
  v39 = *(v0 + 1264);
  v40 = *(v0 + 1256);
  *(v0 + 1360) = __swift_project_value_buffer(*(v0 + 1224), qword_27DB80BC0);

  v41 = sub_230E68D60();
  v42 = sub_230E693E0();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1256);
    v44 = *(v0 + 1248);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v70[0] = v46;
    *v45 = 134218242;
    *(v45 + 4) = *(v16 + 16);

    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_230D7E620(v44, v43, v70);
    _os_log_impl(&dword_230D02000, v41, v42, "[SystemDatabase][addMissingColumns] Found %ld missing columns in table %s", v45, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x23191EAE0](v46, -1, -1);
    MEMORY[0x23191EAE0](v45, -1, -1);
  }

  else
  {
  }

  v60 = *(v0 + 1216);
  *(v0 + 1368) = 0;
  v61 = *(v0 + 1344);
  if (*(v61 + 16))
  {
    v62 = *(v61 + 48);
    *(v0 + 16) = *(v61 + 32);
    *(v0 + 32) = v62;
    v63 = *(v61 + 64);
    v64 = *(v61 + 80);
    v65 = *(v61 + 96);
    *(v0 + 96) = *(v61 + 112);
    *(v0 + 64) = v64;
    *(v0 + 80) = v65;
    *(v0 + 48) = v63;
    sub_230D2C310(v0 + 16, v0 + 736);
    v66 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E60F04, v60, 0);
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_33:
  v48 = *(v0 + 1264);
  v49 = *(v0 + 1256);
  __swift_project_value_buffer(*(v0 + 1224), qword_27DB80BC0);

  v50 = sub_230E68D60();
  v51 = sub_230E693F0();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = *(v0 + 1256);
    v53 = *(v0 + 1248);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v70[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_230D7E620(v53, v52, v70);
    _os_log_impl(&dword_230D02000, v50, v51, "[SystemDatabase][addMissingColumns] No missing columns found in table %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x23191EAE0](v55, -1, -1);
    MEMORY[0x23191EAE0](v54, -1, -1);
  }

  v56 = *(v0 + 1240);

  v57 = *(v0 + 8);
  v58 = *MEMORY[0x277D85DE8];

  return v57();
}

uint64_t sub_230E60F04()
{
  v39 = v0;
  v38[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1288);
  if (v1)
  {
    v2 = *(v0 + 1304);
    v3 = *(v0 + 1296);
    v4 = *(v0 + 1280);
    v5 = *(v0 + 1272);
    *(v0 + 1392) = v2;
    *(v0 + 1384) = v1;
    v6 = *(v0 + 1264);
    v7 = *(v0 + 1256);
    v8 = *(v0 + 1240);
    v9 = *(v0 + 1216);
    *(v0 + 1088) = v5;
    *(v0 + 1096) = v4;
    *(v0 + 1104) = v1;
    *(v0 + 1112) = v3 & 1;
    *(v0 + 1113) = BYTE1(v3);
    *(v0 + 1120) = v2;

    sub_230D2C310(v0 + 16, v0 + 824);

    v37 = v5;
    sub_230D0585C(v5, v4, v1);
    sub_230E68D70();

    v10 = sub_230E68D60();
    v11 = sub_230E693E0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38[0] = v13;
      *v12 = 136315650;
      *(v12 + 4) = sub_230D7E620(0x6F434C5153646461, 0xEC0000006E6D756CLL, v38);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_230D7E620(v4, v1, v38);
      *(v12 + 22) = 2080;
      *(v0 + 1192) = 0x6C616E7265746E69;
      *(v0 + 1200) = 0xE90000000000002ELL;
      v14 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v14);

      v15 = sub_230D7E620(*(v0 + 1192), *(v0 + 1200), v38);

      *(v12 + 24) = v15;
      _os_log_impl(&dword_230D02000, v10, v11, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v13, -1, -1);
      MEMORY[0x23191EAE0](v12, -1, -1);

      v16 = v37;
    }

    else
    {

      v16 = v5;
    }

    v20 = *(v0 + 24);
    *(v0 + 1400) = *(v0 + 16);
    *(v0 + 1408) = v20;
    if (v3 & 1) != 0 && ((LOBYTE(v38[0]) = v16, v21 = RequestType.rawValue.getter(), v23 = v22, , LOBYTE(v21) = sub_230D33FDC(v21, v23, v2), , , (v21) || BYTE1(v3) >= 2u))
    {
      sub_230E68950();
      *(v0 + 1416) = CFAbsoluteTimeGetCurrent();
      *(v0 + 100) = 0u;
      *(v0 + 116) = 0u;
      *(v0 + 132) = 0u;
      *(v0 + 148) = 0u;
      *(v0 + 164) = 0u;
      *(v0 + 180) = 0u;
      *(v0 + 196) = 0u;
      *(v0 + 212) = 0u;
      *(v0 + 228) = 0u;
      *(v0 + 244) = 0u;
      *(v0 + 260) = 0u;
      *(v0 + 276) = 0u;
      *(v0 + 292) = 0u;
      *(v0 + 308) = 0u;
      *(v0 + 324) = 0u;
      *(v0 + 340) = 0u;
      *(v0 + 356) = 0u;
      *(v0 + 372) = 0u;
      *(v0 + 388) = 0u;
      *(v0 + 404) = 0u;
      *(v0 + 420) = 0u;
      *(v0 + 436) = 0u;
      *(v0 + 452) = 0u;
      *(v0 + 468) = 0;
      *(v0 + 556) = 93;
      v26 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 100), (v0 + 556));
      *(v0 + 644) = v26;
      v27 = 0.0;
      if (!v26)
      {
        v28 = *(v0 + 148);
        v29 = *(v0 + 220);
        v30 = __CFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          __break(1u);
        }

        v27 = vcvtd_n_f64_u64(v31, 0x14uLL);
      }

      *(v0 + 1440) = v27;
      *(v0 + 1208) = 0;
      v24 = swift_task_alloc();
      *(v0 + 1448) = v24;
      *v24 = v0;
      v25 = sub_230E61B9C;
    }

    else
    {
      v24 = swift_task_alloc();
      *(v0 + 1424) = v24;
      *v24 = v0;
      v25 = sub_230E61A44;
    }

    v24[1] = v25;
    v32 = *(v0 + 1264);
    v33 = *(v0 + 1256);
    v34 = *(v0 + 1248);
    v35 = *(v0 + 1216);
    v36 = *MEMORY[0x277D85DE8];

    return sub_230D3E660(v24, v34, v33, v32, v0 + 16, v35);
  }

  else
  {
    *(v0 + 98) = 6;
    v17 = swift_task_alloc();
    *(v0 + 1376) = v17;
    *v17 = v0;
    v17[1] = sub_230E61458;
    v18 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 1128, (v0 + 98), 0, 0);
  }
}

uint64_t sub_230E61458()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 1376);
  v2 = *(*v0 + 1216);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E61594, v2, 0);
}

uint64_t sub_230E61594()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1153);
  v6 = *(v0 + 1160);
  *(v0 + 1392) = v6;
  *(v0 + 1384) = v3;
  v41 = *(v0 + 1304);
  v39 = v2;
  v40 = *(v0 + 1296);
  v7 = *(v0 + 1288);
  v8 = *(v0 + 1280);
  v9 = *(v0 + 1272);
  v10 = *(v0 + 1264);
  v11 = *(v0 + 1256);
  v12 = *(v0 + 1240);
  v13 = *(v0 + 1216);
  v42 = v1;
  v43 = v4;
  *(v0 + 1088) = v1;
  *(v0 + 1096) = v2;
  *(v0 + 1104) = v3;
  *(v0 + 1112) = v4;
  v38 = v5;
  *(v0 + 1113) = v5;
  *(v0 + 1120) = v6;

  sub_230D2C310(v0 + 16, v0 + 824);

  sub_230D0585C(v9, v8, v7);
  sub_230E68D70();

  v14 = sub_230E68D60();
  v15 = sub_230E693E0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v44[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_230D7E620(0x6F434C5153646461, 0xEC0000006E6D756CLL, v44);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_230D7E620(v39, v3, v44);
    *(v16 + 22) = 2080;
    *(v0 + 1192) = 0x6C616E7265746E69;
    *(v0 + 1200) = 0xE90000000000002ELL;
    v18 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v18);

    v19 = sub_230D7E620(*(v0 + 1192), *(v0 + 1200), v44);

    *(v16 + 24) = v19;
    _os_log_impl(&dword_230D02000, v14, v15, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v17, -1, -1);
    MEMORY[0x23191EAE0](v16, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 24);
  *(v0 + 1400) = *(v0 + 16);
  *(v0 + 1408) = v20;
  if (v43 && ((LOBYTE(v44[0]) = v42, v21 = RequestType.rawValue.getter(), v23 = v22, , LOBYTE(v21) = sub_230D33FDC(v21, v23, v6), , , (v21 & 1) != 0) || v38 >= 2))
  {
    sub_230E68950();
    *(v0 + 1416) = CFAbsoluteTimeGetCurrent();
    *(v0 + 100) = 0u;
    *(v0 + 116) = 0u;
    *(v0 + 132) = 0u;
    *(v0 + 148) = 0u;
    *(v0 + 164) = 0u;
    *(v0 + 180) = 0u;
    *(v0 + 196) = 0u;
    *(v0 + 212) = 0u;
    *(v0 + 228) = 0u;
    *(v0 + 244) = 0u;
    *(v0 + 260) = 0u;
    *(v0 + 276) = 0u;
    *(v0 + 292) = 0u;
    *(v0 + 308) = 0u;
    *(v0 + 324) = 0u;
    *(v0 + 340) = 0u;
    *(v0 + 356) = 0u;
    *(v0 + 372) = 0u;
    *(v0 + 388) = 0u;
    *(v0 + 404) = 0u;
    *(v0 + 420) = 0u;
    *(v0 + 436) = 0u;
    *(v0 + 452) = 0u;
    *(v0 + 468) = 0;
    *(v0 + 556) = 93;
    v26 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 100), (v0 + 556));
    *(v0 + 644) = v26;
    v27 = 0.0;
    if (!v26)
    {
      v28 = *(v0 + 148);
      v29 = *(v0 + 220);
      v30 = __CFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        __break(1u);
      }

      v27 = vcvtd_n_f64_u64(v31, 0x14uLL);
    }

    *(v0 + 1440) = v27;
    *(v0 + 1208) = 0;
    v24 = swift_task_alloc();
    *(v0 + 1448) = v24;
    *v24 = v0;
    v25 = sub_230E61B9C;
  }

  else
  {
    v24 = swift_task_alloc();
    *(v0 + 1424) = v24;
    *v24 = v0;
    v25 = sub_230E61A44;
  }

  v24[1] = v25;
  v32 = *(v0 + 1264);
  v33 = *(v0 + 1256);
  v34 = *(v0 + 1248);
  v35 = *(v0 + 1216);
  v36 = *MEMORY[0x277D85DE8];

  return sub_230D3E660(v24, v34, v33, v32, v0 + 16, v35);
}

uint64_t sub_230E61A44()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1424);
  v4 = *v1;
  *(*v1 + 1432) = v0;

  v5 = *(v2 + 1216);
  if (v0)
  {
    v6 = sub_230E627C4;
  }

  else
  {
    v6 = sub_230E626C8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E61B9C()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1448);
  v4 = *v1;
  *(*v1 + 1456) = v0;

  v5 = *(v2 + 1216);
  if (v0)
  {
    v6 = sub_230E61E2C;
  }

  else
  {
    v6 = sub_230E61CF4;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E61CF4()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1392);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1256);
  v5 = *(v0 + 1240);
  v6 = *(v0 + 1232);
  v7 = *(v0 + 1224);
  v8 = *(v0 + 1216);
  sub_230D34A54(6, *(v0 + 1440), *(v0 + 644) != 0, v0 + 1088, (v0 + 1208), *(v0 + 1416));
  (*(v6 + 8))(v5, v7);

  sub_230D2C348(v0 + 16);

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E61FD4, 0, 0);
}

uint64_t sub_230E61E2C()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1416);
  v17 = *(v0 + 1384);
  v18 = *(v0 + 1392);
  v16 = *(v0 + 1336);
  v14 = *(v0 + 1344);
  v15 = *(v0 + 1320);
  v4 = *(v0 + 1264);
  v5 = *(v0 + 1256);
  v6 = *(v0 + 1240);
  v7 = *(v0 + 1232);
  v8 = *(v0 + 1224);
  v13 = *(v0 + 1216);
  v9 = *(v0 + 644) != 0;
  *(v0 + 1208) = v1;
  swift_willThrow();
  v10 = v1;
  sub_230D34A54(6, v2, v9, v0 + 1088, (v0 + 1208), v3);
  MEMORY[0x23191E910](v1);
  (*(v7 + 8))(v6, v8);

  sub_230D2C348(v0 + 16);

  *(v0 + 1464) = *(v0 + 1456);
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E622C4, 0, 0);
}

uint64_t sub_230E61FD4()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1256);

  sub_230D2C310(v0 + 16, v0 + 1000);
  v4 = sub_230E68D60();
  v5 = sub_230E693E0();
  sub_230D2C348(v0 + 16);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1408);
    v7 = *(v0 + 1400);
    v8 = *(v0 + 1256);
    v9 = *(v0 + 1248);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29[0] = v11;
    *v10 = 136315394;

    v12 = sub_230D7E620(v7, v6, v29);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_230D7E620(v9, v8, v29);
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][addMissingColumns] Successfully added column %s to table %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v10, -1, -1);
    sub_230D2C348(v0 + 16);
  }

  else
  {

    sub_230D2C348(v0 + 16);
  }

  v13 = *(v0 + 1368) + 1;
  if (v13 == *(v0 + 1352))
  {
    v14 = *(v0 + 1344);
    v15 = *(v0 + 1336);
    v16 = *(v0 + 1320);

    v17 = *(v0 + 1240);

    v18 = *(v0 + 8);
    v19 = *MEMORY[0x277D85DE8];

    return v18();
  }

  else
  {
    *(v0 + 1368) = v13;
    v21 = *(v0 + 1344);
    if (v13 >= *(v21 + 16))
    {
      __break(1u);
    }

    v22 = *(v0 + 1216);
    v23 = v21 + 88 * v13;
    v24 = *(v23 + 48);
    *(v0 + 16) = *(v23 + 32);
    *(v0 + 32) = v24;
    v26 = *(v23 + 80);
    v25 = *(v23 + 96);
    v27 = *(v23 + 64);
    *(v0 + 96) = *(v23 + 112);
    *(v0 + 64) = v26;
    *(v0 + 80) = v25;
    *(v0 + 48) = v27;
    sub_230D2C310(v0 + 16, v0 + 736);
    v28 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E60F04, v22, 0);
  }
}

uint64_t sub_230E622C4()
{
  v38 = v0;
  v37[1] = *MEMORY[0x277D85DE8];
  v1 = v0[183];
  v2 = v0[170];
  v3 = v0[158];
  v4 = v0[157];

  sub_230D2C310((v0 + 2), (v0 + 114));
  v5 = v1;
  v6 = sub_230E68D60();
  v7 = sub_230E69400();
  sub_230D2C348((v0 + 2));

  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[183];
    v9 = v0[176];
    v10 = v0[175];
    v36 = v0[157];
    v11 = v0[156];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37[0] = v14;
    *v12 = 136315650;

    v15 = sub_230D7E620(v10, v9, v37);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_230D7E620(v11, v36, v37);
    *(v12 + 22) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v13 = v17;
    _os_log_impl(&dword_230D02000, v6, v7, "[SystemDatabase][addMissingColumns] Failed to add column %s to table %s: %@", v12, 0x20u);
    sub_230E437AC(v13);
    MEMORY[0x23191EAE0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v12, -1, -1);
  }

  v18 = v0[183];
  swift_willThrow();
  sub_230D2C348((v0 + 2));
  v19 = v0[183];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v20 = v0[158];
  v21 = v0[157];
  __swift_project_value_buffer(v0[153], qword_27DB80BC0);

  v22 = v19;
  v23 = sub_230E68D60();
  v24 = sub_230E69400();

  MEMORY[0x23191E910](v19);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[157];
    v26 = v0[156];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37[0] = v29;
    *v27 = 136315394;
    *(v27 + 4) = sub_230D7E620(v26, v25, v37);
    *(v27 + 12) = 2112;
    v30 = v19;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v31;
    *v28 = v31;
    _os_log_impl(&dword_230D02000, v23, v24, "[SystemDatabase][addMissingColumns] Could not check columns for table %s: %@", v27, 0x16u);
    sub_230E437AC(v28);
    MEMORY[0x23191EAE0](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x23191EAE0](v29, -1, -1);
    MEMORY[0x23191EAE0](v27, -1, -1);
    MEMORY[0x23191E910](v19);
  }

  else
  {

    MEMORY[0x23191E910](v19);
  }

  v32 = v0[155];

  v33 = v0[1];
  v34 = *MEMORY[0x277D85DE8];

  return v33();
}

uint64_t sub_230E626C8()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[158];
  v4 = v0[157];
  v5 = v0[152];
  (*(v0[154] + 8))(v0[155], v0[153]);

  sub_230D2C348((v0 + 2));

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E61FD4, 0, 0);
}

uint64_t sub_230E627C4()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[168];
  v4 = v0[167];
  v5 = v0[165];
  v6 = v0[158];
  v7 = v0[157];
  v8 = v0[152];
  (*(v0[154] + 8))(v0[155], v0[153]);

  sub_230D2C348((v0 + 2));

  v0[183] = v0[179];
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E622C4, 0, 0);
}

uint64_t sub_230E628FC()
{
  v19 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = v0[166];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = v0[158];
  v3 = v0[157];
  __swift_project_value_buffer(v0[153], qword_27DB80BC0);

  v4 = v1;
  v5 = sub_230E68D60();
  v6 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[157];
    v8 = v0[156];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_230D7E620(v8, v7, v18);
    *(v9 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_230D02000, v5, v6, "[SystemDatabase][addMissingColumns] Could not check columns for table %s: %@", v9, 0x16u);
    sub_230E437AC(v10);
    MEMORY[0x23191EAE0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191E910](v1);
  }

  else
  {

    MEMORY[0x23191E910](v1);
  }

  v14 = v0[155];

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_230E62B48(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(v2 + 184) = a1;
  v4 = sub_230E68D80();
  *(v2 + 192) = v4;
  v5 = *(v4 - 8);
  *(v2 + 200) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v2 + 216) = *a2;
  *(v2 + 232) = v7;
  *(v2 + 248) = *(a2 + 32);
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E62C4C, 0, 0);
}

uint64_t sub_230E62C4C()
{
  v17 = *MEMORY[0x277D85DE8];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  *(v0 + 256) = __swift_project_value_buffer(*(v0 + 192), qword_27DB80BC0);
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_230D02000, v1, v2, "[SystemDatabase][applySchemaUpdates] Applying schema updates with CREATE IF NOT EXISTS and column additions", v3, 2u);
    MEMORY[0x23191EAE0](v3, -1, -1);
  }

  sub_230E68478(0xD000000000000012, 0x8000000230E851B0);
  if (qword_27DB5A478 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SQLDatabaseConfiguration();
  v6 = *(__swift_project_value_buffer(v5, qword_27DB80B18) + 24);
  *(v0 + 264) = v6;
  v7 = v6[2];
  *(v0 + 272) = v7;
  if (v7)
  {
    v8 = *(v0 + 184);
    *(v0 + 312) = 0;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 320) = v6[4];
    *(v0 + 328) = v6[5];
    *(v0 + 336) = v6[6];

    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E62F5C, v8, 0);
  }

  else
  {
    v10 = *(v0 + 256);
    v11 = sub_230E68D60();
    v12 = sub_230E693E0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      *(v13 + 4) = 0;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 0;
      _os_log_impl(&dword_230D02000, v11, v12, "[SystemDatabase][applySchemaUpdates] Schema update completed: %ld succeeded, %ld failed", v13, 0x16u);
      MEMORY[0x23191EAE0](v13, -1, -1);
    }

    v14 = *(v0 + 208);

    v15 = *(v0 + 8);
    v16 = *MEMORY[0x277D85DE8];

    return v15();
  }
}

uint64_t sub_230E62F5C()
{
  v37 = v0;
  v36[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 232);
  if (v1)
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    v4 = *(v0 + 216);
    v5 = *(v0 + 224);
    *(v0 + 352) = v1;
    *(v0 + 360) = v2;
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = *(v0 + 208);
    v9 = *(v0 + 184);
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    v35 = v3 >> 8;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v4, v5, v1);
    sub_230E68D70();

    v10 = sub_230E68D60();
    v11 = sub_230E693E0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36[0] = v34;
      *v12 = 136315650;
      *(v12 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v36);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_230D7E620(v5, v1, v36);
      *(v12 + 22) = 2080;
      *(v0 + 160) = 0x6C616E7265746E69;
      *(v0 + 168) = 0xE90000000000002ELL;
      v13 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v13);

      v14 = sub_230D7E620(*(v0 + 160), *(v0 + 168), v36);

      *(v12 + 24) = v14;
      _os_log_impl(&dword_230D02000, v10, v11, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v34, -1, -1);
      MEMORY[0x23191EAE0](v12, -1, -1);
    }

    if (v3 & 1) != 0 && ((LOBYTE(v36[0]) = v4, v15 = RequestType.rawValue.getter(), v17 = v16, , LOBYTE(v15) = sub_230D33FDC(v15, v17, v2), , , (v15) || v35 >= 2u))
    {
      sub_230E68950();
      *(v0 + 368) = CFAbsoluteTimeGetCurrent();
      *(v0 + 440) = 0u;
      *(v0 + 456) = 0u;
      *(v0 + 472) = 0u;
      *(v0 + 488) = 0u;
      *(v0 + 504) = 0u;
      *(v0 + 520) = 0u;
      *(v0 + 536) = 0u;
      *(v0 + 552) = 0u;
      *(v0 + 568) = 0u;
      *(v0 + 584) = 0u;
      *(v0 + 600) = 0u;
      *(v0 + 616) = 0u;
      *(v0 + 632) = 0u;
      *(v0 + 648) = 0u;
      *(v0 + 664) = 0u;
      *(v0 + 680) = 0u;
      *(v0 + 696) = 0u;
      *(v0 + 712) = 0u;
      *(v0 + 728) = 0u;
      *(v0 + 744) = 0u;
      *(v0 + 760) = 0u;
      *(v0 + 776) = 0u;
      *(v0 + 792) = 0u;
      *(v0 + 808) = 0;
      *(v0 + 812) = 93;
      v23 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 440), (v0 + 812));
      *(v0 + 816) = v23;
      v24 = 0.0;
      if (!v23)
      {
        v25 = *(v0 + 488);
        v26 = *(v0 + 560);
        v27 = __CFADD__(v25, v26);
        v28 = v25 + v26;
        if (v27)
        {
          __break(1u);
        }

        v24 = vcvtd_n_f64_u64(v28, 0x14uLL);
      }

      *(v0 + 392) = v24;
      *(v0 + 176) = 0;
      v18 = swift_task_alloc();
      *(v0 + 400) = v18;
      *v18 = v0;
      v19 = sub_230E63B80;
    }

    else
    {
      v18 = swift_task_alloc();
      *(v0 + 376) = v18;
      *v18 = v0;
      v19 = sub_230E63A28;
    }

    v18[1] = v19;
    v29 = *(v0 + 328);
    v30 = *(v0 + 336);
    v31 = *(v0 + 320);
    v32 = *(v0 + 184);
    v33 = *MEMORY[0x277D85DE8];

    return sub_230D3D310(v18, v32, v31, v29, v30);
  }

  else
  {
    *(v0 + 820) = 5;
    v20 = swift_task_alloc();
    *(v0 + 344) = v20;
    *v20 = v0;
    v20[1] = sub_230E63460;
    v21 = *MEMORY[0x277D85DE8];

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 820), 0, 0);
  }
}

uint64_t sub_230E63460()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E6359C, v2, 0);
}

uint64_t sub_230E6359C()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 352) = v3;
  *(v0 + 360) = v6;
  v7 = *(v0 + 328);
  v8 = *(v0 + 336);
  v9 = *(v0 + 240);
  v41 = *(v0 + 248);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 184);
  v40 = v2;
  v42 = v4;
  v43 = v1;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  v39 = v5;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v13, v11, v10);
  sub_230E68D70();

  v15 = sub_230E68D60();
  v16 = sub_230E693E0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v44[0] = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v44);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_230D7E620(v40, v3, v44);
    *(v17 + 22) = 2080;
    *(v0 + 160) = 0x6C616E7265746E69;
    *(v0 + 168) = 0xE90000000000002ELL;
    v19 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v19);

    v20 = sub_230D7E620(*(v0 + 160), *(v0 + 168), v44);

    *(v17 + 24) = v20;
    _os_log_impl(&dword_230D02000, v15, v16, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v18, -1, -1);
    MEMORY[0x23191EAE0](v17, -1, -1);

    v21 = v43;
    if (!v42)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v21 = v43;
    if (!v42)
    {
LABEL_7:
      v25 = swift_task_alloc();
      *(v0 + 376) = v25;
      *v25 = v0;
      v26 = sub_230E63A28;
      goto LABEL_12;
    }
  }

  LOBYTE(v44[0]) = v21;
  v22 = RequestType.rawValue.getter();
  v24 = v23;

  LOBYTE(v22) = sub_230D33FDC(v22, v24, v6);

  if ((v22 & 1) == 0 && v39 < 2)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v0 + 368) = CFAbsoluteTimeGetCurrent();
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0u;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0u;
  *(v0 + 504) = 0u;
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 0u;
  *(v0 + 616) = 0u;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 0u;
  *(v0 + 664) = 0u;
  *(v0 + 680) = 0u;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = 0u;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 0u;
  *(v0 + 792) = 0u;
  *(v0 + 808) = 0;
  *(v0 + 812) = 93;
  v27 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 440), (v0 + 812));
  *(v0 + 816) = v27;
  v28 = 0.0;
  if (!v27)
  {
    v29 = *(v0 + 488);
    v30 = *(v0 + 560);
    v31 = __CFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      __break(1u);
    }

    v28 = vcvtd_n_f64_u64(v32, 0x14uLL);
  }

  *(v0 + 392) = v28;
  *(v0 + 176) = 0;
  v25 = swift_task_alloc();
  *(v0 + 400) = v25;
  *v25 = v0;
  v26 = sub_230E63B80;
LABEL_12:
  v25[1] = v26;
  v33 = *(v0 + 328);
  v34 = *(v0 + 336);
  v35 = *(v0 + 320);
  v36 = *(v0 + 184);
  v37 = *MEMORY[0x277D85DE8];

  return sub_230D3D310(v25, v36, v35, v33, v34);
}

uint64_t sub_230E63A28()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_230E6464C;
  }

  else
  {
    v6 = sub_230E64568;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E63B80()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_230E63DF8;
  }

  else
  {
    v6 = sub_230E63CD8;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_230E63CD8()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  sub_230D34A54(5, *(v0 + 392), *(v0 + 816) != 0, v0 + 16, (v0 + 176), *(v0 + 368));
  (*(v6 + 8))(v5, v7);

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E63F60, 0, 0);
}

uint64_t sub_230E63DF8()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  v14 = *(v0 + 352);
  v15 = *(v0 + 360);
  v12 = *(v0 + 328);
  v13 = *(v0 + 336);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 816) != 0;
  *(v0 + 176) = v1;
  swift_willThrow();
  v9 = v1;
  sub_230D34A54(5, v2, v8, v0 + 16, (v0 + 176), v3);
  MEMORY[0x23191E910](v1);
  (*(v4 + 8))(v5, v7);

  *(v0 + 416) = *(v0 + 408);
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E64168, 0, 0);
}

uint64_t sub_230E63F60()
{
  v18 = v0;
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 256);

  v4 = sub_230E68D60();
  v5 = sub_230E693E0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 320);
    v6 = *(v0 + 328);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;

    v10 = sub_230D7E620(v7, v6, v17);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][applySchemaUpdates] Successfully applied schema for table: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
  }

  *(v0 + 136) = *(v0 + 320);
  v11 = *(v0 + 248);
  v12 = *(v0 + 328);
  *(v0 + 96) = *(v0 + 216);
  *(v0 + 144) = v12;
  *(v0 + 112) = *(v0 + 232);
  *(v0 + 128) = v11;
  v13 = swift_task_alloc();
  *(v0 + 424) = v13;
  *v13 = v0;
  v13[1] = sub_230E64738;
  v14 = *(v0 + 184);
  v15 = *MEMORY[0x277D85DE8];

  return sub_230E605A8(v14, (v0 + 136), v0 + 96);
}

uint64_t sub_230E64168()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = v0[52];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[32];

  v5 = v1;
  v6 = sub_230E68D60();
  v7 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[41];
  v10 = v0[42];
  if (v8)
  {
    v11 = v0[40];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v12 = 136315394;

    v15 = sub_230D7E620(v11, v9, v34);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v13 = v17;
    _os_log_impl(&dword_230D02000, v6, v7, "[SystemDatabase][applySchemaUpdates] Failed to apply schema for table %s: %@", v12, 0x16u);
    sub_230E437AC(v13);
    MEMORY[0x23191EAE0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191E910](v1);
  }

  else
  {

    MEMORY[0x23191E910](v1);
  }

  v18 = v0[35];
  v19 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  v20 = v0[37];
  v21 = v0[39] + 1;
  if (v21 == v0[34])
  {
    v22 = v0[32];
    v23 = sub_230E68D60();
    v24 = sub_230E693E0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      *(v25 + 4) = v20;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v19;
      _os_log_impl(&dword_230D02000, v23, v24, "[SystemDatabase][applySchemaUpdates] Schema update completed: %ld succeeded, %ld failed", v25, 0x16u);
      MEMORY[0x23191EAE0](v25, -1, -1);
    }

    if (v19 >= 1)
    {
      sub_230D0D224();
      swift_allocError();
      *v26 = 0xD00000000000001ALL;
      *(v26 + 8) = 0x8000000230E851D0;
      *(v26 + 16) = 2;
      swift_willThrow();
    }

    v27 = v0[26];

    v28 = v0[1];
    v29 = *MEMORY[0x277D85DE8];

    return v28();
  }

  else
  {
    v0[39] = v21;
    v0[36] = v19;
    v0[37] = v20;
    v0[35] = v19;
    v30 = v0[23];
    v31 = (v0[33] + 24 * v21);
    v0[40] = v31[4];
    v0[41] = v31[5];
    v0[42] = v31[6];

    v32 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E62F5C, v30, 0);
  }
}

uint64_t sub_230E64568()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[44];
  v2 = v0[45];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[23];
  (*(v0[25] + 8))(v0[26], v0[24]);

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E63F60, 0, 0);
}

uint64_t sub_230E6464C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[44];
  v2 = v0[45];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[23];
  (*(v0[25] + 8))(v0[26], v0[24]);

  v0[52] = v0[48];
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_230E64168, 0, 0);
}

uint64_t sub_230E64738()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 424);
  v10 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = sub_230E64AF8;
  }

  else
  {
    v5 = *(v2 + 328);
    v6 = *(v2 + 336);

    v4 = sub_230E64890;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E64890()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[38];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  v3 = v0[39] + 1;
  if (v3 == v0[34])
  {
    v4 = v0[36];
    v5 = v0[32];
    v6 = sub_230E68D60();
    v7 = sub_230E693E0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = v2;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v4;
      _os_log_impl(&dword_230D02000, v6, v7, "[SystemDatabase][applySchemaUpdates] Schema update completed: %ld succeeded, %ld failed", v8, 0x16u);
      MEMORY[0x23191EAE0](v8, -1, -1);
    }

    if (v4 >= 1)
    {
      sub_230D0D224();
      swift_allocError();
      *v9 = 0xD00000000000001ALL;
      *(v9 + 8) = 0x8000000230E851D0;
      *(v9 + 16) = 2;
      swift_willThrow();
    }

    v10 = v0[26];

    v11 = v0[1];
    v12 = *MEMORY[0x277D85DE8];

    return v11();
  }

  else
  {
    v0[38] = v2;
    v0[39] = v3;
    v0[37] = v2;
    v13 = v0[23];
    v14 = (v0[33] + 24 * v3);
    v0[40] = v14[4];
    v0[41] = v14[5];
    v0[42] = v14[6];

    v15 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E62F5C, v13, 0);
  }
}

uint64_t sub_230E64AF8()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = v0[54];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[32];

  v5 = v1;
  v6 = sub_230E68D60();
  v7 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[41];
  v10 = v0[42];
  if (v8)
  {
    v11 = v0[40];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v12 = 136315394;

    v15 = sub_230D7E620(v11, v9, v34);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v13 = v17;
    _os_log_impl(&dword_230D02000, v6, v7, "[SystemDatabase][applySchemaUpdates] Failed to apply schema for table %s: %@", v12, 0x16u);
    sub_230E437AC(v13);
    MEMORY[0x23191EAE0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v12, -1, -1);
    MEMORY[0x23191E910](v1);
  }

  else
  {

    MEMORY[0x23191E910](v1);
  }

  v18 = v0[35];
  v19 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  v20 = v0[37];
  v21 = v0[39] + 1;
  if (v21 == v0[34])
  {
    v22 = v0[32];
    v23 = sub_230E68D60();
    v24 = sub_230E693E0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      *(v25 + 4) = v20;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v19;
      _os_log_impl(&dword_230D02000, v23, v24, "[SystemDatabase][applySchemaUpdates] Schema update completed: %ld succeeded, %ld failed", v25, 0x16u);
      MEMORY[0x23191EAE0](v25, -1, -1);
    }

    if (v19 >= 1)
    {
      sub_230D0D224();
      swift_allocError();
      *v26 = 0xD00000000000001ALL;
      *(v26 + 8) = 0x8000000230E851D0;
      *(v26 + 16) = 2;
      swift_willThrow();
    }

    v27 = v0[26];

    v28 = v0[1];
    v29 = *MEMORY[0x277D85DE8];

    return v28();
  }

  else
  {
    v0[39] = v21;
    v0[36] = v19;
    v0[37] = v20;
    v0[35] = v19;
    v30 = v0[23];
    v31 = (v0[33] + 24 * v21);
    v0[40] = v31[4];
    v0[41] = v31[5];
    v0[42] = v31[6];

    v32 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_230E62F5C, v30, 0);
  }
}

uint64_t sub_230E64EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_230E64F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_230E64FC0()
{
  result = qword_2815668A0;
  if (!qword_2815668A0)
  {
    sub_230E68860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815668A0);
  }

  return result;
}

uint64_t DatabaseType.rawValue.getter()
{
  v1 = 0x524F54434556;
  if (*v0 != 1)
  {
    v1 = 22091;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 5001555;
  }
}

uint64_t SystemStatus.rawValue.getter()
{
  v1 = 0x696C616974696E69;
  v2 = 0x6465646172676564;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (*v0)
  {
    v1 = 0x7964616572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t static ComponentSyncResult.success(count:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_230D0F35C(MEMORY[0x277D84F90]);
  *a2 = a1;
  a2[1] = 0;
  a2[2] = result;
  return result;
}

double static ComponentSyncResult.failure(error:identifier:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D800, &unk_230E7F8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B3B0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a1;

  v9 = a1;
  v10 = sub_230D0F35C(inited);
  swift_setDeallocating();
  sub_230E67778(inited + 32);
  result = 0.0;
  *a4 = xmmword_230E6E730;
  *(a4 + 16) = v10;
  return result;
}

uint64_t sub_230E651C4@<X0>(char *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  result = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[10];
  v11 = v1[11];
  v26 = v1[6];
  v27 = v1[9];
  v28 = v1[12];
  v15 = v3 < 1 && v6 < 1 && v8 < 1 && v10 < 1;
  v19 = v4 < 1 && v7 < 1 && v9 < 1 && v11 < 1;
  v20 = __OFADD__(v3, v4);
  v21 = v3 + v4;
  if (!v20)
  {
    if (v21 > 0)
    {
      goto LABEL_33;
    }

    v20 = __OFADD__(v6, v7);
    v22 = v6 + v7;
    if (!v20)
    {
      if (v22 > 0)
      {
        goto LABEL_33;
      }

      v20 = __OFADD__(v8, v9);
      v23 = v8 + v9;
      if (!v20)
      {
        if (v23 > 0)
        {
          goto LABEL_33;
        }

        v20 = __OFADD__(v10, v11);
        v24 = v10 + v11;
        if (!v20)
        {
          if (v24 < 1)
          {

            result = swift_arrayDestroy();
            v25 = 1;
LABEL_38:
            *a1 = v25;
            return result;
          }

LABEL_33:

          result = swift_arrayDestroy();
          if (v19)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }

          if (v15)
          {
            v25 = 3;
          }

          goto LABEL_38;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230E65328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);
  v14 = *(v2 + 88);
  v13 = *(v2 + 96);
  v15 = *(v2 + 104);
  v16 = *(v2 + 112);
  v17 = *(v2 + 120);
  v19 = (v2 + 1);
  v18 = *(v2 + 1);
  v54 = *v2;
  v61[1] = *v2;
  *v62 = v18;
  *&v62[3] = *(v2 + 4);
  v52 = v4;
  v53 = v3;
  v63 = v3;
  v64 = v4;
  v58 = v11;
  v59 = v5;
  v65 = v5;
  v66 = v6;
  v50 = v7;
  v51 = v6;
  v67 = v7;
  v68 = v8;
  v48 = v10;
  v49 = v9;
  v69 = v9;
  v70 = v10;
  v71 = v11;
  v72 = v12;
  v46 = v14;
  v47 = v12;
  v73 = v14;
  v74 = v13;
  v57 = v13;
  v45 = v15;
  v75 = v15;
  v76 = v16;
  v55 = v16;
  v77 = v17;
  sub_230E651C4(v61);
  if (v61[0] > 1u)
  {
    if (v61[0] == 2)
    {
      v42 = 0xE800000000000000;
      v20 = 0x6465646172676564;
    }

    else
    {
      v42 = 0xE500000000000000;
      v20 = 0x726F727265;
    }
  }

  else if (v61[0])
  {
    v42 = 0xE500000000000000;
    v20 = 0x7964616572;
  }

  else
  {
    v42 = 0xEC000000676E697ALL;
    v20 = 0x696C616974696E69;
  }

  v41 = v20;
  v56 = v17;
  v21 = *(v59 + 16);
  if (v21)
  {
    v40 = sub_230E4B114(*(v59 + 16), 0);
    v22 = sub_230E67620(v60, v40 + 4, v21, v59);

    sub_230D912FC();
    if (v22 == v21)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v40 = MEMORY[0x277D84F90];
LABEL_12:
  v23 = v8;
  v24 = *(v8 + 16);
  if (!v24)
  {
    goto LABEL_17;
  }

  v39 = sub_230E4B114(*(v8 + 16), 0);
  v25 = sub_230E67620(v60, v39 + 4, v24, v8);

  result = sub_230D912FC();
  v27 = v58;
  if (v25 != v24)
  {
    __break(1u);
    goto LABEL_29;
  }

  v28 = *(v58 + 16);
  if (v28)
  {
    while (1)
    {
      v38 = sub_230E4B114(v28, 0);
      v29 = sub_230E67620(v60, v38 + 4, v28, v27);

      sub_230D912FC();
      if (v29 == v28)
      {
        break;
      }

      __break(1u);
LABEL_17:
      v39 = MEMORY[0x277D84F90];
      v27 = v58;
      v28 = *(v58 + 16);
      if (!v28)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v38 = MEMORY[0x277D84F90];
  }

  v30 = *(v57 + 16);
  if (!v30)
  {
    goto LABEL_22;
  }

  v37 = sub_230E4B114(*(v57 + 16), 0);
  v31 = sub_230E67620(v60, v37 + 4, v30, v57);

  sub_230D912FC();
  if (v31 != v30)
  {
    __break(1u);
LABEL_22:
    v37 = MEMORY[0x277D84F90];
  }

  v32 = *(v56 + 16);
  if (!v32)
  {
    v36 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v33 = sub_230E4B114(*(v56 + 16), 0);
  v34 = sub_230E67620(v60, v33 + 4, v32, v56);

  result = sub_230D912FC();
  if (v34 == v32)
  {
    v36 = v33;
LABEL_27:
    LOBYTE(v60[0]) = v54;
    *(v60 + 1) = *v19;
    HIDWORD(v60[0]) = *(v19 + 3);
    v60[1] = v53;
    v60[2] = v52;
    v60[3] = v59;
    v60[4] = v51;
    v60[5] = v50;
    v60[6] = v23;
    v60[7] = v49;
    v60[8] = v48;
    v60[9] = v58;
    v60[10] = v47;
    v60[11] = v46;
    v60[12] = v57;
    v60[13] = v45;
    v60[14] = v55;
    v60[15] = v56;
    result = sub_230E657B4();
    *a2 = a1;
    *(a2 + 8) = v54 & 1;
    *(a2 + 16) = v41;
    *(a2 + 24) = v42;
    *(a2 + 32) = v53;
    *(a2 + 40) = v52;
    *(a2 + 48) = v40;
    *(a2 + 56) = v51;
    *(a2 + 64) = v50;
    *(a2 + 72) = v39;
    *(a2 + 80) = v49;
    *(a2 + 88) = v48;
    *(a2 + 96) = v38;
    *(a2 + 104) = v47;
    *(a2 + 112) = v46;
    *(a2 + 120) = v37;
    *(a2 + 128) = v45;
    *(a2 + 136) = v55;
    *(a2 + 144) = v36;
    *(a2 + 152) = result;
    *(a2 + 160) = v35;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_230E657B4()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[8];
  v3 = v0[9];
  v40 = v0[12];
  v41 = v0[11];
  v42 = v0[14];
  if (v0[2] < 1)
  {
    v10 = MEMORY[0x277D84F90];
    if (v1 < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v5 = v0[3];
  sub_230E69540();

  v6 = sub_230E69890();
  MEMORY[0x23191DA00](v6);

  MEMORY[0x23191DA00](0x2064656C69616620, 0xE900000000000028);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
  sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150);
  sub_230D0D278();
  v7 = sub_230E69180();
  v9 = v8;

  MEMORY[0x23191DA00](v7, v9);

  MEMORY[0x23191DA00](41, 0xE100000000000000);
  v10 = sub_230E49E88(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_230E49E88((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = 0x7365736143657355;
  *(v13 + 5) = 0xEA0000000000203ALL;
  if (v1 >= 1)
  {
LABEL_7:
    sub_230E69540();

    v14 = sub_230E69890();
    MEMORY[0x23191DA00](v14);

    MEMORY[0x23191DA00](0x2064656C69616620, 0xE900000000000028);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
    sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150);
    sub_230D0D278();
    v15 = sub_230E69180();
    v17 = v16;

    MEMORY[0x23191DA00](v15, v17);

    MEMORY[0x23191DA00](41, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_230E49E88(0, *(v10 + 2) + 1, 1, v10);
    }

    v19 = *(v10 + 2);
    v18 = *(v10 + 3);
    if (v19 >= v18 >> 1)
    {
      v10 = sub_230E49E88((v18 > 1), v19 + 1, 1, v10);
    }

    *(v10 + 2) = v19 + 1;
    v20 = &v10[16 * v19];
    *(v20 + 4) = 0x3A676E6967676F4CLL;
    *(v20 + 5) = 0xE900000000000020;
  }

LABEL_12:
  if (v4 >= 1)
  {
    sub_230E69540();

    v21 = sub_230E69890();
    MEMORY[0x23191DA00](v21);

    MEMORY[0x23191DA00](0x2064656C69616620, 0xE900000000000028);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
    sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150);
    sub_230D0D278();
    v22 = sub_230E69180();
    v24 = v23;

    MEMORY[0x23191DA00](v22, v24);

    MEMORY[0x23191DA00](41, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_230E49E88(0, *(v10 + 2) + 1, 1, v10);
    }

    v26 = *(v10 + 2);
    v25 = *(v10 + 3);
    if (v26 >= v25 >> 1)
    {
      v10 = sub_230E49E88((v25 > 1), v26 + 1, 1, v10);
    }

    *(v10 + 2) = v26 + 1;
    v27 = &v10[16 * v26];
    *(v27 + 4) = 0xD000000000000012;
    *(v27 + 5) = 0x8000000230E85280;
  }

  if (v41 >= 1)
  {
    sub_230E69540();

    v28 = sub_230E69890();
    MEMORY[0x23191DA00](v28);

    MEMORY[0x23191DA00](0x2064656C69616620, 0xE900000000000028);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
    sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150);
    sub_230D0D278();
    v29 = sub_230E69180();
    v31 = v30;

    MEMORY[0x23191DA00](v29, v31);

    MEMORY[0x23191DA00](41, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_230E49E88(0, *(v10 + 2) + 1, 1, v10);
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    if (v33 >= v32 >> 1)
    {
      v10 = sub_230E49E88((v32 > 1), v33 + 1, 1, v10);
    }

    *(v10 + 2) = v33 + 1;
    v34 = &v10[16 * v33];
    *(v34 + 4) = 0xD000000000000012;
    *(v34 + 5) = 0x8000000230E85260;
  }

  if (v42 < 1)
  {
    if (!*(v10 + 2))
    {

      return 0x756C696166206F4ELL;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_230E49E88(0, *(v10 + 2) + 1, 1, v10);
    }

    v36 = *(v10 + 2);
    v35 = *(v10 + 3);
    if (v36 >= v35 >> 1)
    {
      v10 = sub_230E49E88((v35 > 1), v36 + 1, 1, v10);
    }

    *(v10 + 2) = v36 + 1;
    v37 = &v10[16 * v36];
    *(v37 + 4) = 0x3A65726F7453564BLL;
    *(v37 + 5) = 0xEF64656C69616620;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D1D1C4(&qword_281565F50, &unk_27DB5D8F0, &unk_230E70E80);
  v38 = sub_230E68FF0();

  return v38;
}

unint64_t static ComponentSyncResult.notApplicable()@<X0>(void *a1@<X8>)
{
  result = sub_230D0F35C(MEMORY[0x277D84F90]);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = result;
  return result;
}

uint64_t ComponentSyncResult.totalCount.getter()
{
  v1 = v0[1];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t static ComponentSyncResult.mixed(successCount:failures:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 16);
  *a3 = a1;
  a3[1] = v3;
  a3[2] = a2;
}

ServicesIntelligence::SystemStatus_optional __swiftcall SystemStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_230E660EC()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230E661AC()
{
  *v0;
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230E66258()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230E66320(uint64_t *a1@<X8>)
{
  v2 = 0xEC000000676E697ALL;
  v3 = 0x696C616974696E69;
  v4 = 0xE800000000000000;
  v5 = 0x6465646172676564;
  if (*v1 != 2)
  {
    v5 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x7964616572;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

ServicesIntelligence::DatabaseType_optional __swiftcall DatabaseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_230E664B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x524F54434556;
  if (v2 != 1)
  {
    v4 = 22091;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 5001555;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x524F54434556;
  if (*a2 != 1)
  {
    v8 = 22091;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 5001555;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230E698C0();
  }

  return v11 & 1;
}

uint64_t sub_230E66594()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230E66620()
{
  *v0;
  *v0;
  sub_230E69100();
}

uint64_t sub_230E66698()
{
  v1 = *v0;
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230E6672C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x524F54434556;
  if (v2 != 1)
  {
    v5 = 22091;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5001555;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_230E66840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000230E85240 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230E698C0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_230E668D4(uint64_t a1)
{
  v2 = sub_230E677E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230E66910(uint64_t a1)
{
  v2 = sub_230E677E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230E6694C(uint64_t a1)
{
  v2 = sub_230E67834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230E66988(uint64_t a1)
{
  v2 = sub_230E67834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SystemDatabaseError.encode(to:)(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D9D0, &qword_230E7F900);
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v19, v5);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D9D8, &qword_230E7F908);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v18 - v12;
  v14 = *v1;
  v18[1] = v1[1];
  v18[2] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E677E0();
  sub_230E69A50();
  sub_230E67834();
  sub_230E697A0();
  v16 = v19;
  sub_230E697B0();
  (*(v3 + 8))(v7, v16);
  return (*(v9 + 8))(v13, v8);
}

uint64_t SystemDatabaseError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D9F0, &qword_230E7F910);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D9F8, &unk_230E7F918);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v31 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E677E0();
  sub_230E69A30();
  if (v2)
  {
    goto LABEL_6;
  }

  v32 = a1;
  v15 = v39;
  v16 = v34;
  v17 = sub_230E69780();
  v18 = (2 * *(v17 + 16)) | 1;
  v35 = v17;
  v36 = v17 + 32;
  v37 = 0;
  v38 = v18;
  v19 = v13;
  if (sub_230D07B64() || v37 != v38 >> 1)
  {
    v20 = sub_230E69580();
    swift_allocError();
    v21 = v9;
    v23 = v22;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950) + 48);
    *v23 = &type metadata for SystemDatabaseError;
    sub_230E696A0();
    sub_230E69570();
    (*(*(v20 - 8) + 104))(v23, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v16 + 8))(v19, v21);
    swift_unknownObjectRelease();
    a1 = v32;
LABEL_6:
    v29 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  sub_230E67834();
  sub_230E69690();
  v26 = sub_230E696B0();
  v28 = v27;
  (*(v15 + 8))(v8, v4);
  (*(v16 + 8))(v19, v9);
  swift_unknownObjectRelease();
  v29 = v32;
  v30 = v33;
  *v33 = v26;
  v30[1] = v28;
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t SystemDatabaseError.errorDescription.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 0xD000000000000026;
  }

  if (v1)
  {
    v3 = v0[1];
  }

  else
  {
    v3 = 0x8000000230E85210;
  }

  MEMORY[0x23191DA00](v2, v3);

  return 0;
}

void *sub_230E6701C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_230E67174(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
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
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_230E672E0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v29 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = (*(a4 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(a4 + 56) + 32 * v18);
      v23 = *v22;
      v24 = v22[1];
      v26 = v22[2];
      v25 = v22[3];
      *v11 = v20;
      v11[1] = v21;
      v11[2] = v23;
      v11[3] = v24;
      v11[4] = v26;
      v11[5] = v25;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 6;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v28 = v12 + 1;
    }

    else
    {
      v28 = v13;
    }

    v12 = v28 - 1;
    v10 = result;
LABEL_23:
    v7 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_230E67470(void *result, void *a2, unint64_t a3, uint64_t a4)
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
LABEL_18:
    v11 = 0;
    a3 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v11;
    v5[4] = v9;
    return a3;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v30 = -1 << *(a4 + 32);
    v31 = a3;
    result = 0;
    v11 = 0;
    v12 = (63 - v7) >> 6;
    v13 = 1;
    while (v9)
    {
LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v11 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = (*(a4 + 56) + 48 * v17);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      v27 = v21[4];
      v26 = v21[5];
      *v10 = v19;
      v10[1] = v20;
      v10[2] = v22;
      v10[3] = v23;
      v10[4] = v24;
      v10[5] = v25;
      v10[6] = v27;
      v10[7] = v26;
      if (v13 == v31)
      {

        v7 = v30;
        a3 = v31;
        goto LABEL_24;
      }

      v10 += 8;

      result = v13;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v14 = v11;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v15 >= v12)
      {
        break;
      }

      v9 = *(v6 + 8 * v15);
      ++v14;
      if (v9)
      {
        v11 = v15;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v12 <= v11 + 1)
    {
      v29 = v11 + 1;
    }

    else
    {
      v29 = v12;
    }

    v11 = v29 - 1;
    a3 = result;
    v7 = v30;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_230E67620(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_230E67778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D808, &qword_230E7F188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230E677E0()
{
  result = qword_27DB5D9E0;
  if (!qword_27DB5D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D9E0);
  }

  return result;
}

unint64_t sub_230E67834()
{
  result = qword_27DB5D9E8;
  if (!qword_27DB5D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D9E8);
  }

  return result;
}

unint64_t sub_230E6788C()
{
  result = qword_27DB5DA00;
  if (!qword_27DB5DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA00);
  }

  return result;
}

unint64_t sub_230E67928()
{
  result = qword_27DB5DA18;
  if (!qword_27DB5DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA18);
  }

  return result;
}

unint64_t sub_230E679E4()
{
  result = qword_27DB5DA20;
  if (!qword_27DB5DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA20);
  }

  return result;
}

unint64_t sub_230E67A3C()
{
  result = qword_27DB5DA28;
  if (!qword_27DB5DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA28);
  }

  return result;
}

unint64_t sub_230E67A94()
{
  result = qword_27DB5DA30;
  if (!qword_27DB5DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA30);
  }

  return result;
}

unint64_t sub_230E67AEC()
{
  result = qword_27DB5DA38;
  if (!qword_27DB5DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA38);
  }

  return result;
}

unint64_t sub_230E67B44()
{
  result = qword_27DB5DA40;
  if (!qword_27DB5DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA40);
  }

  return result;
}

unint64_t sub_230E67B9C()
{
  result = qword_27DB5DA48;
  if (!qword_27DB5DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA48);
  }

  return result;
}

unint64_t sub_230E67BF0()
{
  result = qword_27DB5DA50;
  if (!qword_27DB5DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA50);
  }

  return result;
}

unint64_t sub_230E67C44()
{
  result = qword_27DB5DA58;
  if (!qword_27DB5DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA58);
  }

  return result;
}

unint64_t sub_230E67C98@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (!*(result + 16))
  {
    goto LABEL_28;
  }

  v3 = result;
  result = sub_230DA41A0(0x696669746E656469, 0xEA00000000007265);
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  if (v10)
  {
    v11 = *(v3 + 56) + 24 * result;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16) != 3 || *(v11 + 8) >> 64 == 0;
    if (!v13 && *(v3 + 16))
    {
      v47 = *v11;

      v14 = sub_230DA41A0(0x6E69616D6F64, 0xE600000000000000);
      if (v15)
      {
        v16 = *(v3 + 56) + 24 * v14;
        v17 = v47;
        if (*(v16 + 16) != 3)
        {
LABEL_25:
          v32 = v17;
          v33 = v12;
          goto LABEL_26;
        }

        v18 = *(v16 + 8);
        if (v18)
        {
          if (*(v3 + 16))
          {
            v46 = *v16;

            v19 = sub_230DA41A0(0x6573616261746164, 0xEC00000065707954);
            if (v20)
            {
              v21 = *(v3 + 56) + 24 * v19;
              if (*(v21 + 16) == 3)
              {
                v22 = *(v21 + 8);
                if (!v22)
                {
                  sub_230D0DCD8(*v21, 0, 3);
LABEL_34:
                  sub_230D0F474(v46, v18, 3);
                  goto LABEL_24;
                }

                if (!*(v3 + 16))
                {
                  v36 = *v21;
                  sub_230D0DCD8(*v21, v22, 3);
                  sub_230D0F474(v47, v12, 3);
                  sub_230D0F474(v46, v18, 3);
                  v32 = v36;
                  v33 = v22;
                  goto LABEL_26;
                }

                v45 = *v21;

                v23 = sub_230DA41A0(1701667182, 0xE400000000000000);
                if (v24)
                {
                  v25 = *(v3 + 56) + 24 * v23;
                  v26 = v47;
                  if (*(v25 + 16) == 3)
                  {
                    v27 = *v25;
                    v28 = *(v25 + 8);
                    if (!v28)
                    {
                      sub_230D0DCD8(*v25, 0, 3);
LABEL_39:
                      sub_230D0F474(v45, v22, 3);
                      goto LABEL_34;
                    }

                    v44 = *v25;
                    if (!*(v3 + 16))
                    {
                      sub_230D0DCD8(v44, v28, 3);
                      sub_230D0F474(v47, v12, 3);
                      sub_230D0F474(v46, v18, 3);
                      sub_230D0F474(v45, v22, 3);
                      v32 = v44;
                      v33 = v28;
                      goto LABEL_26;
                    }

                    v43 = *(v25 + 8);

                    v29 = sub_230DA41A0(0x6144616D65686373, 0xEA00000000006174);
                    if ((v30 & 1) == 0)
                    {
                      goto LABEL_22;
                    }

                    v31 = *(v3 + 56) + 24 * v29;
                    if (*(v31 + 16))
                    {
                      goto LABEL_22;
                    }

                    v42 = *v31;
                    v37 = *(v31 + 8);
                    if (v37 >> 60 == 15)
                    {
                      sub_230D0DCD8(v42, *(&v42 + 1), 0);
LABEL_43:
                      sub_230D0F474(v44, v43, 3);
                      goto LABEL_39;
                    }

                    if (*(v3 + 16))
                    {
                      sub_230D0DCF8(v42, *(&v42 + 1));
                      v38 = sub_230DA41A0(0x737574617473, 0xE600000000000000);
                      if (v39)
                      {
                        v40 = *(v3 + 56) + 24 * v38;
                        if (*(v40 + 16) != 3)
                        {
                          sub_230D0F474(v42, v37, 0);
LABEL_22:
                          sub_230D0F474(v47, v12, 3);
                          sub_230D0F474(v46, v18, 3);
                          sub_230D0F474(v45, v22, 3);
                          v32 = v44;
                          v33 = v43;
LABEL_26:
                          v34 = 3;
LABEL_27:
                          result = sub_230D0F474(v32, v33, v34);
LABEL_28:
                          v4 = 0uLL;
                          v5 = 0uLL;
                          v6 = 0uLL;
                          v7 = 0uLL;
                          v8 = 0uLL;
                          v9 = 0uLL;
                          goto LABEL_29;
                        }

                        v41 = *v40;
                        if (*(v40 + 8))
                        {

                          v4 = v47;
                          v6 = v45;
                          v5 = v46;
                          v7 = v44;
                          v9 = v41;
                          v8 = v42;
                          goto LABEL_29;
                        }

                        sub_230D0DCD8(v41, 0, 3);
                        sub_230D0F474(v42, v37, 0);
                        goto LABEL_43;
                      }
                    }

                    else
                    {
                      sub_230D0DCD8(v42, *(&v42 + 1), 0);
                    }

                    sub_230D0F474(v47, v12, 3);
                    sub_230D0F474(v46, v18, 3);
                    sub_230D0F474(v45, v22, 3);
                    sub_230D0F474(v44, v43, 3);
                    v32 = v42;
                    v33 = v37;
                    v34 = 0;
                    goto LABEL_27;
                  }
                }

                else
                {
                  v26 = v47;
                }

                sub_230D0F474(v26, v12, 3);
                sub_230D0F474(v46, v18, 3);
                v32 = v45;
                v33 = v22;
                goto LABEL_26;
              }

              v35 = v47;
            }

            else
            {
              v35 = v47;
            }

            sub_230D0F474(v35, v12, 3);
            v32 = v46;
            v33 = v18;
            goto LABEL_26;
          }
        }

        else
        {
          sub_230D0DCD8(*v16, 0, 3);
        }
      }

LABEL_24:
      v17 = v47;
      goto LABEL_25;
    }
  }

LABEL_29:
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_230E68200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_230E68248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for DatabaseCreationResult()
{
  result = qword_27DB5DA60;
  if (!qword_27DB5DA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_230E68314()
{
  sub_230E683C0(319, &qword_27DB5DA70, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_230E683C0(319, &qword_27DB5DA78, sub_230E6840C);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_230E683C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_230E6840C()
{
  result = qword_27DB5DA80;
  if (!qword_27DB5DA80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DB5DA80);
  }

  return result;
}

uint64_t sub_230E68478(uint64_t a1, unint64_t a2)
{
  result = sub_230DA3484();
  if ((result & 1) == 0)
  {
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v5 = sub_230E68D80();
    __swift_project_value_buffer(v5, qword_27DB80BC0);

    v6 = sub_230E68D60();
    v7 = sub_230E69400();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_230D7E620(a1, a2, &v11);
      _os_log_impl(&dword_230D02000, v6, v7, "[SystemDatabase][%s] Write access denied - only SID may modify system database", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x23191EAE0](v9, -1, -1);
      MEMORY[0x23191EAE0](v8, -1, -1);
    }

    sub_230D0D224();
    swift_allocError();
    *v10 = 0xD000000000000032;
    *(v10 + 8) = 0x8000000230E852A0;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_230E68628()
{
  v0 = sub_230E68D80();
  __swift_allocate_value_buffer(v0, qword_27DB80BC0);
  __swift_project_value_buffer(v0, qword_27DB80BC0);
  return sub_230E68D70();
}