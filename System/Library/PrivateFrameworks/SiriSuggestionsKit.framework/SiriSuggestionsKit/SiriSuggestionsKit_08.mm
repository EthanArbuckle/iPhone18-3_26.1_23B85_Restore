uint64_t sub_1BF954544(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  return sub_1BF95293C(a1, *(v1 + 40));
}

uint64_t sub_1BF954554(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1BF8F0EF8;

  return sub_1BF9531B0(a1, a2, v7);
}

uint64_t sub_1BF954618()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1BF8EFA40;

  return sub_1BF953A38(v3, v7);
}

_BYTE *sub_1BF9546FC(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF9547A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 16);
  result = sub_1BF9512EC(a1, v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_1BF9547E8()
{
  result = qword_1EDBF5668;
  if (!qword_1EDBF5668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBF5668);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_29_5(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6E7F8](a1, a2, v2, v5, v4, v3, v6);
}

uint64_t OUTLINED_FUNCTION_38_6(uint64_t a1, uint64_t a2)
{
  v6 = *(v4 - 96);
  v7 = *(v4 - 88);
  v8 = *(v4 - 68);

  return MEMORY[0x1EEE6E7F8](a1, a2, v2, v6, v7, v8, v3);
}

void OUTLINED_FUNCTION_44_6(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;

  JUMPOUT(0x1BFB5DE90);
}

uint64_t DialogParameterTransformer.__allocating_init(delegate:dialogProvider:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1BF8C2C9C(a1, v4 + 16);
  sub_1BF8C2C9C(a2, v4 + 56);
  return v4;
}

uint64_t DialogParameterTransformer.init(delegate:dialogProvider:)(__int128 *a1, __int128 *a2)
{
  sub_1BF8C2C9C(a1, v2 + 16);
  sub_1BF8C2C9C(a2, v2 + 56);
  return v2;
}

uint64_t DialogParameterTransformer.globals.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t DialogParameterTransformer.getParameters()()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 16))(v2, v3);

  v5 = sub_1BF954BB4(v4, v1);

  return v5;
}

uint64_t DialogParameterTransformer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t DialogParameterTransformer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1BF954BB4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9770, &qword_1BF9C2940);
  result = sub_1BF9B5458();
  v4 = result;
  v5 = 0;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v28 = result + 64;
  v26 = a1;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v29 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = *(a1 + 56);
      v16 = (*(a1 + 48) + 16 * v14);
      v17 = v16[1];
      v37 = *v16;
      sub_1BF8C187C(v15 + 32 * v14, v36);
      sub_1BF8C187C(v36, v32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CB8, &qword_1BF9C2948);
      if (swift_dynamicCast())
      {
        sub_1BF8C2C9C(v30, v33);
        v19 = v34;
        v18 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v20 = *(v18 + 8);
        v21 = v18;
        a1 = v26;
        v20(v30, a2 + 56, v19, v21);
        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      else
      {
        v31 = 0;
        memset(v30, 0, sizeof(v30));
        sub_1BF954E90(v30);
        sub_1BF8C187C(v36, v30);
      }

      __swift_destroy_boxed_opaque_existential_1(v36);
      *(v28 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v22 = (v4[6] + 16 * v14);
      *v22 = v37;
      v22[1] = v17;
      result = sub_1BF8C192C(v30, (v4[7] + 32 * v14));
      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v4[2] = v25;
      v9 = v29;
      if (!v29)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        return v4;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF954E90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CC0, &qword_1BF9C2950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF954EF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v30 = MEMORY[0x1E69E7CC0];
    v28 = *(a1 + 16);
    sub_1BF8D06E8();
    v2 = sub_1BF95FA38(a1);
    v4 = v28;
    v3 = a1;
    v6 = v5;
    v7 = 0;
    v8 = a1 + 64;
    v9 = v5;
    v27 = v5;
    while ((v2 & 0x8000000000000000) == 0 && v2 < 1 << *(v3 + 32))
    {
      v10 = v2 >> 6;
      if ((*(v8 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v3 + 36) != v6)
      {
        goto LABEL_23;
      }

      v11 = *(v3 + 48) + 24 * v2;
      v12 = *v11;
      v13 = *(*(v3 + 56) + 8 * v2);
      v14 = *(v11 + 8);
      v15 = *(v30 + 16);
      if (v15 >= *(v30 + 24) >> 1)
      {
        v26 = v1;
        v25 = *(v11 + 8);
        sub_1BF8D06E8();
        v14 = v25;
        v1 = v26;
        v9 = v27;
        v8 = a1 + 64;
        v4 = v28;
        v3 = a1;
      }

      *(v30 + 16) = v15 + 1;
      v16 = v30 + 32 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      *(v16 + 56) = v13;
      v17 = 1 << *(v3 + 32);
      if (v2 >= v17)
      {
        goto LABEL_24;
      }

      v18 = *(v8 + 8 * v10);
      if ((v18 & (1 << v2)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v3 + 36) != v6)
      {
        goto LABEL_26;
      }

      v19 = v18 & (-2 << (v2 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v2 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (a1 + 72 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1BF90E758(v2, v6, v1 & 1);
            v9 = v27;
            v8 = a1 + 64;
            v4 = v28;
            v3 = a1;
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        sub_1BF90E758(v2, v6, v1 & 1);
        v9 = v27;
        v8 = a1 + 64;
        v4 = v28;
        v3 = a1;
      }

LABEL_19:
      v1 = 0;
      ++v7;
      v2 = v17;
      v6 = v9;
      if (v7 == v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1BF955170(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1BF9B5478();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v10 = v7;
  a4(a1, 1, &v10);
  v8 = v10;
  if (v4)
  {
  }

  return v8;
}

uint64_t static UserDefaultsProviders.getSuggestionsUserDefaultsProvider()()
{
  if (qword_1EDBF5838 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BF955274()
{
  type metadata accessor for UserDefaultsDomainProvider();
  v0 = swift_allocObject();
  v0[2] = 0xD00000000000001ELL;
  v0[3] = 0x80000001BF9CCA90;
  v0[4] = 15;
  type metadata accessor for SuggestionsUserDefaultsProvider();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1EDBF56F8 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for UserDefaultsProviders(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF955548()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF9555A4()
{
  v2 = v0;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v3 = OUTLINED_FUNCTION_25_9();
  v4 = OUTLINED_FUNCTION_52_4();
  v6 = [v4 v5];

  if (v6)
  {
    v7 = sub_1BF9B4968();

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v8 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v8, qword_1EDBF5570);

    v9 = sub_1BF9B47A8();
    v10 = sub_1BF9B5038();

    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_109();
      v11 = OUTLINED_FUNCTION_39_0();
      v28 = v11;
      *v2 = 136315138;
      v12 = sub_1BF9B4978();
      v14 = sub_1BF8DE810(v12, v13, &v28);

      *(v2 + 4) = v14;
      OUTLINED_FUNCTION_108_1(&dword_1BF8B8000, v15, v16, "getAllUserDefaults - %s");
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_31_11();
    }

    return v7;
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v18 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v18, qword_1EDBF5570);

    v19 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_109();
      v28 = OUTLINED_FUNCTION_39_0();
      *v2 = 136315138;
      v20 = OUTLINED_FUNCTION_36();
      *(v2 + 4) = sub_1BF8DE810(v20, v21, v22);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_31_11();
    }

    return sub_1BF9B4988();
  }
}

void sub_1BF955838()
{
  v2 = v0;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v3 = OUTLINED_FUNCTION_25_9();
  v4 = OUTLINED_FUNCTION_52_4();
  v6 = [v4 v5];

  if (!v6)
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v28 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v28, qword_1EDBF5570);

    v29 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_109();
      *&v52 = OUTLINED_FUNCTION_39_0();
      *v2 = 136315138;
      v30 = OUTLINED_FUNCTION_36();
      *(v2 + 4) = sub_1BF8DE810(v30, v31, v32);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_31_11();
    }

    sub_1BF95DD24();
    OUTLINED_FUNCTION_110_0();

    sub_1BF9B4988();
    return;
  }

  OUTLINED_FUNCTION_82_2();

  OUTLINED_FUNCTION_81_1(16, 0x80000001BF9CCFE0, &v52);

  if (!v53[1])
  {
    sub_1BF8DFBF0(&v52, &qword_1EBDE9208, &unk_1BF9C2A50);
LABEL_25:
    if (qword_1EDBF5568 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CF8, &unk_1BF9C2AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v7 = 1 << *(v48 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v48 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_11:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v48 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1BF8C187C(*(v48 + 56) + 32 * v14, v53);
    *&v52 = v16;
    *(&v52 + 1) = v17;

    v18 = OUTLINED_FUNCTION_37_6();
    sub_1BF955CC4(v18, v19, v20, v21);
    sub_1BF8DFBF0(&v52, &unk_1EBDE9600, &qword_1BF9C9160);
    if (v48 != 6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v47 + 16);
        sub_1BF8DE104();
        v47 = v26;
      }

      v22 = *(v47 + 16);
      v23 = v22 + 1;
      if (v22 >= *(v47 + 24) >> 1)
      {
        sub_1BF8DE104();
        v23 = v22 + 1;
        v47 = v27;
      }

      *(v47 + 16) = v23;
      v24 = v47 + 32 * v22;
      *(v24 + 32) = v48;
      *(v24 + 40) = v49;
      *(v24 + 48) = v50;
      *(v24 + 56) = v51;
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

      sub_1BF955170(v47, &qword_1EBDE9D00, &qword_1BF9C2AB0, sub_1BF95B210);
      goto LABEL_30;
    }

    v9 = *(v48 + 64 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  OUTLINED_FUNCTION_43_0();
LABEL_26:
  v39 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v39, qword_1EDBF5570);
  v40 = sub_1BF9B47A8();
  v41 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_55_5(v41))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_27_6();
    _os_log_impl(v42, v43, v44, v45, v46, 2u);
    OUTLINED_FUNCTION_54();
  }

  sub_1BF95DD24();
  sub_1BF9B4988();
LABEL_30:
  OUTLINED_FUNCTION_110_0();
}

void sub_1BF955CC4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  sub_1BF955FE0(&v26);
  if (v27)
  {
    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF9B47C8();
    __swift_project_value_buffer(v8, qword_1EDBF5570);

    v9 = sub_1BF9B47A8();
    v10 = sub_1BF9B5048();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v26 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1BF8DE810(a1, a2, &v26);
    _os_log_impl(&dword_1BF8B8000, v9, v10, "Invalid OS version '%s'", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFB5F320](v12, -1, -1);
    v13 = v11;
  }

  else
  {
    v23 = v26;
    sub_1BF8C187C(a3, &v26);
    if (swift_dynamicCast())
    {
      v14 = v24[0];
      *a4 = 0;
      *(a4 + 8) = v23;
      *(a4 + 24) = v14;
      return;
    }

    if (qword_1EDBF5568 != -1)
    {
      swift_once();
    }

    v15 = sub_1BF9B47C8();
    __swift_project_value_buffer(v15, qword_1EDBF5570);
    sub_1BF8C187C(a3, &v26);
    v9 = sub_1BF9B47A8();
    v16 = sub_1BF9B5048();
    if (!os_log_type_enabled(v9, v16))
    {

      __swift_destroy_boxed_opaque_existential_1(&v26);
      goto LABEL_14;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    sub_1BF8C187C(&v26, v24);
    v19 = sub_1BF9B4B08();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_1(&v26);
    v22 = sub_1BF8DE810(v19, v21, &v25);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1BF8B8000, v9, v16, "Invalid timestamp '%s'", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFB5F320](v18, -1, -1);
    v13 = v17;
  }

  MEMORY[0x1BFB5F320](v13, -1, -1);
LABEL_13:

LABEL_14:
  *a4 = 6;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
}

uint64_t sub_1BF955FE0@<X0>(uint64_t a1@<X8>)
{
  sub_1BF904C28();
  v2 = sub_1BF9B51A8();

  if (v2[2] != 2 || !((v2[5] ^ v2[4]) >> 14))
  {
    goto LABEL_7;
  }

  v4 = v2[6];
  v3 = v2[7];
  v5 = OUTLINED_FUNCTION_37_6();
  v7 = sub_1BF95DD78(v5, v6, v4, v3, 10);
  if ((v8 & 0x100) != 0)
  {

    v10 = OUTLINED_FUNCTION_37_6();
    v9 = sub_1BF95D2D4(v10, v11, v4, v3, 10);
    v13 = v12;

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v8)
    {
      goto LABEL_7;
    }

    v9 = v7;
  }

  if (v2[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = v2[8];
  v16 = v2[9];
  v18 = v2[10];
  v17 = v2[11];

  if (!((v16 ^ v15) >> 14))
  {
LABEL_7:

    goto LABEL_8;
  }

  v19 = OUTLINED_FUNCTION_88_1();
  v24 = sub_1BF95DD78(v19, v20, v21, v22, v23);
  if ((v25 & 0x100) != 0)
  {
    v26 = OUTLINED_FUNCTION_88_1();
    v24 = sub_1BF95D2D4(v26, v27, v28, v29, v30);
  }

  v31 = v24;
  v32 = v25;

  if ((v32 & 1) == 0)
  {
    *a1 = v9;
    *(a1 + 8) = v31;
    *(a1 + 16) = 0;
    return result;
  }

LABEL_8:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

void sub_1BF956158(uint64_t a1)
{
  v1 = a1;
  sub_1BF954EF8(a1);
  v3 = v2;
  if (qword_1EDBF5568 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v4 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v4, qword_1EDBF5570);
    v5 = sub_1BF9B47A8();
    v6 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_95(v6))
    {
      v7 = OUTLINED_FUNCTION_109();
      v8 = OUTLINED_FUNCTION_35_4();
      *&v53 = v8;
      *v7 = 136315138;

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CD0, &qword_1BF9C2A68);
      v10 = MEMORY[0x1BFB5E030](v3, v9);
      v12 = v11;
      v13 = v3;

      v14 = sub_1BF8DE810(v10, v12, &v53);

      *(v7 + 4) = v14;
      _os_log_impl(&dword_1BF8B8000, v5, v6, "Persisting %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    else
    {
      v13 = v3;
    }

    v15 = *(v1 + 16);

    if (v15 < 0x10)
    {
      v24 = v13;
      goto LABEL_23;
    }

    v16 = v13;
    v1 = v13[2];
    v17 = MEMORY[0x1E69E7CC0];
    if (v1)
    {
      *&v53 = MEMORY[0x1E69E7CC0];

      sub_1BF8D06E8();
      v3 = 0;
      v17 = v53;
      v18 = v13 + 7;
      while (v3 < v16[2])
      {
        v19 = *(v18 - 24);
        v20 = *(v18 - 1);
        v21 = *v18;
        *&v53 = v17;
        v22 = *(v17 + 16);
        if (v22 >= *(v17 + 24) >> 1)
        {
          v50 = v20;
          sub_1BF8D06E8();
          v20 = v50;
          v17 = v53;
        }

        *(v17 + 16) = v22 + 1;
        v23 = v17 + 32 * v22;
        *(v23 + 32) = v19;
        v3 = (v3 + 1);
        *(v23 + 40) = v20;
        *(v23 + 56) = v21;
        v18 += 4;
        if (v1 == v3)
        {

          goto LABEL_14;
        }
      }

      goto LABEL_32;
    }

LABEL_14:
    *&v53 = v17;

    sub_1BF95A6C0(&v53);

    v25 = sub_1BF956718(0, 15, v53);
    v1 = v26;
    v28 = v27;
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_15;
    }

    sub_1BF9B5708();
    swift_unknownObjectRetain_n();
    v32 = swift_dynamicCastClass();
    if (!v32)
    {
      swift_unknownObjectRelease();
      v32 = MEMORY[0x1E69E7CC0];
    }

    v33 = *(v32 + 16);

    if (__OFSUB__(v30 >> 1, v28))
    {
      __break(1u);
LABEL_35:
      swift_unknownObjectRelease_n();
LABEL_15:
      sub_1BF959104(v25, v1, v28, v30);
      v24 = v31;

      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    if (v33 != (v30 >> 1) - v28)
    {
      goto LABEL_35;
    }

    v24 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v24)
    {
      swift_unknownObjectRelease();
      v24 = MEMORY[0x1E69E7CC0];
    }

LABEL_23:
    v34 = *(v24 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    if (!v34)
    {
      break;
    }

    *&v52[0] = MEMORY[0x1E69E7CC0];

    sub_1BF8D06C8();
    v36 = 0;
    v35 = *&v52[0];
    v3 = (v24 + 56);
    while (v36 < *(v24 + 16))
    {
      v37 = *(v3 - 1);
      v38 = *v3;
      v55 = *(v3 - 2);
      *&v53 = sub_1BF9B5668();
      *(&v53 + 1) = v39;
      MEMORY[0x1BFB5DE90](46, 0xE100000000000000);
      v55 = v37;
      v40 = sub_1BF9B5668();
      MEMORY[0x1BFB5DE90](v40);

      v41 = v53;
      *&v52[0] = v35;
      v1 = *(v35 + 16);
      if (v1 >= *(v35 + 24) >> 1)
      {
        sub_1BF8D06C8();
        v35 = *&v52[0];
      }

      ++v36;
      *(v35 + 16) = v1 + 1;
      v42 = v35 + 24 * v1;
      *(v42 + 32) = v41;
      *(v42 + 48) = v38;
      v3 += 4;
      if (v34 == v36)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_43_0();
  }

LABEL_30:
  v43 = sub_1BF955170(v35, &qword_1EBDE9CD8, &unk_1BF9C2A80, sub_1BF95B3D4);
  v44 = sub_1BF9555A4();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CC8, &qword_1BF9C2A60);
  *&v53 = v43;
  OUTLINED_FUNCTION_113_0(&v53, v52);
  v55 = v44;
  sub_1BF9363E4(v52, 0xD000000000000010, 0x80000001BF9CCFE0);
  v45 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  OUTLINED_FUNCTION_86_2();
  v46 = sub_1BF9B4958();

  v47 = *(v51 + 16);
  v48 = *(v51 + 24);
  v49 = sub_1BF9B4A98();
  [v45 setPersistentDomain:v46 forName:v49];
}

unint64_t sub_1BF956718(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1BF956784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_111_0();
  a21 = v24;
  a22 = v25;
  v26 = v22;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v27 = OUTLINED_FUNCTION_25_9();
  v28 = OUTLINED_FUNCTION_52_4();
  v30 = [v28 v29];

  if (v30)
  {
    v31 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_82_2();

    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_81_1(32, v32, v33);

    if (a14)
    {
      if (OUTLINED_FUNCTION_56_5())
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1BF8DFBF0(&a11, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v43 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v43, qword_1EDBF5570);
    v44 = sub_1BF9B47A8();
    v45 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_55_5(v45))
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_44_7(4.8149e-34);
      *(v31 + 4) = sub_1BF8DE810(0xD000000000000020, v46, v47);
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v34 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v34, qword_1EDBF5570);

    v35 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_62_5();
      *(v26 + 4) = OUTLINED_FUNCTION_29_6(4.8149e-34, v36, v37);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_31_11();
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_105_1();
}

void sub_1BF9569B0(double a1)
{
  v2 = v1;
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v4 = sub_1BF9B47C8();
  __swift_project_value_buffer(v4, qword_1EDBF5570);
  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_95(v6))
  {
    v7 = OUTLINED_FUNCTION_109();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    OUTLINED_FUNCTION_73_2(&dword_1BF8B8000, v8, v6, "setting new bookmark value as %f");
    OUTLINED_FUNCTION_87();
  }

  sub_1BF9555A4();
  v25 = MEMORY[0x1E69E63B0];
  v24[0] = a1;
  OUTLINED_FUNCTION_113_0(v24, &v23);
  OUTLINED_FUNCTION_46_3();
  sub_1BF9363E4(v9, 0xD000000000000020, 0x80000001BF9CCFB0);
  v10 = sub_1BF9B47A8();
  v11 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_95(v11))
  {
    v12 = OUTLINED_FUNCTION_109();
    *&v24[0] = OUTLINED_FUNCTION_35_4();
    *v12 = 136315138;

    sub_1BF9B4978();

    v13 = OUTLINED_FUNCTION_72_3();
    v16 = sub_1BF8DE810(v13, v14, v15);

    *(v12 + 4) = v16;
    OUTLINED_FUNCTION_73_2(&dword_1BF8B8000, v17, v11, "attempting to save allValues - %s");
    OUTLINED_FUNCTION_14_10();
    OUTLINED_FUNCTION_87();
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];

  v19 = sub_1BF9B4958();

  v20 = *(v2 + 16);
  v21 = *(v2 + 24);
  v22 = sub_1BF9B4A98();
  [v18 setPersistentDomain:v19 forName:v22];
}

void sub_1BF956C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_111_0();
  a21 = v24;
  a22 = v25;
  v26 = v22;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v27 = OUTLINED_FUNCTION_25_9();
  v28 = OUTLINED_FUNCTION_52_4();
  v30 = [v28 v29];

  if (v30)
  {
    v31 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_82_2();

    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_81_1(20, v32, v33);

    if (a14)
    {
      if (OUTLINED_FUNCTION_56_5())
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1BF8DFBF0(&a11, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v43 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v43, qword_1EDBF5570);
    v44 = sub_1BF9B47A8();
    v45 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_55_5(v45))
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_44_7(4.8149e-34);
      *(v31 + 4) = sub_1BF8DE810(0xD000000000000014, v46, v47);
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v34 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v34, qword_1EDBF5570);

    v35 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_62_5();
      *(v26 + 4) = OUTLINED_FUNCTION_29_6(4.8149e-34, v36, v37);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_31_11();
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_105_1();
}

void sub_1BF956E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_111_0();
  a21 = v24;
  a22 = v25;
  v26 = v22;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v27 = OUTLINED_FUNCTION_25_9();
  v28 = OUTLINED_FUNCTION_52_4();
  v30 = [v28 v29];

  if (!v30)
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v35 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v35, qword_1EDBF5570);

    v36 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (!OUTLINED_FUNCTION_75_3())
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_62_5();
    *(v26 + 4) = OUTLINED_FUNCTION_29_6(4.8149e-34, v37, v38);
    OUTLINED_FUNCTION_20_13();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    OUTLINED_FUNCTION_14_10();
    goto LABEL_14;
  }

  v31 = sub_1BF9B4968();

  v32 = OUTLINED_FUNCTION_88();
  sub_1BF925088(v32, v33, v31, v34);

  if (a14)
  {
    if (swift_dynamicCast())
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1BF8DFBF0(&a11, &qword_1EBDE9208, &unk_1BF9C2A50);
  }

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v44 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v44, qword_1EDBF5570);
  v36 = sub_1BF9B47A8();
  v45 = sub_1BF9B5038();
  if (OUTLINED_FUNCTION_95(v45))
  {
    v46 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_62_5();
    *v46 = 136315138;
    v47 = OUTLINED_FUNCTION_88();
    *(v46 + 4) = sub_1BF8DE810(v47, v48, v49);
    OUTLINED_FUNCTION_73_2(&dword_1BF8B8000, v50, v45, "'%s' is not set or cannot be converted to BOOL value. Returning false by default");
    OUTLINED_FUNCTION_14_10();
LABEL_14:
    OUTLINED_FUNCTION_87();
  }

LABEL_15:

LABEL_16:
  OUTLINED_FUNCTION_105_1();
}

void sub_1BF9570A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_111_0();
  a21 = v24;
  a22 = v25;
  v26 = v22;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v27 = OUTLINED_FUNCTION_25_9();
  v28 = OUTLINED_FUNCTION_52_4();
  v30 = [v28 v29];

  if (v30)
  {
    v31 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_82_2();

    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_81_1(25, v32, v33);

    if (a14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CC8, &qword_1BF9C2A60);
      if (OUTLINED_FUNCTION_56_5())
      {
LABEL_18:
        OUTLINED_FUNCTION_105_1();
        return;
      }
    }

    else
    {
      sub_1BF8DFBF0(&a11, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v44 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v44, qword_1EDBF5570);
    v45 = sub_1BF9B47A8();
    v46 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_55_5(v46))
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_44_7(4.8149e-34);
      *(v31 + 4) = sub_1BF8DE810(0xD000000000000019, v47, v48);
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_54();
    }

    sub_1BF9B4988();
    goto LABEL_18;
  }

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v34 = sub_1BF9B47C8();
  OUTLINED_FUNCTION_49_3(v34, qword_1EDBF5570);

  v35 = sub_1BF9B47A8();
  sub_1BF9B5038();
  OUTLINED_FUNCTION_76_3();
  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_62_5();
    *(v26 + 4) = OUTLINED_FUNCTION_29_6(4.8149e-34, v36, v37);
    OUTLINED_FUNCTION_20_13();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    OUTLINED_FUNCTION_14_10();
    OUTLINED_FUNCTION_31_11();
  }

  OUTLINED_FUNCTION_105_1();

  sub_1BF9B4988();
}

void sub_1BF957344(uint64_t a1)
{
  sub_1BF9555A4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CC8, &qword_1BF9C2A60);
  *&v10 = a1;
  OUTLINED_FUNCTION_113_0(&v10, &v9);
  OUTLINED_FUNCTION_46_3();
  sub_1BF9363E4(v3, 0xD000000000000019, 0x80000001BF9CCF70);
  v4 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  OUTLINED_FUNCTION_86_2();
  v5 = sub_1BF9B4958();

  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = sub_1BF9B4A98();
  OUTLINED_FUNCTION_92_1(v8, sel_setPersistentDomain_forName_);
}

void sub_1BF95743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_111_0();
  a21 = v24;
  a22 = v25;
  v26 = v22;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v27 = OUTLINED_FUNCTION_25_9();
  v28 = OUTLINED_FUNCTION_52_4();
  v30 = [v28 v29];

  if (v30)
  {
    v31 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_82_2();

    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_81_1(19, v32, v33);

    if (a14)
    {
      if (OUTLINED_FUNCTION_56_5())
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1BF8DFBF0(&a11, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v43 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v43, qword_1EDBF5570);
    v44 = sub_1BF9B47A8();
    v45 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_55_5(v45))
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_44_7(4.8149e-34);
      *(v31 + 4) = sub_1BF8DE810(0xD000000000000013, v46, v47);
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v34 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v34, qword_1EDBF5570);

    v35 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_62_5();
      *(v26 + 4) = OUTLINED_FUNCTION_29_6(4.8149e-34, v36, v37);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_31_11();
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_105_1();
}

void sub_1BF95766C(uint64_t a1, uint64_t a2)
{
  sub_1BF9555A4();
  v13 = MEMORY[0x1E69E6158];
  *&v12 = a1;
  *(&v12 + 1) = a2;
  OUTLINED_FUNCTION_113_0(&v12, &v11);
  OUTLINED_FUNCTION_46_3();
  sub_1BF9363E4(v5, 0xD000000000000013, 0x80000001BF9CCEF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  OUTLINED_FUNCTION_86_2();
  v7 = sub_1BF9B4958();

  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = sub_1BF9B4A98();
  OUTLINED_FUNCTION_92_1(v10, sel_setPersistentDomain_forName_);
}

void sub_1BF957760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_111_0();
  a21 = v23;
  a22 = v24;
  [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v25 = OUTLINED_FUNCTION_25_9();
  v26 = OUTLINED_FUNCTION_52_4();
  v28 = [v26 v27];

  if (v28)
  {
    v29 = MEMORY[0x1E69E7CA0];
    OUTLINED_FUNCTION_82_2();

    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_81_1(30, v30, v31);

    if (a14)
    {
      if (OUTLINED_FUNCTION_56_5())
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1BF8DFBF0(&a11, &qword_1EBDE9208, &unk_1BF9C2A50);
    }

    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v42 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v42, qword_1EDBF5570);
    v43 = sub_1BF9B47A8();
    v44 = sub_1BF9B5038();
    if (OUTLINED_FUNCTION_55_5(v44))
    {
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_74_1();
      OUTLINED_FUNCTION_44_7(4.8149e-34);
      *(v29 + 4) = sub_1BF8DE810(0xD00000000000001ELL, v45, v46);
      OUTLINED_FUNCTION_27_6();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v32 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v32, qword_1EDBF5570);

    v33 = sub_1BF9B47A8();
    sub_1BF9B5038();
    OUTLINED_FUNCTION_76_3();
    if (OUTLINED_FUNCTION_75_3())
    {
      v34 = swift_slowAlloc();
      swift_slowAlloc();
      OUTLINED_FUNCTION_62_5();
      *(v34 + 4) = OUTLINED_FUNCTION_29_6(4.8151e-34, v35, v36);
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_1BF8DE810(0xD00000000000001ELL, 0x80000001BF9CCF50, &a11);
      OUTLINED_FUNCTION_20_13();
      _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_31_11();
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_105_1();
}

uint64_t sub_1BF957B74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A50, &unk_1BF9C1478);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v34 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  OUTLINED_FUNCTION_22_0();
  v11 = sub_1BF9B4A98();
  v12 = [v8 persistentDomainForName_];

  if (v12)
  {
    v13 = MEMORY[0x1E69E7CA0];
    v14 = sub_1BF9B4968();

    sub_1BF925088(0xD000000000000012, 0x80000001BF9CCF10, v14, v34);

    if (v35)
    {
      v15 = sub_1BF9B44C8();
      v16 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v7, v16 ^ 1u, 1, v15);
      if (__swift_getEnumTagSinglePayload(v7, 1, v15) != 1)
      {
        return (*(*(v15 - 8) + 32))(a1, v7, v15);
      }
    }

    else
    {
      sub_1BF8DFBF0(v34, &qword_1EBDE9208, &unk_1BF9C2A50);
      v27 = sub_1BF9B44C8();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v27);
    }

    sub_1BF8DFBF0(v7, &qword_1EBDE9A50, &unk_1BF9C1478);
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v28 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v28, qword_1EDBF5570);
    v29 = sub_1BF9B47A8();
    v30 = sub_1BF9B5048();
    if (OUTLINED_FUNCTION_95(v30))
    {
      OUTLINED_FUNCTION_109();
      v31 = OUTLINED_FUNCTION_39_0();
      v34[0] = v31;
      *v13 = 136315138;
      *(v13 + 4) = sub_1BF8DE810(0xD000000000000013, 0x80000001BF9CCEF0, v34);
      OUTLINED_FUNCTION_108_1(&dword_1BF8B8000, v32, v33, "UserDefaults lastAppInstallDate.get: Value for '%s' is not set or cannot be converted to Date value. Returning Date(timeIntervalSinceReferenceDate: 0)");
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_31_11();
    }

    return sub_1BF9B4468();
  }

  else
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v18 = sub_1BF9B47C8();
    OUTLINED_FUNCTION_49_3(v18, qword_1EDBF5570);

    v19 = sub_1BF9B47A8();
    v20 = sub_1BF9B5038();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_109();
      v22 = OUTLINED_FUNCTION_35_4();
      v34[0] = v22;
      *v21 = 136315138;
      v23 = OUTLINED_FUNCTION_22_0();
      *(v21 + 4) = sub_1BF8DE810(v23, v24, v25);
      OUTLINED_FUNCTION_73_2(&dword_1BF8B8000, v26, v20, "UserDefaults lastAppInstallDate.get: No user defaults for '%s'.) Returning Date(timeIntervalSinceReferenceDate: 0)");
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    return sub_1BF9B4468();
  }
}

uint64_t sub_1BF957F54(uint64_t a1)
{
  sub_1BF9555A4();
  v3 = sub_1BF9B44C8();
  v20 = v3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19);
  v5 = *(v3 - 8);
  (*(v5 + 16))(boxed_opaque_existential_1Tm, a1, v3);
  OUTLINED_FUNCTION_113_0(v19, &v18);
  OUTLINED_FUNCTION_46_3();
  sub_1BF9363E4(v6, 0xD000000000000012, 0x80000001BF9CCF10);
  v7 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  OUTLINED_FUNCTION_86_2();
  v8 = sub_1BF9B4958();

  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = sub_1BF9B4A98();
  v12 = OUTLINED_FUNCTION_52_4();
  [v12 v13];

  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_36();
  return v16(v15);
}

void sub_1BF9582F0(uint64_t a1)
{
  sub_1BF9555A4();
  v11 = MEMORY[0x1E69E6530];
  *&v10 = a1;
  OUTLINED_FUNCTION_113_0(&v10, &v9);
  OUTLINED_FUNCTION_46_3();
  sub_1BF9363E4(v3, 0xD000000000000013, 0x80000001BF9CCED0);
  v4 = [objc_allocWithZone(MEMORY[0x1E695E000]) init];
  OUTLINED_FUNCTION_86_2();
  v5 = sub_1BF9B4958();

  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = sub_1BF9B4A98();
  OUTLINED_FUNCTION_92_1(v8, sel_setPersistentDomain_forName_);
}

uint64_t sub_1BF9583DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BF95861C(uint64_t a1)
{
  v3 = sub_1BF9B44C8();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 16);
  (*(v6 + 16))(v10, a1, v3);
  sub_1BF957F54(v10);
  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_36();
  return v14(v13);
}

uint64_t sub_1BF958744()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t (*sub_1BF9587A8(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = *(v1 + 16);
  sub_1BF955838();
  *a1 = v3;
  return sub_1BF9587F4;
}

uint64_t sub_1BF9588FC(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

void sub_1BF9589C0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    v6 = OUTLINED_FUNCTION_88();
    sub_1BF95766C(v6, v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_88();
    sub_1BF95766C(v8, v9);
  }
}

void (*sub_1BF958A3C(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1BF9B44C8();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  v8 = *(v1 + 16);
  sub_1BF957B74(v7);
  return sub_1BF958B14;
}

void sub_1BF958B14(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    v8 = *(v6 + 16);
    v9 = OUTLINED_FUNCTION_22_0();
    v10(v9);
    sub_1BF95861C(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = *v2;
    sub_1BF95861C((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*sub_1BF958BCC(void *a1))(uint64_t *a1)
{
  a1[1] = *(v1 + 16);
  *a1 = sub_1BF9580B8();
  return sub_1BF958C18;
}

char *sub_1BF958C3C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958C60(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958C80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958CA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958CC8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

uint64_t sub_1BF958D00()
{
  OUTLINED_FUNCTION_98_0();
  if (v3 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8938, &qword_1BF9B8010), result = OUTLINED_FUNCTION_13(v4), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      v7 = OUTLINED_FUNCTION_22_6();

      return MEMORY[0x1EEE6BCF8](v7);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8938, &qword_1BF9B8010);
    v8 = OUTLINED_FUNCTION_22_6();

    return MEMORY[0x1EEE6BD00](v8);
  }

  return result;
}

uint64_t sub_1BF958DF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_98_0();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_13(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v12 = OUTLINED_FUNCTION_22_6();

      return MEMORY[0x1EEE6BCF8](v12);
    }
  }

  else
  {
    a4(0);
    v13 = OUTLINED_FUNCTION_22_6();

    return MEMORY[0x1EEE6BD00](v13);
  }

  return result;
}

char *sub_1BF958EB4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958EDC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958F04(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[120 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958F2C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

char *sub_1BF958F54(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[272 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_19(a3, result);
  }

  return result;
}

void *sub_1BF958F7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BC0, &qword_1BF9B86D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_1BF959014(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void *sub_1BF95904C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BF963C50(*(a1 + 16), 0);
  v4 = sub_1BF9641F4(&v6, v3 + 4, v1, a1);

  OUTLINED_FUNCTION_37_6();
  sub_1BF90D2E8();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1BF959104(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8980, &unk_1BF9C2A70);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 32);
    }

    if (v4 != a3)
    {
      memcpy(v8 + 4, (a2 + 32 * a3), 32 * v5);
      return;
    }

    goto LABEL_10;
  }
}

void sub_1BF9591E0()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BE8, &qword_1BF9BC840);
    v9 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_10_0(v9);
    OUTLINED_FUNCTION_48_4(v10 / 16);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v3 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF9592B0()
{
  OUTLINED_FUNCTION_31_1();
  if (v6)
  {
    OUTLINED_FUNCTION_7_2();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_28_1();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v7 = v5;
  }

  OUTLINED_FUNCTION_41_5(v7);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B08, &unk_1BF9B8620);
    v10 = OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_50_5(v10);
    v10[2] = v3;
    v10[3] = 2 * (v11 / v4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = OUTLINED_FUNCTION_87_1();
  if (v1)
  {
    if (v10 != v0 || &v13[24 * v3] <= v12)
    {
      memmove(v12, v13, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF9593B0()
{
  OUTLINED_FUNCTION_31_1();
  if (v7)
  {
    OUTLINED_FUNCTION_7_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_28_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_9_2(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CB0, &unk_1BF9C2890);
    v11 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_10_0(v11);
    OUTLINED_FUNCTION_48_4(v12 / 32);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_37_6();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF9594B8()
{
  OUTLINED_FUNCTION_59_6();
  if (v7)
  {
    OUTLINED_FUNCTION_7_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_28_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_77_3(v8);
  if (v5)
  {
    OUTLINED_FUNCTION_94_1(v11, v12, v13, v14, v15, v16);
    v17 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_50_5(v17);
    OUTLINED_FUNCTION_60_3();
    v17[2] = v4;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    if (v17 != v0 || &v0[v4 + 4] <= v17 + 4)
    {
      v20 = OUTLINED_FUNCTION_72_3();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_72_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1BF9595A0()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_41_5(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8378, &qword_1BF9B85B0);
    v9 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_50_5(v9);
    OUTLINED_FUNCTION_60_3();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_87_1();
  if (v1)
  {
    if (v9 != v0 || &v12[2 * v3] <= v11)
    {
      memmove(v11, v12, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 2 * v3);
  }
}

void sub_1BF9596D0()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_2(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DE8, &qword_1BF9C2BD0);
    v9 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_1_3(v9);
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    OUTLINED_FUNCTION_66_3();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      OUTLINED_FUNCTION_84_1();
      v13 = OUTLINED_FUNCTION_37_6();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DF0, &qword_1BF9C2BD8);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF9597B4()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_2(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_94_1(v9, v10, v11, v12, v13, v14);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v2;
    v15[3] = 2 * v16 - 64;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v15 != v0 || &v18[v2] <= v17)
    {
      memmove(v17, v18, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, v2);
  }
}

void sub_1BF959874()
{
  OUTLINED_FUNCTION_31_1();
  if (v6)
  {
    OUTLINED_FUNCTION_7_2();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_28_1();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v7 = v5;
  }

  OUTLINED_FUNCTION_41_5(v7);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE84C0, &unk_1BF9B73D0);
    v10 = OUTLINED_FUNCTION_109_0();
    OUTLINED_FUNCTION_50_5(v10);
    v10[2] = v3;
    v10[3] = 2 * (v11 / v4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = OUTLINED_FUNCTION_87_1();
  if (v1)
  {
    if (v10 != v0 || &v13[24 * v3] <= v12)
    {
      memmove(v12, v13, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v3);
  }
}

void sub_1BF959950()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DD0, &qword_1BF9C2BB0);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_1BF959A20()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_2(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DD8, &qword_1BF9C2BB8);
    v9 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_1_3(v9);
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    OUTLINED_FUNCTION_66_3();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      OUTLINED_FUNCTION_84_1();
      v13 = OUTLINED_FUNCTION_37_6();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DE0, &unk_1BF9C2BC0);
    OUTLINED_FUNCTION_28_9();
  }
}

char *sub_1BF959AF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B30, &unk_1BF9B8650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_1BF959C28()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B10, &qword_1BF9C2B20);
    v9 = OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_1_3(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v3 != v0 || &v11[56 * v2] <= v10)
    {
      memmove(v10, v11, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF959CFC()
{
  OUTLINED_FUNCTION_31_1();
  if (v7)
  {
    OUTLINED_FUNCTION_7_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_28_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_9_2(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DC0, &qword_1BF9C2BA0);
    v4 = 72;
    v11 = OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_1_3(v11);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    if (v3 != v0 || v5 + 72 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_37_6();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DC8, &qword_1BF9C2BA8);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF959DDC()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_2(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CE0, &qword_1BF9C2A90);
    v9 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_1_3(v9);
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    OUTLINED_FUNCTION_66_3();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      OUTLINED_FUNCTION_84_1();
      v13 = OUTLINED_FUNCTION_37_6();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CE8, &qword_1BF9C2A98);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF959EAC()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_41_5(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8980, &unk_1BF9C2A70);
    v9 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_50_5(v9);
    OUTLINED_FUNCTION_60_3();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_87_1();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v3] <= v11)
    {
      memmove(v11, v12, 32 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 32 * v3);
  }
}

void sub_1BF959F78()
{
  OUTLINED_FUNCTION_31_1();
  if (v7)
  {
    OUTLINED_FUNCTION_7_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_28_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_9_2(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DA0, &unk_1BF9C2B80);
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_10_0(v11);
    OUTLINED_FUNCTION_48_4(v12 / 128);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    if (v3 != v0 || v5 + (v2 << 7) <= v4)
    {
      v14 = OUTLINED_FUNCTION_37_6();
      memmove(v14, v15, v16);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DA8, &unk_1BF9C2CB0);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF95A064()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D28, &qword_1BF9C2AE8);
    v9 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_1_3(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v3 != v0 || v11 + 24 * v2 <= v10)
    {
      OUTLINED_FUNCTION_84_1();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF95A130()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_41_5(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D68, &unk_1BF9C2B40);
    v9 = OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_50_5(v9);
    OUTLINED_FUNCTION_60_3();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_87_1();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_1BF95A1FC()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_2(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D78, &qword_1BF9C2B50);
    v9 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_1_3(v9);
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    OUTLINED_FUNCTION_66_3();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      OUTLINED_FUNCTION_84_1();
      v13 = OUTLINED_FUNCTION_37_6();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D80, &unk_1BF9C2B58);
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_1BF95A314()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8998, &unk_1BF9B84A0);
    v9 = OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_1_3(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v3 != v0 || &v11[120 * v2] <= v10)
    {
      memmove(v10, v11, 120 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF95A40C()
{
  OUTLINED_FUNCTION_59_6();
  if (v7)
  {
    OUTLINED_FUNCTION_7_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_28_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_77_3(v8);
  if (v5)
  {
    OUTLINED_FUNCTION_94_1(v11, v12, v13, v14, v15, v16);
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_50_5(v17);
    v17[2] = v4;
    v17[3] = 2 * (v18 / 40);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    if (v17 != v0 || &v0[5 * v4 + 4] <= v17 + 4)
    {
      v20 = OUTLINED_FUNCTION_72_3();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_72_3();
    swift_arrayInitWithCopy();
  }
}

void sub_1BF95A508()
{
  OUTLINED_FUNCTION_31_1();
  if (v5)
  {
    OUTLINED_FUNCTION_7_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_28_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_9_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D48, &qword_1BF9C2B08);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_10_0(v9);
    OUTLINED_FUNCTION_48_4(v10 / 64);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_30_0();
  if (v1)
  {
    if (v3 != v0 || &v12[64 * v2] <= v11)
    {
      memmove(v11, v12, v2 << 6);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF95A5E0()
{
  OUTLINED_FUNCTION_31_1();
  if (v7)
  {
    OUTLINED_FUNCTION_7_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_28_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_9_2(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D38, &qword_1BF9C2AF8);
    v4 = 40;
    v11 = OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_1_3(v11);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_67_4();
  if (v1)
  {
    if (v3 != v0 || v5 + 40 * v2 <= v4)
    {
      v13 = OUTLINED_FUNCTION_37_6();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D40, &qword_1BF9C2B00);
    OUTLINED_FUNCTION_28_9();
  }
}

uint64_t sub_1BF95A6C0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF95DCFC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BF95A72C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1BF95A72C(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CD0, &qword_1BF9C2A68);
        v6 = sub_1BF9B4D88();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BF95A8A8(v7, v8, a1, v4);
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
    return sub_1BF95A830(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF95A830(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 24);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 8) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 - 16);
        *v9 = *(v9 - 32);
        *(v9 + 16) = v12;
        *(v9 - 24) = v11;
        *(v9 - 8) = v7;
        *(v9 - 32) = v10;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BF95A8A8(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v86 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 24);
        v11 = *a3 + 32 * v7;
        v12 = 32 * v7;
        v13 = *(v11 + 24);
        v14 = (v11 + 88);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 4;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 32 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = *(v24 + 3);
                v28 = *(v24 + 8);
                v29 = *(v25 - 1);
                *v24 = *(v25 - 3);
                *(v24 + 1) = v29;
                *(v25 - 24) = v26;
                *(v25 - 1) = v28;
                *v25 = v27;
              }

              ++v22;
              v20 -= 32;
              v12 += 32;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9 + 24);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 8) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 8);
                v38 = *(v35 - 16);
                *v35 = *(v35 - 32);
                *(v35 + 16) = v38;
                *(v35 - 24) = v37;
                *(v35 - 8) = v33;
                *(v35 - 32) = v36;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v88 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = v8[2];
        sub_1BF8DCF6C();
        v8 = v84;
      }

      v40 = v8[2];
      v41 = v40 + 1;
      if (v40 >= v8[3] >> 1)
      {
        sub_1BF8DCF6C();
        v8 = v85;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v7;
      v43[1] = v9;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_56:
            if (v50)
            {
              goto LABEL_96;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_99;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_104;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v41 < 2)
          {
            goto LABEL_98;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_71:
          if (v65)
          {
            goto LABEL_101;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_103;
          }

          if (v72 < v64)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1BF95AED0((*a3 + 32 * *v76), (*a3 + 32 * *v78), (*a3 + 32 * v79), v89);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v79 < v77)
          {
            goto LABEL_91;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_92;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_93;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_85;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_94;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_95;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_97;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_100;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_105;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v88;
      a4 = v86;
      if (v88 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1BF95ADA4(&v91, *a1, a3);
LABEL_89:
}

uint64_t sub_1BF95ADA4(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BF95B0FC(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1BF95AED0((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1BF95AED0(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[4 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (v4[3] >= v6[3])
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 4;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 4;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 4;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *(v13 + 1);
    *v7 = *v13;
    *(v7 + 1) = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[4 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[4 * v9];
LABEL_25:
  for (v5 -= 4; v11 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v6 - 1) < *(v11 - 1))
    {
      v19 = v6 - 4;
      v14 = v5 + 4 == v6;
      v6 -= 4;
      if (!v14)
      {
        v20 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
        v6 = v19;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 4)
    {
      v18 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v18;
    }

    v11 -= 4;
  }

LABEL_38:
  v21 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[4 * v21])
  {
    memmove(v6, v4, 32 * v21);
  }

  return 1;
}

uint64_t sub_1BF95B074(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BF95B0FC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return OUTLINED_FUNCTION_22_0();
  }

  return result;
}

char *sub_1BF95B110(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8978, &unk_1BF9B8480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1BF95B210(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v25 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = *(i - 24);
    if (v6 == 6)
    {
    }

    v7 = *(i - 2);
    v8 = *(i - 1);
    v27 = *i;
    v9 = *a3;
    v11 = sub_1BF9B2BC0(v6, v7, v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_14;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D08, &qword_1BF9C2AB8);
        sub_1BF9B53B8();
        if (v15)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1BF95C36C(v14, a2 & 1);
      v16 = *a3;
      v17 = sub_1BF9B2BC0(v6, v7, v8);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

      v11 = v17;
      if (v15)
      {
        goto LABEL_14;
      }
    }

    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = v19[6] + 24 * v11;
    *v20 = v6;
    *(v20 + 8) = v7;
    *(v20 + 16) = v8;
    *(v19[7] + 8 * v11) = v27;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
LABEL_14:
    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF95B3D4(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_1BF8C2E64(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A08, &unk_1BF9C1040);
        sub_1BF9B53B8();
      }
    }

    else
    {
      sub_1BF95C6C4(v15, a2 & 1);
      v17 = *a3;
      v18 = sub_1BF8C2E64(v8, v7);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      v21 = *(v20[7] + 8 * v12);

      *(v20[7] + 8 * v12) = v21;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v22 = (v20[6] + 16 * v12);
      *v22 = v8;
      v22[1] = v7;
      *(v20[7] + 8 * v12) = v9;
      v23 = v20[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v20[2] = v25;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

void sub_1BF95B594(uint64_t a1)
{
  OUTLINED_FUNCTION_18_11(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9770, &qword_1BF9C2940);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_89_1();
  if (!v6)
  {
LABEL_30:

    *v1 = v3;
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_65_4();
  if (!v4)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v2 + 8 * v7))
      {
        OUTLINED_FUNCTION_17_13();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v3)
    {
      v25 = *(v2 + 32);
      OUTLINED_FUNCTION_16_11();
      if (v27 != v28)
      {
        OUTLINED_FUNCTION_23_12(v26);
      }

      else
      {
        v29 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v29, v30, v2);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_52_2();
LABEL_9:
    OUTLINED_FUNCTION_64_3(v8);
    v14 = (v13 + 32 * v12);
    if (v3)
    {
      sub_1BF8C192C(v14, v31);
    }

    else
    {
      sub_1BF8C187C(v14, v31);
    }

    OUTLINED_FUNCTION_93_0();
    sub_1BF9B4B48();
    v15 = sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19(v15);
    v17 = *(v5 + 8 * v16);
    OUTLINED_FUNCTION_51_5();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_22:
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_26_11(v22);
    sub_1BF8C192C(v31, (v24 + 32 * v23));
    OUTLINED_FUNCTION_21_11();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v18)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_78_3(v19);
    if (!v18)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1BF95B798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  OUTLINED_FUNCTION_18_11(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_89_1();
  if (!v10)
  {
LABEL_30:

LABEL_31:
    *v5 = v7;
    OUTLINED_FUNCTION_110_0();
    return;
  }

  v44 = v5;
  v11 = 0;
  v13 = (v6 + 64);
  v12 = *(v6 + 64);
  v14 = *(v6 + 32);
  OUTLINED_FUNCTION_3_20();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  if ((v16 & v15) == 0)
  {
LABEL_4:
    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v11 >= v19)
      {
        break;
      }

      ++v21;
      if (v13[v11])
      {
        OUTLINED_FUNCTION_17_13();
        v17 = v23 & v22;
        goto LABEL_9;
      }
    }

    if ((v7 & 1) == 0)
    {

      v5 = v44;
      goto LABEL_31;
    }

    v38 = *(v6 + 32);
    OUTLINED_FUNCTION_16_11();
    v5 = v44;
    if (v40 != v41)
    {
      *v13 = -1 << v39;
    }

    else
    {
      v42 = OUTLINED_FUNCTION_15_16();
      sub_1BF95D270(v42, v43, v6 + 64);
    }

    *(v6 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_9:
    v24 = v20 | (v11 << 6);
    v25 = (*(v6 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v6 + 56) + 48 * v24;
    if (v7)
    {
      a5(v28, v46);
    }

    else
    {
      sub_1BF8D7914(v28, v46);
    }

    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_85_2();
    sub_1BF9B4B48();
    v29 = sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19(v29);
    OUTLINED_FUNCTION_42_8(v30);
    if (v31)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_22:
    OUTLINED_FUNCTION_6_12(v32);
    a5(v46, (v37 + 48 * v36));
    OUTLINED_FUNCTION_21_11();
    if (!v17)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v31)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    OUTLINED_FUNCTION_43_7(v33);
    if (!v31)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1BF95B984(uint64_t a1)
{
  OUTLINED_FUNCTION_18_11(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9778, &unk_1BF9BF990);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_89_1();
  if (!v6)
  {
LABEL_30:

    *v1 = v3;
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_65_4();
  if (!v4)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v2 + 8 * v7))
      {
        OUTLINED_FUNCTION_17_13();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v3)
    {
      v33 = *(v2 + 32);
      OUTLINED_FUNCTION_16_11();
      if (v35 != v36)
      {
        OUTLINED_FUNCTION_23_12(v34);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v37, v38, v2);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_52_2();
LABEL_9:
    OUTLINED_FUNCTION_64_3(v8);
    v15 = v13 + v12 * v14;
    if (v3)
    {
      v16 = *v15;
      v17 = *(v15 + 16);
      v18 = *(v15 + 32);
      v42 = *(v15 + 48);
      v40 = v17;
      v41 = v18;
      v39 = v16;
    }

    else
    {
      sub_1BF932508(v15, &v39);
    }

    OUTLINED_FUNCTION_93_0();
    sub_1BF9B4B48();
    v19 = sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19(v19);
    v21 = *(v5 + 8 * v20);
    OUTLINED_FUNCTION_51_5();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_22:
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_26_11(v26);
    v29 = v28 + 56 * v27;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    *(v29 + 48) = v42;
    *(v29 + 16) = v31;
    *(v29 + 32) = v32;
    *v29 = v30;
    OUTLINED_FUNCTION_21_11();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v22)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    OUTLINED_FUNCTION_78_3(v23);
    if (!v22)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1BF95BB60(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1BF9B4888();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BC8, &qword_1BF9B86D8);
  v56 = a2;
  v15 = OUTLINED_FUNCTION_91_1();
  if (!*(v13 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v15;
    return;
  }

  v60 = v6;
  v52 = v3;
  v16 = 0;
  v18 = (v13 + 64);
  v17 = *(v13 + 64);
  v19 = *(v13 + 32);
  OUTLINED_FUNCTION_3_20();
  v22 = v21 & v20;
  v24 = (v23 + 63) >> 6;
  v53 = v9 + 16;
  v54 = v13;
  v55 = v9;
  v58 = (v9 + 32);
  v25 = v15 + 64;
  v26 = v57;
  if ((v21 & v20) == 0)
  {
LABEL_6:
    v28 = v16;
    while (1)
    {
      v16 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v16 >= v24)
      {
        break;
      }

      ++v28;
      if (v18[v16])
      {
        OUTLINED_FUNCTION_17_13();
        v22 = v30 & v29;
        goto LABEL_11;
      }
    }

    if ((v56 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_33;
    }

    v45 = *(v13 + 32);
    OUTLINED_FUNCTION_16_11();
    v3 = v52;
    if (v47 != v48)
    {
      *v18 = -1 << v46;
    }

    else
    {
      v49 = OUTLINED_FUNCTION_15_16();
      sub_1BF95D270(v49, v50, v18);
    }

    *(v13 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
LABEL_11:
    v31 = v27 | (v16 << 6);
    v32 = *(v13 + 48);
    v59 = *(v55 + 72);
    if (v56)
    {
      v33 = OUTLINED_FUNCTION_104_1();
      v34(v33);
      v35 = *(*(v13 + 56) + 8 * v31);
    }

    else
    {
      v36 = OUTLINED_FUNCTION_104_1();
      v37(v36);
      v35 = *(*(v13 + 56) + 8 * v31);
    }

    v38 = *(v15 + 40);
    sub_1BF95E350();
    v39 = v26;
    v40 = *(v25 + 8 * ((sub_1BF9B4A48() & ~(-1 << *(v15 + 32))) >> 6));
    OUTLINED_FUNCTION_51_5();
    if (v41)
    {
      break;
    }

    OUTLINED_FUNCTION_99_1();
    v26 = v57;
LABEL_24:
    *(v25 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    (*v58)(*(v15 + 48) + v59 * v39, v26, v60);
    *(*(v15 + 56) + 8 * v39) = v35;
    ++*(v15 + 16);
    v13 = v54;
    if (!v22)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_7_12();
  v26 = v57;
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v41)
    {
      if (v43)
      {
        break;
      }
    }

    if (v42 == v44)
    {
      v42 = 0;
    }

    if (*(v25 + 8 * v42) != -1)
    {
      OUTLINED_FUNCTION_97_0();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1BF95BE84(uint64_t a1)
{
  OUTLINED_FUNCTION_19_13(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B0, &qword_1BF9C9210);
  OUTLINED_FUNCTION_58_5();
  v35 = v2;
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_96_1();
  if (!v5)
  {
LABEL_29:

    *v1 = v3;
    return;
  }

  v34 = v4;
  v6 = 0;
  v7 = v4;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_35_7();
  if (!v2)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v1)
      {
        break;
      }

      OUTLINED_FUNCTION_102_0();
      if (v10)
      {
        OUTLINED_FUNCTION_17_13();
        v2 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v35)
    {
      v28 = *(v4 + 32);
      OUTLINED_FUNCTION_16_11();
      if (v30 != v31)
      {
        OUTLINED_FUNCTION_23_12(v29);
      }

      else
      {
        v32 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v32, v33, v7);
      }

      *(v4 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_8();
LABEL_9:
    OUTLINED_FUNCTION_61_4(v8);
    v15 = (v14 + 16 * v13);
    v16 = v15[1];
    v36 = *v15;
    if ((v35 & 1) == 0)
    {
    }

    v17 = *(v3 + 40);
    sub_1BF9B57A8();
    OUTLINED_FUNCTION_85_2();
    sub_1BF9B4B48();
    v18 = sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19(v18);
    OUTLINED_FUNCTION_42_8(v19);
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_21:
    OUTLINED_FUNCTION_6_12(v21);
    v27 = (v26 + 16 * v25);
    *v27 = v36;
    v27[1] = v16;
    OUTLINED_FUNCTION_21_11();
    v4 = v34;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v20)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    OUTLINED_FUNCTION_43_7(v22);
    if (!v20)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1BF95C030()
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_19_13(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9788, &qword_1BF9BF9A8);
  OUTLINED_FUNCTION_58_5();
  v32 = v1;
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_96_1();
  if (!v5)
  {
LABEL_29:

    *v0 = v2;
    OUTLINED_FUNCTION_106_1();
    return;
  }

  v31 = v3;
  v6 = 0;
  v7 = v3;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_35_7();
  if (!v1)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_102_0();
      if (v10)
      {
        OUTLINED_FUNCTION_17_13();
        v1 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v32)
    {
      v25 = *(v3 + 32);
      OUTLINED_FUNCTION_16_11();
      if (v27 != v28)
      {
        OUTLINED_FUNCTION_23_12(v26);
      }

      else
      {
        v29 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v29, v30, v7);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_8();
LABEL_9:
    OUTLINED_FUNCTION_61_4(v8);
    v15 = *(v14 + 8 * v13);
    if ((v32 & 1) == 0)
    {
      swift_unknownObjectRetain();
    }

    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_85_2();
    sub_1BF9B4B48();
    v16 = sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19(v16);
    OUTLINED_FUNCTION_42_8(v17);
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_21:
    OUTLINED_FUNCTION_6_12(v19);
    *(v24 + 8 * v23) = v15;
    OUTLINED_FUNCTION_21_11();
    v3 = v31;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v18)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_43_7(v20);
    if (!v18)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1BF95C1AC(uint64_t a1)
{
  OUTLINED_FUNCTION_18_11(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DB8, &unk_1BF9C6710);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_89_1();
  if (!v6)
  {
LABEL_30:

    *v1 = v3;
    OUTLINED_FUNCTION_110_0();
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_65_4();
  if (!v4)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v2 + 8 * v7))
      {
        OUTLINED_FUNCTION_17_13();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v3)
    {
      v26 = *(v2 + 32);
      OUTLINED_FUNCTION_16_11();
      if (v28 != v29)
      {
        OUTLINED_FUNCTION_23_12(v27);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v30, v31, v2);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_52_2();
LABEL_9:
    OUTLINED_FUNCTION_64_3(v8);
    v14 = (v13 + 56 * v12);
    if (v3)
    {
      sub_1BF8E8174(v14, v32);
    }

    else
    {
      sub_1BF95E2E4(v14, v32);
    }

    v15 = *(v3 + 40);
    sub_1BF9B57A8();
    sub_1BF9B4B48();
    v16 = sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19(v16);
    v18 = *(v5 + 8 * v17);
    OUTLINED_FUNCTION_51_5();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_22:
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_26_11(v23);
    sub_1BF8E8174(v32, v25 + 56 * v24);
    OUTLINED_FUNCTION_21_11();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_78_3(v20);
    if (!v19)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1BF95C36C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D00, &qword_1BF9C2AB0);
  result = sub_1BF9B5468();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v8;
    return result;
  }

  v37 = a2;
  v38 = v3;
  v39 = v5;
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
        goto LABEL_34;
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

    if ((v37 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_32;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      sub_1BF95D270(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(v5 + 56);
    v21 = *(v5 + 48) + 24 * v19;
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
    v24 = *v21;
    v25 = *(v20 + 8 * v19);
    v26 = *(v8 + 40);
    sub_1BF9B57A8();
    sub_1BF9B4B48();

    MEMORY[0x1BFB5EAC0](v23);
    MEMORY[0x1BFB5EAC0](v22);
    result = sub_1BF9B57E8();
    v27 = -1 << *(v8 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = *(v8 + 48) + 24 * v30;
    *v35 = v24;
    *(v35 + 8) = v23;
    *(v35 + 16) = v22;
    *(*(v8 + 56) + 8 * v30) = v25;
    ++*(v8 + 16);
    v5 = v39;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1BF95C6C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9CD8, &unk_1BF9C2A80);
  v37 = a2;
  result = sub_1BF9B5468();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1BF95D270(0, (v35 + 63) >> 6, v5 + 64);
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
    if ((v37 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_1BF9B57A8();
    sub_1BF9B4B48();
    result = sub_1BF9B57E8();
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

void sub_1BF95C964(uint64_t a1)
{
  OUTLINED_FUNCTION_19_13(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D98, &qword_1BF9C2B78);
  OUTLINED_FUNCTION_58_5();
  v34 = v2;
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_96_1();
  if (!v6)
  {
LABEL_30:

    *v1 = v3;
    return;
  }

  v33 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_35_7();
  if (!v2)
  {
LABEL_4:
    v10 = v7;
    while (1)
    {
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v1)
      {
        break;
      }

      OUTLINED_FUNCTION_102_0();
      if (v11)
      {
        OUTLINED_FUNCTION_17_13();
        v2 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (v34)
    {
      v27 = *(v5 + 32);
      OUTLINED_FUNCTION_16_11();
      if (v29 != v30)
      {
        OUTLINED_FUNCTION_23_12(v28);
      }

      else
      {
        v31 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v31, v32, v8);
      }

      *(v5 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_8();
LABEL_9:
    v14 = v9 | (v7 << 6);
    v15 = *(v5 + 48) + 120 * v14;
    if (v34)
    {
      memcpy(__dst, (*(v5 + 48) + 120 * v14), 0x78uLL);
      v16 = *(*(v5 + 56) + 8 * v14);
    }

    else
    {
      sub_1BF932458(*(v5 + 48) + 120 * v14, __dst);
      v16 = *(*(v5 + 56) + 8 * v14);
    }

    v17 = v3[5];
    sub_1BF9B57A8();
    v18 = __dst[14];
    __swift_project_boxed_opaque_existential_1(&__dst[10], __dst[13]);
    v19 = *(v18 + 32);
    sub_1BF9B4A58();
    sub_1BF9B57A8();
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    OUTLINED_FUNCTION_85_2();
    sub_1BF9B4A58();
    v20 = sub_1BF9B57E8();
    MEMORY[0x1BFB5EAC0](v20);
    v21 = sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19(v21);
    OUTLINED_FUNCTION_42_8(v22);
    if (v23)
    {
      break;
    }

    OUTLINED_FUNCTION_99_1();
LABEL_22:
    *(v4 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    memcpy((v3[6] + 120 * v35), __dst, 0x78uLL);
    *(v3[7] + 8 * v35) = v16;
    OUTLINED_FUNCTION_21_11();
    v5 = v33;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v23)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    OUTLINED_FUNCTION_43_7(v24);
    if (!v23)
    {
      OUTLINED_FUNCTION_97_0();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1BF95CBC4()
{
  OUTLINED_FUNCTION_107_1();
  v2 = v0;
  v4 = v3;
  v5 = *v0;
  if (*(*v0 + 24) > v6)
  {
    v7 = *(*v0 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D60, &qword_1BF9C2B38);
  OUTLINED_FUNCTION_22_6();
  sub_1BF9B5468();
  OUTLINED_FUNCTION_89_1();
  if (v8)
  {
    v40 = v4;
    v41 = v2;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v1 + 64;
    if (v12)
    {
LABEL_8:
      OUTLINED_FUNCTION_52_2();
      goto LABEL_14;
    }

LABEL_9:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        if (v40)
        {
          v34 = *(v5 + 32);
          OUTLINED_FUNCTION_16_11();
          if (v36 != v37)
          {
            OUTLINED_FUNCTION_23_12(v35);
          }

          else
          {
            v38 = OUTLINED_FUNCTION_15_16();
            sub_1BF95D270(v38, v39, v5 + 64);
          }

          *(v5 + 16) = 0;
        }

        v2 = v41;
        goto LABEL_47;
      }

      ++v16;
      if (*(v5 + 64 + 8 * v9))
      {
        OUTLINED_FUNCTION_17_13();
        v12 = v18 & v17;
LABEL_14:
        v19 = v15 | (v9 << 6);
        v20 = *(*(v5 + 48) + 2 * v19);
        v21 = *(*(v5 + 56) + 8 * v19);
        OUTLINED_FUNCTION_93_0();
        switch(v20 >> 8)
        {
          case 2u:
            v22 = 0;
            goto LABEL_20;
          case 3u:
            v22 = 1;
            goto LABEL_20;
          case 4u:
            v22 = 2;
            goto LABEL_20;
          case 5u:
            v22 = 4;
            goto LABEL_20;
          case 6u:
            v22 = 5;
LABEL_20:
            MEMORY[0x1BFB5EAC0](v22);
            goto LABEL_21;
          default:
            MEMORY[0x1BFB5EAC0](3);
            if (v20 == 2)
            {
              v33 = 0;
              goto LABEL_37;
            }

            if (v20 == 3)
            {
              v33 = 1;
LABEL_37:
              MEMORY[0x1BFB5EAC0](v33);
              goto LABEL_39;
            }

            MEMORY[0x1BFB5EAC0](2);
            sub_1BF9B4B48();

LABEL_39:
            sub_1BF9B4B48();

LABEL_21:
            v23 = sub_1BF9B57E8();
            OUTLINED_FUNCTION_4_19(v23);
            v25 = *(v14 + 8 * v24);
            OUTLINED_FUNCTION_51_5();
            if (v26)
            {
              OUTLINED_FUNCTION_7_12();
              do
              {
                OUTLINED_FUNCTION_53_6();
                if (v26 && (v28 & 1) != 0)
                {
                  goto LABEL_49;
                }

                if (v27 == v29)
                {
                  v27 = 0;
                }
              }

              while (*(v14 + 8 * v27) == -1);
              OUTLINED_FUNCTION_11_15();
            }

            else
            {
              OUTLINED_FUNCTION_12_13();
            }

            OUTLINED_FUNCTION_10_13();
            *(v14 + v30) |= v31;
            *(*(v1 + 48) + 2 * v32) = v20;
            *(*(v1 + 56) + 8 * v32) = v21;
            OUTLINED_FUNCTION_21_11();
            if (v12)
            {
              goto LABEL_8;
            }

            break;
        }

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {

LABEL_47:
    *v2 = v1;
    OUTLINED_FUNCTION_106_1();
  }
}

void sub_1BF95CEB4()
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_19_13(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D70, &qword_1BF9C5560);
  OUTLINED_FUNCTION_58_5();
  v32 = v1;
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_96_1();
  if (!v5)
  {
LABEL_29:

    *v0 = v2;
    OUTLINED_FUNCTION_106_1();
    return;
  }

  v31 = v3;
  v6 = 0;
  v7 = v3;
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_35_7();
  if (!v1)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_102_0();
      if (v10)
      {
        OUTLINED_FUNCTION_17_13();
        v1 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v32)
    {
      v25 = *(v3 + 32);
      OUTLINED_FUNCTION_16_11();
      if (v27 != v28)
      {
        OUTLINED_FUNCTION_23_12(v26);
      }

      else
      {
        v29 = OUTLINED_FUNCTION_15_16();
        sub_1BF95D270(v29, v30, v7);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_34_8();
LABEL_9:
    OUTLINED_FUNCTION_61_4(v8);
    v15 = *(v14 + 8 * v13);
    if ((v32 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_93_0();
    OUTLINED_FUNCTION_85_2();
    sub_1BF9B4B48();
    v16 = sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19(v16);
    OUTLINED_FUNCTION_42_8(v17);
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_21:
    OUTLINED_FUNCTION_6_12(v19);
    *(v24 + 8 * v23) = v15;
    OUTLINED_FUNCTION_21_11();
    v3 = v31;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v18)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_43_7(v20);
    if (!v18)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1BF95D030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D30, &qword_1BF9C2AF0);
  v48 = a2;
  v7 = OUTLINED_FUNCTION_91_1();
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v46 = v3;
  v47 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_2_20();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 8;
  v16 = 24;
  if ((v11 & v10) == 0)
  {
LABEL_6:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v18;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_17_13();
        v12 = v20 & v19;
        goto LABEL_11;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_32;
    }

    v40 = *(v5 + 32);
    OUTLINED_FUNCTION_16_11();
    v3 = v46;
    if (v42 != v43)
    {
      OUTLINED_FUNCTION_23_12(v41);
    }

    else
    {
      v44 = OUTLINED_FUNCTION_15_16();
      sub_1BF95D270(v44, v45, v9);
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v21 = v17 | (v8 << 6);
    v22 = (*(v5 + 48) + 16 * v21);
    v23 = v22[1];
    v24 = (*(v5 + 56) + v21 * v16);
    v25 = v24[1];
    v49 = *v24;
    v50 = *v22;
    v26 = v24[2];
    if ((v48 & 1) == 0)
    {
    }

    v27 = v7[5];
    sub_1BF9B57A8();
    sub_1BF9B4B48();
    v28 = sub_1BF9B57E8();
    OUTLINED_FUNCTION_4_19(v28);
    v30 = v15[v29];
    OUTLINED_FUNCTION_51_5();
    if (v31)
    {
      break;
    }

    OUTLINED_FUNCTION_12_13();
LABEL_23:
    OUTLINED_FUNCTION_10_13();
    *(v15 + v35) |= v36;
    v38 = (v7[6] + 16 * v37);
    *v38 = v50;
    v38[1] = v23;
    v39 = (v7[7] + 24 * v37);
    *v39 = v49;
    v39[1] = v25;
    v39[2] = v26;
    OUTLINED_FUNCTION_21_11();
    v5 = v47;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_7_12();
  while (1)
  {
    OUTLINED_FUNCTION_53_6();
    if (v31)
    {
      if (v33)
      {
        break;
      }
    }

    if (v32 == v34)
    {
      v32 = 0;
    }

    if (v15[v32] != -1)
    {
      OUTLINED_FUNCTION_11_15();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1BF95D270(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BF9B9DE0;
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

unsigned __int8 *sub_1BF95D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1BF95DE54();

  result = sub_1BF9B4C48();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1BF95D868();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BF9B5318();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1BF95D868()
{
  v0 = sub_1BF95D8D4();
  v4 = sub_1BF95D908(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1BF95D908(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BF9B4B38();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1BF9B5128();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1BF958F7C(v9, 0);
  v12 = sub_1BF95DA68(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1BF9B4B38();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1BF9B5318();
LABEL_4:

  return sub_1BF9B4B38();
}

unint64_t sub_1BF95DA68(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1BF95DC78(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BF9B4BE8();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1BF9B5318();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1BF95DC78(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1BF9B4BB8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1BF95DC78(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1BF9B4BF8();
    OUTLINED_FUNCTION_83_1(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1BFB5DED0](15, a1 >> 16);
    OUTLINED_FUNCTION_83_1(v3);
    return v4 | 8;
  }
}

unint64_t sub_1BF95DD24()
{
  result = qword_1EBDE9CF0;
  if (!qword_1EBDE9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9CF0);
  }

  return result;
}

uint64_t sub_1BF95DD78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1BF9B5318();
  }

  result = sub_1BF95DEA8(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1BF95DE54()
{
  result = qword_1EBDE9D10;
  if (!qword_1EBDE9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9D10);
  }

  return result;
}

uint64_t sub_1BF95DEA8(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1BF95DC78(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1BF9B4BD8();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1BF95DC78(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1BF95DC78(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1BF9B4BD8();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1BF95E2E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1BF95E350()
{
  result = qword_1EBDE9DF8;
  if (!qword_1EBDE9DF8)
  {
    sub_1BF9B4888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9DF8);
  }

  return result;
}

void OUTLINED_FUNCTION_6_12(unint64_t a1@<X8>)
{
  *(v2 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v3;
  v5[1] = v4;
  v6 = *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_25_9()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1BF9B4A98();
}

uint64_t OUTLINED_FUNCTION_29_6(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1BF8DE810(v3, v4, va);
}

void OUTLINED_FUNCTION_31_11()
{

  JUMPOUT(0x1BFB5F320);
}

uint64_t OUTLINED_FUNCTION_56_5()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_73_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

BOOL OUTLINED_FUNCTION_75_3()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_76_3()
{
}

void OUTLINED_FUNCTION_77_3(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

double OUTLINED_FUNCTION_80_2@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4)
{

  return sub_1BF925088(0xD000000000000013, (a1 - 32) | 0x8000000000000000, v4, &a4);
}

double OUTLINED_FUNCTION_81_1@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_1BF925088(v5, a2, v3, a3);
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return sub_1BF9B5468();
}

id OUTLINED_FUNCTION_92_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_93_0()
{
  v2 = *(v0 + 40);

  return sub_1BF9B57A8();
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t OUTLINED_FUNCTION_109_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return sub_1BF9B5468();
}

uint64_t OUTLINED_FUNCTION_113_0(_OWORD *a1, _OWORD *a2)
{
  sub_1BF8C192C(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1BF95E7BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9D98, &qword_1BF9C2B78);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF95F418(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

double sub_1BF95E86C@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double SignalSubscriber.getConfiguratorProvider()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1BF95E88C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF95E930;

  return SignalSubscriber.getAsyncSubscriptions()(a1, a2);
}

uint64_t sub_1BF95E930()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  OUTLINED_FUNCTION_4();

  return v4(v2);
}

uint64_t sub_1BF95EA44()
{
  v1 = *(v0 + 16);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  (*(v3 + 8))(v2, v3);
  OUTLINED_FUNCTION_4();

  return v4();
}

uint64_t sub_1BF95EAF4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 16);
  sub_1BF9636D0();
  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t SignalSubscriber.getAsyncSubscriptions()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF95EB70, 0, 0);
}

uint64_t sub_1BF95EB70()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[4];
  (*(v0[3] + 8))(v0[2]);
  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t sub_1BF95EBDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF95FA3C;

  return SignalSubscriber.getAsyncLookupSubscriptions()(a1, a2);
}

uint64_t SignalSubscriber.getAsyncLookupSubscriptions()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(a2 + 24);
  OUTLINED_FUNCTION_5_0();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v2[4] = v7;
  *v7 = v2;
  v8 = OUTLINED_FUNCTION_0_20(v7);

  return v9(v8);
}

uint64_t sub_1BF95ED84()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*v0 + 32);
  v4 = *v0;
  *(*v0 + 40) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BF95EE80, 0, 0);
}

uint64_t sub_1BF95EE80()
{
  OUTLINED_FUNCTION_7();
  v1 = static SignalSubscriber.getAsyncLookupSubscriptions(from:)(*(v0 + 40));

  OUTLINED_FUNCTION_4();

  return v2(v1);
}

uint64_t static SignalSubscriber.getAsyncLookupSubscriptions(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return sub_1BF95E7BC(v2);
  }

  v3 = a1;
  v55 = MEMORY[0x1E69E7CC0];
  sub_1BF8D0708();
  v2 = v55;
  result = sub_1BF95F988(v3);
  v6 = result;
  v8 = v7;
  v9 = 0;
  v10 = v3 + 64;
  v33 = v3 + 72;
  v34 = v3;
  v39 = v1;
  v40 = v3 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v6 < 1 << *(v3 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v10 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_27;
      }

      v42 = v5;
      v43 = v2;
      v12 = *(*(v3 + 48) + 8 * v6);
      v13 = *(*(v3 + 56) + 8 * v6);
      sub_1BF8DFE40(v12 + 56, v53);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BB0, &qword_1BF9B86C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CF0, &unk_1BF9B8790);
      v14 = swift_dynamicCast();
      v41 = v8;
      if (v14)
      {
        sub_1BF8D5C74(&v44, v50);
        v15 = v51;
        v16 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        (*(v16 + 8))(&v44, v15, v16);
        v17 = *(&v45 + 1);
        v37 = v47;
        v38 = v46;
        v35 = v49;
        v36 = v48;
        v18 = __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
        v19 = *(*(v17 - 8) + 64);
        MEMORY[0x1EEE9AC00](v18);
        v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v22 + 16))(v21);
        AnySignalValue.init<A>(_:)(v21, v17, v38, v37, v36, v35, v53);
        v3 = v34;
        __swift_destroy_boxed_opaque_existential_1(&v44);
        __swift_destroy_boxed_opaque_existential_1(v50);
      }

      else
      {
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        sub_1BF95F6EC(&v44);
        sub_1BF8E0940(v12 + 56, v53);
      }

      sub_1BF8D2004(v12 + 16, &__dst[10]);
      memcpy(__dst, v53, 0x50uLL);

      v2 = v43;
      __dst[15] = v13;
      v55 = v43;
      v23 = *(v43 + 16);
      if (v23 >= *(v43 + 24) >> 1)
      {
        sub_1BF8D0708();
        v2 = v55;
      }

      *(v2 + 16) = v23 + 1;
      result = memcpy((v2 + (v23 << 7) + 32), __dst, 0x80uLL);
      v24 = 1 << *(v3 + 32);
      if (v6 >= v24)
      {
        goto LABEL_28;
      }

      v10 = v40;
      v25 = *(v40 + 8 * v11);
      if ((v25 & (1 << v6)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v3 + 36) != v42)
      {
        goto LABEL_30;
      }

      v26 = v25 & (-2 << (v6 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v11 << 6;
        v28 = v11 + 1;
        v29 = (v33 + 8 * v11);
        while (v28 < (v24 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1BF90E758(v6, v42, v41 & 1);
            v24 = __clz(__rbit64(v30)) + v27;
            goto LABEL_21;
          }
        }

        result = sub_1BF90E758(v6, v42, v41 & 1);
      }

LABEL_21:
      if (++v9 == v39)
      {
        return sub_1BF95E7BC(v2);
      }

      v8 = 0;
      v5 = *(v3 + 36);
      v6 = v24;
      if (v24 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1BF95F2FC()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_5_1(dword_1BF9C2CA0);
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v3[1] = sub_1BF95FA3C;

  return v6();
}

uint64_t sub_1BF95F38C()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_5_1(&unk_1BF9C2C90);
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v3[1] = sub_1BF95FA3C;

  return v6();
}

uint64_t sub_1BF95F418(uint64_t a1, char a2, void *a3)
{
  v36 = *(a1 + 16);
  if (!v36)
  {
  }

  v4 = a3;
  v6 = 0;
  v7 = a1 + 32;
  while (v6 < *(a1 + 16))
  {
    sub_1BF95F9C8(v7, __src);
    memcpy(__dst, __src, sizeof(__dst));
    v8 = v39;
    v9 = *v4;
    v11 = sub_1BF9B2C5C(__dst);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_28;
    }

    v15 = v10;
    v16 = v9[3];
    v40 = v7;
    if (v16 >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A00, &unk_1BF9C1020);
        sub_1BF9B53B8();
      }
    }

    else
    {
      sub_1BF95C964(v14);
      v17 = *v4;
      v18 = sub_1BF9B2C5C(__dst);
      if ((v15 & 1) != (v19 & 1))
      {
        goto LABEL_34;
      }

      v11 = v18;
    }

    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * v11);
      v23 = *(v8 + 16);
      v24 = *(v22 + 16);
      if (__OFADD__(v24, v23))
      {
        goto LABEL_30;
      }

      v25 = *(v21 + 8 * v11);

      if (!swift_isUniquelyReferenced_nonNull_native() || v24 + v23 > *(v22 + 24) >> 1)
      {
        sub_1BF8DDF88();
        v22 = v26;
      }

      if (*(v8 + 16))
      {
        if ((*(v22 + 24) >> 1) - *(v22 + 16) < v23)
        {
          goto LABEL_32;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8878, &unk_1BF9BC920);
        swift_arrayInitWithCopy();

        v4 = a3;
        if (v23)
        {
          v27 = *(v22 + 16);
          v28 = __OFADD__(v27, v23);
          v29 = v27 + v23;
          if (v28)
          {
            goto LABEL_33;
          }

          *(v22 + 16) = v29;
        }
      }

      else
      {

        v4 = a3;
        if (v23)
        {
          goto LABEL_31;
        }
      }

      sub_1BF9324B4(__dst);
      v32 = v20[7];
      v33 = *(v32 + 8 * v11);
      *(v32 + 8 * v11) = v22;
    }

    else
    {
      v20[(v11 >> 6) + 8] |= 1 << v11;
      memcpy((v20[6] + 120 * v11), __dst, 0x78uLL);
      *(v20[7] + 8 * v11) = v8;
      v30 = v20[2];
      v28 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v28)
      {
        goto LABEL_29;
      }

      v20[2] = v31;
    }

    ++v6;
    v7 = v40 + 128;
    a2 = 1;
    if (v36 == v6)
    {
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF95F6EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CF8, qword_1BF9C2C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of SignalSubscriber.getAsyncSubscriptions()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  OUTLINED_FUNCTION_5_0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_20(v7);

  return v10(v9);
}

uint64_t dispatch thunk of SignalSubscriber.getAsyncLookupSubscriptions()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_5_0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_20(v7);

  return v10(v9);
}

uint64_t sub_1BF95F988(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1BF9B51D8();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1BF95F9C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9DA8, &unk_1BF9C2CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1BF95FA40@<X0>(uint64_t (*result)(_BYTE *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>))(_BYTE *)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_1BF96510C(v7, v9, &qword_1EBDE8AD8, &qword_1BF9C3080);
      v8 = v4(v9);
      if (v3)
      {
        return sub_1BF8DFBF0(v9, &qword_1EBDE8AD8, &qword_1BF9C3080);
      }

      if (v8)
      {
        return memcpy(a3, v9, 0x50uLL);
      }

      result = sub_1BF8DFBF0(v9, &qword_1EBDE8AD8, &qword_1BF9C3080);
      v7 += 80;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

void *sub_1BF95FB38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BF963F48(*(a1 + 16), 0);
  v4 = sub_1BF96437C(&v6, (v3 + 4), v2, a1);
  sub_1BF90D2E8();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1BF95FBC8(uint64_t a1, uint64_t *a2)
{
  v47 = a2;
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0;
  v36 = a1 + 64;

  v35 = v7;
  while (v6)
  {
LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v8 << 6);
    v11 = (*(v2 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1BF9650B0(*(v2 + 56) + 48 * v10, &v46);
    v45[0] = v13;
    v45[1] = v12;
    sub_1BF96510C(v45, &v40, &qword_1EBDE9E50, &unk_1BF9C5070);

    sub_1BF96510C(v41, &v38, &qword_1EBDE9E58, &qword_1BF9C30B0);
    sub_1BF96515C(v41);
    if (v39)
    {
      sub_1BF8C2C9C(&v38, v42);
      v14 = v43;
      v15 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v16 = (*(*(v15 + 8) + 16))(v14);
      v18 = v17;
      sub_1BF8E69C4(v42, &v40);
      v19 = v47;
      v20 = *v47;
      swift_isUniquelyReferenced_nonNull_native();
      v21 = *v19;
      *&v38 = v21;
      v22 = sub_1BF8C2E64(v16, v18);
      if (__OFADD__(*(v21 + 16), (v23 & 1) == 0))
      {
        goto LABEL_23;
      }

      v24 = v22;
      v25 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E60, &qword_1BF9C30B8);
      if (sub_1BF9B53A8())
      {
        v26 = sub_1BF8C2E64(v16, v18);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_25;
        }

        v24 = v26;
      }

      v28 = v38;
      if (v25)
      {
        v29 = (*(v38 + 56) + 40 * v24);
        __swift_destroy_boxed_opaque_existential_1(v29);
        sub_1BF8C2C9C(&v40, v29);
      }

      else
      {
        *(v38 + 8 * (v24 >> 6) + 64) |= 1 << v24;
        v30 = (v28[6] + 16 * v24);
        *v30 = v16;
        v30[1] = v18;
        sub_1BF8C2C9C(&v40, v28[7] + 40 * v24);
        v31 = v28[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_24;
        }

        v28[2] = v33;
      }

      *v47 = v28;
      __swift_destroy_boxed_opaque_existential_1(v42);
      v3 = v36;
      v2 = v37;
      v7 = v35;
    }

    else
    {
      sub_1BF8DFBF0(&v38, &qword_1EBDE9E58, &qword_1BF9C30B0);
    }

    v6 &= v6 - 1;
    sub_1BF8DFBF0(v45, &qword_1EBDE9E50, &unk_1BF9C5070);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t SuggestionOwnerDefinitionBuilder.__allocating_init(owner:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_21_12();
  v2 = swift_allocObject();
  SuggestionOwnerDefinitionBuilder.init(owner:)(a1);
  return v2;
}

uint64_t *SuggestionOwnerDefinitionBuilder.init(owner:)(uint64_t *a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v4 = *v1;
  v1[7] = MEMORY[0x1E69E7CC0];
  v5.n128_f64[0] = OUTLINED_FUNCTION_14_11();
  v1[23] = 0;
  v1[24] = v3;
  OUTLINED_FUNCTION_36_8(v6, v5);
  *(v1 + 27) = 0u;
  *(v1 + 29) = 0u;
  *(v1 + 31) = 0u;
  *(v1 + 25) = 0u;
  *(v1 + 33) = 0u;
  *(v1 + 35) = 0u;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  v1[37] = sub_1BF9600B8;
  v1[38] = v7;
  v1[18] = v3;
  v1[44] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E08, &qword_1BF9C2CC0);
  sub_1BF932404();
  v8 = sub_1BF9B4988();
  __swift_destroy_boxed_opaque_existential_1(a1);
  v1[45] = v8;
  return v1;
}

uint64_t sub_1BF960030()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v0 = sub_1BF9600C0(0, 0, v4);
  sub_1BF8DFBF0(v2, &qword_1EBDE9E38, &qword_1BF9C2D10);
  sub_1BF8DFBF0(v4, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  return v0;
}

uint64_t sub_1BF9600C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF96510C(a3, &v20, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v4 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v5 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E78, &unk_1BF9C30D0);
    v4 = (*(v5 + 16))(v6, v6, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    sub_1BF8DFBF0(&v20, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  }

  if (qword_1EDBF57F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1BF9B47C8();
  __swift_project_value_buffer(v7, qword_1EDBF57F8);

  v8 = sub_1BF9B47A8();
  v9 = sub_1BF9B5038();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v20 = v11;
    *v10 = 136315138;
    v19[0] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E70, &qword_1BF9C30C8);
    v12 = sub_1BF9B4B08();
    v14 = sub_1BF8DE810(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1BF8B8000, v8, v9, "Using app discoverer as: %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFB5F320](v11, -1, -1);
    MEMORY[0x1BFB5F320](v10, -1, -1);
  }

  if (v4)
  {
    sub_1BF8F19D4(v4, &v20);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  sub_1BF96510C(a3, v19, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  v15 = type metadata accessor for OSFeatureFlagProvider();
  v16 = swift_allocObject();
  v16[2] = sub_1BF905224;
  v16[3] = 0;
  v16[4] = sub_1BF905228;
  v16[5] = 0;
  v18[3] = v15;
  v18[4] = &protocol witness table for OSFeatureFlagProvider;
  v18[0] = v16;
  type metadata accessor for ThirdPartySuggestionDetailsBuilderConfigurator();
  swift_allocObject();
  return sub_1BF96F164(&v20, v19, v18);
}

uint64_t SuggestionOwnerDefinitionBuilder.__allocating_init(owner:refreshableService:lifecycleContainer:featureFlagProvider:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1BF8E69C4(a1, v18);
  sub_1BF8E69C4(a4, v17);
  sub_1BF8E69C4(a5, v16);
  sub_1BF8E69C4(a4, v15);
  sub_1BF8E69C4(a5, v14);
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  sub_1BF8C2C9C(v15, (v11 + 4));
  sub_1BF8C2C9C(v14, (v11 + 9));
  v11[14] = v5;
  type metadata accessor for SuggestionOwnerDefinitionBuilder();
  v12 = swift_allocObject();
  swift_unknownObjectRetain();
  SuggestionOwnerDefinitionBuilder.init(owner:refreshableService:lifecycleContainer:featureFlagProvider:thirdPartyConfiguratorFactory:)(v18, a2, a3, v17, v16, sub_1BF960558, v11);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t sub_1BF9604B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BF8E69C4(a3, v10);
  sub_1BF8E69C4(a4, v9);
  v7 = sub_1BF9600C0(a1, a2, v10);
  sub_1BF8DFBF0(v9, &qword_1EBDE9E38, &qword_1BF9C2D10);
  sub_1BF8DFBF0(v10, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  return v7;
}

uint64_t SuggestionOwnerDefinitionBuilder.__allocating_init(owner:refreshableService:lifecycleContainer:featureFlagProvider:thirdPartyConfiguratorFactory:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_21_12();
  v14 = swift_allocObject();
  SuggestionOwnerDefinitionBuilder.init(owner:refreshableService:lifecycleContainer:featureFlagProvider:thirdPartyConfiguratorFactory:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void *SuggestionOwnerDefinitionBuilder.init(owner:refreshableService:lifecycleContainer:featureFlagProvider:thirdPartyConfiguratorFactory:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v15 = MEMORY[0x1E69E7CC0];
  v7[7] = MEMORY[0x1E69E7CC0];
  v16.n128_f64[0] = OUTLINED_FUNCTION_14_11();
  v7[23] = 0;
  v7[24] = v15;
  OUTLINED_FUNCTION_36_8(v17, v16);
  v7[25] = a2;
  v7[26] = a3;
  sub_1BF8E69C4(a4, (v7 + 27));
  sub_1BF8E69C4(a5, (v7 + 32));
  v7[37] = a6;
  v7[38] = a7;
  v7[18] = v15;
  v7[44] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9E08, &qword_1BF9C2CC0);
  sub_1BF932404();
  v18 = sub_1BF9B4988();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v7[45] = v18;
  return v7;
}

uint64_t sub_1BF960700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *))
{
  v10[0] = a3;
  v10[1] = a4;
  v11 = 0;

  sub_1BF960930(a1, a2, v10, a5);
  sub_1BF960A50(v10);
  return v5;
}

uint64_t sub_1BF960778(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  static SignalLookupKey.getLookupKey(for:)(a1, v8);
  v7 = v4;
  v5 = sub_1BF9607D8(v8, a2, &v7);
  sub_1BF9324B4(v8);
  return v5;
}

uint64_t sub_1BF9607D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for ActionIdentifier();
  v7 = OUTLINED_FUNCTION_13(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v12 = v11 - v10;
  v13 = *a3;
  sub_1BF8D2068(a2, v11 - v10);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for DefaultCandidateSuggestionConfigurator(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  sub_1BF960AA4(v12, v17 + OBJC_IVAR____TtC18SiriSuggestionsKit38DefaultCandidateSuggestionConfigurator_actionIdentifier);
  v18 = OUTLINED_FUNCTION_32_9();
  v22 = sub_1BF9644D4(v18, v19, v20, v21, v3);

  return v22;
}

uint64_t sub_1BF9608BC(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = a4[3];
  v9 = a4[4];
  v10 = __swift_project_boxed_opaque_existential_1(a4, v8);

  return sub_1BF964758(a1, a2, a3, v10, v4, v8, v9);
}

uint64_t sub_1BF960930(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v5 = v4;
  sub_1BF9649CC(a3, v13);
  v9 = type metadata accessor for InternalSuggestionDetailsBuilder();
  swift_allocObject();

  v10 = sub_1BF97E160(a1, a2, v13);
  v13[4] = &off_1F3EFDCB0;
  v13[5] = &off_1F3EFDBD0;
  v13[3] = v9;
  v13[0] = v10;

  a4(v13);
  v11 = OUTLINED_FUNCTION_23();
  MEMORY[0x1BFB5DFF0](v11);
  sub_1BF944CC4(*((*(v5 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF9B4DA8();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v5;
}

uint64_t sub_1BF960AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF960B08(uint64_t a1)
{
  sub_1BF8E69C4(a1, v3);
  OUTLINED_FUNCTION_11_2();
  sub_1BF964A28(v3, v1 + 64, &qword_1EBDE9E10, &qword_1BF9C2CC8);
  swift_endAccess();
}

uint64_t sub_1BF960B60(uint64_t a1)
{
  sub_1BF8E69C4(a1, v3);
  OUTLINED_FUNCTION_11_2();
  sub_1BF964A28(v3, v1 + 104, &qword_1EBDE9E18, &qword_1BF9C2CD0);
  swift_endAccess();
}

uint64_t sub_1BF960BB8()
{
  OUTLINED_FUNCTION_23();

  sub_1BF8D243C(v0);
  swift_endAccess();
}

uint64_t sub_1BF960C18(uint64_t a1)
{
  sub_1BF8E69C4(a1, v3);
  OUTLINED_FUNCTION_11_2();
  sub_1BF964A28(v3, v1 + 152, &qword_1EBDE9E20, &unk_1BF9C2CD8);
  swift_endAccess();
}

uint64_t sub_1BF960C70(uint64_t a1)
{
  sub_1BF8E69C4(a1, v3);
  OUTLINED_FUNCTION_11_2();
  sub_1BF964A28(v3, v1 + 312, &qword_1EBDE8E10, &qword_1BF9B9980);
  swift_endAccess();
}

uint64_t sub_1BF960CC8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_23();
  sub_1BF9439F0(v2, v3, v4);
  sub_1BF944C20();
  v5 = *(*(v1 + 352) + 16);
  sub_1BF944CAC(v5);
  v6 = *(v1 + 352);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 24 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  *(v7 + 48) = v4;
  *(v1 + 352) = v6;
  swift_endAccess();
}

uint64_t sub_1BF960D70@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v189 = type metadata accessor for ActionIdentifier();
  v4 = OUTLINED_FUNCTION_13(v189);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v188 = (v8 - v7);
  v9 = MEMORY[0x1E69E7CC8];
  v230[0] = MEMORY[0x1E69E7CC8];
  OUTLINED_FUNCTION_15_3();
  v10 = *(v3 + 56);
  v11 = sub_1BF91B6CC(v10);
  v12 = MEMORY[0x1E69E7CC0];
  v193 = v3;
  v199 = v11;
  if (v11)
  {
    v197 = v10 & 0xC000000000000001;
    v190 = v10 + 32;
    v191 = v10 & 0xFFFFFFFFFFFFFF8;

    v13 = 0;
    v14 = 0;
    v192 = 0;
    v15 = MEMORY[0x1E69E7CC8];
    v9 = &qword_1EBDE9E38;
    v16 = &qword_1BF9C2D10;
    v201 = v12;
    v195 = v10;
    while (1)
    {
      if (v197)
      {
        v211 = MEMORY[0x1BFB5E5E0](v14, v10);
      }

      else
      {
        v17 = *(v191 + 16);
        if (v14 >= v17)
        {
          goto LABEL_132;
        }

        v211 = *(v190 + 8 * v14);
      }

      v18 = __OFADD__(v14++, 1);
      if (v18)
      {
        goto LABEL_131;
      }

      v207 = v15;
      v203 = v14;
      if (v211[3])
      {
        sub_1BF96510C(v3 + 256, v217, &qword_1EBDE9E38, &qword_1BF9C2D10);
        v15 = *(&v217[1] + 1);
        if (*(&v217[1] + 1))
        {
          v19 = *&v217[2];
          __swift_project_boxed_opaque_existential_1(v217, *(&v217[1] + 1));
          v20 = (*(v19 + 40))(v15, v19);
          __swift_destroy_boxed_opaque_existential_1(v217);
          if (v20)
          {
            if (!v192)
            {
              if (qword_1EDBF57F0 != -1)
              {
                OUTLINED_FUNCTION_0_21();
                swift_once();
              }

              v21 = sub_1BF9B47C8();
              __swift_project_value_buffer(v21, qword_1EDBF57F8);
              v22 = sub_1BF9B47A8();
              v15 = sub_1BF9B5028();
              if (os_log_type_enabled(v22, v15))
              {
                v23 = swift_slowAlloc();
                *v23 = 0;
                _os_log_impl(&dword_1BF8B8000, v22, v15, "Setting up third party configurator", v23, 2u);
                OUTLINED_FUNCTION_87();
              }

              v24 = *(v3 + 304);
              v192 = (*(v3 + 296))();
            }

            if (qword_1EDBF57F0 != -1)
            {
              OUTLINED_FUNCTION_0_21();
              swift_once();
            }

            v25 = sub_1BF9B47C8();
            __swift_project_value_buffer(v25, qword_1EDBF57F8);

            v26 = sub_1BF9B47A8();
            v27 = sub_1BF9B5028();

            if (os_log_type_enabled(v26, v27))
            {
              swift_slowAlloc();
              v28 = OUTLINED_FUNCTION_63_2();
              v29 = OUTLINED_FUNCTION_6_13(v28);
              sub_1BF8DE810(v29, v30, v217);
              OUTLINED_FUNCTION_27_7();
              OUTLINED_FUNCTION_17_14();
              _os_log_impl(&dword_1BF8B8000, v26, v31, "Using third party configurator for suggestion: %s", v15, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(&unk_1BF9C2D00);
              OUTLINED_FUNCTION_87();
              OUTLINED_FUNCTION_54();
            }

            sub_1BF96DFC4(v211);
            goto LABEL_28;
          }
        }

        else
        {
          sub_1BF8DFBF0(v217, &qword_1EBDE9E38, &qword_1BF9C2D10);
        }
      }

      if (qword_1EDBF57F0 != -1)
      {
        OUTLINED_FUNCTION_0_21();
        swift_once();
      }

      v32 = sub_1BF9B47C8();
      __swift_project_value_buffer(v32, qword_1EDBF57F8);

      v33 = sub_1BF9B47A8();
      v34 = sub_1BF9B5028();

      if (os_log_type_enabled(v33, v34))
      {
        swift_slowAlloc();
        v35 = OUTLINED_FUNCTION_63_2();
        v36 = OUTLINED_FUNCTION_6_13(v35);
        sub_1BF8DE810(v36, v37, v217);
        OUTLINED_FUNCTION_27_7();
        OUTLINED_FUNCTION_17_14();
        _os_log_impl(&dword_1BF8B8000, v33, v38, "no 3P support configured for %s or 3P support disabled", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(&unk_1BF9C2D00);
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_54();
      }

LABEL_28:
      v39 = *(v3 + 192);
      v40 = *(v39 + 16);
      if (v40)
      {
        v41 = v39 + 32;
        v42 = *(v3 + 192);

        v2 = v211;
        do
        {
          sub_1BF8E69C4(v41, v217);
          v43 = *__swift_project_boxed_opaque_existential_1(v217, *(&v217[1] + 1));
          sub_1BF96DFC4(v211);
          __swift_destroy_boxed_opaque_existential_1(v217);
          v41 += 40;
          --v40;
        }

        while (v40);
      }

      else
      {
        v2 = v211;
      }

      v44 = *(v2 + 32);
      if (sub_1BF97AA80())
      {
        sub_1BF978FE4();
        sub_1BF8C4A08(v217, v216);
        v45 = v201;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = *(v201 + 16);
          OUTLINED_FUNCTION_28_0();
          sub_1BF8DE4A4();
          v45 = v108;
        }

        v47 = *(v45 + 16);
        v46 = *(v45 + 24);
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_11_3(v46);
          sub_1BF8DE4A4();
          v45 = v109;
        }

        *(v45 + 16) = v47 + 1;
        memcpy((v45 + 272 * v47 + 32), v216, 0x110uLL);
        OUTLINED_FUNCTION_15_3();
        sub_1BF96510C(v2 + 56, v216, &qword_1EBDE99C8, &unk_1BF9C2D00);
        v201 = v45;
        if (*(&v216[1] + 1))
        {
          sub_1BF8C2C9C(v216, &v227);
          v3 = &qword_1EBDE99C8;
        }

        else
        {
          *v188 = sub_1BF978FA0();
          v188[1] = v55;
          swift_storeEnumTagMultiPayload();
          v56 = type metadata accessor for DefaultCandidateSuggestionConfigurator(0);
          v57 = *(v56 + 48);
          v58 = *(v56 + 52);
          v59 = swift_allocObject();
          sub_1BF960AA4(v188, v59 + OBJC_IVAR____TtC18SiriSuggestionsKit38DefaultCandidateSuggestionConfigurator_actionIdentifier);
          v228 = v56;
          v229 = &protocol witness table for DefaultCandidateSuggestionConfigurator;
          *&v227 = v59;
          v3 = &qword_1EBDE99C8;
          if (*(&v216[1] + 1))
          {
            OUTLINED_FUNCTION_25_10();
            sub_1BF8DFBF0(v60, v61, v62);
          }
        }

        OUTLINED_FUNCTION_15_3();
        v63 = *(v2 + 40);

        v65 = sub_1BF927890(v64);
        v2 = 0;
        v16 = (v65 + 56);
        v66 = *(v65 + 56);
        v209 = v65;
        v67 = 1 << *(v65 + 32);
        if (v67 < 64)
        {
          v68 = ~(-1 << v67);
        }

        else
        {
          v68 = -1;
        }

        v69 = v68 & v66;
        v70 = (v67 + 63) >> 6;
        v15 = v207;
        v205 = v70;
        if ((v68 & v66) == 0)
        {
          while (1)
          {
LABEL_51:
            v71 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              __break(1u);
              goto LABEL_108;
            }

            if (v71 >= v70)
            {
              break;
            }

            v69 = v16[v71];
            ++v2;
            if (v69)
            {
              v2 = v71;
              goto LABEL_55;
            }
          }

          v105 = v211[4];
          OUTLINED_FUNCTION_15_3();
          if (*(v105 + 144))
          {

            sub_1BF95FBC8(v106, v230);

            sub_1BF8E9F70(v217);
          }

          else
          {
            sub_1BF8E9F70(v217);
          }

          v3 = v193;
          v10 = v195;
          v14 = v203;
          v9 = &qword_1EBDE9E38;
          v16 = &qword_1BF9C2D10;
          __swift_destroy_boxed_opaque_existential_1(&v227);
          goto LABEL_82;
        }

LABEL_55:
        while (2)
        {
          sub_1BF932458(*(v209 + 48) + 120 * (__clz(__rbit64(v69)) | (v2 << 6)), v216);
          memcpy(v215, v216, 0x78uLL);
          swift_beginAccess();
          v72 = v211[6];
          if (*(v72 + 16) && (v73 = sub_1BF9B2C5C(v215), (v74 & 1) != 0))
          {
            sub_1BF8E69C4(*(v72 + 56) + 40 * v73, v225);
          }

          else
          {
            v226 = 0;
            memset(v225, 0, sizeof(v225));
          }

          swift_endAccess();
          sub_1BF96510C(v225, &v213, &qword_1EBDE99C8, &unk_1BF9C2D00);
          if (v214)
          {
            sub_1BF8C2C9C(&v213, v212);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B28, &unk_1BF9B8640);
            v75 = swift_allocObject();
            *(v75 + 16) = xmmword_1BF9B6380;
            sub_1BF8E69C4(v212, v75 + 32);
            sub_1BF8E69C4(&v227, v75 + 72);
            static CandidateSuggestionConfigurators.merge(_:)(v75, &v222);
            swift_setDeallocating();
            sub_1BF906498();
            __swift_destroy_boxed_opaque_existential_1(v212);
            OUTLINED_FUNCTION_25_10();
            sub_1BF8DFBF0(v76, v77, v78);
            if (*(&v223 + 1))
            {
              sub_1BF8C2C9C(&v222, v225);
LABEL_65:
              sub_1BF8E69C4(v225, &v222);
              sub_1BF8C732C(v13);
              swift_isUniquelyReferenced_nonNull_native();
              *&v213 = v15;
              v9 = v15;
              v85 = sub_1BF9B2C5C(v215);
              v17 = *(v15 + 16);
              if (__OFADD__(v17, (v86 & 1) == 0))
              {
                __break(1u);
                goto LABEL_129;
              }

              v87 = v85;
              v88 = v86;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A00, &unk_1BF9C1020);
              v89 = sub_1BF9B53A8();
              v9 = v213;
              if (v89)
              {
                v90 = sub_1BF9B2C5C(v215);
                if ((v88 & 1) != (v91 & 1))
                {
LABEL_136:
                  result = sub_1BF9B5758();
                  __break(1u);
                  return result;
                }

                v87 = v90;
              }

              if ((v88 & 1) == 0)
              {
                OUTLINED_FUNCTION_26_12(v9 + 8 * (v87 >> 6));
                sub_1BF932458(v215, v92 + v87 * v93);
                *(*(v9 + 56) + 8 * v87) = MEMORY[0x1E69E7CC0];
                v94 = *(v9 + 16);
                v18 = __OFADD__(v94, 1);
                v17 = v94 + 1;
                if (v18)
                {
                  goto LABEL_130;
                }

                *(v9 + 16) = v17;
              }

              v95 = v9;
              v96 = *(v9 + 56);
              v97 = *(v96 + 8 * v87);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v96 + 8 * v87) = v97;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v102 = *(v97 + 16);
                OUTLINED_FUNCTION_28_0();
                sub_1BF8DDF88();
                v97 = v103;
                *(v96 + 8 * v87) = v103;
              }

              v100 = *(v97 + 16);
              v99 = *(v97 + 24);
              if (v100 >= v99 >> 1)
              {
                OUTLINED_FUNCTION_11_3(v99);
                sub_1BF8DDF88();
                *(v96 + 8 * v87) = v104;
              }

              v69 &= v69 - 1;
              __swift_destroy_boxed_opaque_existential_1(v225);
              sub_1BF9324B4(v215);
              v101 = *(v96 + 8 * v87);
              *(v101 + 16) = v100 + 1;
              sub_1BF8C2C9C(&v222, v101 + 40 * v100 + 32);
              v13 = sub_1BF96520C;
              v15 = v95;
              v3 = &qword_1EBDE99C8;
              v70 = v205;
              if (!v69)
              {
                goto LABEL_51;
              }

              continue;
            }
          }

          else
          {
            OUTLINED_FUNCTION_25_10();
            sub_1BF8DFBF0(v79, v80, v81);
            v222 = 0u;
            v223 = 0u;
            v224 = 0;
          }

          break;
        }

        sub_1BF8E69C4(&v227, v225);
        if (*(&v223 + 1))
        {
          OUTLINED_FUNCTION_25_10();
          sub_1BF8DFBF0(v82, v83, v84);
        }

        goto LABEL_65;
      }

      if (qword_1EDBF57F0 != -1)
      {
        OUTLINED_FUNCTION_0_21();
        swift_once();
      }

      v48 = sub_1BF9B47C8();
      __swift_project_value_buffer(v48, qword_1EDBF57F8);

      v49 = sub_1BF9B47A8();
      v50 = sub_1BF9B5048();

      if (os_log_type_enabled(v49, v50))
      {
        swift_slowAlloc();
        v51 = OUTLINED_FUNCTION_63_2();
        v52 = OUTLINED_FUNCTION_6_13(v51);
        sub_1BF8DE810(v52, v53, v217);
        OUTLINED_FUNCTION_27_7();
        OUTLINED_FUNCTION_17_14();
        _os_log_impl(&dword_1BF8B8000, v49, v54, "Unable to add suggestion: %s as the builder is not in a valid state. Check previous logs", 0, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(&unk_1BF9C2D00);
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_54();
      }

      v15 = v207;
      v9 = &qword_1EBDE9E38;
      v16 = &qword_1BF9C2D10;
      v10 = v195;
LABEL_82:
      if (v14 == v199)
      {
        v207 = v15;

        goto LABEL_85;
      }
    }
  }

  v207 = v9;
  v13 = 0;
  v201 = MEMORY[0x1E69E7CC0];
LABEL_85:
  OUTLINED_FUNCTION_15_3();
  v110 = *(v3 + 360);
  v194 = v110 + 64;
  v111 = 1 << *(v110 + 32);
  v112 = -1;
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  v3 = v112 & *(v110 + 64);
  v16 = ((v111 + 63) >> 6);
  v196 = v110;

  v211 = 0;
  v113 = 0;
  v191 = v13;
  if (!v3)
  {
LABEL_88:
    while (1)
    {
      v17 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        goto LABEL_102;
      }

      v3 = *(v194 + 8 * v17);
      ++v113;
      if (v3)
      {
        v113 = v17;
        goto LABEL_92;
      }
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

LABEL_92:
  while (1)
  {
    v114 = __clz(__rbit64(v3)) | (v113 << 6);
    sub_1BF932458(*(v196 + 48) + 120 * v114, v217);
    v115 = *(*(v196 + 56) + 8 * v114);
    v206 = v217[3];
    v202 = v217[0];
    v204 = v218;
    v198 = v217[4];
    v200 = v217[2];
    v116 = v219;
    v117 = v220;
    v118 = v221;
    v210 = v217[1];
    v119 = *(&v217[1] + 1);

    if (!v119)
    {
      break;
    }

    v217[0] = v202;
    v217[1] = v210;
    v217[2] = v200;
    v217[3] = v206;
    v217[4] = v198;
    v218 = v204;
    v219 = v116;
    v220 = v117;
    v221 = v118;
    sub_1BF8C732C(v211);
    v9 = v207;
    swift_isUniquelyReferenced_nonNull_native();
    *&v216[0] = v207;
    v120 = sub_1BF9B2C5C(v217);
    v17 = *(v207 + 16);
    v122 = (v121 & 1) == 0;
    v2 = v17 + v122;
    if (__OFADD__(v17, v122))
    {
      goto LABEL_133;
    }

    v123 = v120;
    v124 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9A00, &unk_1BF9C1020);
    v125 = sub_1BF9B53A8();
    v207 = *&v216[0];
    if (v125)
    {
      v126 = sub_1BF9B2C5C(v217);
      if ((v124 & 1) != (v127 & 1))
      {
        goto LABEL_136;
      }

      v123 = v126;
    }

    if ((v124 & 1) == 0)
    {
      v9 = v207;
      OUTLINED_FUNCTION_26_12(v207 + 8 * (v123 >> 6));
      sub_1BF932458(v217, v128 + v123 * v129);
      *(*(v207 + 56) + 8 * v123) = MEMORY[0x1E69E7CC0];
      v130 = *(v207 + 16);
      v18 = __OFADD__(v130, 1);
      v17 = v130 + 1;
      if (v18)
      {
        goto LABEL_134;
      }

      *(v207 + 16) = v17;
    }

    v3 &= v3 - 1;
    v9 = *(v207 + 56) + 8 * v123;
    sub_1BF8D2414(v115);
    sub_1BF9324B4(v217);
    v211 = sub_1BF96520C;
    if (!v3)
    {
      goto LABEL_88;
    }
  }

LABEL_102:

  v2 = sub_1BF95FB38(v131);
  v3 = v193;
  OUTLINED_FUNCTION_15_3();
  v132 = *(v193 + 144);
  v133 = *(v132 + 16);
  if (v133)
  {
    if (v133 == 1)
    {
      sub_1BF8F19D4(v132, v217);
      if (*(&v217[1] + 1))
      {
        sub_1BF8C2C9C(v217, v216);
        v134 = *(&v216[1] + 1);
        v135 = *&v216[2];
        __swift_project_boxed_opaque_existential_1(v216, *(&v216[1] + 1));
        *(&v215[1] + 1) = v134;
        *&v215[2] = *(v135 + 8);
        __swift_allocate_boxed_opaque_existential_1Tm(v215);
        OUTLINED_FUNCTION_11(v134);
        (*(v136 + 16))();
        goto LABEL_110;
      }

LABEL_108:
      sub_1BF8DFBF0(v217, &qword_1EBDE9E30, &unk_1BF9C2CF0);
      v139 = *(v3 + 144);
    }

    v141 = sub_1BF98746C(v140);

    v142 = type metadata accessor for UnionSignalExtractor();
    v143 = swift_allocObject();
    *(v143 + 16) = v141;
    *(&v216[1] + 1) = v142;
    v144 = sub_1BF965048(&qword_1EDBF27D0, 255, type metadata accessor for UnionSignalExtractor);
    *&v216[2] = v144;
    *&v216[0] = v143;
    __swift_project_boxed_opaque_existential_1(v216, v142);
    *(&v215[1] + 1) = v142;
    *&v215[2] = *(v144 + 8);
    __swift_allocate_boxed_opaque_existential_1Tm(v215);
    OUTLINED_FUNCTION_11(v142);
    (*(v145 + 16))();
LABEL_110:
    sub_1BF8E69C4(v3 + 16, v217);
    sub_1BF8C2C9C(v215, &v217[2] + 8);
    sub_1BF8DE3E4();
    v137 = v146;
    v9 = *(v146 + 16);
    v17 = *(v146 + 24);
    v16 = (v9 + 1);
    if (v9 < v17 >> 1)
    {
LABEL_111:
      *(v137 + 16) = v16;
      memcpy((v137 + 80 * v9 + 32), v217, 0x50uLL);
      if (qword_1EDBF4B40 != -1)
      {
        swift_once();
      }

      v147 = qword_1EDBF4B48;
      *(&v215[1] + 1) = type metadata accessor for DefaultOwner();
      *&v215[2] = sub_1BF965048(&qword_1EDBF36D0, 255, type metadata accessor for DefaultOwner);
      *&v215[0] = v147;
      v148 = *(&v216[1] + 1);
      v149 = *&v216[2];
      __swift_project_boxed_opaque_existential_1(v216, *(&v216[1] + 1));
      v228 = v148;
      v229 = *(v149 + 8);
      __swift_allocate_boxed_opaque_existential_1Tm(&v227);
      OUTLINED_FUNCTION_11(v148);
      (*(v150 + 16))();
      sub_1BF8C2C9C(v215, v217);
      sub_1BF8C2C9C(&v227, &v217[2] + 8);
      v151 = *(v137 + 16);
      v152 = *(v137 + 24);

      if (v151 >= v152 >> 1)
      {
        OUTLINED_FUNCTION_16_12();
        sub_1BF8DE3E4();
        v137 = v183;
      }

      v138 = v207;
      *(v137 + 16) = v151 + 1;
      OUTLINED_FUNCTION_29_7();
      __swift_destroy_boxed_opaque_existential_1(v216);
      goto LABEL_116;
    }

LABEL_135:
    OUTLINED_FUNCTION_11_3(v17);
    OUTLINED_FUNCTION_16_12();
    sub_1BF8DE3E4();
    v137 = v182;
    goto LABEL_111;
  }

  v137 = MEMORY[0x1E69E7CC0];
  v138 = v207;
LABEL_116:
  OUTLINED_FUNCTION_15_3();
  sub_1BF96510C(v3 + 104, v217, &qword_1EBDE9E18, &qword_1BF9C2CD0);
  if (*(&v217[1] + 1))
  {
    sub_1BF8C2C9C(v217, v216);
    v153 = type metadata accessor for SiriHelpOwner();
    inited = swift_initStaticObject();
    *(&v215[1] + 1) = v153;
    *&v215[2] = sub_1BF965048(&unk_1EDBF3C58, 255, type metadata accessor for SiriHelpOwner);
    *&v215[0] = inited;
    sub_1BF8C2C9C(v215, v217);
    sub_1BF8E69C4(v216, &v217[2] + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v184 = *(v137 + 16);
      OUTLINED_FUNCTION_28_0();
      sub_1BF8DE3E4();
      v137 = v185;
    }

    v156 = *(v137 + 16);
    v155 = *(v137 + 24);
    if (v156 >= v155 >> 1)
    {
      OUTLINED_FUNCTION_11_3(v155);
      OUTLINED_FUNCTION_16_12();
      sub_1BF8DE3E4();
      v137 = v186;
    }

    __swift_destroy_boxed_opaque_existential_1(v216);
    *(v137 + 16) = v156 + 1;
    OUTLINED_FUNCTION_29_7();
  }

  else
  {
    sub_1BF8DFBF0(v217, &qword_1EBDE9E18, &qword_1BF9C2CD0);
  }

  OUTLINED_FUNCTION_15_3();
  sub_1BF96510C(v3 + 64, v217, &qword_1EBDE9E10, &qword_1BF9C2CC8);
  v157 = type metadata accessor for DefaultSignalSubscriber();
  v158 = swift_allocObject();
  *(v158 + 16) = v138;
  OUTLINED_FUNCTION_15_3();
  sub_1BF96510C(v3 + 152, v216, &qword_1EBDE9E20, &unk_1BF9C2CD8);
  v159 = type metadata accessor for DefaultGeneration();
  OUTLINED_FUNCTION_44_0();
  v160 = swift_allocObject();
  *(v160 + 80) = v157;
  *(v160 + 88) = &off_1F3EFC9A0;
  *(v160 + 56) = v158;
  *(v160 + 120) = &type metadata for BuilderSignalExtractorProvider;
  v161 = sub_1BF964AC0();
  v162 = v217[1];
  *(v160 + 16) = v217[0];
  *(v160 + 32) = v162;
  v163 = v216[1];
  *(v160 + 136) = v216[0];
  *(v160 + 128) = v161;
  *(v160 + 96) = v137;
  *(v160 + 48) = *&v217[2];
  *(v160 + 152) = v163;
  *(v160 + 168) = *&v216[2];
  sub_1BF8E69C4(v3 + 16, v217);
  sub_1BF96510C(v3 + 216, v216, &qword_1EBDE9E28, &qword_1BF9C2CE8);
  OUTLINED_FUNCTION_15_3();
  sub_1BF96510C(v3 + 312, &v227, &qword_1EBDE8E10, &qword_1BF9B9980);
  if (v228)
  {
    sub_1BF8C2C9C(&v227, v215);
  }

  else
  {
    v164 = type metadata accessor for NoOpSuggestionFilter();
    v165 = swift_initStaticObject();
    *(&v215[1] + 1) = v164;
    *&v215[2] = &protocol witness table for NoOpSuggestionFilter;
    *&v215[0] = v165;
    v166 = v228;

    if (v166)
    {
      sub_1BF8DFBF0(&v227, &qword_1EBDE8E10, &qword_1BF9B9980);
    }
  }

  OUTLINED_FUNCTION_15_3();
  v167 = *(v3 + 352);
  v208 = type metadata accessor for DefaultSuggestionsOwnerDefinition();
  OUTLINED_FUNCTION_44_0();
  v168 = swift_allocObject();
  v228 = v159;
  v229 = &off_1F3EFC970;
  *&v227 = v160;
  sub_1BF8E69C4(&v227, v168 + 16);
  sub_1BF8E69C4(v217, v225);
  sub_1BF8E69C4(v215, &v222);
  v169 = type metadata accessor for DefaultTargetOwnerDefinition();
  v170 = swift_allocObject();
  v171 = *(&v223 + 1);
  v172 = v224;
  v173 = __swift_mutable_project_boxed_opaque_existential_1(&v222, *(&v223 + 1));
  v174 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v173);
  OUTLINED_FUNCTION_17();
  v177 = v176 - v175;
  (*(v178 + 16))(v176 - v175);
  v179 = sub_1BF94039C(v201, v2, v225, v177, v167, v170, v171, v172);

  __swift_destroy_boxed_opaque_existential_1(&v222);
  *(v168 + 80) = v169;
  *(v168 + 88) = &protocol witness table for DefaultTargetOwnerDefinition;
  *(v168 + 56) = v179;

  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v227);
  sub_1BF8C2C9C(v217, v168 + 96);
  v180 = v216[1];
  *(v168 + 136) = v216[0];
  *(v168 + 152) = v180;
  *(v168 + 168) = *&v216[2];
  a1[3] = v208;
  a1[4] = &off_1F3EFC948;

  sub_1BF8C732C(v191);
  result = sub_1BF8C732C(v211);
  *a1 = v168;
  return result;
}