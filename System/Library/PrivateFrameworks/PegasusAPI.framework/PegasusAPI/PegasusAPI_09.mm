void sub_1B8D910F0()
{
  OUTLINED_FUNCTION_284();
  v19 = v3;
  v4 = OUTLINED_FUNCTION_82_0();
  v20 = v5(v4);
  v6 = OUTLINED_FUNCTION_19_0(v20);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v10 = *(v1 + 16);
  OUTLINED_FUNCTION_695();
  if (v12 && v10 && v1 != v0)
  {
    OUTLINED_FUNCTION_58(v11);
    v14 = v0 + v13;
    v16 = *(v15 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_163();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_205();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_605();
      if (!v12)
      {

        v17 = v19(v0, v2);

        if ((v17 & 1) == 0)
        {
          break;
        }
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v18);
      OUTLINED_FUNCTION_259();
      v0 = sub_1B964C850();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_245();
      sub_1B8D745F8();
      if (v0)
      {
        v14 += v16;
        v1 += v16;
        if (--v10)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_604();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_13:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D91314()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_64();
  v5 = type metadata accessor for Searchfoundation_Scene();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v11 && v4 && v3 != v0)
  {
    OUTLINED_FUNCTION_3_2(v10);
    while (1)
    {
      OUTLINED_FUNCTION_186();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_196();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_566();
      if (!v11)
      {
        break;
      }

      v12 = *(v2 + 8);
      v13 = *(v1 + 8);
      if (*(v1 + 16) == 1)
      {
        switch(v13)
        {
          case 1:
            if (v12 != 1)
            {
              goto LABEL_22;
            }

            goto LABEL_13;
          case 2:
            if (v12 != 2)
            {
              goto LABEL_22;
            }

            goto LABEL_13;
          case 3:
            if (v12 != 3)
            {
              goto LABEL_22;
            }

            goto LABEL_13;
          default:
            if (v12)
            {
              goto LABEL_22;
            }

            goto LABEL_13;
        }
      }

      if (v12 != v13)
      {
        break;
      }

LABEL_13:
      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v14);
      v15 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v15)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v11)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_23:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D915B8()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_82_0();
  v7 = type metadata accessor for Searchfoundation_Text();
  v8 = OUTLINED_FUNCTION_36(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_54();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_88();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E48, &unk_1B96CCC40);
  OUTLINED_FUNCTION_49(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_35();
  v56 = type metadata accessor for Searchfoundation_MediaDetail(v19);
  v20 = OUTLINED_FUNCTION_19_0(v56);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31_0(v23, v24, v25, v26, v27, v28, v29, v30, v52);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_52();
  if (v38 && v6 && v5 != v1)
  {
    OUTLINED_FUNCTION_60_0(v32);
    OUTLINED_FUNCTION_215(v33);
    v53 = v4;
    while (1)
    {
      OUTLINED_FUNCTION_292();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_604();
      sub_1B8D745A4();
      v34 = *v4;
      v35 = v4[1];
      OUTLINED_FUNCTION_428();
      v38 = v38 && v36 == v37;
      if (!v38 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v39 = *(v56 + 24);
      OUTLINED_FUNCTION_224(v54);
      sub_1B8D92024();
      OUTLINED_FUNCTION_479();
      sub_1B8D92024();
      v40 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_81(v40, v41);
      if (v38)
      {
        OUTLINED_FUNCTION_37_0(v3 + v0);
        v4 = v53;
        if (!v38)
        {
          goto LABEL_31;
        }

        sub_1B8D9207C(v3, &qword_1EBAB8E40, &unk_1B964D640);
      }

      else
      {
        OUTLINED_FUNCTION_186();
        OUTLINED_FUNCTION_515();
        OUTLINED_FUNCTION_37_0(v3 + v0);
        if (v42)
        {
          OUTLINED_FUNCTION_222();
          sub_1B8D745F8();
LABEL_31:
          v50 = &qword_1EBAB8E48;
          v51 = &unk_1B96CCC40;
LABEL_32:
          sub_1B8D9207C(v3, v50, v51);
          break;
        }

        OUTLINED_FUNCTION_281();
        OUTLINED_FUNCTION_74_0();
        v45 = v38 && v43 == v44;
        v4 = v53;
        if (!v45 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != dword_1EBAB8E50)
        {
          OUTLINED_FUNCTION_401();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_182();
          sub_1B8D745F8();
          v50 = &qword_1EBAB8E40;
          v51 = &unk_1B964D640;
          goto LABEL_32;
        }

        v0 = *(v55 + 24);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v46);
        v47 = OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_401();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        sub_1B8D9207C(v3, &qword_1EBAB8E40, &unk_1B964D640);
        if ((v47 & 1) == 0)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_624(v56);
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v48);
      OUTLINED_FUNCTION_310();
      v49 = OUTLINED_FUNCTION_518();
      OUTLINED_FUNCTION_400();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_197();
      sub_1B8D745F8();
      if (v49)
      {
        OUTLINED_FUNCTION_528();
        OUTLINED_FUNCTION_194();
        if (!v38)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    OUTLINED_FUNCTION_400();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_34:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D91A08()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_138();
  v11 = *(v5 + 16);
  if (v11 == *(v3 + 16) && v11 && v5 != v3)
  {
    OUTLINED_FUNCTION_60_0(v10);
    v13 = v5 + v12;
    v14 = v3 + v12;
    v16 = *(v15 + 72);
    do
    {
      OUTLINED_FUNCTION_240();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_275();
      sub_1B8D745A4();
      v17 = OUTLINED_FUNCTION_186();
      v18 = v1(v17);
      OUTLINED_FUNCTION_182();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v14 += v16;
      v13 += v16;
      OUTLINED_FUNCTION_194();
    }

    while (!v19);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B8D91B5C()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_64();
  v5 = type metadata accessor for Searchfoundation_RFHighlightedSubstring(v4);
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v13 && v3 && v2 != v1)
  {
    OUTLINED_FUNCTION_3_2(v10);
    while (1)
    {
      OUTLINED_FUNCTION_186();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_196();
      sub_1B8D745A4();
      OUTLINED_FUNCTION_74_0();
      v13 = v13 && v11 == v12;
      if (!v13 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v14 = *(v0 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v15);
      v16 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v16)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v13)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_17:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D91D0C(void *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  switch(a3 >> 62)
  {
    case 1uLL:
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      goto LABEL_8;
    case 2uLL:
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
LABEL_8:
      sub_1B8D91F28();
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    case 3uLL:
      if (__s1)
      {
        v6 = 1;
LABEL_9:
        *a4 = v6;
        v9 = *MEMORY[0x1E69E9840];
      }

      else
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        MEMORY[0x1BFADCCF0](v4);
        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v11 = a3;
      v12 = BYTE2(a3);
      v13 = BYTE3(a3);
      v14 = BYTE4(a3);
      v15 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_12;
      }

      v6 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_9;
  }
}

uint64_t sub_1B8D91E78()
{
  result = OUTLINED_FUNCTION_708();
  if (result)
  {
    result = sub_1B964C090();
    if (__OFSUB__(v2, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(v1, v2))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1B964C080();
  OUTLINED_FUNCTION_609();
  OUTLINED_FUNCTION_684();
  sub_1B8D91D0C(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_182();
  sub_1B8D538A0(v8, v9);
  if (!v0)
  {
    v10 = v11;
  }

  return v10 & 1;
}

void sub_1B8D91F28()
{
  v3 = OUTLINED_FUNCTION_708();
  if (v3)
  {
    v4 = sub_1B964C090();
    if (__OFSUB__(v2, v4))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v3 += v2 - v4;
  }

  if (__OFSUB__(v1, v2))
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1B964C080();
  OUTLINED_FUNCTION_609();
  if (!v0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v3)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v3 != v0)
  {
    memcmp(v0, v3, v5);
  }
}

uint64_t sub_1B8D91FCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B8D92024()
{
  OUTLINED_FUNCTION_468();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B8D9207C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1B8D920D4()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
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

uint64_t OUTLINED_FUNCTION_9_1(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v15 - 126) = v14;
  *(v15 - 125) = a8;
  *(v15 - 124) = a7;
  *(v15 - 123) = a6;
  *(v15 - 122) = v8;
  *(v15 - 121) = a5;
  *(v15 - 120) = a4;
  *(v15 - 119) = a2;
  *(v15 - 118) = v13;
  *(v15 - 117) = a1;
  *(v15 - 116) = v12;
  *(v15 - 115) = v11;
  *(v15 - 114) = v10;
  *(v15 - 113) = v9;

  return memcmp((v15 - 112), (v15 - 126), a3);
}

void OUTLINED_FUNCTION_10_1(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v9 - 125) = a8;
  *(v9 - 124) = a7;
  *(v9 - 123) = a6;
  *(v9 - 122) = v8;
  *(v9 - 121) = a5;
  *(v9 - 120) = a4;
  *(v9 - 119) = a2;
}

void OUTLINED_FUNCTION_12_2()
{
  *(v3 - 106) = v1;
  *(v3 - 105) = HIBYTE(v0);
  *(v3 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_18_0(uint64_t result)
{
  *(v1 - 88) = result;
  v2 = *(result - 8);
  return result;
}

void OUTLINED_FUNCTION_22_2()
{
  v5 = *(v3 - 160);

  sub_1B8D91D0C(v0, v2, v1, (v3 - 112));
}

uint64_t OUTLINED_FUNCTION_47_0(char a1, uint64_t a2, size_t a3)
{
  *(v7 - 117) = a1;
  *(v7 - 116) = v6;
  *(v7 - 115) = v5;
  *(v7 - 114) = v4;
  *(v7 - 113) = v3;

  return memcmp((v7 - 112), (v7 - 126), a3);
}

uint64_t OUTLINED_FUNCTION_49(uint64_t result)
{
  *(v1 - 112) = result;
  v2 = *(result - 8);
  return result;
}

void OUTLINED_FUNCTION_51_0(uint64_t a1@<X8>)
{
  v2 = (*(a1 + 80) + 32) & ~*(a1 + 80);
  v3 = *(a1 + 72);
  *(v1 - 160) = 0;
  *(v1 - 152) = v3;
}

uint64_t OUTLINED_FUNCTION_74_0()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_83_0()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_89()
{
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_109()
{
  result = *(v0 - 1);
  v3 = *v0;
  v4 = *(v1 - 1);
  v5 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_131_0()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

void OUTLINED_FUNCTION_150()
{
  v2 = *v1;
  v3 = *v0;
  v4 = *(v0 + 8);
}

uint64_t OUTLINED_FUNCTION_152(char a1, char a2, size_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v14 - 133) = a8;
  *(v14 - 132) = a7;
  *(v14 - 131) = a6;
  *(v14 - 130) = v8;
  *(v14 - 129) = a5;
  *(v14 - 128) = a4;
  *(v14 - 127) = a2;
  *(v14 - 126) = v13;
  *(v14 - 125) = a1;
  *(v14 - 124) = v12;
  *(v14 - 123) = v11;
  *(v14 - 122) = v10;
  *(v14 - 121) = v9;

  return memcmp((v14 - 120), (v14 - 134), a3);
}

uint64_t OUTLINED_FUNCTION_153()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_154()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_155()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_156_1()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_167()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_174()
{
  result = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  return result;
}

float OUTLINED_FUNCTION_175()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_180()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_181()
{

  return sub_1B964C850();
}

void OUTLINED_FUNCTION_184()
{
  v5 = *(v3 - 168);

  sub_1B8D91D0C(v2, v1, v0, (v3 - 112));
}

float OUTLINED_FUNCTION_188_0()
{
  result = *(v1 + 12);
  v3 = *(v0 + 12);
  return result;
}

uint64_t OUTLINED_FUNCTION_203()
{
  result = *(v2 - 520);
  *(v2 - 112) = v1;
  *(v2 - 111) = *(v2 - 512);
  *(v2 - 110) = *(v2 - 504);
  *(v2 - 109) = *(v2 - 496);
  *(v2 - 108) = *(v2 - 448);
  *(v2 - 107) = *(v2 - 488);
  *(v2 - 106) = *(v2 - 480);
  *(v2 - 105) = *(v2 - 472);
  *(v2 - 104) = v0;
  *(v2 - 103) = *(v2 - 464);
  *(v2 - 102) = *(v2 - 456);
  *(v2 - 101) = *(v2 - 440);
  *(v2 - 100) = *(v2 - 432);
  *(v2 - 99) = *(v2 - 424);
  v4 = *(v2 - 416);
  return result;
}

void OUTLINED_FUNCTION_204()
{
  *(v2 - 120) = v1;
  *(v2 - 119) = *(v2 - 496);
  *(v2 - 118) = *(v2 - 488);
  *(v2 - 117) = *(v2 - 480);
  *(v2 - 116) = *(v2 - 432);
  *(v2 - 115) = *(v2 - 472);
  *(v2 - 114) = *(v2 - 464);
  *(v2 - 113) = *(v2 - 456);
  *(v2 - 112) = v0;
  *(v2 - 111) = *(v2 - 448);
  *(v2 - 110) = *(v2 - 440);
  *(v2 - 109) = *(v2 - 424);
  *(v2 - 108) = *(v2 - 416);
  *(v2 - 107) = *(v2 - 408);
  v3 = *(v2 - 400);
}

uint64_t OUTLINED_FUNCTION_208_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v14 - 480) = v13;
  *(v14 - 472) = a8;
  *(v14 - 464) = a7;
  *(v14 - 456) = a6;
  *(v14 - 448) = a5;
  *(v14 - 440) = a4;
  *(v14 - 432) = a2;
  *(v14 - 424) = result;
  *(v14 - 416) = v12;
  *(v14 - 408) = v10;
  *(v14 - 384) = v11;
  *(v14 - 368) = v9;
  *(v14 - 376) = v8;
  *(v14 - 400) = a3;
  return result;
}

void OUTLINED_FUNCTION_209_0()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v0;
  v5 = *(v0 + 8);
}

uint64_t OUTLINED_FUNCTION_210()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

void OUTLINED_FUNCTION_213()
{
  *(v3 - 120) = v0;
  *(v3 - 118) = BYTE2(v0);
  *(v3 - 117) = BYTE3(v0);
  *(v3 - 116) = v1;
  *(v3 - 115) = BYTE5(v0);
  *(v3 - 114) = BYTE6(v0);
  *(v3 - 113) = HIBYTE(v0);
  *(v3 - 112) = v2;
  *(v3 - 110) = BYTE2(v2);
  *(v3 - 109) = BYTE3(v2);
  *(v3 - 108) = BYTE4(v2);
  *(v3 - 107) = BYTE5(v2);
}

float OUTLINED_FUNCTION_217()
{
  result = *(v1 + 4);
  v3 = *(v0 + 4);
  return result;
}

uint64_t OUTLINED_FUNCTION_219(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v13 - 496) = a8;
  *(v13 - 488) = a7;
  *(v13 - 480) = a6;
  *(v13 - 472) = a5;
  *(v13 - 464) = a4;
  *(v13 - 456) = a2;
  *(v13 - 448) = result;
  *(v13 - 440) = v12;
  *(v13 - 432) = v11;
  *(v13 - 424) = v10;
  *(v13 - 400) = v9;
  *(v13 - 408) = v8;
  *(v13 - 416) = a3;
  return result;
}

void OUTLINED_FUNCTION_226(uint64_t a1@<X8>)
{
  v3 = *(a1 + 20);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
}

uint64_t OUTLINED_FUNCTION_232()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_255()
{

  return sub_1B8D745A4();
}

uint64_t OUTLINED_FUNCTION_264_0()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_267()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_270()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_274()
{
  result = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_276()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_277()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_278()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_279_0()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_281()
{
  v2 = *(v0 - 136);

  return sub_1B8D920D4();
}

uint64_t OUTLINED_FUNCTION_282()
{
  v2 = *(v0 - 128);

  return sub_1B8D920D4();
}

uint64_t OUTLINED_FUNCTION_426()
{
  v2 = *(v0 - 424);

  return sub_1B8D91E78();
}

uint64_t OUTLINED_FUNCTION_429()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_433()
{

  return sub_1B8D745F8();
}

void OUTLINED_FUNCTION_439(uint64_t a1@<X8>)
{
  *(v4 - 88) = v2 + v1;
  *(v4 - 128) = *(a1 + 72);
  *(v4 - 120) = v3;
}

uint64_t OUTLINED_FUNCTION_451()
{
  result = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  return result;
}

float OUTLINED_FUNCTION_469()
{
  result = *(v1 + 8);
  v3 = *(v0 + 8);
  return result;
}

float OUTLINED_FUNCTION_475()
{
  result = *v0;
  v3 = *v1;
  return result;
}

void OUTLINED_FUNCTION_476()
{
  v2 = *(v1 + 16);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
}

void OUTLINED_FUNCTION_478()
{
  *(v3 - 106) = v1;
  *(v3 - 105) = HIBYTE(v0);
  *(v3 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_495()
{
  v2 = *(*(v0 - 88) + 24);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_496()
{
  v2 = *(*(v0 - 112) + 20);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_515()
{

  return sub_1B8D92024();
}

void OUTLINED_FUNCTION_516()
{
  v5 = *(v3 - 200);

  sub_1B8D91D0C(v0, v2, v1, (v3 - 112));
}

uint64_t OUTLINED_FUNCTION_517()
{
  v2 = *(v0 + 24);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_518()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_519()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_520()
{
  v2 = *(v0 - 104);

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_522()
{

  return sub_1B8D745A4();
}

uint64_t OUTLINED_FUNCTION_523()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_524@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 24);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_525()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_526()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_527()
{
  v2 = *(v0 - 104);

  return sub_1B964C850();
}

void OUTLINED_FUNCTION_529()
{
  v1 = *(v0 - 128);
  v2 = *(v0 - 288);
  v3 = *(v0 - 264);
}

void OUTLINED_FUNCTION_545()
{
  v2 = *(v1 + 32);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = HIDWORD(*(v1 + 24));
}

uint64_t OUTLINED_FUNCTION_546@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 24);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_547()
{
  v2 = *(v0 + 32);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_548()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_549()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_550()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_551@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 20);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_552()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_554()
{
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_555()
{
  result = v0 + v1;
  v4 = *(v2 - 120);
  return result;
}

double OUTLINED_FUNCTION_560()
{
  result = *(v1 + 16);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_561()
{
  v2 = *(v0 + 28);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_562()
{
  result = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_565@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 20);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_569()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_571()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_572()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

void OUTLINED_FUNCTION_574()
{
  v1 = *(v0 - 152);
  v2 = *(v0 - 128);
  v3 = *(v0 - 200);
}

uint64_t OUTLINED_FUNCTION_576()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_577()
{

  return sub_1B8D92024();
}

double OUTLINED_FUNCTION_580()
{
  result = *(v1 + 32);
  v3 = *(v0 + 32);
  return result;
}

double OUTLINED_FUNCTION_581()
{
  result = *(v1 + 24);
  v3 = *(v0 + 24);
  return result;
}

double OUTLINED_FUNCTION_582()
{
  result = *(v1 + 16);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_583()
{
  result = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  return result;
}

float OUTLINED_FUNCTION_586_0()
{
  result = *(v1 + 16);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_588()
{
  v3 = *(v1 - 144) + v0;
  v4 = *(v1 - 152) + v0;
  v5 = *(v1 - 152);

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_589()
{

  return sub_1B8D745A4();
}

void OUTLINED_FUNCTION_597(uint64_t a1@<X8>)
{
  *(v4 - 96) = a1;
  *(v4 - 88) = v1;
  *(v4 - 112) = v2;
  *(v4 - 104) = v3;
}

void OUTLINED_FUNCTION_605()
{
  v3 = *(*(v2 - 96) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
}

uint64_t OUTLINED_FUNCTION_621@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 32);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_622()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_623()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_624@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 20);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_625()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_626()
{

  return sub_1B8D745A4();
}

uint64_t OUTLINED_FUNCTION_627()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_628()
{
  v2 = *(*(v0 - 88) + 28);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_629()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_630()
{
  v2 = *(*(v0 - 112) + 20);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_631()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_632()
{
  v3 = *(v0 + 16);
  *(v1 - 400) = *(v0 + 24);
  v4 = *(v1 - 208) & 0x3FFFFFFFFFFFFFFFLL;

  return sub_1B964C070();
}

uint64_t OUTLINED_FUNCTION_633()
{
  v2 = *(*(v0 - 96) + 24);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_635()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_636()
{
  v2 = *(v0 + 28);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_637()
{
  v3 = *(v1 - 88) + v0;
  v4 = *(v1 - 152);

  return sub_1B8D920D4();
}

uint64_t OUTLINED_FUNCTION_638()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 200);

  return sub_1B8D920D4();
}

uint64_t OUTLINED_FUNCTION_639@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 20);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_640()
{

  return sub_1B8D745A4();
}

uint64_t OUTLINED_FUNCTION_641()
{
  v2 = *(v0 + 40);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_642@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 28);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_644()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_645()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_646()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_647()
{
}

uint64_t OUTLINED_FUNCTION_648()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_649()
{
}

uint64_t OUTLINED_FUNCTION_650()
{

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_651()
{

  return sub_1B8D92024();
}

void OUTLINED_FUNCTION_656()
{
  v3 = *(v1 + 20);
  v4 = *(v2 + v3);
  v5 = *(v0 + v3);
}

void OUTLINED_FUNCTION_665()
{
  v2 = *v1;
  v3 = *v0;
  v4 = *(v0 + 8);
}

uint64_t OUTLINED_FUNCTION_700@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_701()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_702()
{
  v2 = *(v0 - 112);

  return sub_1B8D745A4();
}

uint64_t OUTLINED_FUNCTION_703()
{
  *(v1 - 400) = v0;

  return sub_1B964C090();
}

uint64_t OUTLINED_FUNCTION_704()
{
  v3 = *(v1 - 136) + v0;
  v4 = *(v1 - 96);

  return sub_1B8D745A4();
}

uint64_t OUTLINED_FUNCTION_705()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_706()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_707()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_708()
{

  return sub_1B964C070();
}

void OUTLINED_FUNCTION_709(void *a1@<X0>, BOOL *a2@<X8>)
{
  v6 = *(v4 - 424);

  sub_1B8D91D0C(a1, v3, v2, a2);
}

uint64_t OUTLINED_FUNCTION_710(int64_t a1)
{
  if (a1 >= v1)
  {
    v5 = v1;
  }

  else
  {
    v5 = a1;
  }

  return memcmp((v3 - 112), v2, v5);
}

uint64_t OUTLINED_FUNCTION_711()
{
  v2 = *(v0 + 20);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_712()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_713()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_714()
{
  v2 = *(v0 - 136);

  return sub_1B8D920D4();
}

uint64_t OUTLINED_FUNCTION_715()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_716()
{
  v2 = *(v0 + 36);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_717()
{
  v2 = *(v0 - 96);

  return sub_1B8D745A4();
}

uint64_t OUTLINED_FUNCTION_718@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_719@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return sub_1B964C090();
}

uint64_t OUTLINED_FUNCTION_720()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_721()
{
  v2 = *(v0 - 88);

  return sub_1B8D745F8();
}

uint64_t OUTLINED_FUNCTION_722()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_723()
{
  v2 = *(v0 + 36);

  return sub_1B964C2B0();
}

unint64_t Amppb_Role.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8D957F4@<X0>(uint64_t *a1@<X8>)
{
  result = Amppb_Role.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D95828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8D977B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Amppb_Role.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAB9300 = a1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1B8D959C0@<X0>(uint64_t *a1@<X8>)
{
  result = static Amppb_Role.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Amppb_Availability.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Amppb_Availability.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Amppb_CastAndCrew.role.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Amppb_CastAndCrew.person.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v7 = &v17 - v6;
  v8 = type metadata accessor for Amppb_CastAndCrew(0);
  sub_1B8D95D8C(v1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Amppb_Person(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (!v12)
  {
    return sub_1B8D95E1C(v7, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
  v13 = a1 + *(v9 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v14 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v14, v15, v9);
  if (!v12)
  {
    return sub_1B8D9207C(v7, &qword_1EBAB9398, &qword_1B964E4C0);
  }

  return result;
}

uint64_t sub_1B8D95C18(uint64_t a1)
{
  v2 = type metadata accessor for Amppb_Person(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8D960C8(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Amppb_CastAndCrew.person.setter();
}

uint64_t Amppb_CastAndCrew.person.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Amppb_CastAndCrew(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB9398, &qword_1B964E4C0);
  sub_1B8D95E1C(v0, v1 + v3);
  v4 = type metadata accessor for Amppb_Person(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t Amppb_Person.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = v2;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
  v3 = a1 + *(type metadata accessor for Amppb_Person(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8D95D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8D95E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Amppb_Person(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Amppb_CastAndCrew.person.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Amppb_Person(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Amppb_CastAndCrew(0) + 24);
  *(v3 + 10) = v11;
  sub_1B8D95D8C(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = MEMORY[0x1E69E7CC0];
    v10[3] = 0;
    v10[4] = 0xE000000000000000;
    v10[5] = 0;
    v10[6] = 0xE000000000000000;
    v15 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9398, &qword_1B964E4C0);
    }
  }

  else
  {
    sub_1B8D95E1C(v6, v10);
  }

  return sub_1B8D95FE8;
}

void sub_1B8D95FE8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1B8D960C8((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBAB9398, &qword_1B964E4C0);
    sub_1B8D95E1C(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B8D9612C(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAB9398, &qword_1B964E4C0);
    sub_1B8D95E1C(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B8D960C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Amppb_Person(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8D9612C(uint64_t a1)
{
  v2 = type metadata accessor for Amppb_Person(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Amppb_CastAndCrew.hasPerson.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Amppb_CastAndCrew(0);
  sub_1B8D95D8C(v0 + *(v7 + 24), v6);
  type metadata accessor for Amppb_Person(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_1B8D9207C(v6, &qword_1EBAB9398, &qword_1B964E4C0);
  return v12;
}

Swift::Void __swiftcall Amppb_CastAndCrew.clearPerson()()
{
  v1 = *(type metadata accessor for Amppb_CastAndCrew(0) + 24);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB9398, &qword_1B964E4C0);
  v2 = type metadata accessor for Amppb_Person(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Amppb_CastAndCrew.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Amppb_CastAndCrew(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Amppb_CastAndCrew.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Amppb_CastAndCrew(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Amppb_CastAndCrew.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_CastAndCrew(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_CastAndCrew.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Amppb_CastAndCrew(0);
  v3 = a1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Amppb_Person(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t Amppb_Person.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_Person.id.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Amppb_Person.name.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Amppb_Person.thumbnail.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_Person.thumbnail.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Amppb_Person.gender.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_Person.gender.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Amppb_Person.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_Person(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_LocalizedField.language.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_LocalizedField.language.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Amppb_LocalizedField.value.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_LocalizedField.value.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t sub_1B8D967CC()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8D96874()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 32);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Amppb_LocalizedField.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_LocalizedField(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_LocalizedField.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  v1 = a1 + *(type metadata accessor for Amppb_LocalizedField(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_RottenTomatoes.rottenTomatoURL.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_RottenTomatoes.rottenTomatoURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Amppb_RottenTomatoes.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Amppb_RottenTomatoes(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Amppb_RottenTomatoes.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Amppb_RottenTomatoes(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Amppb_RottenTomatoes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_RottenTomatoes(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_RottenTomatoes.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Amppb_RottenTomatoes(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8D96B98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9308);
  __swift_project_value_buffer(v0, qword_1EBAB9308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ACTOR";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DIRECTOR";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WRITER";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PRODUCER";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "VOICE_ONLY";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "HOST";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8D96E94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9320);
  __swift_project_value_buffer(v0, qword_1EBAB9320);
  return sub_1B964C770();
}

uint64_t Amppb_Availability.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_1B964C3C0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t static Amppb_Availability.== infix(_:_:)()
{
  OUTLINED_FUNCTION_28_1();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_3();
  sub_1B8CD18C8(v0, v1);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8D97098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD18C8(&qword_1EBAB9500, type metadata accessor for Amppb_Availability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D97118(uint64_t a1)
{
  v2 = sub_1B8CD18C8(&qword_1EBAB9418, type metadata accessor for Amppb_Availability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D97188()
{
  sub_1B8CD18C8(&qword_1EBAB9418, type metadata accessor for Amppb_Availability);

  return sub_1B964C5D0();
}

uint64_t sub_1B8D97244()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9338);
  __swift_project_value_buffer(v0, qword_1EBAB9338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "role";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "person";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_CastAndCrew.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8D974F8();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8D97490();
    }
  }

  return result;
}

uint64_t sub_1B8D974F8()
{
  v0 = *(type metadata accessor for Amppb_CastAndCrew(0) + 24);
  type metadata accessor for Amppb_Person(0);
  sub_1B8CD18C8(&qword_1EBAB93B0, type metadata accessor for Amppb_Person);
  return sub_1B964C580();
}

uint64_t Amppb_CastAndCrew.traverse<A>(visitor:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for Amppb_Person(0);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*v1 + 16) || (sub_1B8D977B4(), result = sub_1B964C600(), !v2))
  {
    v19[1] = a1;
    v17 = type metadata accessor for Amppb_CastAndCrew(0);
    sub_1B8D95D8C(v1 + *(v17 + 24), v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1B8D9207C(v9, &qword_1EBAB9398, &qword_1B964E4C0);
    }

    else
    {
      sub_1B8D95E1C(v9, v15);
      sub_1B8CD18C8(&qword_1EBAB93B0, type metadata accessor for Amppb_Person);
      sub_1B964C740();
      result = sub_1B8D9612C(v15);
      if (v2)
      {
        return result;
      }
    }

    v18 = v1 + *(v17 + 20);
    return sub_1B964C290();
  }

  return result;
}

unint64_t sub_1B8D977B4()
{
  result = qword_1EBAB93A8;
  if (!qword_1EBAB93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB93A8);
  }

  return result;
}

uint64_t static Amppb_CastAndCrew.== infix(_:_:)(uint64_t a1, void *a2)
{
  v4 = OUTLINED_FUNCTION_28_1();
  v5 = type metadata accessor for Amppb_Person(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v33 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB93B8, &qword_1B964E4C8);
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  if ((sub_1B8D921AC(*v2, *a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = type metadata accessor for Amppb_CastAndCrew(0);
  v24 = *(v23 + 24);
  v25 = *(v17 + 48);
  sub_1B8D95D8C(v2 + v24, v22);
  sub_1B8D95D8C(a2 + v24, &v22[v25]);
  OUTLINED_FUNCTION_178(v22, 1, v5);
  if (v26)
  {
    OUTLINED_FUNCTION_178(&v22[v25], 1, v5);
    if (v26)
    {
      sub_1B8D9207C(v22, &qword_1EBAB9398, &qword_1B964E4C0);
LABEL_14:
      v30 = *(v23 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_3();
      sub_1B8CD18C8(v31, v32);
      v27 = OUTLINED_FUNCTION_634();
      return v27 & 1;
    }

    goto LABEL_10;
  }

  sub_1B8D95D8C(v22, v16);
  OUTLINED_FUNCTION_178(&v22[v25], 1, v5);
  if (v26)
  {
    sub_1B8D9612C(v16);
LABEL_10:
    sub_1B8D9207C(v22, &qword_1EBAB93B8, &qword_1B964E4C8);
    goto LABEL_11;
  }

  sub_1B8D95E1C(&v22[v25], v10);
  v29 = static Amppb_Person.== infix(_:_:)(v16, v10);
  sub_1B8D9612C(v10);
  sub_1B8D9612C(v16);
  sub_1B8D9207C(v22, &qword_1EBAB9398, &qword_1B964E4C0);
  if (v29)
  {
    goto LABEL_14;
  }

LABEL_11:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1B8D97B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD18C8(&qword_1EBAB94F8, type metadata accessor for Amppb_CastAndCrew);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D97B8C(uint64_t a1)
{
  v2 = sub_1B8CD18C8(&qword_1EBAB9430, type metadata accessor for Amppb_CastAndCrew);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D97BFC()
{
  sub_1B8CD18C8(&qword_1EBAB9430, type metadata accessor for Amppb_CastAndCrew);

  return sub_1B964C5D0();
}

uint64_t sub_1B8D97C9C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9350);
  __swift_project_value_buffer(v0, qword_1EBAB9350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "thumbnail";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "gender";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Person.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8D97F8C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8D97F8C()
{
  type metadata accessor for Amppb_LocalizedField(0);
  sub_1B8CD18C8(&qword_1EBAB93C8, type metadata accessor for Amppb_LocalizedField);
  return sub_1B964C570();
}

uint64_t Amppb_Person.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = *v1;
  v5 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v6 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for Amppb_LocalizedField(0), sub_1B8CD18C8(&qword_1EBAB93C8, type metadata accessor for Amppb_LocalizedField), v2 = v0, result = sub_1B964C730(), !v0))
    {
      v8 = v3[3];
      v9 = v3[4];
      OUTLINED_FUNCTION_1();
      if (!v10 || (result = OUTLINED_FUNCTION_3(), !v2))
      {
        v11 = v3[5];
        v12 = v3[6];
        OUTLINED_FUNCTION_1();
        if (!v13 || (result = OUTLINED_FUNCTION_3(), !v2))
        {
          v14 = *(type metadata accessor for Amppb_Person(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Amppb_Person.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2];
  v8 = v2[2];
  sub_1B8D7DFD0();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v3[3] == v2[3] && v3[4] == v2[4];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[5] == v2[5] && v3[6] == v2[6];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(type metadata accessor for Amppb_Person(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_3();
  sub_1B8CD18C8(v13, v14);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t (*sub_1B8D98294(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1B8D982E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD18C8(&qword_1EBAB94F0, type metadata accessor for Amppb_Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D98368(uint64_t a1)
{
  v2 = sub_1B8CD18C8(&qword_1EBAB93B0, type metadata accessor for Amppb_Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D983D8()
{
  sub_1B8CD18C8(&qword_1EBAB93B0, type metadata accessor for Amppb_Person);

  return sub_1B964C5D0();
}

uint64_t sub_1B8D98464()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9368);
  __swift_project_value_buffer(v0, qword_1EBAB9368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "country";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "language";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isPhonetic";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_LocalizedField.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Amppb_LocalizedField.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        if (*(v2 + 48) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
        {
          v13 = *(type metadata accessor for Amppb_LocalizedField(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Amppb_LocalizedField.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40);
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 48) != *(v2 + 48))
  {
    return 0;
  }

  v10 = *(type metadata accessor for Amppb_LocalizedField(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_3();
  sub_1B8CD18C8(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8D9899C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD18C8(&qword_1EBAB94E8, type metadata accessor for Amppb_LocalizedField);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D98A1C(uint64_t a1)
{
  v2 = sub_1B8CD18C8(&qword_1EBAB93C8, type metadata accessor for Amppb_LocalizedField);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D98A8C()
{
  sub_1B8CD18C8(&qword_1EBAB93C8, type metadata accessor for Amppb_LocalizedField);

  return sub_1B964C5D0();
}

uint64_t sub_1B8D98B18()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9380);
  __swift_project_value_buffer(v0, qword_1EBAB9380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tomato_meter";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rotten_tomato_url";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_RottenTomatoes.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }
  }

  return result;
}

uint64_t Amppb_RottenTomatoes.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v7 = *(type metadata accessor for Amppb_RottenTomatoes(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Amppb_RottenTomatoes.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Amppb_RottenTomatoes(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_3();
  sub_1B8CD18C8(v4, v5);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8D98EE0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD18C8(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8D98FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD18C8(&qword_1EBAB94E0, type metadata accessor for Amppb_RottenTomatoes);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8D99044(uint64_t a1)
{
  v2 = sub_1B8CD18C8(&qword_1EBAB9468, type metadata accessor for Amppb_RottenTomatoes);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8D990B4()
{
  sub_1B8CD18C8(&qword_1EBAB9468, type metadata accessor for Amppb_RottenTomatoes);

  return sub_1B964C5D0();
}

unint64_t sub_1B8D99138()
{
  result = qword_1EBAB93E8;
  if (!qword_1EBAB93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB93E8);
  }

  return result;
}

unint64_t sub_1B8D99190()
{
  result = qword_1EBAB93F0;
  if (!qword_1EBAB93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB93F0);
  }

  return result;
}

unint64_t sub_1B8D991E8()
{
  result = qword_1EBAB93F8;
  if (!qword_1EBAB93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB93F8);
  }

  return result;
}

unint64_t sub_1B8D99240()
{
  result = qword_1EBAB9400;
  if (!qword_1EBAB9400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAB9408, &qword_1B964E5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB9400);
  }

  return result;
}

uint64_t sub_1B8D9987C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8D99910()
{
  sub_1B8D999DC();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8D99B20(319, &qword_1EBAB94A0, type metadata accessor for Amppb_Person, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8D999DC()
{
  if (!qword_1EBAB9498)
  {
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAB9498);
    }
  }
}

void sub_1B8D99A54()
{
  sub_1B8D99B20(319, &qword_1EBAB94B8, type metadata accessor for Amppb_LocalizedField, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8D99B20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_25Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_26Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8D99C80()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8D99D30()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_30_2()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return sub_1B964C3C0();
}

BOOL sub_1B8D99EA8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

unint64_t Amppb_MediaKindType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x17;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8D99F40@<X0>(uint64_t *a1@<X8>)
{
  result = Amppb_MediaKindType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D99F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DAF9CC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Amppb_MediaKindType.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_211_0();
  off_1EBAB9508 = a1;
}

uint64_t (*static Amppb_MediaKindType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8D9A0A0@<X0>(uint64_t *a1@<X8>)
{
  result = static Amppb_MediaKindType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Amppb_Artwork.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_Artwork(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Artwork.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = v1 + *(type metadata accessor for Amppb_Artwork(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_ContentRating.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Amppb_ContentRating(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Amppb_ContentRating.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_ContentRating(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Amppb_ContentRating.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_ContentRating(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_ContentRating.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  a1[5] = 0;
  a1[6] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Amppb_ContentRating(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_Description.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_Description(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_EbookInfo.seller.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_EbookInfo.seller.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Amppb_EbookInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_EbookInfo(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_EbookInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v2;
  v1[5] = 0;
  v1[6] = v2;
  v3 = v1 + *(type metadata accessor for Amppb_EbookInfo(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8D9A6CC()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8D9A774()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Amppb_Preview.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_Preview(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Preview.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = v2;
  v3 = type metadata accessor for Amppb_Preview(0);
  return OUTLINED_FUNCTION_279(v3);
}

uint64_t Amppb_MovieClip.previewArtwork.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Amppb_MovieClip(v4) + 28);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Amppb_Artwork(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_176_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_MovieClip.previewArtwork.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_MovieClip(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Artwork(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_MovieClip.previewArtwork.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Amppb_Artwork(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Amppb_MovieClip(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    OUTLINED_FUNCTION_215_0();
    v19 = v12 + *(v10 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Amppb_MovieClip.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_MovieClip(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_MovieClip.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Amppb_MovieClip(0);
  OUTLINED_FUNCTION_279(v2);
  v3 = *(v2 + 28);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Amppb_Asset.flavor.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_Asset.flavor.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Amppb_Asset.preview.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Amppb_Asset(v6) + 36);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Amppb_Preview(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0xE000000000000000;
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB92E0, &qword_1B964DAC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t sub_1B8D9ADF8()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t Amppb_Asset.preview.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_Asset(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB92E0, &qword_1B964DAC0);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Preview(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_Asset.preview.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Amppb_Preview(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Amppb_Asset(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0xE000000000000000;
    v19 = v12 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB92E0, &qword_1B964DAC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8D9AFDC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_277_0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB92E0, &qword_1B964DAC0);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_55_0();
    sub_1B8D9B104();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB92E0, &qword_1B964DAC0);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_283_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B8D9B0AC()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8D9B104()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B8D9B210()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8D9B298()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Amppb_Asset.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_Asset(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Asset.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  v3 = type metadata accessor for Amppb_Asset(0);
  v4 = v1 + *(v3 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 36);
  type metadata accessor for Amppb_Preview(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Amppb_SoftwareInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_SoftwareInfo(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8D9B490()
{
  OUTLINED_FUNCTION_92_0();
  v1 = v0(0);
  return OUTLINED_FUNCTION_279(v1);
}

uint64_t Amppb_Offer.assets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Amppb_Offer.variant.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_Offer.variant.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Amppb_Offer.type.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_Offer.type.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_1B8D9B624()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8D9B6CC()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Amppb_Offer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_Offer(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Offer.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Amppb_Offer(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_UserRating.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_UserRating(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_UserRating.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Amppb_UserRating(v1);
  *v0 = 0u;
  v0[1] = 0u;
  v3 = v0 + *(v2 + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_RottenTomatoesReviews.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Amppb_RottenTomatoesReviews(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Amppb_RottenTomatoesReviews.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_RottenTomatoesReviews(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Amppb_RottenTomatoesReviews.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_RottenTomatoesReviews(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_RottenTomatoesReviews.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Amppb_RottenTomatoesReviews(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Amppb_Child.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_Child.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Amppb_Child.parentName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_Child.parentName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Amppb_Child.offers.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void Amppb_Child.kind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t Amppb_Child.kind.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

uint64_t Amppb_Child.artwork.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Amppb_Child(v4) + 52);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Amppb_Artwork(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_176_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Child.artwork.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_Child(v1);
  sub_1B8D9207C(v0 + *(v2 + 52), &qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Artwork(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_Child.artwork.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Amppb_Artwork(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Amppb_Child(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 52));
  OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    OUTLINED_FUNCTION_215_0();
    v19 = v12 + *(v10 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8D9BF28()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_277_0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9680, &unk_1B964EEA0);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_11_2();
    sub_1B8D9B104();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9680, &unk_1B964EEA0);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_283_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Amppb_Child.hasArtwork.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Amppb_Child(v7) + 52);
  OUTLINED_FUNCTION_274_0();
  v9 = type metadata accessor for Amppb_Artwork(0);
  OUTLINED_FUNCTION_178(v0, 1, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v12, v13, &unk_1B964EEA0);
  return v11;
}

Swift::Void __swiftcall Amppb_Child.clearArtwork()()
{
  v1 = type metadata accessor for Amppb_Child(0);
  sub_1B8D9207C(v0 + *(v1 + 52), &qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Amppb_Child.releaseDate.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_432();
}

uint64_t Amppb_Child.releaseDate.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Amppb_Child.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Amppb_Child(v0) + 48);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Amppb_Child.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_Child(v0) + 48);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Amppb_Child.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_Child(v0) + 48);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Child.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = v2;
  v3 = type metadata accessor for Amppb_Child(0);
  v4 = a1 + *(v3 + 48);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 52);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Amppb_Parent.description_p.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Amppb_Parent(v4) + 28);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Parent.description_p.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_Parent(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9688, &qword_1B964EEB0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Description(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_Parent.description_p.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Amppb_Description(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Amppb_Parent(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    OUTLINED_FUNCTION_114_0();
    v19 = v12 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8D9C5C4()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = *(v1(0) + 28);
  OUTLINED_FUNCTION_225_0();
  sub_1B8D92024();
  v10 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v13, v14, v15);
  return v12;
}

uint64_t sub_1B8D9C6B0()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Amppb_Parent.itunesNotes.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Amppb_Parent(v4) + 32);
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Parent.itunesNotes.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_Parent(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9688, &qword_1B964EEB0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Description(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_Parent.itunesNotes.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Amppb_Description(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Amppb_Parent(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    OUTLINED_FUNCTION_114_0();
    v19 = v12 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8D9C970()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_277_0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9688, &qword_1B964EEB0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_10_2();
    sub_1B8D9B104();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9688, &qword_1B964EEB0);
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_283_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Amppb_Parent.hasItunesNotes.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Amppb_Parent(v7) + 32);
  OUTLINED_FUNCTION_274_0();
  v9 = type metadata accessor for Amppb_Description(0);
  OUTLINED_FUNCTION_178(v0, 1, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v12, v13, &qword_1B964EEB0);
  return v11;
}

Swift::Void __swiftcall Amppb_Parent.clearItunesNotes()()
{
  v1 = type metadata accessor for Amppb_Parent(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB9688, &qword_1B964EEB0);
  type metadata accessor for Amppb_Description(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Amppb_Parent.userRating.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Amppb_Parent(v4) + 36);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Amppb_UserRating(0);
  OUTLINED_FUNCTION_9_2();
  if (v6)
  {
    OUTLINED_FUNCTION_275_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v6)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Parent.userRating.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Amppb_Parent(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_122_0();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_UserRating(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Amppb_Parent.userRating.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Amppb_UserRating(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Amppb_Parent(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v12 = 0u;
    v12[1] = 0u;
    v19 = v12 + *(v10 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8D9CD90()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_277_0();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9690, &qword_1B964EEB8);
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_282_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_51_1();
    sub_1B8D9B104();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9690, &qword_1B964EEB8);
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_283_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B8D9CE9C()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = *(v1(0) + 36);
  OUTLINED_FUNCTION_225_0();
  sub_1B8D92024();
  v10 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v13, v14, v15);
  return v12;
}

uint64_t sub_1B8D9CF88()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 36), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Amppb_Parent.children.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Amppb_Parent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Amppb_Parent(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Amppb_Parent.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  type metadata accessor for Amppb_Child(0);
  *(v1 + 16) = sub_1B964C7B0();
  v3 = type metadata accessor for Amppb_Parent(0);
  OUTLINED_FUNCTION_279(v3);
  v4 = v3[7];
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v2);
  v8 = v3[8];
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
  v12 = v3[9];
  OUTLINED_FUNCTION_235_0();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Amppb_Content.name.getter()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_521();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8D9D1D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.name.setter();
}

uint64_t Amppb_Content.name.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_69_0();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DA90EC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_18();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
}

uint64_t Amppb_Content.name.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 64) = v0;
  OUTLINED_FUNCTION_38_0();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_521();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8D9D31C(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  v4 = *(v1 + 56);
  if (v5)
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 56);

    OUTLINED_FUNCTION_461();
    Amppb_Content.name.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = *(v1 + 72);
    v10 = *(v1 + 64);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v1 + 72);
      v15 = *(v1 + 64);
      OUTLINED_FUNCTION_63_1();
      v16 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8DA90EC(v16);
      *(v15 + v14) = v13;
    }

    OUTLINED_FUNCTION_18();
    v17 = *(v13 + 24);
    *(v13 + 16) = v3;
    *(v13 + 24) = v4;
  }

  free(v1);
}

uint64_t Amppb_Content.artwork.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Amppb_Artwork(0);
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_176_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.artwork.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = OUTLINED_FUNCTION_127_0(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  OUTLINED_FUNCTION_197_0();
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.artwork.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Amppb_Artwork(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_215_0();
    v16 = &v14[*(v10 + 28)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8D9D744(uint64_t *a1)
{
  v1 = *a1;

  return Amppb_Content.genreNames.setter(v2);
}

uint64_t Amppb_Content.genreNames.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9D80C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.url.setter(v1, v2);
}

uint64_t Amppb_Content.url.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9D8E8(uint64_t *a1)
{
  OUTLINED_FUNCTION_27_2();
  v3 = *a1;
  OUTLINED_FUNCTION_521();
  v4 = *(v1 + v3);
}

uint64_t sub_1B8D9D92C(uint64_t *a1)
{
  v1 = *a1;

  return Amppb_Content.contentRatingsBySystem.setter(v2);
}

uint64_t sub_1B8D9D964(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_69_0();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18();
  v10 = *(v7 + a2);
  *(v7 + a2) = a1;
}

uint64_t Amppb_Content.contentRatingsBySystem.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9DA68(void *a1)
{
  OUTLINED_FUNCTION_38_0();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B8D9DABC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.bornOrFormed.setter(v1, v2);
}

uint64_t sub_1B8D9DB08(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  v8 = OUTLINED_FUNCTION_112();
  v9 = *(type metadata accessor for Amppb_Content(v8) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v13 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8DA90EC(v13);
    *(v7 + v9) = v12;
  }

  v14 = (v12 + *a3);
  OUTLINED_FUNCTION_211_0();
  v15 = v14[1];
  *v14 = v5;
  v14[1] = v3;
}

uint64_t Amppb_Content.bornOrFormed.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9DC20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.origin.setter(v1, v2);
}

uint64_t Amppb_Content.origin.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9DCFC(uint64_t *a1)
{
  v1 = *a1;

  return Amppb_Content.offers.setter(v2);
}

uint64_t Amppb_Content.offers.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Amppb_Content.softwareInfo.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Amppb_SoftwareInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9698, &qword_1B964EEC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.softwareInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9698, &qword_1B964EEC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = OUTLINED_FUNCTION_127_0(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_SoftwareInfo(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.softwareInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Amppb_SoftwareInfo(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9698, &qword_1B964EEC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D9E0C0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8D9B0AC();
    v2(v3);
    sub_1B8D9B104();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t sub_1B8D9E194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_27_2();
  v14 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v15 = a4(0);
  OUTLINED_FUNCTION_178(v5, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = OUTLINED_FUNCTION_196();
  sub_1B8D9207C(v18, v19, v4);
  return v17;
}

void sub_1B8D9E288()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_208();
  v12 = *(type metadata accessor for Amppb_Content(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v16 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B8DA90EC(v16);
  }

  v4(0);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8D9E380(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.collectionID.setter(v1, v2);
}

uint64_t Amppb_Content.collectionID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9E45C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.collectionName.setter(v1, v2);
}

uint64_t Amppb_Content.collectionName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9E538()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_281_0();
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.description_p.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = OUTLINED_FUNCTION_127_0(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Description(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.description_p.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Amppb_Description(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.itunesNotes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = OUTLINED_FUNCTION_127_0(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Description(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.itunesNotes.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Amppb_Description(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8D9EB68(uint64_t *a1)
{
  v1 = *a1;

  return Amppb_Content.deviceFamilies.setter(v2);
}

uint64_t Amppb_Content.deviceFamilies.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9EC30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.bundleID.setter(v1, v2);
}

uint64_t Amppb_Content.bundleID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9ED0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.bundleDisplayName.setter(v1, v2);
}

uint64_t Amppb_Content.bundleDisplayName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9EDE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.copyright.setter(v1, v2);
}

uint64_t Amppb_Content.copyright.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Amppb_Content.kind.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_38_0();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  result = OUTLINED_FUNCTION_521();
  v6 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B8D9EF10@<X0>(uint64_t a1@<X8>)
{
  result = Amppb_Content.kind.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B8D9EF54(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Amppb_Content.kind.setter(&v3);
}

uint64_t Amppb_Content.kind.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_69_0();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DA90EC(v8);
    *(v3 + v2) = v7;
  }

  v9 = v7 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  result = OUTLINED_FUNCTION_18();
  *v9 = v4;
  *(v9 + 8) = v5;
  return result;
}

uint64_t Amppb_Content.kind.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_38_0();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  v5 = *(v0 + 8);
  *(v1 + 72) = *v0;
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8D9F090()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v1);
  v3 = *(v2 + 72);
  v4 = *(v0 + 84);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_63_1();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v12);
    *(v11 + v10) = v9;
  }

  v13 = v9 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  OUTLINED_FUNCTION_211_0();
  *v13 = v3;
  *(v13 + 8) = v6;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t sub_1B8D9F14C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.id.setter(v1, v2);
}

uint64_t Amppb_Content.id.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8D9F228(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.nameRaw.setter(v1, v2);
}

uint64_t Amppb_Content.nameRaw.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Amppb_Content.userRating.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v4);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Amppb_UserRating(0);
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_275_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.userRating.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = OUTLINED_FUNCTION_127_0(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  OUTLINED_FUNCTION_235_0();
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.userRating.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Amppb_UserRating(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v14 = 0u;
    v14[1] = 0u;
    v16 = v14 + *(v10 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.rottenTomatoesReviews.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v6);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  v7 = type metadata accessor for Amppb_RottenTomatoesReviews(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    v9 = a1 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB96A0, &qword_1B964EEC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.rottenTomatoesReviews.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A0, &qword_1B964EEC8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = OUTLINED_FUNCTION_127_0(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_RottenTomatoesReviews(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.rottenTomatoesReviews.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 32) = v7;
  v8 = type metadata accessor for Amppb_RottenTomatoesReviews(0);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v0 + 48) = v12;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  sub_1B8D92024();
  OUTLINED_FUNCTION_16_2();
  if (v13)
  {
    *v12 = 0;
    v14 = v12 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v13)
    {
      sub_1B8D9207C(v7, &qword_1EBAB96A0, &qword_1B964EEC8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_461();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.eBookInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_57_1(v6);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_106_0();
  v7 = type metadata accessor for Amppb_EbookInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0xE000000000000000;
    a1[5] = 0;
    a1[6] = 0xE000000000000000;
    v9 = a1 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB96A8, &qword_1B964EED0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t Amppb_Content.eBookInfo.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = OUTLINED_FUNCTION_127_0(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_EbookInfo(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.eBookInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Amppb_EbookInfo(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0xE000000000000000;
    v14[5] = 0;
    v14[6] = 0xE000000000000000;
    v16 = v14 + *(v10 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB96A8, &qword_1B964EED0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.discNumber.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_38_0();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8D9FE2C(uint64_t *a1)
{
  OUTLINED_FUNCTION_27_2();
  v3 = *a1;
  OUTLINED_FUNCTION_521();
  return *(v1 + v3);
}

uint64_t sub_1B8D9FE78(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_69_0();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_271_0();
  result = OUTLINED_FUNCTION_18();
  *(v7 + a2) = a1;
  return result;
}

uint64_t Amppb_Content.trackNumber.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_38_0();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8D9FF64()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_238(v3);
  v5 = *(v4 + 72);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 88);
    v12 = *(v0 + 80);
    OUTLINED_FUNCTION_63_1();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8DA90EC(v13);
    *(v12 + v11) = v10;
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18();
  *(v10 + v2) = v5;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t sub_1B8DA0014(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.artistName.setter(v1, v2);
}

uint64_t Amppb_Content.artistName.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8DA00F0(uint64_t *a1)
{
  v1 = *a1;

  return Amppb_Content.artistBio.setter(v2);
}

uint64_t Amppb_Content.artistBio.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8DA01B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Amppb_Content.releaseDate.setter(v1, v2);
}

uint64_t Amppb_Content.releaseDate.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_7_2(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DA0288()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v1);
  v5 = *(v4 + 48);
  v6 = *(v0 + 56);
  if (v7)
  {
    v8 = v3;
    v9 = *(v0 + 64);
    v10 = *(v0 + 56);

    v11 = OUTLINED_FUNCTION_461();
    v8(v11);
    v12 = *(v0 + 56);
  }

  else
  {
    v13 = v2;
    v14 = *(v0 + 72);
    v15 = *(v0 + 64);
    v16 = *(v15 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v15 + v14);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = *(v0 + 72);
      v20 = *(v0 + 64);
      OUTLINED_FUNCTION_63_1();
      v21 = OUTLINED_FUNCTION_40_0();
      v18 = sub_1B8DA90EC(v21);
      *(v20 + v19) = v18;
    }

    v22 = (v18 + *v13);
    OUTLINED_FUNCTION_211_0();
    v23 = v22[1];
    *v22 = v5;
    v22[1] = v6;
  }

  OUTLINED_FUNCTION_242();

  free(v24);
}

uint64_t sub_1B8DA035C(uint64_t *a1)
{
  v1 = *a1;

  return Amppb_Content.children.setter(v2);
}

uint64_t Amppb_Content.children.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8DA0424(uint64_t *a1)
{
  v1 = *a1;

  return Amppb_Content.movieClips.setter(v2);
}

uint64_t Amppb_Content.movieClips.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_23_1(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DA04E0(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    v7 = v3;
    v8 = *(v1 + 56);

    v7(v9);
    v10 = *(v1 + 48);
  }

  else
  {
    v11 = v2;
    v12 = *(v1 + 64);
    v13 = *(v1 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v1 + 64);
      v18 = *(v1 + 56);
      OUTLINED_FUNCTION_63_1();
      v19 = OUTLINED_FUNCTION_40_0();
      v16 = sub_1B8DA90EC(v19);
      *(v18 + v17) = v16;
    }

    v20 = *v11;
    OUTLINED_FUNCTION_18();
    v21 = *(v16 + v20);
    *(v16 + v20) = v5;
  }

  free(v1);
}

uint64_t Amppb_Content.parent.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v6 = &v25 - v5;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_101_0();
  sub_1B8D92024();
  v7 = type metadata accessor for Amppb_Parent(0);
  OUTLINED_FUNCTION_57(v6);
  if (v8)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    type metadata accessor for Amppb_Child(0);
    a1[2] = sub_1B964C7B0();
    v9 = a1 + v7[6];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = v7[7];
    v11 = type metadata accessor for Amppb_Description(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    v15 = v7[8];
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
    v19 = v7[9];
    OUTLINED_FUNCTION_235_0();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    result = OUTLINED_FUNCTION_57(v6);
    if (!v8)
    {
      return sub_1B8D9207C(v6, &qword_1EBAB96B0, &qword_1B964EED8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_0();
    return sub_1B8D9ADF8();
  }

  return result;
}

uint64_t sub_1B8DA0718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_208();
  sub_1B8D9B0AC();
  return a7(v7);
}

uint64_t Amppb_Content.parent.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96B0, &qword_1B964EED8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_31_2();
  v6 = OUTLINED_FUNCTION_127_0(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_63_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DA90EC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_294();
  sub_1B8D9ADF8();
  type metadata accessor for Amppb_Parent(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Amppb_Content.parent.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Amppb_Parent(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    type metadata accessor for Amppb_Child(0);
    v14[2] = sub_1B964C7B0();
    OUTLINED_FUNCTION_280_0();
    v16 = v10[7];
    v17 = type metadata accessor for Amppb_Description(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = v10[8];
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
    v25 = v10[9];
    OUTLINED_FUNCTION_235_0();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB96B0, &qword_1B964EED8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_246();
    sub_1B8D9ADF8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Amppb_Content.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Amppb_Content.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Amppb_Content.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Amppb_Content(0) + 20);
  if (qword_1EBAB5EC0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBAB9678;
}

uint64_t sub_1B8DA0C04()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9510);
  __swift_project_value_buffer(v0, qword_1EBAB9510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1B964EE50;
  v4 = v52 + v3 + v1[14];
  *(v52 + v3) = 0;
  *v4 = "NotSet";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v52 + v3 + v2 + v1[14];
  *(v52 + v3 + v2) = 1;
  *v8 = "AlbumID";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v52 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ArtistID";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v52 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "MusicVideoID";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v52 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "PlaylistID";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v52 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "TvEpisodeID";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v52 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "TvSeasonID";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  v19 = (v52 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "MovieID";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v7();
  v21 = (v52 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "MovieBundleID";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v52 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ShortFilmID";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v52 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "EpubBookID";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v52 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "BookID";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v7();
  v29 = (v52 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "AudioBookID";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v7();
  v31 = (v52 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CourseID";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v7();
  v33 = (v52 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "PodcastID";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v7();
  v35 = (v52 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "PodcastEpisodeID";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v7();
  v37 = (v52 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "IOSSoftwareID";
  *(v38 + 1) = 13;
  v38[16] = 2;
  v7();
  v39 = (v52 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "DesktopAppID";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v52 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "AppCategoryID";
  *(v42 + 1) = 13;
  v42[16] = 2;
  v7();
  v43 = (v52 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "MoreResultsID";
  *(v44 + 1) = 13;
  v44[16] = 2;
  v7();
  v45 = (v52 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "IBookID";
  *(v46 + 1) = 7;
  v46[16] = 2;
  v7();
  v47 = (v52 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "SongID";
  *(v48 + 1) = 6;
  v48[16] = 2;
  v7();
  v49 = (v52 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "RadioStation";
  *(v50 + 1) = 12;
  v50[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8DA12F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9528);
  __swift_project_value_buffer(v0, qword_1EBAB9528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "url";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Artwork.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Amppb_Artwork.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
  {
    if (!v2[1] || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
    {
      v4 = v2[2];
      v5 = v2[3];
      OUTLINED_FUNCTION_1();
      if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v7 = *(type metadata accessor for Amppb_Artwork(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Amppb_Artwork.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v3 + 8) != *(v4 + 8))
  {
    return 0;
  }

  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  OUTLINED_FUNCTION_265_0();
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Amppb_Artwork(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t (*sub_1B8DA1750(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1B8DA17A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB99C0, type metadata accessor for Amppb_Artwork);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA1824(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA1894()
{
  sub_1B8CD1910(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA192C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9540);
  __swift_project_value_buffer(v0, qword_1EBAB9540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "advisories";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rank";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "name";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "system";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_ContentRating.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Amppb_ContentRating.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    if (!v2[1] || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
    {
      if (!v2[2] || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
      {
        v4 = v2[3];
        v5 = v2[4];
        OUTLINED_FUNCTION_1();
        if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          v7 = v2[5];
          v8 = v2[6];
          OUTLINED_FUNCTION_1();
          if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
          {
            v10 = *(type metadata accessor for Amppb_ContentRating(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Amppb_ContentRating.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  if (v1[1] != v0[1])
  {
    return 0;
  }

  v4 = v1[2];
  OUTLINED_FUNCTION_234_0();
  if (!v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_226_0();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v1[5] == v0[5] && v1[6] == v0[6];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for Amppb_ContentRating(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t (*sub_1B8DA1E9C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_1B8DA1EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB99B8, type metadata accessor for Amppb_ContentRating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA1F70(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB97C0, type metadata accessor for Amppb_ContentRating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA1FE0()
{
  sub_1B8CD1910(&qword_1EBAB97C0, type metadata accessor for Amppb_ContentRating);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA2078()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9558);
  __swift_project_value_buffer(v0, qword_1EBAB9558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "short";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "standard";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DA234C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB99B0, type metadata accessor for Amppb_Description);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA23CC(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA243C()
{
  sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA24E0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9570);
  __swift_project_value_buffer(v0, qword_1EBAB9570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "language_display_string";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "page_count";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "publisher";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "seller";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_EbookInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      default:
        continue;
    }
  }
}

uint64_t Amppb_EbookInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    if (!v2[2] || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
    {
      v7 = v2[3];
      v8 = v2[4];
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v10 = v2[5];
        v11 = v2[6];
        OUTLINED_FUNCTION_1();
        if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          v13 = *(type metadata accessor for Amppb_EbookInfo(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Amppb_EbookInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v4 = v1[1];
  OUTLINED_FUNCTION_428();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v1[2];
  OUTLINED_FUNCTION_234_0();
  if (!v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_226_0();
  v11 = v7 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = v1[5] == *(v0 + 40) && v1[6] == *(v0 + 48);
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(type metadata accessor for Amppb_EbookInfo(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v14, v15);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DA2A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB99A8, type metadata accessor for Amppb_EbookInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA2AA4(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB97E8, type metadata accessor for Amppb_EbookInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA2B14()
{
  sub_1B8CD1910(&qword_1EBAB97E8, type metadata accessor for Amppb_EbookInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA2BB4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9588);
  __swift_project_value_buffer(v0, qword_1EBAB9588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "duration";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Preview.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Amppb_Preview.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v7 = *(type metadata accessor for Amppb_Preview(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Amppb_Preview.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Amppb_Preview(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DA2FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB99A0, type metadata accessor for Amppb_Preview);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA3054(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB96E0, type metadata accessor for Amppb_Preview);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA30C4()
{
  sub_1B8CD1910(&qword_1EBAB96E0, type metadata accessor for Amppb_Preview);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA3168()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB95A0);
  __swift_project_value_buffer(v0, qword_1EBAB95A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "preview_artwork";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "clip_assets";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_MovieClip.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8DA34D4();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8DA3420();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8DA3420()
{
  v0 = *(type metadata accessor for Amppb_MovieClip(0) + 28);
  type metadata accessor for Amppb_Artwork(0);
  sub_1B8CD1910(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork);
  return sub_1B964C580();
}

uint64_t sub_1B8DA34D4()
{
  type metadata accessor for Amppb_Preview(0);
  sub_1B8CD1910(&qword_1EBAB96E0, type metadata accessor for Amppb_Preview);
  return sub_1B964C570();
}

void Amppb_MovieClip.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_273_0();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_614();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = type metadata accessor for Amppb_Artwork(0);
  v32 = OUTLINED_FUNCTION_59_1(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_62();
  v35 = *v20;
  v36 = v20[1];
  OUTLINED_FUNCTION_1();
  if (!v37 || (OUTLINED_FUNCTION_3(), !v21))
  {
    a10 = type metadata accessor for Amppb_MovieClip(0);
    v38 = *(a10 + 28);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
    {
      sub_1B8D9207C(v30, &qword_1EBAB9680, &unk_1B964EEA0);
    }

    else
    {
      OUTLINED_FUNCTION_2_2();
      OUTLINED_FUNCTION_190_0();
      sub_1B8D9ADF8();
      OUTLINED_FUNCTION_141_0();
      sub_1B8CD1910(v39, v40);
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_11_2();
      sub_1B8D9B104();
      if (v21)
      {
        goto LABEL_9;
      }
    }

    if (!*(*(v22 + 16) + 16) || (type metadata accessor for Amppb_Preview(0), OUTLINED_FUNCTION_137_0(), sub_1B8CD1910(v41, v42), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v21))
    {
      v43 = *(a10 + 24);
      OUTLINED_FUNCTION_8_1();
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Amppb_MovieClip.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_112();
  v6 = type metadata accessor for Amppb_Artwork(v5);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96F0, &unk_1B964EEE0);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_88();
  v18 = *v1;
  v19 = v1[1];
  OUTLINED_FUNCTION_428();
  v22 = v22 && v20 == v21;
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v41 = type metadata accessor for Amppb_MovieClip(0);
  v23 = *(v41 + 28);
  v24 = *(v14 + 48);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (v22)
  {
    OUTLINED_FUNCTION_37_0(v2 + v24);
    if (v22)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9680, &unk_1B964EEA0);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v24);
  if (v32)
  {
    OUTLINED_FUNCTION_11_2();
    sub_1B8D9B104();
LABEL_16:
    v33 = &qword_1EBAB96F0;
    v34 = &unk_1B964EEE0;
LABEL_28:
    sub_1B8D9207C(v2, v33, v34);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_2_2();
  sub_1B8D9ADF8();
  OUTLINED_FUNCTION_229_0();
  if (!v35 || v4[1] != v3[1] || (v4[2] == v3[2] ? (v36 = v4[3] == v3[3]) : (v36 = 0), !v36 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_155_0();
    sub_1B8D9B104();
    OUTLINED_FUNCTION_195();
    sub_1B8D9B104();
    v33 = &qword_1EBAB9680;
    v34 = &unk_1B964EEA0;
    goto LABEL_28;
  }

  v37 = *(v6 + 28);
  v38 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v39, v40);
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_133_0();
  sub_1B8D9B104();
  OUTLINED_FUNCTION_278_0();
  sub_1B8D9207C(v2, &qword_1EBAB9680, &unk_1B964EEA0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  v25 = v1[2];
  v26 = *(v0 + 16);
  sub_1B8D7DE40();
  if ((v27 & 1) == 0)
  {
LABEL_29:
    v31 = 0;
    goto LABEL_30;
  }

  v28 = *(v41 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v29, v30);
  v31 = OUTLINED_FUNCTION_199_0();
LABEL_30:
  OUTLINED_FUNCTION_264(v31);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DA3AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9998, type metadata accessor for Amppb_MovieClip);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA3B6C(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9810, type metadata accessor for Amppb_MovieClip);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA3BDC()
{
  sub_1B8CD1910(&qword_1EBAB9810, type metadata accessor for Amppb_MovieClip);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA3C78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB95B8);
  __swift_project_value_buffer(v0, qword_1EBAB95B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "duration";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "flavor";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "preview";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "is_closed_captioned";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Asset.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8DA3FE4();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DA3FE4()
{
  v0 = *(type metadata accessor for Amppb_Asset(0) + 36);
  type metadata accessor for Amppb_Preview(0);
  sub_1B8CD1910(&qword_1EBAB96E0, type metadata accessor for Amppb_Preview);
  return sub_1B964C580();
}

void Amppb_Asset.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E0, &qword_1B964DAC0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_151();
  v9 = type metadata accessor for Amppb_Preview(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v1))
  {
    if (*(v2 + 8) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), sub_1B964C6F0(), !v1))
    {
      v13 = *(v2 + 16);
      v14 = *(v2 + 24);
      OUTLINED_FUNCTION_1();
      if (!v15 || (OUTLINED_FUNCTION_3(), !v1))
      {
        v16 = type metadata accessor for Amppb_Asset(0);
        v17 = *(v16 + 36);
        sub_1B8D92024();
        v18 = OUTLINED_FUNCTION_443();
        if (__swift_getEnumTagSinglePayload(v18, v19, v9) == 1)
        {
          sub_1B8D9207C(v3, &qword_1EBAB92E0, &qword_1B964DAC0);
        }

        else
        {
          OUTLINED_FUNCTION_6_1();
          sub_1B8D9ADF8();
          OUTLINED_FUNCTION_137_0();
          sub_1B8CD1910(v20, v21);
          OUTLINED_FUNCTION_687();
          sub_1B964C740();
          OUTLINED_FUNCTION_55_0();
          sub_1B8D9B104();
          if (v1)
          {
            goto LABEL_14;
          }
        }

        if (*(v2 + 32) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
        {
          v22 = *(v16 + 32);
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Amppb_Asset.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_112();
  v6 = type metadata accessor for Amppb_Preview(v5);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E0, &qword_1B964DAC0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E8, &qword_1B964DAC8);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_88();
  if (*v1 != *v0 || *(v1 + 8) != *(v0 + 8))
  {
    goto LABEL_30;
  }

  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  OUTLINED_FUNCTION_265_0();
  v22 = v22 && v20 == v21;
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v38 = type metadata accessor for Amppb_Asset(0);
  v23 = *(v38 + 36);
  v24 = *(v14 + 48);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (v22)
  {
    OUTLINED_FUNCTION_37_0(v2 + v24);
    if (v22)
    {
      sub_1B8D9207C(v2, &qword_1EBAB92E0, &qword_1B964DAC0);
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v24);
  if (v29)
  {
    OUTLINED_FUNCTION_55_0();
    sub_1B8D9B104();
LABEL_18:
    v30 = &qword_1EBAB92E8;
    v31 = &qword_1B964DAC8;
LABEL_29:
    sub_1B8D9207C(v2, v30, v31);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_6_1();
  sub_1B8D9ADF8();
  OUTLINED_FUNCTION_229_0();
  if (!v32 || (*(v4 + 8) == *(v3 + 8) ? (v33 = *(v4 + 16) == *(v3 + 16)) : (v33 = 0), !v33 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B8D9B104();
    OUTLINED_FUNCTION_195();
    sub_1B8D9B104();
    v30 = &qword_1EBAB92E0;
    v31 = &qword_1B964DAC0;
    goto LABEL_29;
  }

  v34 = *(v6 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v35, v36);
  v37 = OUTLINED_FUNCTION_198_0();
  sub_1B8D9B104();
  OUTLINED_FUNCTION_278_0();
  sub_1B8D9207C(v2, &qword_1EBAB92E0, &qword_1B964DAC0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  if (*(v1 + 32) != *(v0 + 32))
  {
LABEL_30:
    v28 = 0;
    goto LABEL_31;
  }

  v25 = *(v38 + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v26, v27);
  v28 = OUTLINED_FUNCTION_199_0();
LABEL_31:
  OUTLINED_FUNCTION_264(v28);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DA4650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9990, type metadata accessor for Amppb_Asset);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA46D0(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9710, type metadata accessor for Amppb_Asset);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA4740()
{
  sub_1B8CD1910(&qword_1EBAB9710, type metadata accessor for Amppb_Asset);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA47D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB95D0);
  __swift_project_value_buffer(v0, qword_1EBAB95D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "support_url";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "website_url";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DA49C4()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8DA4A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  v8 = *v4;
  v9 = v4[1];
  OUTLINED_FUNCTION_1();
  if (!v10 || (result = OUTLINED_FUNCTION_3(), !v5))
  {
    v12 = *(v6 + 16);
    v13 = *(v6 + 24);
    OUTLINED_FUNCTION_1();
    if (!v14 || (result = OUTLINED_FUNCTION_3(), !v5))
    {
      v15 = *(a4(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8DA4AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_468();
  v6 = *v5;
  v7 = v3[1];
  OUTLINED_FUNCTION_428();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[2];
  v12 = v3[3];
  OUTLINED_FUNCTION_265_0();
  v15 = v10 && v13 == v14;
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v16 = *(a3(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v17, v18);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DA4C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9988, type metadata accessor for Amppb_SoftwareInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA4CBC(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9838, type metadata accessor for Amppb_SoftwareInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA4D2C()
{
  sub_1B8CD1910(&qword_1EBAB9838, type metadata accessor for Amppb_SoftwareInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA4DC8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB95E8);
  __swift_project_value_buffer(v0, qword_1EBAB95E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assets";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "variant";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Offer.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8DA506C();
    }
  }

  return result;
}

uint64_t sub_1B8DA506C()
{
  type metadata accessor for Amppb_Asset(0);
  sub_1B8CD1910(&qword_1EBAB9710, type metadata accessor for Amppb_Asset);
  return sub_1B964C570();
}

uint64_t Amppb_Offer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Amppb_Asset(0), sub_1B8CD1910(&qword_1EBAB9710, type metadata accessor for Amppb_Asset), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v4 = v2[1];
    v5 = v2[2];
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v7 = v2[3];
      v8 = v2[4];
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v10 = *(type metadata accessor for Amppb_Offer(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Amppb_Offer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  sub_1B8D7E1B8();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_226_0();
  v10 = v7 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Amppb_Offer(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DA535C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9980, type metadata accessor for Amppb_Offer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA53DC(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9730, type metadata accessor for Amppb_Offer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA544C()
{
  sub_1B8CD1910(&qword_1EBAB9730, type metadata accessor for Amppb_Offer);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA54E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9600);
  __swift_project_value_buffer(v0, qword_1EBAB9600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rating_count_current_version";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value_current_version";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "rating_count";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_UserRating.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t Amppb_UserRating.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
  {
    if (*(v2 + 8) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
    {
      if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
      {
        if (!*(v2 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
        {
          v4 = *(type metadata accessor for Amppb_UserRating(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Amppb_UserRating.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v5 + 8) != *(v6 + 8) || *(v3 + 16) != *(v2 + 16) || *(v3 + 24) != *(v2 + 24))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Amppb_UserRating(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DA5A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9978, type metadata accessor for Amppb_UserRating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA5A8C(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA5AFC()
{
  sub_1B8CD1910(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA5B94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9618);
  __swift_project_value_buffer(v0, qword_1EBAB9618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "tomato_meter_percentage";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Amppb_RottenTomatoesReviews.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C510();
    }
  }

  return result;
}

uint64_t Amppb_RottenTomatoesReviews.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
  {
    v2 = *(type metadata accessor for Amppb_RottenTomatoesReviews(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Amppb_RottenTomatoesReviews.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v2 = *(type metadata accessor for Amppb_RottenTomatoesReviews(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v3, v4);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DA5F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9970, type metadata accessor for Amppb_RottenTomatoesReviews);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA5F8C(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9870, type metadata accessor for Amppb_RottenTomatoesReviews);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA5FFC()
{
  sub_1B8CD1910(&qword_1EBAB9870, type metadata accessor for Amppb_RottenTomatoesReviews);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA6098()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9630);
  __swift_project_value_buffer(v0, qword_1EBAB9630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B964EE80;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 2;
  *v8 = "url";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v25 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "parent_name";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v7();
  v12 = (v25 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "offers";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v25 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "disc_number";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v7();
  v16 = (v25 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "track_number";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v7();
  v18 = (v25 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "kind";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v7();
  v20 = (v25 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "artwork";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "release_date";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Amppb_Child.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8DA6510();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B8DA65B0();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B8DA6618();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DA6510()
{
  type metadata accessor for Amppb_Offer(0);
  sub_1B8CD1910(&qword_1EBAB9730, type metadata accessor for Amppb_Offer);
  return sub_1B964C570();
}

uint64_t sub_1B8DA6618()
{
  v0 = *(type metadata accessor for Amppb_Child(0) + 52);
  type metadata accessor for Amppb_Artwork(0);
  sub_1B8CD1910(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork);
  return sub_1B964C580();
}

void Amppb_Child.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_151();
  v9 = type metadata accessor for Amppb_Artwork(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = *v0;
  v14 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v15 || (OUTLINED_FUNCTION_95_1(), !v1))
  {
    v16 = v0[2];
    v17 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v18 || (OUTLINED_FUNCTION_95_1(), !v1))
    {
      v19 = v0[4];
      v20 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v21 || (OUTLINED_FUNCTION_95_1(), !v1))
      {
        if (!*(v0[6] + 16) || (type metadata accessor for Amppb_Offer(0), sub_1B8CD1910(&qword_1EBAB9730, type metadata accessor for Amppb_Offer), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
        {
          if (!v0[7] || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v1))
          {
            if (!v0[8] || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v1))
            {
              if (!v0[9] || (v32 = *(v0 + 80), sub_1B8DAF9CC(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
              {
                v22 = type metadata accessor for Amppb_Child(0);
                v23 = *(v22 + 52);
                sub_1B8D92024();
                v24 = OUTLINED_FUNCTION_443();
                if (__swift_getEnumTagSinglePayload(v24, v25, v9) == 1)
                {
                  sub_1B8D9207C(v2, &qword_1EBAB9680, &unk_1B964EEA0);
                }

                else
                {
                  OUTLINED_FUNCTION_2_2();
                  sub_1B8D9ADF8();
                  OUTLINED_FUNCTION_141_0();
                  sub_1B8CD1910(v26, v27);
                  OUTLINED_FUNCTION_687();
                  sub_1B964C740();
                  OUTLINED_FUNCTION_11_2();
                  sub_1B8D9B104();
                  if (v1)
                  {
                    goto LABEL_21;
                  }
                }

                v28 = v3[11];
                v29 = v3[12];
                OUTLINED_FUNCTION_1();
                if (!v30 || (OUTLINED_FUNCTION_3(), !v1))
                {
                  v31 = *(v22 + 48);
                  OUTLINED_FUNCTION_8_1();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Amppb_Child.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_112();
  v6 = type metadata accessor for Amppb_Artwork(v5);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_137();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96F0, &unk_1B964EEE0);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_88();
  v18 = *v1;
  v19 = v1[1];
  OUTLINED_FUNCTION_428();
  v22 = v22 && v20 == v21;
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v23 = v1[2];
  v24 = v1[3];
  OUTLINED_FUNCTION_265_0();
  v27 = v22 && v25 == v26;
  if (!v27 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v28 = v1[4] == *(v0 + 32) && v1[5] == *(v0 + 40);
  if (!v28 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v29 = v1[6];
  v30 = *(v0 + 48);
  sub_1B8D7E5B8();
  if ((v31 & 1) == 0)
  {
    goto LABEL_47;
  }

  if (v1[7] != *(v0 + 56))
  {
    goto LABEL_47;
  }

  if (v1[8] != *(v0 + 64))
  {
    goto LABEL_47;
  }

  v32 = *(v0 + 80);
  if (!sub_1B8D92198(v1[9], *(v1 + 80), *(v0 + 72)))
  {
    goto LABEL_47;
  }

  v49 = type metadata accessor for Amppb_Child(0);
  v33 = *(v49 + 52);
  v34 = *(v14 + 48);
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (v22)
  {
    OUTLINED_FUNCTION_37_0(v2 + v34);
    if (v22)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9680, &unk_1B964EEA0);
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v34);
  if (v40)
  {
    OUTLINED_FUNCTION_11_2();
    sub_1B8D9B104();
LABEL_34:
    v41 = &qword_1EBAB96F0;
    v42 = &unk_1B964EEE0;
LABEL_46:
    sub_1B8D9207C(v2, v41, v42);
LABEL_47:
    v39 = 0;
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_2_2();
  sub_1B8D9ADF8();
  OUTLINED_FUNCTION_229_0();
  if (!v43 || v4[1] != v3[1] || (v4[2] == v3[2] ? (v44 = v4[3] == v3[3]) : (v44 = 0), !v44 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_155_0();
    sub_1B8D9B104();
    OUTLINED_FUNCTION_195();
    sub_1B8D9B104();
    v41 = &qword_1EBAB9680;
    v42 = &unk_1B964EEA0;
    goto LABEL_46;
  }

  v45 = *(v6 + 28);
  v46 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v47, v48);
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_133_0();
  sub_1B8D9B104();
  OUTLINED_FUNCTION_278_0();
  sub_1B8D9207C(v2, &qword_1EBAB9680, &unk_1B964EEA0);
  if ((v46 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_25:
  v35 = v1[11] == *(v0 + 88) && v1[12] == *(v0 + 96);
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v36 = *(v49 + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v37, v38);
  v39 = OUTLINED_FUNCTION_199_0();
LABEL_48:
  OUTLINED_FUNCTION_264(v39);
  OUTLINED_FUNCTION_283();
}

uint64_t (*sub_1B8DA6D9C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_1B8DA6DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9968, type metadata accessor for Amppb_Child);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA6E70(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9748, type metadata accessor for Amppb_Child);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA6EE0()
{
  sub_1B8CD1910(&qword_1EBAB9748, type metadata accessor for Amppb_Child);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA6F80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9648);
  __swift_project_value_buffer(v0, qword_1EBAB9648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "release_date";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "itunes_notes";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "user_rating";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "children";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Amppb_Parent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8DA72E8();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8DA739C();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8DA7450();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B8DA7504();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DA72E8()
{
  v0 = *(type metadata accessor for Amppb_Parent(0) + 28);
  type metadata accessor for Amppb_Description(0);
  sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description);
  return sub_1B964C580();
}

uint64_t sub_1B8DA739C()
{
  v0 = *(type metadata accessor for Amppb_Parent(0) + 32);
  type metadata accessor for Amppb_Description(0);
  sub_1B8CD1910(&qword_1EBAB9758, type metadata accessor for Amppb_Description);
  return sub_1B964C580();
}

uint64_t sub_1B8DA7450()
{
  v0 = *(type metadata accessor for Amppb_Parent(0) + 36);
  type metadata accessor for Amppb_UserRating(0);
  sub_1B8CD1910(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating);
  return sub_1B964C580();
}

uint64_t sub_1B8DA7504()
{
  sub_1B964C280();
  type metadata accessor for Amppb_Child(0);
  sub_1B8CD1910(&qword_1EBAB9748, type metadata accessor for Amppb_Child);
  sub_1B8CD1910(&qword_1EBAB9740, type metadata accessor for Amppb_Child);
  return sub_1B964C3A0();
}

void Amppb_Parent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v41 - v7;
  v45 = type metadata accessor for Amppb_UserRating(0);
  v8 = OUTLINED_FUNCTION_59_1(v45);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_256_0(v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = type metadata accessor for Amppb_Description(0);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44_0();
  v43 = v24;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_219_0();
  v26 = *v0;
  v27 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v28 || (sub_1B964C700(), !v1))
  {
    v42 = type metadata accessor for Amppb_Parent(0);
    v29 = *(v42 + 28);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      sub_1B8D9207C(v19, &qword_1EBAB9688, &qword_1B964EEB0);
    }

    else
    {
      OUTLINED_FUNCTION_1_3();
      sub_1B8D9ADF8();
      OUTLINED_FUNCTION_144_0();
      sub_1B8CD1910(v30, v31);
      sub_1B964C740();
      OUTLINED_FUNCTION_10_2();
      sub_1B8D9B104();
      if (v1)
      {
        goto LABEL_16;
      }
    }

    v32 = v42;
    v33 = *(v42 + 32);
    sub_1B8D92024();
    v34 = OUTLINED_FUNCTION_443();
    if (__swift_getEnumTagSinglePayload(v34, v35, v20) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9688, &qword_1B964EEB0);
    }

    else
    {
      OUTLINED_FUNCTION_1_3();
      sub_1B8D9ADF8();
      OUTLINED_FUNCTION_144_0();
      sub_1B8CD1910(v36, v37);
      OUTLINED_FUNCTION_257_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_10_2();
      sub_1B8D9B104();
      if (v1)
      {
        goto LABEL_16;
      }
    }

    v38 = *(v32 + 36);
    v39 = v44;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v39, 1, v45) == 1)
    {
      sub_1B8D9207C(v39, &qword_1EBAB9690, &qword_1B964EEB8);
    }

    else
    {
      OUTLINED_FUNCTION_3_3();
      sub_1B8D9ADF8();
      sub_1B8CD1910(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating);
      OUTLINED_FUNCTION_257_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_51_1();
      sub_1B8D9B104();
      if (v1)
      {
        goto LABEL_16;
      }
    }

    if (!*(v0[2] + 16))
    {
LABEL_15:
      v40 = v0 + *(v32 + 24);
      sub_1B964C290();
      goto LABEL_16;
    }

    sub_1B964C280();
    type metadata accessor for Amppb_Child(0);
    sub_1B8CD1910(&qword_1EBAB9748, type metadata accessor for Amppb_Child);
    sub_1B8CD1910(&qword_1EBAB9740, type metadata accessor for Amppb_Child);
    sub_1B964C5E0();
    if (!v1)
    {
      v32 = v42;
      goto LABEL_15;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Amppb_Parent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v95 = type metadata accessor for Amppb_UserRating(0);
  v6 = OUTLINED_FUNCTION_59_1(v95);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v89 - v16);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9760, &qword_1B964EEF0);
  OUTLINED_FUNCTION_59_1(v94);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v89 - v21;
  v22 = type metadata accessor for Amppb_Description(0);
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44_0();
  v93 = v26;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v89 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
  v31 = OUTLINED_FUNCTION_183(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_94_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_87_0();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9768, &qword_1B964EEF8);
  v36 = OUTLINED_FUNCTION_59_1(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_66();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_219_0();
  v43 = *v5;
  v44 = v5[1];
  OUTLINED_FUNCTION_428();
  v47 = v47 && v45 == v46;
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_59;
  }

  v89 = v11;
  v90 = v17;
  v48 = type metadata accessor for Amppb_Parent(0);
  v98 = v3;
  v49 = *(v48 + 28);
  v50 = *(v35 + 48);
  v91 = v48;
  v92 = v5;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v0);
  if (v47)
  {
    OUTLINED_FUNCTION_99_0(v0 + v50);
    if (v47)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v0 + v50);
  if (v51)
  {
    OUTLINED_FUNCTION_10_2();
    sub_1B8D9B104();
LABEL_14:
    v52 = &qword_1EBAB9768;
    v53 = &qword_1B964EEF8;
LABEL_15:
    v54 = v0;
LABEL_58:
    sub_1B8D9207C(v54, v52, v53);
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_1_3();
  sub_1B8D9ADF8();
  v55 = *v1 == *v29 && v1[1] == v29[1];
  if (!v55 && (sub_1B964C9F0() & 1) == 0 || (v1[2] == v29[2] ? (v56 = v1[3] == v29[3]) : (v56 = 0), !v56 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_148_0();
    sub_1B8D9B104();
    sub_1B8D9B104();
    v52 = &qword_1EBAB9688;
    v53 = &qword_1B964EEB0;
    goto LABEL_15;
  }

  v57 = *(v22 + 24);
  v58 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v59, v60);
  sub_1B964C850();
  OUTLINED_FUNCTION_168_1();
  sub_1B8D9B104();
  sub_1B8D9B104();
  sub_1B8D9207C(v0, &qword_1EBAB9688, &qword_1B964EEB0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_27:
  v62 = v91;
  v61 = v92;
  v63 = *(v91 + 32);
  v64 = *(v35 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v41);
  if (v47)
  {
    OUTLINED_FUNCTION_99_0(v41 + v64);
    if (v47)
    {
      sub_1B8D9207C(v41, &qword_1EBAB9688, &qword_1B964EEB0);
      goto LABEL_49;
    }

    goto LABEL_35;
  }

  v65 = v97;
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v41 + v64);
  if (v66)
  {
    OUTLINED_FUNCTION_10_2();
    sub_1B8D9B104();
LABEL_35:
    v52 = &qword_1EBAB9768;
    v53 = &qword_1B964EEF8;
LABEL_36:
    v54 = v41;
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_1_3();
  v67 = v93;
  sub_1B8D9ADF8();
  v68 = *v65 == *v67 && v65[1] == v67[1];
  if (!v68 && (sub_1B964C9F0() & 1) == 0 || (v65[2] == v67[2] ? (v69 = v65[3] == v67[3]) : (v69 = 0), !v69 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_148_0();
    sub_1B8D9B104();
    sub_1B8D9B104();
    v52 = &qword_1EBAB9688;
    v53 = &qword_1B964EEB0;
    goto LABEL_36;
  }

  v70 = *(v22 + 24);
  v71 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_4();
  sub_1B8CD1910(v72, v73);
  sub_1B964C850();
  OUTLINED_FUNCTION_168_1();
  sub_1B8D9B104();
  sub_1B8D9B104();
  sub_1B8D9207C(v41, &qword_1EBAB9688, &qword_1B964EEB0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_49:
  v74 = *(v62 + 36);
  v75 = *(v94 + 48);
  v76 = v96;
  sub_1B8D92024();
  v77 = v98;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v76, 1, v95);
  if (!v47)
  {
    v78 = v90;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v76 + v75);
    if (!v79)
    {
      OUTLINED_FUNCTION_3_3();
      v81 = v89;
      sub_1B8D9ADF8();
      v82 = static Amppb_UserRating.== infix(_:_:)(v78, v81);
      sub_1B8D9B104();
      sub_1B8D9B104();
      sub_1B8D9207C(v76, &qword_1EBAB9690, &qword_1B964EEB8);
      if ((v82 & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_63;
    }

    OUTLINED_FUNCTION_51_1();
    sub_1B8D9B104();
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_37_0(v76 + v75);
  if (!v47)
  {
LABEL_57:
    v52 = &qword_1EBAB9760;
    v53 = &qword_1B964EEF0;
    v54 = v76;
    goto LABEL_58;
  }

  sub_1B8D9207C(v76, &qword_1EBAB9690, &qword_1B964EEB8);
LABEL_63:
  v83 = v61[2];
  v84 = *(v77 + 16);
  sub_1B8DB2AD0();
  if (v85)
  {
    v86 = *(v62 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_4();
    sub_1B8CD1910(v87, v88);
    v80 = sub_1B964C850();
    goto LABEL_60;
  }

LABEL_59:
  v80 = 0;
LABEL_60:
  OUTLINED_FUNCTION_264(v80);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DA8350(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1910(&qword_1EBAB9960, type metadata accessor for Amppb_Parent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DA83D0(uint64_t a1)
{
  v2 = sub_1B8CD1910(&qword_1EBAB9898, type metadata accessor for Amppb_Parent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DA8440()
{
  sub_1B8CD1910(&qword_1EBAB9898, type metadata accessor for Amppb_Parent);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DA84E0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB9660);
  __swift_project_value_buffer(v0, qword_1EBAB9660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1B964EE90;
  v4 = v69 + v3 + v1[14];
  *(v69 + v3) = 1;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v69 + v3 + v2 + v1[14];
  *(v69 + v3 + v2) = 2;
  *v8 = "artwork";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v69 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "genre_names";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v7();
  v12 = (v69 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "url";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v7();
  v14 = (v69 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "content_ratings_by_system";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v7();
  v16 = (v69 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "born_or_formed";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v7();
  v18 = (v69 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "origin";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v7();
  v20 = (v69 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "offers";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v7();
  v22 = (v69 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "software_info";
  *(v23 + 1) = 13;
  v23[16] = 2;
  v7();
  v24 = (v69 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "collection_id";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v7();
  v26 = (v69 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "collection_name";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v7();
  v28 = (v69 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "description";
  *(v29 + 1) = 11;
  v29[16] = 2;
  v7();
  v30 = (v69 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "itunes_notes";
  *(v31 + 1) = 12;
  v31[16] = 2;
  v7();
  v32 = (v69 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "device_families";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v7();
  v34 = (v69 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "bundle_id";
  *(v35 + 1) = 9;
  v35[16] = 2;
  v7();
  v36 = (v69 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "bundle_display_name";
  *(v37 + 1) = 19;
  v37[16] = 2;
  v7();
  v38 = (v69 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "copyright";
  *(v39 + 1) = 9;
  v39[16] = 2;
  v7();
  v40 = (v69 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "kind";
  *(v41 + 1) = 4;
  v41[16] = 2;
  v7();
  v42 = (v69 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "id";
  *(v43 + 1) = 2;
  v43[16] = 2;
  v7();
  v44 = (v69 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "name_raw";
  *(v45 + 1) = 8;
  v45[16] = 2;
  v7();
  v46 = (v69 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "user_rating";
  *(v47 + 1) = 11;
  v47[16] = 2;
  v7();
  v48 = (v69 + v3 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "rotten_tomatoes_reviews";
  *(v49 + 1) = 23;
  v49[16] = 2;
  v7();
  v50 = (v69 + v3 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "e_book_info";
  *(v51 + 1) = 11;
  v51[16] = 2;
  v7();
  v52 = (v69 + v3 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "disc_number";
  *(v53 + 1) = 11;
  v53[16] = 2;
  v7();
  v54 = (v69 + v3 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "track_number";
  *(v55 + 1) = 12;
  v55[16] = 2;
  v7();
  v56 = (v69 + v3 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "artist_name";
  *(v57 + 1) = 11;
  v57[16] = 2;
  v7();
  v58 = (v69 + v3 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "artist_bio";
  *(v59 + 1) = 10;
  v59[16] = 2;
  v7();
  v60 = (v69 + v3 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "release_date";
  *(v61 + 1) = 12;
  v61[16] = 2;
  v7();
  v62 = (v69 + v3 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "children";
  *(v63 + 1) = 8;
  v63[16] = 2;
  v7();
  v64 = (v69 + v3 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "movie_clips";
  *(v65 + 1) = 11;
  v65[16] = 2;
  v7();
  v66 = (v69 + v3 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "parent";
  *(v67 + 1) = 6;
  v67[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8DA8DBC()
{
  v0 = type metadata accessor for Amppb_Content._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B8DA8DFC();
  qword_1EBAB9678 = result;
  return result;
}

uint64_t sub_1B8DA8DFC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artwork;
  v2 = type metadata accessor for Amppb_Artwork(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__genreNames) = MEMORY[0x1E69E7CC0];
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__url);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__contentRatingsBySystem;
  type metadata accessor for Amppb_ContentRating(0);
  *(v0 + v5) = sub_1B964C7B0();
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bornOrFormed);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__origin);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__offers) = v3;
  v8 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__softwareInfo;
  v9 = type metadata accessor for Amppb_SoftwareInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionName);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__description_p;
  v13 = type metadata accessor for Amppb_Description(0);
  __swift_storeEnumTagSinglePayload(v0 + v12, 1, 1, v13);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__itunesNotes, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__deviceFamilies) = v3;
  v14 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleDisplayName);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__copyright);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__id);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__nameRaw);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__userRating;
  v21 = type metadata accessor for Amppb_UserRating(0);
  __swift_storeEnumTagSinglePayload(v0 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__rottenTomatoesReviews;
  v23 = type metadata accessor for Amppb_RottenTomatoesReviews(0);
  __swift_storeEnumTagSinglePayload(v0 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__eBookInfo;
  v25 = type metadata accessor for Amppb_EbookInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v24, 1, 1, v25);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber) = 0;
  v26 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistName);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistBio) = v3;
  v27 = (v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__releaseDate);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__children;
  type metadata accessor for Amppb_Child(0);
  *(v0 + v28) = sub_1B964C7B0();
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__movieClips) = v3;
  v29 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__parent;
  v30 = type metadata accessor for Amppb_Parent(0);
  __swift_storeEnumTagSinglePayload(v0 + v29, 1, 1, v30);
  return v0;
}

uint64_t sub_1B8DA90EC(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96B0, &qword_1B964EED8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v178 = v146 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v177 = v146 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A0, &qword_1B964EEC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v176 = v146 - v8;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v174 = v146 - v10;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v159 = v146 - v12;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9698, &qword_1B964EEC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v154 = v146 - v14;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v146[1] = v146 - v16;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v17 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artwork;
  v146[0] = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artwork;
  v18 = type metadata accessor for Amppb_Artwork(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v147 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__genreNames;
  v19 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__genreNames) = MEMORY[0x1E69E7CC0];
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__url);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__contentRatingsBySystem;
  v148 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__contentRatingsBySystem;
  type metadata accessor for Amppb_ContentRating(0);
  *(v1 + v21) = sub_1B964C7B0();
  v22 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bornOrFormed);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__origin);
  v149 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__origin);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v150 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__offers;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__offers) = v19;
  v24 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__softwareInfo;
  v151 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__softwareInfo;
  v25 = type metadata accessor for Amppb_SoftwareInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionID);
  v152 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionID);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionName);
  v153 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionName);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__description_p;
  v29 = type metadata accessor for Amppb_Description(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v155 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__itunesNotes;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__itunesNotes, 1, 1, v29);
  v156 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__deviceFamilies;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__deviceFamilies) = v19;
  v30 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleID);
  v157 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleID);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleDisplayName);
  v158 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleDisplayName);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  v32 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__copyright);
  v160 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__copyright);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  v33 = v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  v161 = v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__id);
  v162 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__id);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__nameRaw);
  v163 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__nameRaw);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v36 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__userRating;
  v164 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__userRating;
  v37 = type metadata accessor for Amppb_UserRating(0);
  __swift_storeEnumTagSinglePayload(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__rottenTomatoesReviews;
  v165 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__rottenTomatoesReviews;
  v39 = type metadata accessor for Amppb_RottenTomatoesReviews(0);
  __swift_storeEnumTagSinglePayload(v1 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__eBookInfo;
  v166 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__eBookInfo;
  v41 = type metadata accessor for Amppb_EbookInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v40, 1, 1, v41);
  v167 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber) = 0;
  v168 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber) = 0;
  v42 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistName);
  v169 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistName);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
  v170 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistBio;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistBio) = v19;
  v43 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__releaseDate);
  v171 = (v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__releaseDate);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  v44 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__children;
  v172 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__children;
  type metadata accessor for Amppb_Child(0);
  *(v1 + v44) = sub_1B964C7B0();
  v173 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__movieClips;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__movieClips) = v19;
  v45 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__parent;
  v175 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__parent;
  v46 = type metadata accessor for Amppb_Parent(0);
  __swift_storeEnumTagSinglePayload(v1 + v45, 1, 1, v46);
  swift_beginAccess();
  v48 = *(a1 + 16);
  v47 = *(a1 + 24);
  swift_beginAccess();
  v49 = *(v1 + 24);
  *(v1 + 16) = v48;
  *(v1 + 24) = v47;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__genreNames;
  swift_beginAccess();
  v51 = *(a1 + v50);
  v52 = v147;
  swift_beginAccess();
  v53 = *(v1 + v52);
  *(v1 + v52) = v51;

  v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__url);
  swift_beginAccess();
  v56 = *v54;
  v55 = v54[1];
  swift_beginAccess();
  v57 = v20[1];
  *v20 = v56;
  v20[1] = v55;

  v58 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__contentRatingsBySystem;
  swift_beginAccess();
  v59 = *(a1 + v58);
  v60 = v148;
  swift_beginAccess();
  v61 = *(v1 + v60);
  *(v1 + v60) = v59;

  v62 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bornOrFormed);
  swift_beginAccess();
  v64 = *v62;
  v63 = v62[1];
  swift_beginAccess();
  v65 = v22[1];
  *v22 = v64;
  v22[1] = v63;

  v66 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__origin);
  swift_beginAccess();
  v68 = *v66;
  v67 = v66[1];
  v69 = v149;
  swift_beginAccess();
  v70 = v69[1];
  *v69 = v68;
  v69[1] = v67;

  v71 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__offers;
  swift_beginAccess();
  v72 = *(a1 + v71);
  v73 = v150;
  swift_beginAccess();
  v74 = *(v1 + v73);
  *(v1 + v73) = v72;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v75 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionID);
  swift_beginAccess();
  v77 = *v75;
  v76 = v75[1];
  v78 = v152;
  swift_beginAccess();
  v79 = v78[1];
  *v78 = v77;
  v78[1] = v76;

  v80 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__collectionName);
  swift_beginAccess();
  v82 = *v80;
  v81 = v80[1];
  v83 = v153;
  swift_beginAccess();
  v84 = v83[1];
  *v83 = v82;
  v83[1] = v81;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v85 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__deviceFamilies;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = v156;
  swift_beginAccess();
  v88 = *(v1 + v87);
  *(v1 + v87) = v86;

  v89 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleID);
  swift_beginAccess();
  v91 = *v89;
  v90 = v89[1];
  v92 = v157;
  swift_beginAccess();
  v93 = v92[1];
  *v92 = v91;
  v92[1] = v90;

  v94 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__bundleDisplayName);
  swift_beginAccess();
  v96 = *v94;
  v95 = v94[1];
  v97 = v158;
  swift_beginAccess();
  v98 = v97[1];
  *v97 = v96;
  v97[1] = v95;

  v99 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__copyright);
  swift_beginAccess();
  v101 = *v99;
  v100 = v99[1];
  v102 = v160;
  swift_beginAccess();
  v103 = v102[1];
  *v102 = v101;
  v102[1] = v100;

  v104 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__kind);
  swift_beginAccess();
  v105 = *v104;
  LOBYTE(v104) = *(v104 + 8);
  v106 = v161;
  swift_beginAccess();
  *v106 = v105;
  *(v106 + 8) = v104;
  v107 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__id);
  swift_beginAccess();
  v109 = *v107;
  v108 = v107[1];
  v110 = v162;
  swift_beginAccess();
  v111 = v110[1];
  *v110 = v109;
  v110[1] = v108;

  v112 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__nameRaw);
  swift_beginAccess();
  v114 = *v112;
  v113 = v112[1];
  v115 = v163;
  swift_beginAccess();
  v116 = v115[1];
  *v115 = v114;
  v115[1] = v113;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v117 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__discNumber;
  swift_beginAccess();
  v118 = *(a1 + v117);
  v119 = v167;
  swift_beginAccess();
  *(v1 + v119) = v118;
  v120 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__trackNumber;
  swift_beginAccess();
  v121 = *(a1 + v120);
  v122 = v168;
  swift_beginAccess();
  *(v1 + v122) = v121;
  v123 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistName);
  swift_beginAccess();
  v125 = *v123;
  v124 = v123[1];
  v126 = v169;
  swift_beginAccess();
  v127 = v126[1];
  *v126 = v125;
  v126[1] = v124;

  v128 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__artistBio;
  swift_beginAccess();
  v129 = *(a1 + v128);
  v130 = v170;
  swift_beginAccess();
  v131 = *(v1 + v130);
  *(v1 + v130) = v129;

  v132 = (a1 + OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__releaseDate);
  swift_beginAccess();
  v134 = *v132;
  v133 = v132[1];
  v135 = v171;
  swift_beginAccess();
  v136 = v135[1];
  *v135 = v134;
  v135[1] = v133;

  v137 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__children;
  swift_beginAccess();
  v138 = *(a1 + v137);
  v139 = v172;
  swift_beginAccess();
  v140 = *(v1 + v139);
  *(v1 + v139) = v138;

  v141 = OBJC_IVAR____TtCV10PegasusAPI13Amppb_ContentP33_DBCA56248B3174DB33A494A6214DCF2913_StorageClass__movieClips;
  swift_beginAccess();
  v142 = *(a1 + v141);
  v143 = v173;
  swift_beginAccess();
  v144 = *(v1 + v143);
  *(v1 + v143) = v142;

  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}