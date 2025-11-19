uint64_t sub_26BD925B8()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_26BDA0370();
  v0[6] = v3;
  OUTLINED_FUNCTION_18(v3);
  v0[7] = v4;
  (*(v5 + 16))(v1, v2);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_26BD926B0;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return sub_26BD99C88(v9, v7);
}

uint64_t sub_26BD926B0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_26_2();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD927B4()
{
  v1 = 0;
  v2 = *(v0 + 72);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v6 = (63 - v4) >> 6;
  if (v5)
  {
    while (1)
    {
      v7 = v1;
LABEL_9:
      v8 = *(v20 + 16);
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (v7 << 10) | (16 * v9);
      v11 = (*(v2 + 48) + v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = (*(v2 + 56) + v10);
      v15 = *v14;
      v16 = v14[1];

      sub_26BDA0360();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  v18 = *(v20 + 72);

  OUTLINED_FUNCTION_25_1();

  return v19();
}

uint64_t sub_26BD92918()
{
  OUTLINED_FUNCTION_30_2();
  (*(v0[7] + 8))(v0[2], v0[6]);
  OUTLINED_FUNCTION_25_1();
  v2 = v0[10];

  return v1();
}

uint64_t sub_26BD92984()
{
  v0 = sub_26BDA0310();
  if (!v0)
  {
    goto LABEL_5;
  }

  if (!*(v0 + 16))
  {

LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  sub_26BD31908(0xD000000000000010, 0x800000026BDAFE50);
  v2 = v1;

  return v2 & 1;
}

uint64_t sub_26BD929F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
  *(v4 + 88) = a2;
  *(v4 + 232) = a1;
  v5 = sub_26BDA0370();
  *(v4 + 112) = v5;
  v6 = *(v5 - 8);
  *(v4 + 120) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v8 = *(*(sub_26BDA0C00() - 8) + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v9 = sub_26BDA0510();
  *(v4 + 144) = v9;
  v10 = *(v9 - 8);
  *(v4 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580) - 8) + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_26BD92B88, 0, 0);
}

uint64_t sub_26BD92B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_19_8();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  if (*(v24 + 232) == 1)
  {
    if (qword_280448F58 != -1)
    {
      swift_once();
    }

    v27 = qword_28045A008;
  }

  else
  {
    v27 = [objc_opt_self() defaultSessionConfiguration];
  }

  *(v24 + 184) = v27;
  v29 = *(v24 + 88);
  v28 = *(v24 + 96);
  v30 = *(type metadata accessor for HTTPRequestManager() + 24);

  v31 = sub_26BDA0B20();
  v32 = sub_26BDA0D70();

  if (os_log_type_enabled(v31, v32))
  {
    a11 = v29;
    v34 = *(v24 + 168);
    v33 = *(v24 + 176);
    v35 = *(v24 + 144);
    v36 = OUTLINED_FUNCTION_77_2();
    v37 = OUTLINED_FUNCTION_21_3();
    a13 = v37;
    *v36 = 136315138;
    swift_beginAccess();
    sub_26BDA0330();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v35);
    v39 = *(v24 + 168);
    if (EnumTagSinglePayload)
    {
      sub_26BD94608(*(v24 + 168));
      swift_endAccess();
      v40 = 0xEB000000004C5255;
      v41 = 0x206E776F6E6B6E55;
    }

    else
    {
      v42 = *(v24 + 152);
      v43 = *(v24 + 160);
      a10 = *(v24 + 144);
      (*(v42 + 16))(v43, v39);
      sub_26BD94608(v39);
      swift_endAccess();
      v41 = sub_26BDA04D0();
      v40 = v44;
      (*(v42 + 8))(v43, a10);
    }

    v45 = sub_26BD93910(v41, v40, &a13);

    *(v36 + 4) = v45;
    _os_log_impl(&dword_26BCD0000, v31, v32, "[SupportServices] Making a SupportServices API request to %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
  }

  else
  {
  }

  v46 = *(v24 + 176);
  swift_beginAccess();
  sub_26BDA0340();
  v48 = v47;
  swift_endAccess();
  v49 = sub_26BDA0B20();
  v50 = sub_26BDA0D80();
  v51 = os_log_type_enabled(v49, v50);
  if (v48 >> 60 == 15)
  {
    if (v51)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26BCD0000, v49, v50, "[SupportServices] Empty API request body", v52, 2u);
      OUTLINED_FUNCTION_61_1();
    }

    goto LABEL_20;
  }

  if (v51)
  {
    v53 = *(v24 + 136);
    v54 = OUTLINED_FUNCTION_77_2();
    v55 = OUTLINED_FUNCTION_21_3();
    a13 = v55;
    *v54 = 136315138;
    sub_26BDA0BF0();
    OUTLINED_FUNCTION_216();
    v56 = sub_26BDA0BE0();
    if (v57)
    {
      v58 = v57;
    }

    else
    {
      v56 = 0x20676E6973726150;
      v58 = 0xEE0064656C696166;
    }

    v59 = sub_26BD93910(v56, v58, &a13);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_26BCD0000, v49, v50, "[SupportServices] API request body: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
    v60 = OUTLINED_FUNCTION_216();
    sub_26BD945F4(v60, v61);
LABEL_20:

    goto LABEL_22;
  }

  v62 = OUTLINED_FUNCTION_216();
  sub_26BD945F4(v62, v63);
LABEL_22:
  v64 = *(v24 + 176);
  v65 = *(v24 + 120);
  v66 = *(v24 + 128);
  v67 = *(v24 + 112);
  v68 = *(v24 + 88);
  v70 = *v68;
  v69 = v68[1];
  swift_beginAccess();
  (*(v65 + 16))(v66, v64, v67);
  v83 = v70 + *v70;
  v71 = v70[1];
  v72 = swift_task_alloc();
  *(v24 + 192) = v72;
  *v72 = v24;
  v72[1] = sub_26BD9305C;
  v73 = *(v24 + 128);
  OUTLINED_FUNCTION_20_8();

  return v76(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, v83, a13, a14, a15, a16);
}

uint64_t sub_26BD9305C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;
  OUTLINED_FUNCTION_9_4();
  *v10 = v9;
  v11 = v8[24];
  *v10 = *v4;
  v9[25] = v3;

  v12 = v8[16];
  v13 = v8[15];
  v14 = v8[14];
  if (!v3)
  {
    v9[26] = a3;
    v9[27] = a2;
    v9[28] = a1;
  }

  (*(v13 + 8))(v12, v14);
  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_26BD931EC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 104);
  v12 = *(v0 + 216);

  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  *v6 = vextq_s8(v12, v12, 8uLL);
  v6[2] = v1;
  sub_26BD944BC(v7, v8, v9);

  OUTLINED_FUNCTION_25_1();

  return v10();
}

uint64_t sub_26BD932B8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);

  OUTLINED_FUNCTION_25_1();
  v6 = *(v0 + 200);

  return v5();
}

uint64_t sub_26BD93348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[4] = a3;
  v7 = sub_26BDA0E80();
  v5[7] = v7;
  OUTLINED_FUNCTION_38_4(v7);
  v5[8] = v8;
  v10 = *(v9 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = sub_26BDA0CC0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v5[11] = v11;
  v5[12] = v13;

  return MEMORY[0x2822009F8](sub_26BD9344C, v11, v13);
}

uint64_t sub_26BD9344C()
{
  OUTLINED_FUNCTION_34_3();
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[4];
  v0[13] = sub_26BDA0EA0();
  v0[14] = sub_26BD945AC(&qword_28044B130, MEMORY[0x277D85928]);
  sub_26BDA0FF0();
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_26BD935A0;
  v6 = v0[5];

  return v8();
}

uint64_t sub_26BD935A0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_26_2();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v8 = v7;
  v3[16] = v0;

  if (v0)
  {
    (*(v3[8] + 8))(v3[10], v3[7]);
    v9 = v3[11];
    v10 = v3[12];
    v11 = sub_26BD937CC;
  }

  else
  {
    v9 = v3[11];
    v10 = v3[12];
    v11 = sub_26BD936B8;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_26BD936B8()
{
  OUTLINED_FUNCTION_34_3();
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  sub_26BDA0FF0();
  sub_26BD945AC(&qword_28044B138, MEMORY[0x277D858F8]);
  sub_26BDA0EB0();
  v8 = *(v6 + 8);
  v8(v4, v5);
  v8(v3, v5);
  v9 = v0[2];
  v10 = v0[3];

  v11 = v0[1];

  return v11(v9, v10);
}

uint64_t sub_26BD937CC()
{
  OUTLINED_FUNCTION_30_2();
  v2 = v0[9];
  v1 = v0[10];

  OUTLINED_FUNCTION_25_1();
  v4 = v0[16];

  return v3();
}

void sub_26BD93830(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26BD9480C(a1, a3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28044B148, &qword_26BDA9EF8);
  *(a3 + *(v5 + 36)) = a2;
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = *(v5 + 40);
    sub_26BDA0BD0();

    sub_26BDA0B30();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26BD93910(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_41_2();
  v9 = sub_26BD939D0(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_26BD94550(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

unint64_t sub_26BD939D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26BD93AD0(a5, a6);
    *a1 = v9;
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
    result = sub_26BDA0E20();
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

uint64_t sub_26BD93AD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_26BD93B1C(a1, a2);
  sub_26BD93C34(&unk_287CB0338);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26BD93B1C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26BDA0C30())
  {
    result = sub_26BD93D18(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26BDA0DE0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26BDA0E20();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26BD93C34(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_26BD93D88(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26BD93D18(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B110, &qword_26BDA9EC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26BD93D88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B110, &qword_26BDA9EC8);
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

uint64_t sub_26BD93E7C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26BD94080(result, 1, sub_26BD88E6C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for HMTSolution.Article();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26BD93F90(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26BD94080(result, 1, sub_26BD88FC4);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B088, &unk_26BDA9D10);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26BD94080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_26BD940F8(uint64_t a1)
{
  v2 = sub_26BDA1110();
  v3 = OUTLINED_FUNCTION_18(v2);
  v40 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v35 - v10;
  if (!*(a1 + 16))
  {
    v12 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B118, &unk_26BDA9ED0);
  result = sub_26BDA0DD0();
  v12 = result;
  v39 = *(a1 + 16);
  if (!v39)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v43 = result + 56;
  v14 = *(v40 + 80);
  v37 = a1;
  v38 = a1 + ((v14 + 32) & ~v14);
  v42 = v40 + 16;
  v15 = (v40 + 8);
  v36 = (v40 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v40 + 72);
    v41 = v13 + 1;
    v17 = *(v40 + 16);
    v17(v44, v38 + v16 * v13, v2);
    v18 = *(v12 + 40);
    OUTLINED_FUNCTION_6_6();
    sub_26BD945AC(&qword_28044B120, v19);
    v20 = sub_26BDA0B90();
    v21 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v43 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) == 0)
      {
        break;
      }

      v26 = v12;
      v17(v9, *(v12 + 48) + v22 * v16, v2);
      OUTLINED_FUNCTION_6_6();
      sub_26BD945AC(&qword_28044B128, v27);
      v28 = sub_26BDA0BB0();
      v29 = *v15;
      v30 = OUTLINED_FUNCTION_216();
      v29(v30);
      if (v28)
      {
        result = (v29)(v44, v2);
        v12 = v26;
        goto LABEL_12;
      }

      v20 = v22 + 1;
      v12 = v26;
    }

    v31 = v44;
    *(v43 + 8 * v23) = v25 | v24;
    result = (*v36)(*(v12 + 48) + v22 * v16, v31, v2);
    v32 = *(v12 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_17;
    }

    *(v12 + 16) = v34;
LABEL_12:
    v13 = v41;
    a1 = v37;
    if (v41 == v39)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26BD9440C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26BD8A0C0;

  return sub_26BD929F0(v2, v3, v4, v5);
}

void sub_26BD944BC(uint64_t a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    sub_26BCFF01C(a1, a2);
  }
}

unint64_t sub_26BD944FC()
{
  result = qword_28044B108;
  if (!qword_28044B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B108);
  }

  return result;
}

uint64_t sub_26BD94550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26BD945AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BD945F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BCFF01C(a1, a2);
  }

  return a1;
}

uint64_t sub_26BD94608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BD94670(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26BD94688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B140, &unk_26BDA9EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD946F8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26BD94748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationHeadersProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD947AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BD9480C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationHeadersProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_0_13()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[43];
  v7 = v0[39];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[38];
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return swift_slowAlloc();
}

uint64_t sub_26BD9494C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *a1 == *a2;
  if ((*(a1 + 80) & 1) == 0)
  {
    return v3 & ~v2;
  }

  v4 = v2 & v3;
  if (*(a1 + 8) == *(a2 + 8))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD9499C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 81))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BD949DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BD94AA0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAB70]) init];
  [v1 ak_addClientInfoHeader];
  [v1 ak_addDeviceUDIDHeader];
  v2 = sub_26BD94D6C(v1);
  if (!v2)
  {
    v2 = sub_26BDA0B70();
  }

  v3 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  sub_26BD9EE60(0xD000000000000022, 0x800000026BDAFE90, 0xD000000000000010, 0x800000026BDAFE70);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_26BD94BE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD94C6C;

  return sub_26BD94A84();
}

uint64_t sub_26BD94C6C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_26BD94D6C(void *a1)
{
  v1 = [a1 allHTTPHeaderFields];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26BDA0B60();

  return v3;
}

uint64_t sub_26BD94DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26BD31908(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  return swift_unknownObjectRetain();
}

id sub_26BD94E3C()
{
  result = sub_26BD94E5C();
  qword_28045A008 = result;
  return result;
}

id sub_26BD94E5C()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  v1 = [objc_allocWithZone(MEMORY[0x277CF0188]) init];
  [v0 set:v1 appleIDContext:?];

  return v0;
}

uint64_t sub_26BD94EE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_26BDA0B40();
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_26BD94F90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_26BDA0B40();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AuthenticationHeadersProvider()
{
  result = qword_28044B158;
  if (!qword_28044B158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BD9505C()
{
  sub_26BD95130(319, &qword_28044B168, &qword_28044B170, 0x277CB8F48);
  if (v0 <= 0x3F)
  {
    sub_26BD95130(319, &qword_28044B178, &qword_28044B180, 0x277CF0178);
    if (v1 <= 0x3F)
    {
      sub_26BDA0B40();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD95130(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_26BD95188(255, a3, a4);
    v5 = sub_26BDA0DA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26BD95188(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_26BD951E8()
{
  v1 = **(v0 + 112);
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 aida_accountForPrimaryiCloudAccount];
    *(v0 + 128) = v3;
    if (v3)
    {
      v4 = v3;
      v5 = swift_task_alloc();
      *(v0 + 136) = v5;
      *v5 = v0;
      v5[1] = sub_26BD95328;
      v6 = *(v0 + 112);

      return sub_26BD95674(v4);
    }
  }

  sub_26BD96B18();
  swift_allocError();
  *v8 = 0;
  *(v8 + 8) = 1;
  swift_willThrow();
  OUTLINED_FUNCTION_25_1();

  return v9();
}

uint64_t sub_26BD95328()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3[10] = v1;
  v3[11] = v2;
  v3[12] = v4;
  v3[13] = v0;
  v5 = v3[17];
  v6 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v7 = v6;
  *(v9 + 144) = v8;
  *(v9 + 152) = v0;

  if (v0)
  {
    v10 = sub_26BD95614;
  }

  else
  {
    v10 = sub_26BD95434;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26BD95434()
{
  v1 = sub_26BD97234(*(v0 + 128));
  if (v2)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 88);
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v22 = v1;
    v23 = v2;
    MEMORY[0x26D695B80](58, 0xE100000000000000);
    MEMORY[0x26D695B80](v4, v3);

    v7 = sub_26BD95A40(v22, v23);
    v9 = v8;
    v10 = sub_26BDA05B0();
    v12 = v11;
    sub_26BCFF01C(v7, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B190, &qword_26BDAA1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26BDA1A00;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000026BDAFE50;
    *(inited + 48) = v10;
    *(inited + 56) = v12;
    v14 = sub_26BDA0B70();

    v15 = *(v0 + 8);

    return v15(v14);
  }

  else
  {
    v17 = *(v0 + 144);
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);

    sub_26BD96B18();
    swift_allocError();
    *v20 = 3;
    *(v20 + 8) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_25_1();

    return v21();
  }
}

uint64_t sub_26BD95614()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 120);

  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_25_1();

  return v3();
}

uint64_t sub_26BD95674(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BD95694, 0, 0);
}

uint64_t sub_26BD95694()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v1 + *(type metadata accessor for AuthenticationHeadersProvider() + 28);
    v3 = sub_26BDA0B20();
    v4 = sub_26BDA0D70();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Forcing GS token refresh due to retry…";
LABEL_12:
      _os_log_impl(&dword_26BCD0000, v3, v4, v6, v5, 2u);
      MEMORY[0x26D6966B0](v5, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v7 = v0[2];
  v8 = sub_26BDA0BC0();
  v9 = [v7 aida:v8 tokenWithExpiryCheckForService:?];

  v10 = v0[3];
  if (!v9)
  {
    v20 = v10 + *(type metadata accessor for AuthenticationHeadersProvider() + 28);
    v3 = sub_26BDA0B20();
    v4 = sub_26BDA0D70();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Did not find cached valid GS token, fetching a new one…";
      goto LABEL_12;
    }

LABEL_13:

    v21 = swift_task_alloc();
    v0[4] = v21;
    *v21 = v0;
    v21[1] = sub_26BD9593C;
    v22 = v0[2];
    v23 = v0[3];

    return sub_26BD96090(v22);
  }

  v11 = sub_26BDA0BD0();
  v13 = v12;

  v14 = v10 + *(type metadata accessor for AuthenticationHeadersProvider() + 28);
  v15 = sub_26BDA0B20();
  v16 = sub_26BDA0D70();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26BCD0000, v15, v16, "Using cached GS token", v17, 2u);
    MEMORY[0x26D6966B0](v17, -1, -1);
  }

  v18 = v0[1];

  return v18(v11, v13);
}

uint64_t sub_26BD9593C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_3();
  v7 = *(v6 + 32);
  v8 = *v3;
  OUTLINED_FUNCTION_9_4();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (!v2)
  {
    v10 = a1;
    v11 = a2;
  }

  return v12(v10, v11);
}

uint64_t sub_26BD95A40(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B198, &qword_26BDAA0B0);
  if (swift_dynamicCast())
  {
    sub_26BD94670(v35, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_26BDA04A0();
    v35[0] = v37;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_26BD97560(v35, &qword_28044B1A0, &qword_26BDAA0B8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26BDA0E20();
  }

  sub_26BD96B6C(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x26D6954E0](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v35[0]);
  v10 = sub_26BD96C88(sub_26BD97334);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_26BDA0570();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_26BD97350(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_26BDA0C30();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_26BDA0C60();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_26BDA0E20();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_26BD97350(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_26BDA0C40();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      sub_26BDA0590();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    sub_26BDA0590();
    sub_26BD945F4(v34, v6);
    goto LABEL_58;
  }

  sub_26BD945F4(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_26BCFEFC4(*&v35[0], *(&v35[0] + 1));

  sub_26BCFF01C(v31, *(&v31 + 1));
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

unint64_t sub_26BD95F58(uint64_t a1, char a2)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        OUTLINED_FUNCTION_1_8();
        result = v5 + 15;
        break;
      case 2:
        OUTLINED_FUNCTION_1_8();
        result = v3 + 6;
        break;
      case 3:
        OUTLINED_FUNCTION_1_8();
        result = v4 + 7;
        break;
      default:
        result = 0xD000000000000012;
        break;
    }
  }

  else
  {
    sub_26BDA0DF0();
    MEMORY[0x26D695B80](0xD00000000000001FLL, 0x800000026BDAFFA0);
    type metadata accessor for ACAccountCredentialRenewResult();
    sub_26BDA0EC0();
    return 0;
  }

  return result;
}

uint64_t sub_26BD96090(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_26BD960B0, 0, 0);
}

uint64_t sub_26BD960B0()
{
  v1 = v0[4];
  v2 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  v0[6] = v2;
  [v2 setAuthenticationType_];
  [v2 setIsUsernameEditable_];
  [v2 setServiceType_];
  v3 = sub_26BDA0BC0();
  [v2 setServiceIdentifier_];

  [v2 setShouldUpdatePersistentServiceTokens_];
  v4 = sub_26BD97234(v1);
  if (v5)
  {
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      sub_26BD97298(v4, v5, v2);
    }

    else
    {
    }
  }

  v7 = *(v0[5] + 8);
  v0[7] = v7;
  if (v7)
  {
    v8 = swift_task_alloc();
    v0[8] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v2;
    v9 = *(MEMORY[0x277D85A40] + 4);
    v10 = v7;
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v11[1] = sub_26BD96314;
    v12 = MEMORY[0x277D837D0];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000018, 0x800000026BDAFEC0, sub_26BD9742C, v8, v12);
  }

  else
  {
    sub_26BD96B18();
    swift_allocError();
    *v13 = 1;
    *(v13 + 8) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_25_1();

    return v14();
  }
}

uint64_t sub_26BD96314()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  v4 = *(v2 + 72);
  v5 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = sub_26BD96488;
  }

  else
  {
    v8 = *(v3 + 64);

    v7 = sub_26BD96420;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BD96420()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_26BD96488()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = *(v0 + 80);
  OUTLINED_FUNCTION_25_1();

  return v4();
}

void sub_26BD964F4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_26BD974BC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BD968CC;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  [a2 authenticateWithContext:a3 completion:v13];
  _Block_release(v13);
}

void sub_26BD966AC(uint64_t a1, id a2)
{
  if (a2)
  {
    *&v15 = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8);
    sub_26BDA0CD0();
    return;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = *MEMORY[0x277CEFFA0];
  v5 = sub_26BDA0BD0();
  v7 = sub_26BD94DD0(v5, v6, a1);

  if (!v7)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
LABEL_9:
    v9 = 0;
    v15 = 0u;
    v16 = 0u;
LABEL_10:
    sub_26BD97560(&v15, &qword_28044B1B8, &qword_26BDAA0E8);
    goto LABEL_11;
  }

  *&v13 = 0xD000000000000022;
  *(&v13 + 1) = 0x800000026BDAFE90;
  v9 = v8;
  v10 = [v9 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v10)
  {
    sub_26BDA0DB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8);
    sub_26BDA0CE0();
    goto LABEL_12;
  }

LABEL_11:
  sub_26BD96B18();
  v11 = swift_allocError();
  *v12 = 2;
  *(v12 + 8) = 1;
  *&v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8);
  sub_26BDA0CD0();
LABEL_12:
}

uint64_t sub_26BD968CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1B0, &qword_26BDAA0E0);
    v4 = sub_26BDA0B60();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_26BD9699C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD96A28;

  return sub_26BD951C8();
}

uint64_t sub_26BD96A28()
{
  OUTLINED_FUNCTION_30_2();
  v3 = v2;
  OUTLINED_FUNCTION_40_3();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_26BD96B18()
{
  result = qword_28044B188;
  if (!qword_28044B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B188);
  }

  return result;
}

uint64_t sub_26BD96B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_26BDA0520();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_26BDA0490();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_26BDA0450();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_26BDA0560();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_26BD96C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_26BD9711C(sub_26BD9740C, v5, a1, a2);
}

uint64_t sub_26BD96C88(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26BCFF01C(v6, v5);
      *v4 = xmmword_26BDA19C0;
      sub_26BCFF01C(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_26BDA0460() && __OFSUB__(v6, sub_26BDA0480()))
      {
        goto LABEL_24;
      }

      v13 = sub_26BDA0490();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_26BDA0440();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_26BD97180(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26BCFF01C(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_26BDA19C0;
      sub_26BCFF01C(0, 0xC000000000000000);
      sub_26BDA0530();
      v6 = v20;
      v9 = sub_26BD97180(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_26BCFF01C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_26BD9705C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_26BDA0520();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x26D6954A0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x26D6954B0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_26BD970D4(uint64_t result)
{
  if (result)
  {
    result = sub_26BDA0E00();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26BD9711C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_26BD97180(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26BDA0460();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26BDA0480();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26BDA0470();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_26BD97234(void *a1)
{
  v1 = [a1 aida_alternateDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26BDA0BD0();

  return v3;
}

void sub_26BD97298(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26BDA0BC0();

  [a3 setAltDSID_];
}

void *sub_26BD972FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_26BD96C34(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_26BD97350(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26BDA0C70();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D695BB0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26BD973CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_26BD970D4(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_26BD97434()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8);
  OUTLINED_FUNCTION_5_7(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26BD974BC(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8) - 8) + 80);

  sub_26BD966AC(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BD97560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_7(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_26BD975FC()
{
  sub_26BDA0DF0();

  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_26BDA0BD0();
  v4 = v3;

  MEMORY[0x26D695B80](v2, v4);

  qword_28044B1C0 = 0xD00000000000001ALL;
  *algn_28044B1C8 = 0x800000026BDB0070;
  return result;
}

uint64_t sub_26BD9770C()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0[2];
  v2 = sub_26BDA0340();
  v0[3] = v2;
  v0[4] = v3;
  if (v3 >> 60 == 15)
  {
    v4 = sub_26BDA0B70();
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v9 = swift_task_alloc();
    v0[5] = v9;
    *v9 = v0;
    v9[1] = sub_26BD97810;

    return sub_26BD979F4(v7, v8);
  }
}

uint64_t sub_26BD97810(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  OUTLINED_FUNCTION_9_4();
  *v7 = v6;
  *(v4 + 48) = v1;

  if (v1)
  {
    v8 = sub_26BD97994;
  }

  else
  {
    *(v4 + 56) = a1;
    v8 = sub_26BD97930;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26BD97930()
{
  OUTLINED_FUNCTION_30_2();
  sub_26BD945F4(v0[3], v0[4]);
  v1 = v0[7];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_26BD97994()
{
  OUTLINED_FUNCTION_30_2();
  sub_26BD945F4(v0[3], v0[4]);
  v1 = v0[1];
  v2 = v0[6];

  return v1();
}

uint64_t sub_26BD979F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
  return OUTLINED_FUNCTION_0_14();
}

uint64_t sub_26BD97A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1D0, &qword_26BDAA1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BDA4B30;
  v2 = *MEMORY[0x277D048E0];
  *(inited + 32) = sub_26BDA0BD0();
  v3 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v4;
  *(inited + 48) = 0xD000000000000029;
  *(inited + 56) = 0x800000026BDAFFC0;
  v5 = *MEMORY[0x277D048D8];
  *(inited + 80) = sub_26BDA0BD0();
  *(inited + 88) = v6;
  if (qword_280448F60 != -1)
  {
    swift_once();
  }

  v7 = qword_28044B1C0;
  v8 = *algn_28044B1C8;
  *(inited + 120) = v3;
  *(inited + 96) = v7;
  *(inited + 104) = v8;
  v9 = *MEMORY[0x277D048E8];
  *(inited + 128) = sub_26BDA0BD0();
  v10 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 136) = v11;
  *(inited + 144) = 60;
  v12 = *MEMORY[0x277D04950];
  *(inited + 176) = sub_26BDA0BD0();
  *(inited + 216) = v10;
  *(inited + 184) = v13;
  *(inited + 192) = 262800;
  v14 = *MEMORY[0x277D048A0];
  *(inited + 224) = sub_26BDA0BD0();
  *(inited + 232) = v15;

  v16 = sub_26BD97F50();
  v18 = v0[43];
  v17 = v0[44];
  type metadata accessor for SecAccessControl();
  *(inited + 264) = v19;
  *(inited + 240) = v16;
  v20 = *MEMORY[0x277D04928];
  *(inited + 272) = sub_26BDA0BD0();
  *(inited + 280) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF78, &qword_26BDAA1C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26BDA1990;
  v23 = *MEMORY[0x277D04930];
  *(v22 + 32) = sub_26BDA0BD0();
  *(v22 + 40) = v24;
  v25 = *MEMORY[0x277D04908];
  *(v22 + 48) = sub_26BDA0BD0();
  *(v22 + 56) = v26;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E0, &qword_26BDAA1C8);
  *(inited + 288) = v22;
  v27 = sub_26BDA0B70();
  v0[45] = v27;
  v28 = swift_task_alloc();
  v0[46] = v28;
  v28[2] = v27;
  v28[3] = v18;
  v28[4] = v17;
  v29 = *(MEMORY[0x277D85A40] + 4);
  v30 = swift_task_alloc();
  v0[47] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E8, &qword_26BDAA1D0);
  *v30 = v0;
  v30[1] = sub_26BD97DB4;

  return MEMORY[0x2822008A0](v0 + 42, 0, 0, 0xD000000000000010, 0x800000026BDAFFF0, sub_26BD995CC, v28, v31);
}

uint64_t sub_26BD97DB4()
{
  OUTLINED_FUNCTION_30_2();
  v3 = *(*v1 + 376);
  v2 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v4 = v2;
  v2[48] = v0;

  if (v0)
  {
    v5 = sub_26BD97EE8;
  }

  else
  {
    v6 = v2[45];
    v7 = v2[46];

    v5 = sub_26BD97ECC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BD97EE8()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0[45];
  v2 = v0[46];

  v3 = v0[48];
  v4 = v0[1];

  return v4();
}

SecAccessControlRef sub_26BD97F50()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v0 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, v7);
  if (!v0)
  {
    v1 = v7[0];
    if (v7[0])
    {
      type metadata accessor for CFError();
      sub_26BD99820();
      v2 = OUTLINED_FUNCTION_72_1();
      *v3 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_26BD99758();
    OUTLINED_FUNCTION_72_1();
    *v4 = v2;
    *(v4 + 8) = 0;
    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_26BD98038(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1F0, &qword_26BDAA1D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  sub_26BD98244(a2);
  v13 = sub_26BDA0B50();

  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v9 + 32))(v15 + v14, v12, v8);
  aBlock[4] = sub_26BD996A8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BD98B40;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);
  sub_26BCFEFC4(a3, a4);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v16);
}

uint64_t sub_26BD98244(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B210, &qword_26BDAA1E8);
    v2 = sub_26BDA0F20();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_26BD94550(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_26BD99878(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_26BD99878(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_26BD99878(v32, v33);
    v15 = *(v2 + 40);
    result = sub_26BDA0DC0();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_26BD99878(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_26BD98508(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || !a2)
  {
    goto LABEL_8;
  }

  v9 = a1;
  v10 = sub_26BD9892C(a2);
  if (!v10)
  {

LABEL_8:
    sub_26BD99758();
    swift_allocError();
    *v12 = a3;
    *(v12 + 8) = 2;
    swift_willThrow();
    v13 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1F0, &qword_26BDAA1D8);
    return sub_26BDA0CD0();
  }

  v11 = v10;
  if (!sub_26BD99548(v10))
  {

    goto LABEL_8;
  }

  v43 = sub_26BD98A18(a4, a5, v9);
  v44 = v15;
  v16 = sub_26BD99548(v11);
  v45 = v9;
  if (!v16)
  {
LABEL_18:

    v31 = sub_26BDA03D0();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    sub_26BDA03C0();
    sub_26BD997CC();
    v34 = sub_26BDA03B0();
    v36 = v35;

    v37 = sub_26BD98BF4();
    v39 = v38;
    sub_26BCFF01C(v34, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B190, &qword_26BDAA1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26BDA1990;
    strcpy((inited + 32), "X-Apple-Baa-S");
    *(inited + 46) = -4864;
    *(inited + 48) = sub_26BDA05B0();
    *(inited + 56) = v41;
    *(inited + 64) = 0x2D656C7070412D58;
    *(inited + 72) = 0xEB00000000616142;
    *(inited + 80) = sub_26BDA05B0();
    *(inited + 88) = v42;
    sub_26BDA0B70();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1F0, &qword_26BDAA1D8);
    sub_26BDA0CE0();

    sub_26BCFF01C(v43, v44);
    sub_26BCFF01C(v37, v39);
  }

  v17 = v16;
  v47 = MEMORY[0x277D84F90];
  result = sub_26BD997AC(0, v16 & ~(v16 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v46 = v17;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D695D70](v18, v11);
      }

      else
      {
        v19 = *(v11 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = SecCertificateCopyData(v19);
      v22 = sub_26BDA05D0();
      v24 = v23;

      v25 = sub_26BDA05B0();
      v27 = v26;
      sub_26BCFF01C(v22, v24);

      v29 = *(v47 + 16);
      v28 = *(v47 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_26BD997AC(v28 > 1, v29 + 1, 1);
      }

      ++v18;
      *(v47 + 16) = v29 + 1;
      v30 = v47 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
    }

    while (v46 != v18);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD9892C(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_26BDA0E50();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_26BD94550(v3, v6);
    type metadata accessor for SecCertificate();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_26BDA0E30();
    v4 = *(v7 + 16);
    sub_26BDA0E60();
    sub_26BDA0E70();
    sub_26BDA0E40();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_26BD98A18(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v4 = *MEMORY[0x277CDC300];
  v5 = sub_26BDA05A0();
  Signature = SecKeyCreateSignature(a3, v4, v5, v14);

  if (Signature)
  {
    v7 = Signature;
    v8 = sub_26BDA05D0();
  }

  else
  {
    v9 = v14[0];
    if (v14[0])
    {
      type metadata accessor for CFError();
      sub_26BD99820();
      v8 = OUTLINED_FUNCTION_72_1();
      *v10 = v9;
    }

    else
    {
      v8 = 0;
    }

    sub_26BD99758();
    OUTLINED_FUNCTION_72_1();
    *v11 = v8;
    *(v11 + 8) = 1;
    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_26BD98B40(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_26BDA0C90();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

void *sub_26BD98BF4()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_26BDA05A0();
  v6[0] = 0;
  v1 = [v0 compressedDataUsingAlgorithm:3 error:v6];

  v2 = v6[0];
  if (v1)
  {
    v3 = sub_26BDA05D0();
  }

  else
  {
    v3 = v2;
    sub_26BDA04B0();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_26BD98CC8(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_4_6();
    sub_26BDA0DF0();

    OUTLINED_FUNCTION_1_9();
    v10 = v4 + 5;
    if (a1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a2 == 1)
  {
    OUTLINED_FUNCTION_4_6();
    sub_26BDA0DF0();

    OUTLINED_FUNCTION_1_9();
    v10 = v3;
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v6 = 0x3E6C696E3CLL;
    v8 = 0xE500000000000000;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_6();
  sub_26BDA0DF0();

  OUTLINED_FUNCTION_1_9();
  v10 = v5 + 8;
  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_8:
  swift_getErrorValue();
  v6 = sub_26BDA1000();
  v8 = v7;
LABEL_10:
  MEMORY[0x26D695B80](v6, v8);

  return v10;
}

BOOL sub_26BD98E04()
{
  v0 = sub_26BDA0F30();

  return v0 != 0;
}

uint64_t sub_26BD98E60(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B218, &qword_26BDAA370);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BD99940();
  sub_26BDA1090();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E0, &qword_26BDAA1C8);
  sub_26BD99994(&qword_28044B228);
  sub_26BDA0F80();
  return (*(v5 + 8))(v8, v4);
}

void *sub_26BD98FE0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B230, &qword_26BDAA378);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BD99940();
  sub_26BDA1080();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E0, &qword_26BDAA1C8);
    sub_26BD99994(&qword_28044B238);
    sub_26BDA0F70();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_26BD991B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26BD99248;

  return sub_26BD976F8(a1);
}

uint64_t sub_26BD99248()
{
  OUTLINED_FUNCTION_30_2();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_26BD9933C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1D8, &qword_26BDAA1B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_26BD993B4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26BD98E04();
  *a2 = result;
  return result;
}

uint64_t sub_26BD993E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BD98E4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_26BD99414@<W0>(_BYTE *a1@<X8>)
{
  result = sub_26BD98E04();
  *a1 = result;
  return result;
}

uint64_t sub_26BD9945C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BD343C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26BD99488(uint64_t a1)
{
  v2 = sub_26BD99940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BD994C4(uint64_t a1)
{
  v2 = sub_26BD99940();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26BD99500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26BD98FE0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26BD99548(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_26BD9956C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1D8, &qword_26BDAA1B8);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26BD995D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1F0, &qword_26BDAA1D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  sub_26BCFF01C(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26BD996A8(void *a1, uint64_t a2, void *a3)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1F0, &qword_26BDAA1D8) - 8) + 80);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);

  return sub_26BD98508(a1, a2, a3, v8, v9);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BD99758()
{
  result = qword_28044B1F8;
  if (!qword_28044B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B1F8);
  }

  return result;
}

uint64_t sub_26BD997AC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_26BD803F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_26BD997CC()
{
  result = qword_28044B200;
  if (!qword_28044B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B200);
  }

  return result;
}

unint64_t sub_26BD99820()
{
  result = qword_28044B208;
  if (!qword_28044B208)
  {
    type metadata accessor for CFError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B208);
  }

  return result;
}

_OWORD *sub_26BD99878(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26BD998A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BD998E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_26BD99940()
{
  result = qword_28044B220;
  if (!qword_28044B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B220);
  }

  return result;
}

uint64_t sub_26BD99994(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28044B1E0, &qword_26BDAA1C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Attestation.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for Attestation.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x26BD99AF0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26BD99B34()
{
  result = qword_28044B240;
  if (!qword_28044B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B240);
  }

  return result;
}

unint64_t sub_26BD99B8C()
{
  result = qword_28044B248;
  if (!qword_28044B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B248);
  }

  return result;
}

unint64_t sub_26BD99BE4()
{
  result = qword_28044B250;
  if (!qword_28044B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B250);
  }

  return result;
}

uint64_t sub_26BD99C88(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  OUTLINED_FUNCTION_41_2();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26BD99CB8()
{
  OUTLINED_FUNCTION_31_4();
  v1 = *(v0 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E8, &qword_26BDAA1D0);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 56) = v6;
  *v6 = v7;
  v6[1] = sub_26BD99DBC;

  return MEMORY[0x282200740](v0 + 16, v2, v2, 0, 0, &unk_26BDAA508, v3, v2);
}

uint64_t sub_26BD99DBC()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_26_2();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26BD99EDC()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_25_1();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_26BD99F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = sub_26BDA0370();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v5[22] = *(v7 + 64);
  v5[23] = swift_task_alloc();
  v8 = *(type metadata accessor for CompositeHTTPHeadersProvider() - 8);
  v5[24] = v8;
  v5[25] = *(v8 + 64);
  v5[26] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B258, &qword_26BDAA510) - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B260, &qword_26BDAA518);
  v5[29] = v10;
  v11 = *(v10 - 8);
  v5[30] = v11;
  v12 = *(v11 + 64) + 15;
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD9A114, 0, 0);
}

uint64_t sub_26BD9A114()
{
  v1 = **(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v33 = *(v0 + 192);
    v3 = v1 + 32;
    v31 = **(v0 + 128);
    v32 = *(v0 + 168);
    v30 = *(v0 + 200) + 7;
    v29 = *(v0 + 176) + 7;
    v4 = sub_26BDA0D30();
    do
    {
      v39 = v2;
      v35 = *(v0 + 224);
      v37 = *(v0 + 216);
      v5 = *(v0 + 208);
      v6 = *(v0 + 184);
      v7 = *(v0 + 160);
      v34 = v6;
      v36 = *(v0 + 152);
      v8 = *(v0 + 136);
      v9 = *(v0 + 144);
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v4);
      sub_26BD9B360(v8, v5);
      v38 = v3;
      sub_26BD8A3D8(v3, v0 + 16);
      (*(v32 + 16))(v6, v9, v7);
      v10 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v11 = (v30 + v10) & 0xFFFFFFFFFFFFFFF8;
      v12 = (*(v32 + 80) + v11 + 40) & ~*(v32 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      v14 = (v13 + 16);
      *(v13 + 24) = 0;
      sub_26BD9B58C(v5, v13 + v10);
      sub_26BD94670((v0 + 16), v13 + v11);
      (*(v32 + 32))(v13 + v12, v34, v7);
      *(v13 + ((v29 + v12) & 0xFFFFFFFFFFFFFFF8)) = v36;
      sub_26BD9B778(v35, v37);
      LODWORD(v10) = __swift_getEnumTagSinglePayload(v37, 1, v4);

      v15 = *(v0 + 216);
      if (v10 == 1)
      {
        sub_26BD9B7E8(*(v0 + 216));
      }

      else
      {
        sub_26BDA0D20();
        (*(*(v4 - 8) + 8))(v15, v4);
      }

      if (*v14)
      {
        v16 = *(v13 + 24);
        v17 = *v14;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_26BDA0CC0();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E8, &qword_26BDAA1D0);
      v21 = v20 | v18;
      if (v20 | v18)
      {
        v21 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v18;
        *(v0 + 80) = v20;
      }

      v22 = *(v0 + 224);
      *(v0 + 88) = 1;
      *(v0 + 96) = v21;
      *(v0 + 104) = v31;
      swift_task_create();

      sub_26BD9B7E8(v22);
      v3 = v38 + 40;
      v2 = v39 - 1;
    }

    while (v39 != 1);
  }

  v23 = *(v0 + 248);
  v24 = **(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E8, &qword_26BDAA1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  sub_26BDA0D50();
  *(v0 + 256) = MEMORY[0x277D84F98];
  sub_26BD9B850();
  v25 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 264) = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_1_10(v26);

  return MEMORY[0x282200308](v0 + 112);
}

uint64_t sub_26BD9A500()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_26_2();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v8 = v7;
  v3[34] = v0;

  if (v0)
  {
    v9 = v3[32];
    (*(v3[30] + 8))(v3[31], v3[29]);
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26BD9A61C()
{
  v17 = v0;
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[34];
    v3 = v0[32];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v3;
    sub_26BD9BFC4(v1, sub_26BD9C280, 0, isUniquelyReferenced_nonNull_native, &v16);
    v0[32] = v16;
    sub_26BD9B850();
    v5 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_35_4();
    v0[33] = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_1_10();

    return MEMORY[0x282200308](v0 + 14);
  }

  else
  {
    v8 = v0[32];
    v10 = v0[27];
    v9 = v0[28];
    v11 = v0[26];
    v12 = v0[23];
    v13 = v0[15];
    (*(v0[30] + 8))(v0[31], v0[29]);
    *v13 = v8;

    OUTLINED_FUNCTION_25_1();

    return v14();
  }
}

uint64_t sub_26BD9A7A0()
{
  OUTLINED_FUNCTION_31_4();
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[23];

  OUTLINED_FUNCTION_25_1();
  v7 = v0[34];

  return v6();
}

uint64_t sub_26BD9A830(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_26BD8A458;

  return sub_26BD99F38(a1, a2, v6, v7, v8);
}

uint64_t type metadata accessor for CompositeHTTPHeadersProvider()
{
  result = qword_28044B288;
  if (!qword_28044B288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BD9A93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v7[15] = a1;
  v8 = *(*(sub_26BDA10E0() - 8) + 64) + 15;
  v7[20] = swift_task_alloc();
  v9 = *(*(sub_26BDA10C0() - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v10 = *(*(sub_26BDA1130() - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v11 = sub_26BDA1140();
  v7[23] = v11;
  v12 = *(v11 - 8);
  v7[24] = v12;
  v13 = *(v12 + 64) + 15;
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD9AA88, 0, 0);
}

uint64_t sub_26BD9AA88()
{
  v23 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = type metadata accessor for CompositeHTTPHeadersProvider();
  *(v0 + 264) = *(v3 + 24);
  sub_26BD8A3D8(v1, v0 + 16);
  v4 = sub_26BDA0B20();
  v5 = sub_26BDA0D70();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
    OUTLINED_FUNCTION_10_2(v9);
    v11 = v10(v8, v9);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v14 = sub_26BD93910(v11, v13, &v22);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_26BCD0000, v4, v5, "Computing headers using %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v15 = *(v0 + 152);
  v16 = *(v0 + 128);
  *(v0 + 112) = 0;
  v17 = *(v3 + 20);
  v18 = swift_task_alloc();
  *(v0 + 208) = v18;
  v19 = *(v0 + 136);
  *(v18 + 16) = v0 + 112;
  *(v18 + 24) = v19;
  *(v18 + 40) = v15;
  v20 = swift_task_alloc();
  *(v0 + 216) = v20;
  *v20 = v0;
  v20[1] = sub_26BD9ACC4;

  return sub_26BD93348(0, 0, &unk_26BDAA550, v18);
}

uint64_t sub_26BD9ACC4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_3();
  v7 = v6;
  OUTLINED_FUNCTION_26_2();
  *v8 = v7;
  v10 = *(v9 + 216);
  v11 = *v3;
  OUTLINED_FUNCTION_9_4();
  *v12 = v11;
  v7[28] = v2;

  if (!v2)
  {
    v13 = v7[26];
    v7[29] = a2;
    v7[30] = a1;
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26BD9ADEC()
{
  OUTLINED_FUNCTION_31_4();
  v1 = v0[19];
  v2 = v0[17];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  OUTLINED_FUNCTION_10_2(v4);
  v0[31] = v5(v3, v4);
  v0[32] = v6;

  return MEMORY[0x2822009F8](sub_26BD9AE84, v1, 0);
}

uint64_t sub_26BD9AE84()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0[19];
  sub_26BD9E364(v0[30], v0[29], v0[31], v0[32]);

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

void sub_26BD9AEF8()
{
  v38 = v0;
  v32 = *(v0 + 232);
  v33 = *(v0 + 240);
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v34 = *(v0 + 136);
  v35 = *(v0 + 128);
  v36 = *(v0 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B0F8, &qword_26BDA9EC0);
  v7 = sub_26BDA1110();
  OUTLINED_FUNCTION_38_4(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26BDA1990;
  sub_26BDA1100();
  sub_26BDA10F0();
  sub_26BD940F8(v12);
  sub_26BDA1120();
  sub_26BDA10B0();
  sub_26BDA10D0();
  sub_26BDA10A0();
  sub_26BD9C404();
  sub_26BDA1150();
  (*(v2 + 8))(v1, v3);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  sub_26BD8A3D8(v34, v0 + 56);

  v15 = sub_26BDA0B20();
  v16 = sub_26BDA0D70();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v18);
    OUTLINED_FUNCTION_10_2(v19);
    v21 = v20(v18, v19);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v24 = sub_26BD93910(v21, v23, &v37);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_26BD93910(v14, v13, &v37);
    _os_log_impl(&dword_26BCD0000, v15, v16, "Computed headers using %s in %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v25 = *(v0 + 112);
  if (v25)
  {
    v26 = *(v0 + 200);
    v28 = *(v0 + 168);
    v27 = *(v0 + 176);
    v29 = *(v0 + 160);
    v30 = *(v0 + 120);

    *v30 = v25;

    OUTLINED_FUNCTION_25_1();

    v31();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26BD9B244()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  v7 = v0[17];

  v8 = v0[14];

  v9 = v7[3];
  v10 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v9);
  OUTLINED_FUNCTION_10_2(v10);
  v12 = v11(v9, v10);
  v14 = v13;
  sub_26BD9C3B0();
  swift_allocError();
  *v15 = v12;
  v15[1] = v14;
  v15[2] = v1;
  swift_willThrow();

  OUTLINED_FUNCTION_25_1();

  return v16();
}

uint64_t sub_26BD9B360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositeHTTPHeadersProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD9B3C4()
{
  v1 = (type metadata accessor for CompositeHTTPHeadersProvider() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_26BDA0370();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 40) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = (v0 + v3);
  v13 = *v12;

  v14 = v1[7];
  v15 = sub_26BDA0EA0();
  OUTLINED_FUNCTION_5_7(v15);
  (*(v16 + 8))(&v12[v14]);
  v17 = v1[8];
  v18 = sub_26BDA0B40();
  OUTLINED_FUNCTION_5_7(v18);
  (*(v19 + 8))(&v12[v17]);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4));
  (*(v6 + 8))(v0 + v8, v5);
  v20 = *(v0 + v10);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v9 | 7);
}

uint64_t sub_26BD9B58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositeHTTPHeadersProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD9B5F0(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for CompositeHTTPHeadersProvider();
  OUTLINED_FUNCTION_38_4(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_26BDA0370();
  OUTLINED_FUNCTION_38_4(v10);
  v12 = (v9 + *(v11 + 80) + 40) & ~*(v11 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_26BD8A0C0;

  return sub_26BD9A93C(a1, v14, v15, v1 + v7, v1 + v9, v1 + v12, v16);
}

uint64_t sub_26BD9B778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B258, &qword_26BDAA510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD9B7E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B258, &qword_26BDAA510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BD9B850()
{
  result = qword_28044B268;
  if (!qword_28044B268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28044B260, &qword_26BDAA518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B268);
  }

  return result;
}

uint64_t sub_26BD9B8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BD9B8D8, 0, 0);
}

uint64_t sub_26BD9B8D8()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_26BD9BA04;
  v8 = v0[4];
  v7 = v0[5];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_26BD9BA04()
{
  OUTLINED_FUNCTION_31_4();
  v3 = v2;
  OUTLINED_FUNCTION_40_3();
  v5 = v4;
  OUTLINED_FUNCTION_26_2();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 56) = v3;
    OUTLINED_FUNCTION_41_2();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_26BD9BB38()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 16);
  v2 = *v1;
  *v1 = *(v0 + 56);

  OUTLINED_FUNCTION_25_1();

  return v3();
}

uint64_t sub_26BD9BBC0()
{
  OUTLINED_FUNCTION_31_4();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_26BD96A28;

  return sub_26BD99C88(v4, v2);
}

uint64_t sub_26BD9BC60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B278, &qword_26BDAA540);
  v39 = a2;
  result = sub_26BDA0F10();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_26BD9BF14(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
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
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    sub_26BDA1050();
    sub_26BDA0C10();
    result = sub_26BDA1070();
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
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
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

uint64_t sub_26BD9BF14(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26BDAA4E0;
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

uint64_t sub_26BD9BF78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_26BD9BFC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  sub_26BD9C2C4(a1, a2, a3, v53);
  v6 = v53[1];
  v7 = v53[3];
  v8 = v53[4];
  v45 = v53[5];
  v46 = v53[0];
  v9 = (v53[2] + 64) >> 6;

  v43 = v9;
  v44 = v6;
  if (v8)
  {
    while (1)
    {
      v47 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v46 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v46 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v52[0] = v14;
      v52[1] = v15;
      v52[2] = v17;
      v52[3] = v18;

      v45(&v48, v52);

      v19 = v48;
      v20 = v49;
      v21 = v50;
      v22 = v51;
      v23 = *v54;
      v25 = sub_26BD31908(v48, v49);
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (*(v23 + 24) >= v28)
      {
        if ((v47 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B270, &qword_26BDAA538);
          sub_26BDA0EE0();
        }
      }

      else
      {
        v30 = v54;
        sub_26BD9BC60(v28, v47 & 1);
        v31 = *v30;
        v32 = sub_26BD31908(v19, v20);
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v25 = v32;
      }

      v8 &= v8 - 1;
      v34 = *v54;
      if (v29)
      {

        v35 = (v34[7] + 16 * v25);
        v36 = v35[1];
        *v35 = v21;
        v35[1] = v22;
      }

      else
      {
        v34[(v25 >> 6) + 8] |= 1 << v25;
        v37 = (v34[6] + 16 * v25);
        *v37 = v19;
        v37[1] = v20;
        v38 = (v34[7] + 16 * v25);
        *v38 = v21;
        v38[1] = v22;
        v39 = v34[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_23;
        }

        v34[2] = v41;
      }

      a4 = 1;
      v7 = v10;
      v9 = v43;
      v6 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_26BD9C300();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_26BDA0FE0();
  __break(1u);
  return result;
}

uint64_t sub_26BD9C280@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26BD9BF78(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_26BD9C2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_26BD9C308()
{
  OUTLINED_FUNCTION_31_4();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26BD8A458;

  return sub_26BD9B8B4(v2, v3, v5, v4);
}

unint64_t sub_26BD9C3B0()
{
  result = qword_28044B280;
  if (!qword_28044B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B280);
  }

  return result;
}

unint64_t sub_26BD9C404()
{
  result = qword_28044B100;
  if (!qword_28044B100)
  {
    sub_26BDA1140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B100);
  }

  return result;
}

uint64_t sub_26BD9C470(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26BDA0EA0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_26BDA0B40();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26BD9C550(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26BDA0EA0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_26BDA0B40();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_26BD9C618()
{
  sub_26BD9C6B4();
  if (v0 <= 0x3F)
  {
    sub_26BDA0EA0();
    if (v1 <= 0x3F)
    {
      sub_26BDA0B40();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD9C6B4()
{
  if (!qword_28044B298[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28044B088, &unk_26BDA9D10);
    v0 = sub_26BDA0CB0();
    if (!v1)
    {
      atomic_store(v0, qword_28044B298);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_10(uint64_t result)
{
  *(result + 8) = sub_26BD9A500;
  v2 = *(v1 + 248);
  v3 = *(v1 + 232);
  return result;
}

uint64_t sub_26BD9C794()
{
  v1 = sub_26BDA0B70();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26BD9C830()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD94C6C;

  return sub_26BD9C778();
}

void sub_26BD9C8C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_26BD309DC();
    if (v3 <= 0x3F)
    {
      sub_26BDA0B40();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26BD9C964(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_26BDA0B40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  if (a2 <= v12)
  {
    goto LABEL_26;
  }

  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_26;
      }

LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_26;
      }

LABEL_18:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        switch(v16)
        {
          case 2:
            LODWORD(v16) = *a1;
            break;
          case 3:
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v16) = *a1;
            break;
          default:
            LODWORD(v16) = *a1;
            break;
        }
      }

      return v12 + (v16 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_18;
    }
  }

LABEL_26:
  if (v7 == v12)
  {
    v22 = a1;
    v10 = v7;
    v15 = v5;
LABEL_33:

    return __swift_getEnumTagSinglePayload(v22, v10, v15);
  }

  v23 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v22 = (v23 + v14 + 8) & ~v14;
    goto LABEL_33;
  }

  v24 = *v23;
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  return (v24 + 1);
}

void sub_26BD9CBCC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_26BDA0B40();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + *(*(v10 - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        return;
      case 2:
        *&a1[v17] = v21;
        return;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v17] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_51:
      __break(1u);
      JUMPOUT(0x26BD9CEB8);
    case 4:
      *&a1[v17] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (!a2)
      {
        return;
      }

LABEL_30:
      if (v9 == v14)
      {
        v25 = a1;
        v26 = a2;
        v12 = v9;
        v10 = v7;
      }

      else
      {
        v27 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v28 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v28 = (a2 - 1);
          }

          *v27 = v28;
          return;
        }

        v25 = (v27 + v16 + 8) & ~v16;
        v26 = a2;
      }

      __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
      return;
  }
}

uint64_t sub_26BD9CEF8(uint64_t a1)
{
  sub_26BDA0DF0();
  v2 = (*(*(a1 + 24) + 8))(*(a1 + 16));

  MEMORY[0x26D695B80](0xD000000000000011, 0x800000026BDB0110);
  return v2;
}

uint64_t sub_26BD9CF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = v3;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  v9 = *(v7 + 16);
  v4[4] = v8;
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v4[5] = v11;
  *v11 = v4;
  v11[1] = sub_26BD9D0CC;

  return v13(a1, a2, v8, v7);
}

uint64_t sub_26BD9D0CC(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(v5 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26BD9D208, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_26BD9D208()
{
  v23 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v0[2] + 40);
  v4 = v1;
  v5 = sub_26BDA0B20();
  v6 = sub_26BDA0D90();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315394;
    swift_getMetatypeMetadata();
    v13 = sub_26BDA1190();
    v15 = sub_26BD93910(v13, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_26BCD0000, v5, v6, "Failed to retrieve headers using %s: '%@'. using fallback value.", v10, 0x16u);
    sub_26BD9D4A0(v11);
    MEMORY[0x26D6966B0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D6966B0](v12, -1, -1);
    MEMORY[0x26D6966B0](v10, -1, -1);
  }

  else
  {
  }

  v18 = *(v0[3] + *(v0[2] + 36));
  v21 = v0[1];

  return v21(v19);
}

uint64_t sub_26BD9D3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26BD94C6C;

  return sub_26BD9CF98(a1, a2, a3);
}

uint64_t sub_26BD9D4A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B070, &unk_26BDA9D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BD9D54C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_26BD9D58C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BD9D624()
{
  OUTLINED_FUNCTION_30_2();
  v0[10] = objc_opt_self();
  v0[11] = sub_26BDA0D10();
  v0[12] = sub_26BDA0D00();
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_3_6();
  v1 = OUTLINED_FUNCTION_0_15();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26BD9D6B4()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0[12];
  v2 = v0[10];

  v0[13] = [v2 currentDevice];
  v3 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26BD9D730()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 88);
  *(v0 + 112) = sub_26BDA0D00();
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_3_6();
  v2 = OUTLINED_FUNCTION_0_15();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD9D7A4()
{
  OUTLINED_FUNCTION_30_2();
  v2 = v0[13];
  v1 = v0[14];

  v0[15] = [v2 systemVersion];

  v3 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26BD9D820()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = sub_26BDA0BD0();
  v5 = v4;

  v0[16] = v3;
  v0[17] = v5;
  v0[18] = sub_26BDA0D00();
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_3_6();
  v6 = OUTLINED_FUNCTION_0_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26BD9D8BC()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0[18];
  v2 = v0[10];

  v0[19] = [v2 currentDevice];
  v3 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26BD9D938()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 88);
  *(v0 + 160) = sub_26BDA0D00();
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_3_6();
  v2 = OUTLINED_FUNCTION_0_15();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD9D9AC()
{
  OUTLINED_FUNCTION_30_2();
  v2 = v0[19];
  v1 = v0[20];

  v0[21] = [v2 model];

  v3 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26BD9DA28()
{
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = sub_26BDA0BD0();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B190, &qword_26BDAA1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BDA1A00;
  *(inited + 32) = 0x6567412D72657355;
  *(inited + 40) = 0xEA0000000000746ELL;
  sub_26BDA0DF0();

  MEMORY[0x26D695B80](v3, v2);

  MEMORY[0x26D695B80](47, 0xE100000000000000);
  MEMORY[0x26D695B80](v4, v6);

  *(inited + 48) = 0xD00000000000001DLL;
  *(inited + 56) = 0x800000026BDB0130;
  v8 = sub_26BDA0B70();
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_26BD9DBBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD9DC48;

  return sub_26BD9D608();
}

uint64_t sub_26BD9DC48()
{
  OUTLINED_FUNCTION_30_2();
  v3 = v2;
  v4 = *(*v1 + 16);
  v8 = *v1;

  v6 = *(v8 + 8);
  if (!v0)
  {
    v5 = v3;
  }

  return v6(v5);
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return sub_26BDA0CC0();
}

uint64_t sub_26BD9DDA4()
{
  v1 = sub_26BDA0620();
  v0[10] = v1;
  v2 = *(v1 - 8);
  v0[11] = v2;
  v3 = *(v2 + 64) + 15;
  v0[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD9DE60, 0, 0);
}

uint64_t sub_26BD9DE60()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B190, &qword_26BDAA1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BDA1A00;
  strcpy((inited + 32), "X-Apple-Txn-ID");
  *(inited + 47) = -18;
  sub_26BDA0610();
  v5 = sub_26BDA0600();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v8 = sub_26BDA0B70();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_26BD9DFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD94C6C;

  return sub_26BD9DDA4();
}

uint64_t sub_26BD9E058()
{
  *(v1 + 80) = *v0;
  *(v1 + 96) = *(v0 + 32);
  *(v1 + 104) = *(v0 + 40);
  *(v1 + 120) = *(v0 + 56);
  return MEMORY[0x2822009F8](sub_26BD9E094, 0, 0);
}

uint64_t sub_26BD9E094()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B190, &qword_26BDAA1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BDA1A00;
  *(inited + 32) = 0x6567412D72657355;
  *(inited + 40) = 0xEA0000000000746ELL;
  sub_26BDA0DF0();

  MEMORY[0x26D695B80](0xD000000000000010, 0x800000026BDB0150);
  MEMORY[0x26D695B80](v4, v3);
  MEMORY[0x26D695B80](47, 0xE100000000000000);
  MEMORY[0x26D695B80](v2, v1);
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  v8 = sub_26BDA0B70();
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_26BD9E224()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD94C6C;

  return sub_26BD9E058();
}

uint64_t sub_26BD9E2B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_26BD94670(a1, v9);
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_26BD9ED10(v9, a2, a3);
    result = sub_26BD9EBC8(a2, a3);
    *v3 = v8;
  }

  else
  {
    sub_26BD9EA60(a1);
    sub_26BD9EAC8(a2, a3, v9);
    sub_26BD9EBC8(a2, a3);
    return sub_26BD9EA60(v9);
  }

  return result;
}

uint64_t sub_26BD9E364(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_26BDA1160();
  sub_26BDA1160();
  *&v9[3] = MEMORY[0x277D839F8];
  *&v9[4] = &off_287CB14F8;
  v9[0] = v7 * 1.0e-18 + v6;
  OUTLINED_FUNCTION_0_16();

  sub_26BD9E2B0(v9, a3, a4);
  return swift_endAccess();
}

uint64_t sub_26BD9E418(uint64_t a1, unint64_t a2)
{
  v4 = 102;
  if (!a2)
  {
    v4 = 115;
  }

  v25 = MEMORY[0x277D837D0];
  v26 = &off_287CB14D8;
  LOBYTE(v22) = v4;
  v23 = 0xE700000000000000;
  v5 = OUTLINED_FUNCTION_0_16();
  v13 = OUTLINED_FUNCTION_1_11(v5, v6, v7, v8, v9, v10, v11, v12, v19, v20, v21, v22);
  sub_26BD9E2B0(v13, v14, 1uLL);
  if (a2)
  {
    v15 = &off_287CB14D8;
    v16 = MEMORY[0x277D837D0];
    v17 = a2;
  }

  else
  {
    a1 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v24 = 0;
  }

  v22 = a1;
  v23 = v17;
  v25 = v16;
  v26 = v15;

  sub_26BD9E2B0(&v22, 0, 2uLL);
  return swift_endAccess();
}

uint64_t sub_26BD9E500(char a1)
{
  v1 = OUTLINED_FUNCTION_0_16();
  v9 = OUTLINED_FUNCTION_1_11(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, a1);
  sub_26BD9E2B0(v9, v10, 3uLL);
  return swift_endAccess();
}

uint64_t sub_26BD9E554(char a1)
{
  v1 = OUTLINED_FUNCTION_0_16();
  v9 = OUTLINED_FUNCTION_1_11(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14, a1);
  sub_26BD9E2B0(v9, v10, 6uLL);
  return swift_endAccess();
}

uint64_t sub_26BD9E5A8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_26BD9E5D8()
{
  sub_26BD9E5A8();

  return MEMORY[0x282200960](v0);
}

uint64_t get_enum_tag_for_layout_string_15SupportServices14TelemetryEventC3KeyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BD9E640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD9E69C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

void *sub_26BD9E6EC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void *sub_26BD9E71C()
{
  swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B338, &qword_26BDAA950);
  sub_26BD9F0A0();
  v0[16] = sub_26BDA0B70();
  return v0;
}

uint64_t sub_26BD9E7AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    case 4:
      return a4 == 4;
    case 5:
      return a4 == 5;
    case 6:
      return a4 == 6;
    default:
      if (a4 < 7)
      {
        return 0;
      }

      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      else
      {
        return sub_26BDA0FB0();
      }
  }
}

uint64_t sub_26BD9E868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
      v3 = 0;
      goto LABEL_12;
    case 1:
      v3 = 2;
      goto LABEL_12;
    case 2:
      v3 = 3;
      goto LABEL_12;
    case 3:
      v3 = 4;
      goto LABEL_12;
    case 4:
      v3 = 5;
      goto LABEL_12;
    case 5:
      v3 = 6;
      goto LABEL_12;
    case 6:
      v3 = 7;
LABEL_12:
      result = MEMORY[0x26D695FC0](v3);
      break;
    default:
      MEMORY[0x26D695FC0](1);

      result = sub_26BDA0C10();
      break;
  }

  return result;
}

uint64_t sub_26BD9E94C(uint64_t a1, uint64_t a2)
{
  sub_26BDA1050();
  sub_26BD9E868(v5, a1, a2);
  return sub_26BDA1070();
}

uint64_t sub_26BD9E9AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26BDA1050();
  sub_26BD9E868(v4, v1, v2);
  return sub_26BDA1070();
}

unint64_t sub_26BD9EA0C()
{
  result = qword_28044B320;
  if (!qword_28044B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B320);
  }

  return result;
}

uint64_t sub_26BD9EA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B328, &qword_26BDAA940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_26BD9EAC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26BD31934(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B330, &qword_26BDAA948);
    sub_26BDA0ED0();
    sub_26BD9EBC8(*(*(v13 + 48) + 16 * v9), *(*(v13 + 48) + 16 * v9 + 8));
    sub_26BD94670((*(v13 + 56) + 40 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B338, &qword_26BDAA950);
    sub_26BD9F0A0();
    sub_26BDA0EF0();
    *v4 = v13;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26BD9EBC8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t sub_26BD9EBDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26BD31908(a2, a3);
  OUTLINED_FUNCTION_2_5(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28044B348, &qword_26BDAA958);
  if ((sub_26BDA0ED0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_26BD31908(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_26BDA0FE0();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 88 * v14;

    return sub_26BD9F0F4(a1, v20);
  }

  else
  {
    sub_26BD9EFA8(v14, a2, a3, a1, v19);
  }
}

uint64_t sub_26BD9ED10(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26BD31934(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B330, &qword_26BDAA948);
  if ((sub_26BDA0ED0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_26BD31934(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_26BDA0FE0();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_26BD94670(a1, v17);
  }

  else
  {
    sub_26BD9F01C(v11, a2, a3, a1, v16);

    return sub_26BD9F08C(a2, a3);
  }
}

uint64_t sub_26BD9EE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26BD31908(a3, a4);
  OUTLINED_FUNCTION_2_5(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B270, &qword_26BDAA538);
  if ((sub_26BDA0ED0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_26BD31908(a3, a4);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_26BDA0FE0();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    sub_26BD9F150(v16, a3, a4, a1, a2, v21);
  }
}

void *sub_26BD9EFA8(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 88 * a1), __src, 0x58uLL);
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

uint64_t sub_26BD9F01C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26BD94670(a4, a5[7] + 40 * a1);
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

uint64_t sub_26BD9F08C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

unint64_t sub_26BD9F0A0()
{
  result = qword_28044B340;
  if (!qword_28044B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B340);
  }

  return result;
}

unint64_t sub_26BD9F150(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return swift_beginAccess();
}

uint64_t sub_26BD9F1E4(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  result = type metadata accessor for CachingTask.State();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD9F294()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  v5 = type metadata accessor for CachingTask.State();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  v6 = *(v0 + *(*v0 + 120) + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_26BD9F368()
{
  sub_26BD9F294();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26BD9F3C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28044B068, &qword_26BDA9EA0);
  result = sub_26BDA0D40();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD9F464(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_26BD9F598(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x26BD9F75CLL);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t Clock.measureInheritingActorContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD9F878, 0, 0);
}

uint64_t sub_26BD9F878()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[3];
  sub_26BDA0FF0();
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_26BD9F978;
  v8 = v0[4];

  return v10();
}

uint64_t sub_26BD9F978()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_26BD9FB98;
  }

  else
  {
    v3 = sub_26BD9FA8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BD9FA8C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[2];
  sub_26BDA0FF0();
  swift_getAssociatedConformanceWitness();
  sub_26BDA0EB0();
  v9 = *(v4 + 8);
  v9(v2, v3);
  v9(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BD9FB98()
{
  v1 = v0[10];
  (*(v0[9] + 8))(v0[11], v0[8]);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_26BD9FC20@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v79 = a3;
  v76 = a1;
  v77 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28044B450, &unk_26BDAAA10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v71 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B050, &qword_26BDA9CD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = &v71 - v11;
  OUTLINED_FUNCTION_176();
  v12 = sub_26BDA0650();
  v13 = OUTLINED_FUNCTION_18(v12);
  v83 = v14;
  v84 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_57();
  v82 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_252();
  v81 = v20;
  OUTLINED_FUNCTION_176();
  v21 = sub_26BDA0770();
  v22 = OUTLINED_FUNCTION_18(v21);
  v75 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v73 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B058, &qword_26BDA9CD8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  OUTLINED_FUNCTION_57();
  v78 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_252();
  v74 = v32;
  OUTLINED_FUNCTION_176();
  v33 = sub_26BDA06E0();
  v34 = OUTLINED_FUNCTION_18(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_57();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_252();
  v44 = v43;
  OUTLINED_FUNCTION_176();
  v45 = sub_26BDA06A0();
  v46 = OUTLINED_FUNCTION_18(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_57();
  v53 = v51 - v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_252();
  v85 = a4;
  v86 = v55;
  if (v56)
  {
    sub_26BDA06B0();
  }

  else
  {
    v76 = v8;
    v57 = sub_26BDA06C0();
    if (v57[2])
    {
      v58 = v57[5];
      v72 = v57[4];
    }

    else
    {
      v72 = 0x53552D6E65;
    }

    sub_26BDA06B0();
    v8 = v76;
  }

  (*(v48 + 32))(v86, v53, v45);
  if (v79)
  {
    v59 = v48;
    v60 = v45;
    sub_26BDA06F0();
  }

  else
  {
    v76 = v8;
    v61 = v73;
    sub_26BDA0720();
    v62 = v74;
    sub_26BDA0710();
    (*(v75 + 8))(v61, v21);
    v59 = v48;
    if (__swift_getEnumTagSinglePayload(v62, 1, v33) == 1)
    {
      sub_26BDA022C(v62);
    }

    else
    {
      sub_26BDA0690();
      (*(v36 + 8))(v62, v33);
    }

    v60 = v45;
    sub_26BDA06F0();
    v8 = v76;
  }

  (*(v36 + 32))(v44, v41, v33);
  v63 = v80;
  v64 = v86;
  (*(v59 + 16))(v80, v86, v60);
  __swift_storeEnumTagSinglePayload(v63, 0, 1, v60);
  v65 = sub_26BDA0700();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v65);
  v66 = v78;
  __swift_storeEnumTagSinglePayload(v78, 1, 1, v33);
  v67 = v81;
  sub_26BDA0630();
  (*(v36 + 16))(v66, v44, v33);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v33);
  sub_26BDA0640();
  v68 = v83;
  v69 = v84;
  (*(v83 + 16))(v82, v67, v84);
  sub_26BDA0660();
  (*(v68 + 8))(v67, v69);
  (*(v36 + 8))(v44, v33);
  return (*(v59 + 8))(v64, v60);
}

uint64_t sub_26BDA022C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B058, &qword_26BDA9CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BDA02A4()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}