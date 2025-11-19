uint64_t OneUpChromeViewModel.__allocating_init(localizedTitle:localizedSubtitle:toolbarPosition:visibleElements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  OneUpChromeViewModel.init(localizedTitle:localizedSubtitle:toolbarPosition:visibleElements:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

PhotosSwiftUICore::OneUpAirplayInfo __swiftcall OneUpAirplayInfo.init(shouldShowAirPlayButton:isDisplayingContentOnSecondScreen:)(Swift::Bool shouldShowAirPlayButton, Swift::Bool isDisplayingContentOnSecondScreen)
{
  *v2 = shouldShowAirPlayButton;
  v2[1] = isDisplayingContentOnSecondScreen;
  result.shouldShowAirPlayButton = shouldShowAirPlayButton;
  return result;
}

uint64_t OneUpChromeViewModel.init()()
{
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  OUTLINED_FUNCTION_23_15(0);
  *(v0 + 212) = v1;
  *(v0 + 208) = v1;
  sub_1C1261F60();
  return v0;
}

uint64_t sub_1C1211330(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C1214CF8();

  return sub_1C0FD1A5C(a1, &unk_1EBE91960);
}

uint64_t sub_1C12113B4()
{
  OUTLINED_FUNCTION_18_0();
  if (sub_1C0FDFDE0(*(v1 + 56), *(v1 + 64), v2, v0))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_12_3();
    *(v4 - 32) = v1;
    *(v4 - 24) = v2;
    *(v4 - 16) = v0;
    OUTLINED_FUNCTION_31_12();
  }

  else
  {
    *(v1 + 56) = v2;
    *(v1 + 64) = v0;
  }
}

void sub_1C1211490(double a1)
{
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_31_12();
  }
}

void sub_1C1211524(double a1)
{
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_31_12();
  }
}

uint64_t sub_1C12115B8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = sub_1C1214D80(*(v1 + 88), *(v1 + 96) | (*(v1 + 97) << 8), *a1, v3 | (v4 << 8));
  if (result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_12_3();
    *(v7 - 32) = v1;
    *(v7 - 24) = v2;
    *(v7 - 16) = v3;
    *(v7 - 15) = v4;
    OUTLINED_FUNCTION_31_12();
  }

  else
  {
    *(v1 + 88) = v2;
    *(v1 + 96) = v3;
    *(v1 + 97) = v4;
  }

  return result;
}

uint64_t sub_1C1211680()
{
  OUTLINED_FUNCTION_18_0();
  if (sub_1C0FDFDE0(*(v1 + 104), *(v1 + 112), v2, v0))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_12_3();
    *(v4 - 32) = v1;
    *(v4 - 24) = v2;
    *(v4 - 16) = v0;
    OUTLINED_FUNCTION_31_12();
  }

  else
  {
    *(v1 + 104) = v2;
    *(v1 + 112) = v0;
  }
}

unsigned __int8 *sub_1C121175C(unsigned __int8 *result)
{
  if (*(v1 + 120) != *result)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

unsigned __int8 *sub_1C12117DC(unsigned __int8 *result)
{
  if (*result != *(v1 + 121))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

unsigned __int8 *sub_1C121185C(unsigned __int8 *result)
{
  if (*(v1 + 122) != *result)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

unsigned __int8 *sub_1C12118DC(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 == *(v1 + 123))
  {
    *(v1 + 123) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

void *sub_1C1211964(void *result)
{
  if (*(v1 + 128) != *result)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

unsigned __int8 *sub_1C12119F0(unsigned __int8 *result)
{
  if (*result != *(v1 + 136))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

uint64_t sub_1C1211A70()
{
  swift_getKeyPath();
  sub_1C1214CF8();

  return swift_unknownObjectRelease();
}

void sub_1C1211AF4(double a1)
{
  if (*(v1 + 160) == a1)
  {
    *(v1 + 160) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_31_12();
  }
}

void sub_1C1211B88(double a1, double a2)
{
  if (*(v2 + 168) == a1 && *(v2 + 176) == a2)
  {
    *(v2 + 168) = a1;
    *(v2 + 176) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_12_3();
    *(v7 - 32) = v2;
    *(v7 - 24) = a1;
    *(v7 - 16) = a2;
    OUTLINED_FUNCTION_31_12();
  }
}

unsigned __int8 *sub_1C1211C30(unsigned __int8 *result)
{
  v2 = *result;
  v3 = result[1];
  if (v2 == *(v1 + 184) && v3 == *(v1 + 185))
  {
    *(v1 + 184) = v2;
    *(v1 + 185) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_9_1();
    *(v5 - 8) = v2;
    *(v5 - 7) = v3;
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

uint64_t sub_1C1211CE4(uint64_t result)
{
  if (*(v1 + 186) == (result & 1))
  {
    *(v1 + 186) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

void sub_1C1211D6C(double a1)
{
  if (*(v1 + 192) == a1)
  {
    *(v1 + 192) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_31_12();
  }
}

void sub_1C1211E00(double a1)
{
  if (*(v1 + 200) == a1)
  {
    *(v1 + 200) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_16_22();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_31_12();
  }
}

uint64_t sub_1C1211E94(uint64_t result)
{
  if (*(v1 + 208) == (result & 1))
  {
    *(v1 + 208) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

uint64_t sub_1C1211F1C(uint64_t result)
{
  if (*(v1 + 209) == (result & 1))
  {
    *(v1 + 209) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

uint64_t sub_1C1211FA4(uint64_t result)
{
  if (*(v1 + 210) == (result & 1))
  {
    *(v1 + 210) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

uint64_t sub_1C121202C(uint64_t result)
{
  if (*(v1 + 211) == (result & 1))
  {
    *(v1 + 211) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

uint64_t sub_1C12120B4(uint64_t result)
{
  if (*(v1 + 212) == (result & 1))
  {
    *(v1 + 212) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_31_12();
  }

  return result;
}

uint64_t OneUpChromeViewModel.init(localizedTitle:localizedSubtitle:toolbarPosition:visibleElements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v10 = *a5;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  OUTLINED_FUNCTION_23_15(0);
  *(v6 + 208) = v11;
  *(v6 + 212) = v11;
  sub_1C1261F60();
  sub_1C12127D0(a1, a2);
  v12 = OUTLINED_FUNCTION_46();
  sub_1C1212DC0(v12, v13);
  v15 = v10;
  sub_1C12132CC(&v15);
  sub_1C12148A4(a6);

  return v6;
}

uint64_t sub_1C12121F0(uint64_t a1)
{
  sub_1C10D1A1C(a1, v23, &unk_1EBE91960);
  v2 = v24;
  if (v24)
  {
    v3 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v3 + 8))(v30, v2, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {
    sub_1C0FD1A5C(v23, &unk_1EBE91960);
    memset(v30, 0, sizeof(v30));
    v31 = 0;
  }

  sub_1C1212670();
  v4 = v24;
  if (v24)
  {
    v5 = v25;
    v6 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    sub_1C0FD1A5C(v23, &unk_1EBE91960);
    (*(v5 + 8))(v29, v4, v5);
    (*(v7 + 8))(v9, v4);
  }

  else
  {
    sub_1C0FD1A5C(v23, &unk_1EBE91960);
    memset(v29, 0, 40);
  }

  sub_1C10D1A1C(v30, v23, &qword_1EBE8FE30);
  sub_1C10D1A1C(v29, &v26, &qword_1EBE8FE30);
  if (!v24)
  {
    OUTLINED_FUNCTION_54_4(v29);
    OUTLINED_FUNCTION_54_4(v30);
    if (!*(&v27 + 1))
    {
      sub_1C0FD1A5C(v23, &qword_1EBE8FE30);
      goto LABEL_13;
    }

LABEL_15:
    sub_1C0FD1A5C(v23, &qword_1EBE908E0);
LABEL_16:
    sub_1C10D1A1C(a1, v23, &unk_1EBE91960);
    sub_1C1211330(v23);
    OUTLINED_FUNCTION_47_5();
    return sub_1C0FD1A5C(v18, v17);
  }

  sub_1C10D1A1C(v23, v22, &qword_1EBE8FE30);
  if (!*(&v27 + 1))
  {
    OUTLINED_FUNCTION_54_4(v29);
    OUTLINED_FUNCTION_54_4(v30);
    sub_1C0FD1A08(v22);
    goto LABEL_15;
  }

  v20[0] = v26;
  v20[1] = v27;
  v21 = v28;
  v10 = MEMORY[0x1C68F0200](v22, v20);
  sub_1C0FD1A08(v20);
  OUTLINED_FUNCTION_47_5();
  sub_1C0FD1A5C(v11, v12);
  OUTLINED_FUNCTION_47_5();
  sub_1C0FD1A5C(v13, v14);
  sub_1C0FD1A08(v22);
  OUTLINED_FUNCTION_47_5();
  sub_1C0FD1A5C(v15, v16);
  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v17 = &unk_1EBE91960;
  v18 = a1;
  return sub_1C0FD1A5C(v18, v17);
}

uint64_t sub_1C1212584(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  sub_1C1212670();
  return OUTLINED_FUNCTION_36();
}

void sub_1C12125E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_2();
    sub_1C10D1A1C(v3, v4, v5);
    sub_1C12121F0(v2 + 40);
    sub_1C0FD1A5C(v2, &unk_1EBE91960);
  }

  else
  {
    sub_1C12121F0(*a1);
  }

  free(v2);
}

uint64_t sub_1C1212670()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v0);
  sub_1C1261F30();

  swift_beginAccess();
  return sub_1C10D1A1C(v0 + 16, v1, &unk_1EBE91960);
}

uint64_t sub_1C1212758(uint64_t a1, uint64_t a2)
{
  sub_1C10D1A1C(a2, v4, &unk_1EBE91960);
  swift_beginAccess();
  sub_1C1216458(v4, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_1C1212800(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C1212858();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C1212858()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v0);
  sub_1C1261F30();

  v9 = *(v0 + 56);

  return v9;
}

uint64_t sub_1C12128D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_46();
  return a5(v6);
}

uint64_t sub_1C1212914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
}

void sub_1C1212954(double a1)
{
  if (sub_1C1212A0C() != a1)
  {

    sub_1C1211490(a1);
  }
}

uint64_t sub_1C12129A0(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1212A0C();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1212A0C()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 72);
}

void sub_1C1212A78(double a1)
{
  if (sub_1C1212B30() != a1)
  {

    sub_1C1211524(a1);
  }
}

uint64_t sub_1C1212AC4(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1212B30();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1212B30()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 80);
}

double sub_1C1212B9C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  sub_1C1212CAC();
  v5 = v8;
  if (v3)
  {
LABEL_2:
    if (v5)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v8)
  {
    goto LABEL_5;
  }

  v5 = v7;
  if (v2)
  {
    goto LABEL_2;
  }

  if ((v7 & 1) != 0 || (result = v6, v6 != v1))
  {
LABEL_5:
    v6 = v1;
    v7 = v2;
    v8 = v3;
    sub_1C12115B8(&v6);
  }

  return result;
}

uint64_t sub_1C1212C24(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  sub_1C1212CAC();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1212C64(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  return sub_1C1212B9C(&v4);
}

uint64_t sub_1C1212CAC()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v13, v0);
  sub_1C1261F30();

  v11 = *(v0 + 96);
  v12 = *(v0 + 97);
  *v1 = *(v0 + 88);
  *(v1 + 8) = v11;
  *(v1 + 9) = v12;
  return result;
}

void *sub_1C1212D28()
{
  OUTLINED_FUNCTION_13_1();
  result = v1(&v5);
  v3 = v6;
  v4 = v7;
  *v0 = v5;
  *(v0 + 8) = v3;
  *(v0 + 9) = v4;
  return result;
}

uint64_t sub_1C1212D74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v8 = *a1;
  v9 = v5;
  v10 = v6;
  return a5(&v8);
}

uint64_t sub_1C1212DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_18_0();
  result = v6();
  if (v4)
  {
    if (v8)
    {
      if (result == v5 && v8 == v4)
      {

LABEL_15:
      }

      v10 = sub_1C1266D50();

      if (v10)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!v8)
    {
      return result;
    }
  }

  return a4(v5, v4);
}

uint64_t sub_1C1212EF4(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C1212FC4();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C1212F4C(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    v4 = OUTLINED_FUNCTION_46();
    a3(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_46();
    return (a3)(v6);
  }
}

uint64_t sub_1C1212FC4()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v0);
  sub_1C1261F30();

  v9 = *(v0 + 104);

  return v9;
}

uint64_t sub_1C121303C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 104) = a2;
  *(a1 + 112) = a3;
}

void *sub_1C1213078@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1213118(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C121311C(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1213178();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1213178()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 120);
  return result;
}

uint64_t sub_1C12131E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1213178();
  *a1 = v3;
  return result;
}

void *sub_1C1213258@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C12132F8(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C12132FC(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1213358();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1213358()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 121);
  return result;
}

uint64_t sub_1C12133C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1213358();
  *a1 = v3;
  return result;
}

void *sub_1C1213438@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1213534(&v3);
  *a1 = v3;
  return result;
}

void *sub_1C12134D8(unsigned __int8 *a1, void *(*a2)(uint64_t *__return_ptr), uint64_t (*a3)(char *))
{
  v4 = *a1;
  result = a2(&v7);
  if (v4 != v7)
  {
    v6 = v4;
    return a3(&v6);
  }

  return result;
}

uint64_t sub_1C1213538(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C12135E0();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1213594(uint64_t a1, char a2, uint64_t (*a3)(char *))
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v3 = &v6;
  }

  return a3(v3);
}

uint64_t sub_1C12135E0()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 122);
  return result;
}

uint64_t sub_1C121364C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C12135E0();
  *a1 = v3;
  return result;
}

void *sub_1C12136C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C121377C(&v3);
  *a1 = v3;
  return result;
}

unsigned __int8 *sub_1C1213734(unsigned __int8 *a1)
{
  v1 = *a1;
  result = sub_1C121380C();
  if (v1 != v3[1])
  {
    v3[0] = v1;
    return sub_1C12118DC(v3);
  }

  return result;
}

uint64_t sub_1C1213780(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C121380C();
  return OUTLINED_FUNCTION_36();
}

unsigned __int8 *sub_1C12137C4(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return sub_1C1213734(v2);
}

uint64_t sub_1C121380C()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 123);
  return result;
}

uint64_t sub_1C1213878@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C121380C();
  *a1 = v3;
  return result;
}

void *sub_1C12138EC@<X0>(void *a1@<X8>)
{
  result = sub_1C12139A8(&v3);
  *a1 = v3;
  return result;
}

void *sub_1C1213960(uint64_t *a1)
{
  v1 = *a1;
  result = sub_1C1213A20();
  if (v1 != v3)
  {
    v3 = v1;
    return sub_1C1211964(&v3);
  }

  return result;
}

uint64_t sub_1C12139AC(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  sub_1C1213A20();
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C1213A20()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 128);
  return result;
}

uint64_t sub_1C1213A8C@<X0>(void *a1@<X8>)
{
  result = sub_1C1213A20();
  *a1 = v3;
  return result;
}

void *sub_1C1213B00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1213C18(&v3);
  *a1 = v3;
  return result;
}

void *sub_1C1213BA0(unsigned __int8 *a1, void *(*a2)(uint64_t *__return_ptr), uint64_t (*a3)(char *))
{
  v4 = *a1;
  result = a2(&v7);
  if (v4 == 3)
  {
    if (v7 == 3)
    {
      return result;
    }

LABEL_6:
    v6 = v4;
    return a3(&v6);
  }

  if (v7 == 3 || v4 != v7)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1C1213C1C(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1213CC4();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1213C78(uint64_t a1, char a2, uint64_t (*a3)(char *))
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v3 = &v6;
  }

  return a3(v3);
}

uint64_t sub_1C1213CC4()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v0);
  sub_1C1261F30();

  *v1 = *(v0 + 136);
  return result;
}

uint64_t sub_1C1213D30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1213CC4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C1213DA4()
{
  OUTLINED_FUNCTION_18_0();
  swift_unknownObjectRetain();
  result = sub_1C1213F08();
  v2 = result;
  if (!v0)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v2 == v0)
  {

    return swift_unknownObjectRelease();
  }

LABEL_9:

  return sub_1C1211A70();
}

uint64_t sub_1C1213E58(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C1213F08();
  v1[1] = v2;
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C1213E98(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1C1213DA4();
  }

  swift_unknownObjectRetain();
  sub_1C1213DA4();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1213F08()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C1213F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t sub_1C1213FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 144) = a2;
  *(a1 + 152) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1C1213FFC(double a1)
{
  if (sub_1C12140B4() != a1)
  {

    sub_1C1211AF4(a1);
  }
}

uint64_t sub_1C1214048(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C12140B4();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C12140B4()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 160);
}

void sub_1C1214148(double a1, double a2)
{
  if (sub_1C1214208() != a1 || v4 != a2)
  {

    sub_1C1211B88(a1, a2);
  }
}

uint64_t sub_1C12141A0(uint64_t a1)
{
  OUTLINED_FUNCTION_19_5(a1);
  *v1 = sub_1C1214208();
  *(v1 + 8) = v2;
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1214208()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 168);
}

unsigned __int8 *sub_1C121429C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = sub_1C1214398();
  if (v1 != v4[2] || ((v2 ^ v4[3]) & 1) != 0)
  {
    v4[0] = v1;
    v4[1] = v2;
    return sub_1C1211C30(v4);
  }

  return result;
}

uint64_t sub_1C1214300(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1214398();
  return OUTLINED_FUNCTION_36();
}

unsigned __int8 *sub_1C1214344(uint64_t a1, char a2)
{
  v2 = *(a1 + 9);
  if (a2)
  {
    v5[0] = *(a1 + 8);
    v5[1] = v2;
    v3 = v5;
  }

  else
  {
    v6[0] = *(a1 + 8);
    v6[1] = v2;
    v3 = v6;
  }

  return sub_1C121429C(v3);
}

uint64_t sub_1C1214398()
{
  OUTLINED_FUNCTION_30_2();
  swift_getKeyPath();
  v2 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, v6, v7, v8, v9, v12, v0);
  sub_1C1261F30();

  v11 = *(v0 + 185);
  *v1 = *(v0 + 184);
  v1[1] = v11;
  return result;
}

void *sub_1C121440C()
{
  OUTLINED_FUNCTION_13_1();
  result = v1(&v4);
  v3 = BYTE1(v4);
  *v0 = v4;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C1214450(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return a5(v7);
}

uint64_t sub_1C1214498(char a1)
{
  v1 = a1 & 1;
  result = sub_1C1214570();
  if ((result & 1) != v1)
  {

    return sub_1C1211CE4(v1);
  }

  return result;
}

uint64_t (*sub_1C12144E8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1214570() & 1;
  return sub_1C1214534;
}

uint64_t sub_1C1214534(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = sub_1C1214570();
  if (v1 != (result & 1))
  {
    return sub_1C1211CE4(v1);
  }

  return result;
}

uint64_t sub_1C1214570()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 186);
}

void sub_1C12145DC(double a1)
{
  if (sub_1C1214694() != a1)
  {

    sub_1C1211D6C(a1);
  }
}

uint64_t sub_1C1214628(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1214694();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1214694()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 192);
}

void sub_1C1214700(double a1)
{
  if (sub_1C1214804() != a1)
  {

    sub_1C1211E00(a1);
  }
}

uint64_t sub_1C121474C(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1214804();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C12147B8(double *a1, uint64_t a2, double (*a3)(void), void (*a4)(double))
{
  v5 = *a1;
  if (v5 != a3())
  {
    a4(v5);
  }
}

double sub_1C1214804()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 200);
}

uint64_t sub_1C121486C(_BYTE *a1)
{
  switch(*a1)
  {
    case 1:
      result = sub_1C1214B58();
      break;
    case 2:
      result = sub_1C1214AF0();
      break;
    case 3:
      result = sub_1C1214C90();
      break;
    case 4:
      result = sub_1C1214C28();
      break;
    default:
      result = sub_1C1214BC0();
      break;
  }

  return result;
}

uint64_t sub_1C12148A4(uint64_t a1)
{
  v3 = 0;
  do
  {
    v4 = &unk_1F406CF58 + v3++;
    v5 = v4[32];
    v6 = *(a1 + 16);
    switch(v5)
    {
      case 1:
        if (v6)
        {
          OUTLINED_FUNCTION_46_6();
          MEMORY[0x1C68F07E0](1);
          sub_1C1266EE0();
          OUTLINED_FUNCTION_20_22();
          do
          {
            OUTLINED_FUNCTION_2_66();
            if (!v15)
            {
              break;
            }

            OUTLINED_FUNCTION_19_22();
          }

          while (v16 != 1);
        }

        else
        {
          v1 = 0;
        }

        result = sub_1C1214B58();
        if ((v1 ^ result))
        {
          v22 = OUTLINED_FUNCTION_41_8();
          result = sub_1C1211F1C(v22);
        }

        break;
      case 2:
        if (v6)
        {
          OUTLINED_FUNCTION_46_6();
          MEMORY[0x1C68F07E0](2);
          sub_1C1266EE0();
          OUTLINED_FUNCTION_20_22();
          do
          {
            OUTLINED_FUNCTION_2_66();
            if (!v11)
            {
              break;
            }

            OUTLINED_FUNCTION_19_22();
          }

          while (v12 != 2);
        }

        else
        {
          v1 = 0;
        }

        result = sub_1C1214AF0();
        if ((v1 ^ result))
        {
          v19 = OUTLINED_FUNCTION_41_8();
          result = sub_1C1211E94(v19);
        }

        break;
      case 3:
        if (v6)
        {
          OUTLINED_FUNCTION_46_6();
          MEMORY[0x1C68F07E0](3);
          sub_1C1266EE0();
          OUTLINED_FUNCTION_20_22();
          do
          {
            OUTLINED_FUNCTION_2_66();
            if (!v13)
            {
              break;
            }

            OUTLINED_FUNCTION_19_22();
          }

          while (v14 != 3);
        }

        else
        {
          v1 = 0;
        }

        result = sub_1C1214C90();
        if ((v1 ^ result))
        {
          v20 = OUTLINED_FUNCTION_41_8();
          result = sub_1C12120B4(v20);
        }

        break;
      case 4:
        if (v6)
        {
          OUTLINED_FUNCTION_46_6();
          MEMORY[0x1C68F07E0](4);
          sub_1C1266EE0();
          OUTLINED_FUNCTION_20_22();
          do
          {
            OUTLINED_FUNCTION_2_66();
            if (!v9)
            {
              break;
            }

            OUTLINED_FUNCTION_19_22();
          }

          while (v10 != 4);
        }

        else
        {
          v1 = 0;
        }

        result = sub_1C1214C28();
        if ((v1 ^ result))
        {
          v18 = OUTLINED_FUNCTION_41_8();
          result = sub_1C121202C(v18);
        }

        break;
      default:
        if (v6)
        {
          OUTLINED_FUNCTION_46_6();
          MEMORY[0x1C68F07E0](0);
          sub_1C1266EE0();
          OUTLINED_FUNCTION_20_22();
          do
          {
            OUTLINED_FUNCTION_2_66();
            if (!v7)
            {
              break;
            }

            OUTLINED_FUNCTION_19_22();
          }

          while (v8);
        }

        else
        {
          v1 = 0;
        }

        result = sub_1C1214BC0();
        if ((v1 ^ result))
        {
          v21 = OUTLINED_FUNCTION_41_8();
          result = sub_1C1211FA4(v21);
        }

        break;
    }
  }

  while (v3 != 5);
  return result;
}

uint64_t sub_1C1214AF0()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 208);
}

uint64_t sub_1C1214B58()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 209);
}

uint64_t sub_1C1214BC0()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 210);
}

uint64_t sub_1C1214C28()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 211);
}

uint64_t sub_1C1214C90()
{
  swift_getKeyPath();
  v1 = sub_1C12150CC();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  return *(v0 + 212);
}

BOOL sub_1C1214D80(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  v4 = (a2 & 0x100 & a4 & 0x100) >> 8;
  v5 = a2 & a4;
  v6 = *&a1 == *&a3;
  if (a4)
  {
    v6 = a2 & a4;
  }

  if ((a2 & 1) == 0)
  {
    v5 = v6;
  }

  if (!(a2 & 0x100 | a4 & 0x100))
  {
    LOBYTE(v4) = v5;
  }

  return (v4 & 1) == 0;
}

uint64_t OneUpChromeViewModel.deinit()
{
  sub_1C0FD1A5C(v0 + 16, &unk_1EBE91960);

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore20OneUpChromeViewModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t OneUpChromeViewModel.__deallocating_deinit()
{
  OneUpChromeViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t OneUpTopBarKind.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1214FC8()
{
  sub_1C1266E90();
  OneUpToolbarKind.hash(into:)();
  return sub_1C1266EE0();
}

BOOL static OneUpChromeDismissalState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

unint64_t sub_1C1215050()
{
  result = qword_1EBE97E30;
  if (!qword_1EBE97E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E30);
  }

  return result;
}

unint64_t sub_1C12150A4(uint64_t a1)
{
  result = sub_1C12150CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C12150CC()
{
  result = qword_1EDE7D3D8;
  if (!qword_1EDE7D3D8)
  {
    type metadata accessor for OneUpChromeViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D3D8);
  }

  return result;
}

uint64_t type metadata accessor for OneUpChromeViewModel()
{
  result = qword_1EDE7D3C0;
  if (!qword_1EDE7D3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1215174()
{
  result = qword_1EBE97E38;
  if (!qword_1EBE97E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E38);
  }

  return result;
}

unint64_t sub_1C12151CC()
{
  result = qword_1EBE97E40;
  if (!qword_1EBE97E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpAudioMuteState(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OneUpAirplayInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C12154C4()
{
  result = sub_1C1261F70();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpTopBarKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OneUpToolbarKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OneUpToolbarKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C1216278(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1C12162F4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 200) = result;
  return result;
}

double sub_1C1216304()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 192) = result;
  return result;
}

void sub_1C1216324()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 25);
  *(v1 + 184) = *(v0 + 24);
  *(v1 + 185) = v2;
}

__n128 sub_1C121633C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 168) = result;
  return result;
}

double sub_1C121634C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 160) = result;
  return result;
}

void sub_1C12163D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 33);
  *(v1 + 88) = *(v0 + 24);
  *(v1 + 96) = v2;
  *(v1 + 97) = v3;
}

double sub_1C12163FC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 80) = result;
  return result;
}

double sub_1C121640C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

uint64_t sub_1C1216458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_31_12()
{

  return sub_1C1214CF8();
}

uint64_t OUTLINED_FUNCTION_54_4(uint64_t a1)
{

  return sub_1C0FD1A5C(a1, v1);
}

uint64_t View.photosViewResetNotification(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = swift_getKeyPath();
  v8 = 0;
  MEMORY[0x1C68EE920](v7, a3, &type metadata for PhotosViewResetNotificationViewModifier, a4);
}

uint64_t EnvironmentValues.photosResetNotificationCoordinator.getter()
{
  sub_1C12166A8();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1216650@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosResetNotificationCoordinator.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1C12166A8()
{
  result = qword_1EDE7F500;
  if (!qword_1EDE7F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F500);
  }

  return result;
}

uint64_t (*EnvironmentValues.photosResetNotificationCoordinator.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C12166A8();
  sub_1C12637F0();
  return sub_1C1216798;
}

uint64_t sub_1C1216798(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1C1263800();
  }

  sub_1C1263800();
}

uint64_t PhotosViewResetNotificationCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1C1261F60();
  return v0;
}

uint64_t PhotosViewResetNotificationCoordinator.init()()
{
  *(v0 + 16) = 0;
  sub_1C1261F60();
  return v0;
}

uint64_t sub_1C12168A0(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1216B38();
  }

  return result;
}

uint64_t sub_1C1216944()
{
  swift_getKeyPath();
  sub_1C1216A94();
  sub_1C1261F30();

  swift_getKeyPath();
  sub_1C1261F50();

  ++*(v0 + 16);
  swift_getKeyPath();
  sub_1C1261F40();
}

uint64_t sub_1C1216A24()
{
  swift_getKeyPath();
  sub_1C1216A94();
  sub_1C1261F30();

  return *(v0 + 16);
}

unint64_t sub_1C1216A94()
{
  result = qword_1EDE7F570;
  if (!qword_1EDE7F570)
  {
    type metadata accessor for PhotosViewResetNotificationCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F570);
  }

  return result;
}

uint64_t type metadata accessor for PhotosViewResetNotificationCoordinator()
{
  result = qword_1EDE7F560;
  if (!qword_1EDE7F560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosViewResetNotificationCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore38PhotosViewResetNotificationCoordinator___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosViewResetNotificationCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore38PhotosViewResetNotificationCoordinator___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

unint64_t sub_1C1216CFC()
{
  result = qword_1EDE7E6B8[0];
  if (!qword_1EDE7E6B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7E6B8);
  }

  return result;
}

uint64_t sub_1C1216D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_1C12637E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a5 & 1) == 0)
  {
    sub_1C1266420();
    v12 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
  }

  v13 = sub_1C1216A24();

  v16[1] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E48);
  sub_1C121709C();
  sub_1C1265000();
}

uint64_t sub_1C1216FA4()
{
  type metadata accessor for PhotosViewResetNotificationCoordinator();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = sub_1C1261F60();
  qword_1EDE7F510 = v0;
  return result;
}

uint64_t sub_1C1216FF4@<X0>(void *a1@<X8>)
{
  if (qword_1EDE7F508 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE7F510;
}

void *sub_1C1217060(void *result, void *a2)
{
  if (*result != *a2)
  {
    return (*(v2 + 16))();
  }

  return result;
}

unint64_t sub_1C121709C()
{
  result = qword_1EDE7BAD8;
  if (!qword_1EDE7BAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BAD8);
  }

  return result;
}

uint64_t sub_1C121710C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C1262B60();
  MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3);
  sub_1C1262B70();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return sub_1C1262E80();
}

uint64_t sub_1C1217328()
{
  sub_1C1217E40();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1217364()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1217328();
  *v0 = result;
  return result;
}

uint64_t sub_1C12173F0()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1052410();
  *v0 = result & 1;
  return result;
}

uint64_t OneUpBar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8);
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_6_1();
  sub_1C0FDB6D4(v5, qword_1EBE90EF8);
  v6 = sub_1C1262E70();
  OUTLINED_FUNCTION_0();
  v37 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BF0);
  v11 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v39 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E50);
  v16 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v40 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v36 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v38 = &v36 - v21;
  v22 = *(v2 + *(a1 + 36));
  swift_getWitnessTable();
  v52 = sub_1C1235004(v22, 0, 1, 0, 1, 0, 1);
  v23 = *(a1 + 24);
  v43 = v4;
  v44 = v23;
  v45 = v2;
  v24 = sub_1C1022650();
  sub_1C121710C(sub_1C12179E8, v42, MEMORY[0x1E6981D78], v4, v24, v23, v10);

  swift_getKeyPath();
  v25 = sub_1C1264450();
  LOBYTE(v52) = v25 == sub_1C1264450();
  OUTLINED_FUNCTION_5_0();
  v50 = sub_1C0FDB6D4(v26, qword_1EBE90EF8);
  v51 = v23;
  OUTLINED_FUNCTION_12_0();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264A30();

  (*(v37 + 8))(v10, v6);
  swift_getKeyPath();
  LOBYTE(v52) = v22;
  v28 = sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0);
  v48 = WitnessTable;
  v49 = v28;
  v29 = swift_getWitnessTable();
  v30 = v36;
  sub_1C1264A30();

  (*(v39 + 8))(v15, v11);
  v31 = sub_1C0FDB6D4(&qword_1EDE7B938, &qword_1EBE97E50);
  v46 = v29;
  v47 = v31;
  v32 = swift_getWitnessTable();
  v33 = v38;
  sub_1C0FDBA4C(v30, v16, v32);
  v34 = *(v40 + 8);
  v34(v30, v16);
  sub_1C0FDBA4C(v33, v16, v32);
  return (v34)(v33, v16);
}

uint64_t sub_1C121790C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0FDBA4C(v6, v9, v10);
  sub_1C0FDBA4C(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1C1217A3C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C1217AB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_23;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_23:
      if (v5 >= 0xFE)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_23;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C1217C18(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v10 <= 3)
    {
      v17 = ((v13 + ~(-1 << v11)) >> v11) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v7 < 0xFE)
          {
            a1[v9] = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    if (v10 < 4)
    {
      v16 = (v15 >> v11) + 1;
      if (v9 != -1)
      {
        v19 = v15 & ~(-1 << v11);
        bzero(a1, v9 + 1);
        if (v10 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v10 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C1217E40()
{
  result = qword_1EDE7E1D8[0];
  if (!qword_1EDE7E1D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7E1D8);
  }

  return result;
}

uint64_t sub_1C1217E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C121804C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C1217EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  v12();
  sub_1C0FDBA4C(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_1C0FDBA4C(v14, a4, a6);
  return (v15)(v14, a4);
}

unint64_t sub_1C121804C()
{
  result = qword_1EDE7B8B8;
  if (!qword_1EDE7B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B8B8);
  }

  return result;
}

void sub_1C12180A0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  sub_1C10D1A1C(v5, v22 - v10, &qword_1EBE93CD0);
  v12 = sub_1C1266230();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C0FD1A5C(v11, &qword_1EBE93CD0);
  }

  else
  {
    sub_1C1266220();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C12661E0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v18 = sub_1C1265EE0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = v3;
      *(v19 + 24) = v1;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v20 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v22[1] = 7;
      v22[2] = v20;
      v22[3] = v18;
      swift_task_create();

      sub_1C0FD1A5C(v5, &qword_1EBE93CD0);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1C0FD1A5C(v5, &qword_1EBE93CD0);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v1;
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_22_0();
}

uint64_t *sub_1C121836C()
{
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  return &qword_1EDE833C8;
}

uint64_t static PhotosPrefetchable.Coordinator.current.setter(uint64_t a1)
{
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  qword_1EDE833C8 = a1;

  sub_1C1266F90();
  sub_1C12186D4();
}

uint64_t (*static PhotosPrefetchable.Coordinator.current.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50();
  }

  *a1 = qword_1EDE833C8;

  return sub_1C1218498;
}

uint64_t sub_1C1218498(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return static PhotosPrefetchable.Coordinator.current.setter(*a1);
  }

  static PhotosPrefetchable.Coordinator.current.setter(v2);
}

uint64_t sub_1C12184F0@<X0>(void *a1@<X8>)
{
  sub_1C121836C();
  *a1 = qword_1EDE833C8;
}

void sub_1C1218550(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0);
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = *(v2 + 176);
  os_unfair_lock_lock((v9 + 20));
  v10 = *(v9 + 16);
  os_unfair_lock_unlock((v9 + 20));
  if (v10 == 1)
  {
    v11 = sub_1C1266230();
    OUTLINED_FUNCTION_37_8(v8, v12, v13, v11);
    OUTLINED_FUNCTION_47_6();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v2;
    v14[5] = a1;
    v14[6] = a2;

    OUTLINED_FUNCTION_11_33();
    sub_1C12180A0();
  }
}

uint64_t sub_1C1218654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1218678, a4, 0);
}

uint64_t sub_1C1218678()
{
  OUTLINED_FUNCTION_29_6();
  sub_1C0FA2318(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_14();

  return v1();
}

void sub_1C12186D4()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  if (qword_1EDE83080 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v10 = sub_1C1262720();
  OUTLINED_FUNCTION_26_15(v10, qword_1EDE9B6F0);

  v11 = sub_1C12626F0();
  v12 = sub_1C1266400();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_34_12();
    v25 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1C0FA0E80(*(v1 + 112), *(v1 + 120), &v25);
    *(v13 + 12) = 2080;
    v14 = sub_1C1266F70();
    v16 = sub_1C0FA0E80(v14, v15, &v25);

    *(v13 + 14) = v16;
    _os_log_impl(&dword_1C0F96000, v11, v12, "[%s] Deactivate after:%s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_28_7();
  }

  v17 = sub_1C1266230();
  OUTLINED_FUNCTION_37_8(v9, v18, v19, v17);
  OUTLINED_FUNCTION_47_6();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v5;
  v20[5] = v3;
  v20[6] = v1;

  v21 = OUTLINED_FUNCTION_11_33();
  sub_1C1218D70(v21, v22, v9, v23, v20);

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C12188D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1C1266AD0();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1218994, 0, 0);
}

uint64_t sub_1C1218994()
{
  OUTLINED_FUNCTION_29_6();
  sub_1C1266DD0();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1C1218A4C;
  OUTLINED_FUNCTION_25_10();

  return sub_1C1131FB0();
}

uint64_t sub_1C1218A4C()
{
  OUTLINED_FUNCTION_15_30();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_8_26();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[9] = v0;

  v6 = v2[7];
  v7 = v2[6];
  v8 = v2[5];
  if (v0)
  {
    (*(v7 + 8))(v6, v8);

    return MEMORY[0x1EEE6DFA0](sub_1C1218D14, 0, 0);
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = swift_task_alloc();
    v3[10] = v9;
    *v9 = v5;
    v9[1] = sub_1C1218C14;

    return sub_1C1219000();
  }
}

uint64_t sub_1C1218C14()
{
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_1C1218D14()
{
  OUTLINED_FUNCTION_29_6();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_1C1218D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1C10D1A1C(a3, v21 - v9, &qword_1EBE93CD0);
  v11 = sub_1C1266230();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1C0FD1A5C(v10, &qword_1EBE93CD0);
  }

  else
  {
    sub_1C1266220();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1C12661E0();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1C1265EE0() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1C0FD1A5C(a3, &qword_1EBE93CD0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C0FD1A5C(a3, &qword_1EBE93CD0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1C1219020()
{
  OUTLINED_FUNCTION_2_45();
  v15 = v0;
  v1 = *(*(v0 + 16) + 176);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    if (qword_1EDE83080 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v3 = sub_1C1262720();
    __swift_project_value_buffer(v3, qword_1EDE9B6F0);
    OUTLINED_FUNCTION_22_22();

    v4 = sub_1C12626F0();
    v5 = sub_1C1266400();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 16);
      v7 = swift_slowAlloc();
      v8 = OUTLINED_FUNCTION_63();
      v14 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1C0FA0E80(*(v6 + 112), *(v6 + 120), &v14);
      OUTLINED_FUNCTION_51_8(&dword_1C0F96000, v9, v10, "[%s] Deactivate");
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      OUTLINED_FUNCTION_10_35();
      OUTLINED_FUNCTION_17_30();
    }

    v11 = swift_task_alloc();
    *(v0 + 24) = v11;
    *v11 = v0;
    v11[1] = sub_1C12191E4;

    return sub_1C121B050();
  }

  else
  {
    OUTLINED_FUNCTION_14();

    return v13();
  }
}

uint64_t sub_1C12191E4()
{
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

void sub_1C12192C4(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-v5 - 8];
  v7 = a1[1];
  v17 = *a1;
  v18 = v7;
  v19 = *(a1 + 8);
  v8 = *(v1 + 176);
  os_unfair_lock_lock((v8 + 20));
  v9 = *(v8 + 16);
  os_unfair_lock_unlock((v8 + 20));
  if (v9 == 1)
  {
    v10 = sub_1C1266230();
    OUTLINED_FUNCTION_37_8(v6, v11, v12, v10);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v1;
    v14 = v18;
    *(v13 + 40) = v17;
    *(v13 + 56) = v14;
    *(v13 + 72) = v19;

    sub_1C1109A9C(&v17, v16);
    OUTLINED_FUNCTION_11_33();
    sub_1C12180A0();
  }
}

uint64_t sub_1C12193E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C1219408, a4, 0);
}

uint64_t sub_1C1219408()
{
  OUTLINED_FUNCTION_29_6();
  sub_1C1219724(*(v0 + 24));
  OUTLINED_FUNCTION_14();

  return v1();
}

void sub_1C1219460()
{
  OUTLINED_FUNCTION_23();
  v26[1] = v3;
  v27 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_28();
  sub_1C12637E0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E88);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  v28 = v0;
  v17 = *(v0 + 176);
  os_unfair_lock_lock((v17 + 20));
  v18 = *(v17 + 16);
  os_unfair_lock_unlock((v17 + 20));
  if (v18 == 1)
  {
    v27();
    sub_1C12620C0();
    v19 = sub_1C1266230();
    OUTLINED_FUNCTION_37_8(v1, v20, v21, v19);
    (*(v9 + 16))(v13, v16, v7);
    v22 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v28;
    (*(v9 + 32))(&v23[v22], v13, v7);

    OUTLINED_FUNCTION_11_33();
    sub_1C12180A0();

    v24 = OUTLINED_FUNCTION_16_1();
    v25(v24);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C12196AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C12196CC, a4, 0);
}

uint64_t sub_1C12196CC()
{
  OUTLINED_FUNCTION_29_6();
  sub_1C121A0B0();
  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_1C1219724(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v48 = *a1;
  v49 = v3;
  v50 = *(a1 + 32);
  result = sub_1C121A044();
  if (!v5)
  {
    return result;
  }

  v6 = v5;
  v7 = v1[22];
  os_unfair_lock_lock((v7 + 20));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 20));
  if (v8 == 1)
  {
    v9 = OBJC_IVAR____TtCO17PhotosSwiftUICore18PhotosPrefetchable11Coordinator_seenImages;
    OUTLINED_FUNCTION_25_10();
    swift_beginAccess();
    v10 = *(v2 + v9);

    v11 = sub_1C12608A0(&v48, v10);

    if (v11)
    {
    }

    OUTLINED_FUNCTION_16_16();
    sub_1C1109A9C(&v48, v46);
    sub_1C1103608(v46, &v48);
    swift_endAccess();
    sub_1C100DC0C();
    if (qword_1EDE83080 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v12 = sub_1C1262720();
    OUTLINED_FUNCTION_26_15(v12, qword_1EDE9B6F0);
    sub_1C1109A9C(&v48, v46);

    v13 = sub_1C12626F0();
    v14 = sub_1C1266400();

    sub_1C121BE24(&v48);
    if (OUTLINED_FUNCTION_52_5())
    {
      v15 = OUTLINED_FUNCTION_63();
      v45 = swift_slowAlloc();
      *v15 = 136315650;
      *(v15 + 4) = sub_1C0FA0E80(v2[14], v2[15], &v45);
      *(v15 + 12) = 2080;
      v16 = OUTLINED_FUNCTION_20_15();
      *(v15 + 14) = sub_1C0FA0E80(v16, v17, v18);
      *(v15 + 22) = 2080;
      v46[0] = v48;
      v46[1] = v49;
      v47 = v50;
      sub_1C1109A9C(&v48, &v44);
      v19 = sub_1C1265ED0();
      v21 = sub_1C0FA0E80(v19, v20, &v45);

      *(v15 + 24) = v21;
      _os_log_impl(&dword_1C0F96000, v13, v14, "[%s] Used [%s] %s", v15, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_18_32();
      OUTLINED_FUNCTION_28_7();
    }

    OUTLINED_FUNCTION_16_16();
    sub_1C1109A9C(&v48, v46);
    swift_isUniquelyReferenced_nonNull_native();
    *&v46[0] = v2[26];
    v22 = *&v46[0];
    v2[26] = 0x8000000000000000;
    v23 = OUTLINED_FUNCTION_20_15();
    v25 = sub_1C0FA4574(v23, v24);
    if (__OFADD__(*(v22 + 16), (v26 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v27 = v25;
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E90);
      v29 = sub_1C1266B30();
      v30 = *&v46[0];
      if ((v29 & 1) == 0)
      {
LABEL_16:
        v2[26] = v30;
        if (v28)
        {
        }

        else
        {
          v35 = OUTLINED_FUNCTION_16_1();
          sub_1C1209C98(v35, v36, v6, v37, v30);
        }

        v38 = *(v30 + 56) + 8 * v27;
        sub_1C0FE37F0();
        v39 = *(*v38 + 16);
        sub_1C0FE38CC();
        v40 = *v38;
        *(v40 + 16) = v39 + 1;
        v41 = v40 + 40 * v39;
        v42 = v48;
        v43 = v49;
        *(v41 + 64) = v50;
        *(v41 + 32) = v42;
        *(v41 + 48) = v43;
        return swift_endAccess();
      }

      v31 = OUTLINED_FUNCTION_20_15();
      v33 = sub_1C0FA4574(v31, v32);
      if ((v28 & 1) == (v34 & 1))
      {
        v27 = v33;
        goto LABEL_16;
      }
    }

    result = sub_1C1266DA0();
    __break(1u);
    return result;
  }
}

uint64_t sub_1C1219B04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7942736567616D69 && a2 == 0xED00006567617453)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C1266D50();

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

uint64_t sub_1C1219BD4(char a1)
{
  if (a1)
  {
    return 0x7942736567616D69;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1C1219C18(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E78);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C121BA74();
  sub_1C1266F00();
  sub_1C1266CA0();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E68);
    sub_1C121BBD8();
    sub_1C1266CB0();
  }

  v4 = OUTLINED_FUNCTION_20_15();
  return v5(v4);
}

uint64_t sub_1C1219D9C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E60);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_40_8();
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_1C121BA74();
  sub_1C1266EF0();
  if (!v1)
  {
    v4 = sub_1C1266C40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E68);
    sub_1C121BAC8();
    sub_1C1266C50();
    v5 = OUTLINED_FUNCTION_34_0();
    v6(v5);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v4;
}

uint64_t sub_1C1219F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1219B04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1219F84(uint64_t a1)
{
  v2 = sub_1C121BA74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1219FC0(uint64_t a1)
{
  v2 = sub_1C121BA74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1219FFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C1219D9C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C121A044()
{
  v1 = OBJC_IVAR____TtCO17PhotosSwiftUICore18PhotosPrefetchable11Coordinator_reportedStages;
  OUTLINED_FUNCTION_25_10();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 16);
  v3 = v2 + 16;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *(v3 + 16 * v4);

  return v6;
}

void sub_1C121A0B0()
{
  OUTLINED_FUNCTION_23();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E58);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_28();
  v6 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_40_8();
  if (qword_1EDE83408 != -1)
  {
    OUTLINED_FUNCTION_1_57();
    swift_once();
  }

  v10 = sub_1C1262680();
  OUTLINED_FUNCTION_26_15(v10, qword_1EDE9B708);
  sub_1C1262640();
  v11 = sub_1C1262670();
  v12 = sub_1C1266520();
  if (sub_1C1266730())
  {
    v13 = OUTLINED_FUNCTION_20_10();
    *v13 = 0;
    v14 = sub_1C1262630();
    _os_signpost_emit_with_name_impl(&dword_1C0F96000, v11, v12, v14, "PhotosPrefetch.Environment", "", v13, 2u);
    OUTLINED_FUNCTION_4_8();
  }

  (*(v8 + 8))(v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E88);
  sub_1C12620D0();
  v15 = sub_1C12637E0();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v15);
  v16 = OBJC_IVAR____TtCO17PhotosSwiftUICore18PhotosPrefetchable11Coordinator_environment;
  OUTLINED_FUNCTION_16_16();
  sub_1C121BDB4(v1, v3 + v16);
  swift_endAccess();
  sub_1C0FA32EC();
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C121A2B4(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v79 = sub_1C1264680();
  v3 = *(v79 - 8);
  v4 = MEMORY[0x1EEE9AC00](v79);
  v78 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94748);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v68 - v8;
  v9 = sub_1C1263050();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v91 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v68 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v96 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v68 - v21;
  v90 = sub_1C1265340();
  v22 = *(v90 - 8);
  v23 = MEMORY[0x1EEE9AC00](v90);
  v89 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v68 - v25;
  v102 = sub_1C12637E0();
  result = MEMORY[0x1EEE9AC00](v102);
  v105 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 16);
  if (v30)
  {
    v94 = (v27 + 16);
    v86 = (v22 + 104);
    v85 = (v22 + 32);
    v98 = (v10 + 32);
    v81 = (v10 + 16);
    v31 = (v10 + 8);
    v76 = (v3 + 104);
    v75 = (v3 + 32);
    v74 = *MEMORY[0x1E69816C0];
    v73 = (v3 + 8);
    v72 = *MEMORY[0x1E69816E0];
    v93 = *MEMORY[0x1E69816C8];
    v69 = *MEMORY[0x1E6980E98];
    v70 = *MEMORY[0x1E6980EA8];
    v71 = *MEMORY[0x1E6980EB0];
    v92 = (v27 + 8);
    v32 = (a1 + 64);
    *&v28 = 136446210;
    v80 = v28;
    v87 = v18;
    v97 = v31;
    v82 = v15;
    while (2)
    {
      v101 = v30;
      v34 = *(v32 - 4);
      v33 = *(v32 - 3);
      LODWORD(v35) = *(v32 - 16);
      v103 = *(v32 - 15);
      v107 = *(v32 - 7);
      v99 = *(v32 - 1);
      v104 = *v32;
      sub_1C1109A94();
      if (qword_1EDE83080 != -1)
      {
        swift_once();
      }

      v36 = sub_1C1262720();
      __swift_project_value_buffer(v36, qword_1EDE9B6F0);
      sub_1C1109A94();
      v37 = sub_1C12626F0();
      v38 = sub_1C1266400();
      sub_1C100DC0C();
      v39 = os_log_type_enabled(v37, v38);
      v106 = v35;
      v100 = v34;
      if (v39)
      {
        v35 = swift_slowAlloc();
        v40 = v9;
        v41 = swift_slowAlloc();
        v115 = v41;
        *v35 = v80;
        v108 = v34;
        v109 = v33;
        v110 = v106;
        v111 = v103;
        v112 = v107;
        v113 = v99;
        v114 = v104;
        sub_1C1109A94();
        v42 = sub_1C1265ED0();
        v44 = sub_1C0FA0E80(v42, v43, &v115);
        v18 = v87;

        *(v35 + 4) = v44;
        v31 = v97;
        _os_log_impl(&dword_1C0F96000, v37, v38, "Prefetch: %{public}s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        v45 = v41;
        v9 = v40;
        v15 = v82;
        MEMORY[0x1C68F1630](v45, -1, -1);
        v46 = v35;
        LOBYTE(v35) = v106;
        MEMORY[0x1C68F1630](v46, -1, -1);
      }

      v47 = v96;
      v32 += 10;
      (*v94)(v105, v95, v102);
      v48 = v93;
      switch(v103)
      {
        case 1:
          v49 = &v103 + 4;
          goto LABEL_10;
        case 2:
          v49 = &v105 + 4;
LABEL_10:
          v48 = *(v49 - 64);
          goto LABEL_11;
        case 3:
          goto LABEL_12;
        default:
LABEL_11:
          v50 = v89;
          v51 = v90;
          (*v86)(v89, v48, v90);
          (*v85)(v88, v50, v51);
          LOBYTE(v35) = v106;
          sub_1C1263480();
LABEL_12:
          if (v107 != 4)
          {
            switch(v107)
            {
              case 1:
                sub_1C1263030();
                goto LABEL_19;
              case 2:
                sub_1C1263040();
                goto LABEL_19;
              case 3:
                v52 = v84;
                __swift_storeEnumTagSinglePayload(v84, 1, 1, v9);
                sub_1C1263000();
                if (__swift_getEnumTagSinglePayload(v52, 1, v9) != 1)
                {
                  sub_1C0FD1A5C(v84, &qword_1EBE94748);
                }

                goto LABEL_20;
              default:
                sub_1C1263020();
LABEL_19:
                v53 = *v98;
                v54 = v84;
                (*v98)(v84, v18, v9);
                __swift_storeEnumTagSinglePayload(v54, 0, 1, v9);
                v53(v47, v54, v9);
LABEL_20:
                (*v81)(v15, v47, v9);
                if ((byte_1EBE9468C & ~(v107 >> 8)) == 0)
                {
                  v55 = v91;
                  sub_1C1262FE0();
                  (*v31)(v15, v9);
                  (*v98)(v15, v55, v9);
                }

                if ((byte_1EBE9468D & ~(v107 >> 8)) == 0)
                {
                  v56 = v91;
                  sub_1C1263010();
                  (*v31)(v15, v9);
                  (*v98)(v15, v56, v9);
                }

                if ((byte_1EBE9468E & ~(v107 >> 8)) != 0)
                {
                  v60 = *v98;
                }

                else
                {
                  v57 = v91;
                  v58 = v18;
                  v59 = v98;
                  sub_1C1262FD0();
                  (*v97)(v15, v9);
                  v60 = *v59;
                  (*v59)(v15, v57, v9);
                  v18 = v58;
                  v31 = v97;
                }

                v60(v83, v15, v9);
                (*v31)(v47, v9);
                sub_1C1263540();
                LOBYTE(v35) = v106;
                break;
            }
          }

          if ((~v104 & 0xFF00) != 0)
          {
            v108 = v99;
            v61 = BYTE2(v104);
            v62 = BYTE3(v104);
            LOWORD(v109) = v104;
            sub_1C1242DD0();
            switch(v61)
            {
              case 1:
                sub_1C12645C0();
                goto LABEL_39;
              case 2:
                sub_1C12645F0();
                goto LABEL_39;
              case 3:
                sub_1C1264610();
                goto LABEL_39;
              case 4:
                sub_1C1264600();
                goto LABEL_39;
              case 5:
                sub_1C1264620();
                goto LABEL_39;
              case 6:
                sub_1C12645B0();
                goto LABEL_39;
              case 7:
                sub_1C12645E0();
                goto LABEL_39;
              case 8:
                sub_1C12645D0();
                goto LABEL_39;
              case 9:
                goto LABEL_40;
              default:
                sub_1C12645A0();
LABEL_39:
                sub_1C1264670();

LABEL_40:
                if (v62 != 3)
                {
                  v63 = v71;
                  if (v62)
                  {
                    v63 = v70;
                    if (v62 != 1)
                    {
                      v63 = v69;
                    }
                  }

                  v64 = v78;
                  v65 = v79;
                  (*v76)(v78, v63, v79);
                  v66 = v77;
                  (*v75)(v77, v64, v65);
                  sub_1C12646C0();

                  (*v73)(v66, v65);
                  v18 = v87;
                }

                sub_1C1263700();
                LOBYTE(v35) = v106;
                break;
            }
          }

          if (v35)
          {
            sub_1C1265320();
          }

          else
          {
            sub_1C12652F0();
          }

          v67 = v105;
          sub_1C1265360();

          (*v92)(v67, v102);
          result = sub_1C100DC0C();
          v30 = v101 - 1;
          if (v101 == 1)
          {
            return result;
          }

          continue;
      }
    }
  }

  return result;
}

uint64_t sub_1C121AEA8()
{
  OUTLINED_FUNCTION_42_7();
  v16 = v0;
  v1 = *(v0 + 88);
  if (qword_1EDE83080 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = *(v0 + 32);
  v3 = sub_1C1262720();
  __swift_project_value_buffer(v3, qword_1EDE9B6F0);
  OUTLINED_FUNCTION_22_22();

  v4 = v1;
  v5 = sub_1C12626F0();
  sub_1C1266410();

  if (OUTLINED_FUNCTION_52_5())
  {
    v6 = *(v0 + 32);
    OUTLINED_FUNCTION_34_12();
    v7 = OUTLINED_FUNCTION_35_10();
    v8 = OUTLINED_FUNCTION_63();
    v15 = v8;
    *v2 = 136315394;
    v9 = sub_1C0FA0E80(*(v6 + 112), *(v6 + 120), &v15);
    OUTLINED_FUNCTION_24_13(v9);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 14) = v10;
    *v7 = v10;
    OUTLINED_FUNCTION_23_16(&dword_1C0F96000, v11, v12, "[%s] Failed to load coordinator state: %@");
    sub_1C0FD1A5C(v7, &unk_1EBE97C20);
    OUTLINED_FUNCTION_18_32();
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_17_30();
  }

  else
  {
  }

  sub_1C0FA195C();

  OUTLINED_FUNCTION_14();

  return v13();
}

uint64_t sub_1C121B050()
{
  OUTLINED_FUNCTION_29_6();
  v1[7] = v0;
  v2 = sub_1C1262650();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_28_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C121B110()
{
  OUTLINED_FUNCTION_42_7();
  if (qword_1EDE83408 != -1)
  {
    OUTLINED_FUNCTION_1_57();
    swift_once();
  }

  v1 = sub_1C1262680();
  __swift_project_value_buffer(v1, qword_1EDE9B708);
  sub_1C1262640();
  v2 = sub_1C1262670();
  sub_1C1266510();
  if (sub_1C1266730())
  {
    v3 = OUTLINED_FUNCTION_20_10();
    OUTLINED_FUNCTION_41_9(v3);
    v4 = sub_1C1262630();
    OUTLINED_FUNCTION_48_8(&dword_1C0F96000, v5, v6, v4, "PhotosPrefetch.Persistence", "Save");
    OUTLINED_FUNCTION_10_35();
  }

  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[7];

  v11 = OUTLINED_FUNCTION_46_7();
  v12(v11);
  sub_1C12626C0();
  OUTLINED_FUNCTION_39_7();
  v0[12] = OUTLINED_FUNCTION_49_4();
  (*(v9 + 8))(v7, v8);
  v13 = v10[19];
  v14 = v10[20];
  __swift_project_boxed_opaque_existential_1(v10 + 16, v13);
  OUTLINED_FUNCTION_25_10();
  swift_beginAccess();
  v16 = v10[25];
  v15 = v10[26];
  v0[13] = v15;
  v0[5] = v16;
  v0[6] = v15;
  v17 = *(v14 + 48);

  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_1C121B35C;

  return (v20)(v0 + 5, v13, v14);
}

uint64_t sub_1C121B35C()
{
  OUTLINED_FUNCTION_15_30();
  OUTLINED_FUNCTION_42_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_26();
  *v5 = v4;
  *(v3 + 120) = v0;

  v6 = *(v3 + 56);
  if (v0)
  {
    v7 = sub_1C121B508;
  }

  else
  {
    v7 = sub_1C121B488;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1C121B488()
{
  OUTLINED_FUNCTION_15_30();
  sub_1C0FA195C();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_1C121B508()
{
  OUTLINED_FUNCTION_42_7();
  v18 = v0;
  if (qword_1EDE83080 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = sub_1C1262720();
  __swift_project_value_buffer(v3, qword_1EDE9B6F0);
  OUTLINED_FUNCTION_22_22();

  v4 = v1;
  v5 = sub_1C12626F0();
  sub_1C1266410();

  v6 = OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 120);
  if (v6)
  {
    v8 = *(v0 + 56);
    OUTLINED_FUNCTION_34_12();
    v9 = OUTLINED_FUNCTION_35_10();
    v10 = OUTLINED_FUNCTION_63();
    v17 = v10;
    *v2 = 136315394;
    v11 = sub_1C0FA0E80(*(v8 + 112), *(v8 + 120), &v17);
    OUTLINED_FUNCTION_24_13(v11);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 14) = v12;
    *v9 = v12;
    OUTLINED_FUNCTION_23_16(&dword_1C0F96000, v13, v14, "[%s] Failed to save coordinator state: %@");
    sub_1C0FD1A5C(v9, &unk_1EBE97C20);
    OUTLINED_FUNCTION_18_32();
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_17_30();
  }

  else
  {
  }

  sub_1C0FA195C();

  OUTLINED_FUNCTION_14();

  return v15();
}

uint64_t PhotosPrefetchable.Coordinator.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 128);

  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtCO17PhotosSwiftUICore18PhotosPrefetchable11Coordinator_environment, &qword_1EBE97E58);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PhotosPrefetchable.Coordinator.__deallocating_deinit()
{
  PhotosPrefetchable.Coordinator.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C121B7A8()
{
  OUTLINED_FUNCTION_2_45();
  OUTLINED_FUNCTION_44_8();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_41(v4);
  *v5 = v6;
  v5[1] = sub_1C0FA3DAC;
  v7 = OUTLINED_FUNCTION_5_40();

  return sub_1C1218654(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C121B854()
{
  OUTLINED_FUNCTION_2_45();
  OUTLINED_FUNCTION_44_8();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_41(v4);
  *v5 = v6;
  v5[1] = sub_1C0FA3CCC;
  v7 = OUTLINED_FUNCTION_5_40();

  return sub_1C12188D0(v7, v8, v9, v1, v2, v3);
}

uint64_t dispatch thunk of PhotosPrefetchable.Coordinator.deactivate()()
{
  OUTLINED_FUNCTION_15_30();
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C0FA3CCC;

  return v4();
}

unint64_t sub_1C121BA74()
{
  result = qword_1EDE833E0;
  if (!qword_1EDE833E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE833E0);
  }

  return result;
}

unint64_t sub_1C121BAC8()
{
  result = qword_1EDE82F98;
  if (!qword_1EDE82F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E68);
    sub_1C121BC94(&qword_1EDE82F88, sub_1C121BB84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82F98);
  }

  return result;
}

unint64_t sub_1C121BB84()
{
  result = qword_1EDE83088;
  if (!qword_1EDE83088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83088);
  }

  return result;
}

unint64_t sub_1C121BBD8()
{
  result = qword_1EDE82FA0;
  if (!qword_1EDE82FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E68);
    sub_1C121BC94(&qword_1EDE82F90, sub_1C121BD0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82FA0);
  }

  return result;
}

uint64_t sub_1C121BC94(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97E70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C121BD0C()
{
  result = qword_1EDE83098;
  if (!qword_1EDE83098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83098);
  }

  return result;
}

unint64_t sub_1C121BD60()
{
  result = qword_1EBE97E80;
  if (!qword_1EBE97E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97E80);
  }

  return result;
}

uint64_t sub_1C121BDB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C121BE78()
{
  OUTLINED_FUNCTION_2_45();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97E88);
  OUTLINED_FUNCTION_15(v1);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_41(v3);
  *v4 = v5;
  v4[1] = sub_1C0FA3DAC;
  v6 = OUTLINED_FUNCTION_5_40();

  return sub_1C12196AC(v6, v7, v8, v2, v9);
}

uint64_t sub_1C121BF60()
{
  OUTLINED_FUNCTION_2_45();
  OUTLINED_FUNCTION_44_8();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_41(v2);
  *v3 = v4;
  v3[1] = sub_1C0FA3DAC;
  v5 = OUTLINED_FUNCTION_5_40();

  return sub_1C12193E8(v5, v6, v7, v1, v8);
}

_BYTE *_s11CoordinatorC16PersistenceErrorOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s11CoordinatorC5StateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C121C190()
{
  result = qword_1EBE97EA8;
  if (!qword_1EBE97EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97EA8);
  }

  return result;
}

unint64_t sub_1C121C1E8()
{
  result = qword_1EBE97EB0;
  if (!qword_1EBE97EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97EB0);
  }

  return result;
}

unint64_t sub_1C121C240()
{
  result = qword_1EDE833D0;
  if (!qword_1EDE833D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE833D0);
  }

  return result;
}

unint64_t sub_1C121C298()
{
  result = qword_1EDE833D8;
  if (!qword_1EDE833D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE833D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_7()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return sub_1C12626B0();
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return sub_1C1265CE0();
}

void OUTLINED_FUNCTION_51_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_52_5()
{

  return os_log_type_enabled(v0, v1);
}

void sub_1C121C3BC()
{
  sub_1C1266790();
  if (v0 <= 0x3F)
  {
    sub_1C1266790();
    if (v1 <= 0x3F)
    {
      sub_1C100D364();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C121C460(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 24);
  v33 = *(a3 + 16);
  v4 = *(v33 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v34 = v9;
  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1C1263130() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  if (v10 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v10;
  }

  if (v5)
  {
    v14 = *(v4 + 64);
  }

  else
  {
    v14 = *(v4 + 64) + 1;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  if (!v8)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v14 + v15;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = a1;
  if (a2 <= v13)
  {
    goto LABEL_39;
  }

  v20 = v12 + ((v16 + v18 + (v17 & ~v15)) & ~v18) + 1;
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_22;
  }

  v23 = ((a2 - v13 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v23))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (v23 <= 0xFF)
    {
      if (v23 < 2)
      {
        goto LABEL_39;
      }

LABEL_22:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_39;
      }

LABEL_29:
      v24 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v24 = 0;
      }

      if (v20)
      {
        if (v20 <= 3)
        {
          v25 = v20;
        }

        else
        {
          v25 = 4;
        }

        switch(v25)
        {
          case 2:
            v26 = *a1;
            break;
          case 3:
            v26 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v26 = *a1;
            break;
          default:
            v26 = *a1;
            break;
        }
      }

      else
      {
        v26 = 0;
      }

      return v13 + (v26 | v24) + 1;
    }

    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_29;
    }
  }

LABEL_39:
  if (v6 == v13)
  {
    if (v5 >= 2)
    {
      v27 = v5;
      v28 = v33;
      goto LABEL_49;
    }

    return 0;
  }

  v19 = (a1 + v17) & ~v15;
  if (v34 == v13)
  {
    if (v8 >= 2)
    {
      v27 = v8;
      v28 = v32;
LABEL_49:
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, v27, v28);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(((v19 + v16 + v18) & ~v18) + v12);
  if (v30 >= 2)
  {
    return (v30 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C121C75C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 24);
  v39 = *(a4 + 16);
  v4 = *(v39 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_1C1263130();
  v12 = v5;
  v13 = 0;
  v14 = *(v11 - 8);
  v15 = *(v14 + 64);
  if (v15 <= 8)
  {
    v15 = 8;
  }

  if (v10 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v10;
  }

  v17 = *(v4 + 64);
  if (!v12)
  {
    ++v17;
  }

  v18 = *(v7 + 80);
  v19 = v17 + v18;
  v20 = (v17 + v18) & ~v18;
  v21 = *(v7 + 64);
  if (!v8)
  {
    ++v21;
  }

  v22 = *(v14 + 80) & 0xF8 | 7;
  v23 = v15 + 1;
  v24 = ((v21 + v22 + v20) & ~v22) + v15 + 1;
  v25 = 8 * v24;
  if (a3 > v16)
  {
    if (v24 <= 3)
    {
      v26 = ((a3 - v16 + ~(-1 << v25)) >> v25) + 1;
      if (HIWORD(v26))
      {
        v13 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v13 = v27;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v16 < a2)
  {
    v28 = ~v16 + a2;
    if (v24 < 4)
    {
      v29 = (v28 >> v25) + 1;
      if (v24)
      {
        v31 = v28 & ~(-1 << v25);
        bzero(a1, v24);
        if (v24 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else if (v24 == 2)
        {
          *a1 = v31;
        }

        else
        {
          *a1 = v28;
        }
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v28;
      v29 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v24] = v29;
        break;
      case 2:
        *&a1[v24] = v29;
        break;
      case 3:
        goto LABEL_72;
      case 4:
        *&a1[v24] = v29;
        break;
      default:
        return;
    }

    return;
  }

  v30 = a1;
  switch(v13)
  {
    case 1:
      a1[v24] = 0;
      if (a2)
      {
        goto LABEL_42;
      }

      return;
    case 2:
      *&a1[v24] = 0;
      if (a2)
      {
        goto LABEL_42;
      }

      return;
    case 3:
LABEL_72:
      __break(1u);
      return;
    case 4:
      *&a1[v24] = 0;
      goto LABEL_41;
    default:
LABEL_41:
      if (!a2)
      {
        return;
      }

LABEL_42:
      if (v6 == v16)
      {
        v32 = a2 + 1;
        v33 = v39;
LABEL_46:

        __swift_storeEnumTagSinglePayload(v30, v32, v12, v33);
        return;
      }

      v30 = &a1[v19] & ~v18;
      if (v9 == v16)
      {
        v32 = a2 + 1;
        v12 = v8;
        v33 = v38;
        goto LABEL_46;
      }

      v34 = ((v30 + v21 + v22) & ~v22);
      if (a2 > 0xFE)
      {
        if (v23 <= 3)
        {
          v35 = ~(-1 << (8 * v23));
        }

        else
        {
          v35 = -1;
        }

        if (v23)
        {
          v36 = v35 & (a2 - 255);
          if (v23 <= 3)
          {
            v37 = v23;
          }

          else
          {
            v37 = 4;
          }

          bzero(v34, v23);
          switch(v37)
          {
            case 2:
              *v34 = v36;
              break;
            case 3:
              *v34 = v36;
              v34[2] = BYTE2(v36);
              break;
            case 4:
              *v34 = v36;
              break;
            default:
              *v34 = v36;
              break;
          }
        }
      }

      else
      {
        v34[v15] = -a2;
      }

      return;
  }
}

uint64_t sub_1C121CBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v74 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8);
  v5 = *(a1 + 16);
  v6 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97EB8);
  v69 = *(a1 + 24);
  v7 = sub_1C1266790();
  swift_getTupleTypeMetadata3();
  v8 = sub_1C1265B00();
  OUTLINED_FUNCTION_5_41(&qword_1EDE7C010);
  v73 = v8;
  v9 = sub_1C1262E70();
  OUTLINED_FUNCTION_1();
  v68 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v61 - v14;
  sub_1C1263130();
  OUTLINED_FUNCTION_1();
  v63 = v16;
  v64 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v7;
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - v26;
  sub_1C1263C30();
  OUTLINED_FUNCTION_1();
  v71 = v29;
  v72 = v28;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v70 = &v61 - v31;
  (*(v24 + 16))(v27, v3, v6, v30);
  v66 = v5;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v27, 1, v5);
  (*(v24 + 8))(v27, v6);
  v32 = MEMORY[0x1E6981E60];
  v33 = v5 == 1;
  v34 = v69;
  if (v33 && (v35 = v62, (*(v19 + 16))(v22, v3 + *(a1 + 52), v62), EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v34), (*(v19 + 8))(v22, v35), EnumTagSinglePayload == 1))
  {
    v37 = OUTLINED_FUNCTION_2_67(&unk_1EDE7C000);
    OUTLINED_FUNCTION_10_0();
    WitnessTable = swift_getWitnessTable();
    v82 = v37;
    v83 = WitnessTable;
    OUTLINED_FUNCTION_12_0();
    swift_getWitnessTable();
    v39 = v70;
    sub_1C1112E18();
  }

  else
  {
    sub_1C0FD746C(v18);
    v40 = sub_1C1263120();
    (*(v63 + 8))(v18, v64);
    v41 = v40 & 1;
    if (v40)
    {
      v42 = 0;
    }

    else
    {
      v42 = 0x4010000000000000;
    }

    v43 = sub_1C1263AB0();
    v59 = swift_getWitnessTable();
    v77 = sub_1C1235004(v41, v42, v41, v43, 0, 0, 1);
    MEMORY[0x1EEE9AC00](v77);
    *(&v61 - 6) = v66;
    *(&v61 - 5) = v34;
    *(&v61 - 2) = *(a1 + 32);
    v59 = v3;
    v60 = v41;
    v44 = sub_1C1022650();
    OUTLINED_FUNCTION_10_0();
    v45 = v73;
    v46 = swift_getWitnessTable();
    sub_1C121710C(sub_1C121DE84, (&v61 - 8), MEMORY[0x1E6981D78], v45, v44, v46, v65);
    v75 = OUTLINED_FUNCTION_2_67(&unk_1EDE7C000);
    v76 = v46;
    OUTLINED_FUNCTION_12_0();
    v47 = swift_getWitnessTable();
    v48 = v67;
    v49 = OUTLINED_FUNCTION_20_2();
    sub_1C0FDBA4C(v49, v50, v47);
    v51 = *(v68 + 8);
    v52 = OUTLINED_FUNCTION_20_2();
    v51(v52);
    sub_1C0FDBA4C(v48, v9, v47);
    v39 = v70;
    OUTLINED_FUNCTION_20_2();
    v32 = MEMORY[0x1E6981E60];
    sub_1C1112D68();

    v53 = OUTLINED_FUNCTION_20_2();
    v51(v53);
    (v51)(v48, v9);
  }

  v54 = OUTLINED_FUNCTION_2_67(&unk_1EDE7C000);
  OUTLINED_FUNCTION_10_0();
  v55 = swift_getWitnessTable();
  v80 = v54;
  v81 = v55;
  OUTLINED_FUNCTION_12_0();
  v78 = swift_getWitnessTable();
  v79 = v32;
  OUTLINED_FUNCTION_19_0();
  v56 = v72;
  v57 = swift_getWitnessTable();
  sub_1C0FDBA4C(v39, v56, v57);
  return (*(v71 + 8))(v39, v56);
}

uint64_t sub_1C121D27C@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v107 = a6;
  v108 = a5;
  LODWORD(v91) = a2;
  v99 = a7;
  v87 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v86 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v83 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v83 - v13;
  v100 = v14;
  v103 = sub_1C1266790();
  v95 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v97 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v83 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v83 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v83 - v22;
  v23 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v93 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v83 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v83 - v30;
  v32 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v32);
  v90 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v83 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v83 - v38;
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v83 - v42;
  v106 = v44;
  v45 = *(v44 + 16);
  v94 = a1;
  v102 = v44 + 16;
  v101 = v45;
  (v45)(v39, a1, v32, v41);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, a3);
  v98 = v20;
  v104 = v43;
  if (EnumTagSinglePayload == 1)
  {
    v47 = *(v106 + 8);
    v47(v39, v32);
    __swift_storeEnumTagSinglePayload(v36, 1, 1, a3);
    sub_1C1170030(v36, v43);
  }

  else
  {
    v48 = *(v23 + 32);
    v48(v31, v39, a3);
    sub_1C0FDBA4C(v31, a3, v108);
    v49 = *(v23 + 8);
    v49(v31, a3);
    v50 = v93;
    sub_1C0FDBA4C(v28, a3, v108);
    v49(v28, a3);
    v48(v36, v50, a3);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, a3);
    sub_1C1170030(v36, v43);
    v47 = *(v106 + 8);
  }

  v47(v36, v32);
  v51 = v103;
  v52 = v95;
  v53 = v94;
  v96 = v32;
  v105 = v36;
  v93 = v47;
  if ((v91 & 1) != 0 || (v54 = v90, (v101)(v90, v94, v32), v55 = __swift_getEnumTagSinglePayload(v54, 1, a3), v47(v54, v32), v55 == 1))
  {
    v91 = 0;
    v90 = 0;
    v89 = 0;
    v88 = 0;
    v56 = v100;
  }

  else
  {
    v57 = v100;
    v116 = a3;
    v117 = v100;
    v118 = v108;
    v119 = v107;
    v58 = v53;
    v59 = &v53[*(type metadata accessor for PhotosJoinedCaptionComponents() + 52)];
    v60 = v89;
    (*(v52 + 2))(v89, v59, v51);
    LODWORD(v57) = __swift_getEnumTagSinglePayload(v60, 1, v57);
    (*(v52 + 1))(v60, v51);
    if (v57 == 1)
    {
      v91 = 0;
      v90 = 0;
      v89 = 0;
      v88 = 0;
    }

    else
    {
      sub_1C121DD28(&v116);
      v61 = v119;
      v91 = v116;
      v90 = v117;
      v89 = v118;
      sub_1C0FDB850(v116, v117, v118);
      v88 = v61;
    }

    v56 = v100;
    v53 = v58;
  }

  v116 = a3;
  v117 = v56;
  v62 = v107;
  v118 = v108;
  v119 = v107;
  v63 = &v53[*(type metadata accessor for PhotosJoinedCaptionComponents() + 52)];
  v64 = v92;
  v100 = *(v52 + 2);
  v94 = v52 + 16;
  (v100)(v92, v63, v51);
  if (__swift_getEnumTagSinglePayload(v64, 1, v56) == 1)
  {
    v65 = *(v52 + 1);
    v65(v64, v51);
    v66 = v97;
    __swift_storeEnumTagSinglePayload(v97, 1, 1, v56);
    v67 = v98;
    sub_1C1170030(v66, v98);
    v95 = v65;
    v65(v66, v51);
  }

  else
  {
    v68 = v87;
    v69 = *(v87 + 32);
    v70 = v84;
    v69(v84, v64, v56);
    v71 = v85;
    sub_1C0FDBA4C(v70, v56, v62);
    v72 = *(v68 + 8);
    v72(v70, v56);
    v73 = v86;
    sub_1C0FDBA4C(v71, v56, v62);
    v72(v71, v56);
    v66 = v97;
    v69(v97, v73, v56);
    v51 = v103;
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v56);
    v67 = v98;
    sub_1C1170030(v66, v98);
    v95 = *(v52 + 1);
    (v95)(v66, v51);
  }

  v74 = v105;
  v75 = v96;
  v101();
  v76 = v91;
  v77 = v90;
  v116 = v91;
  v117 = v90;
  v78 = v89;
  v79 = v88;
  v118 = v89;
  v119 = v88;
  v115[0] = v74;
  v115[1] = &v116;
  (v100)(v66, v67, v51);
  v115[2] = v66;
  v114[0] = v75;
  v114[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97EB8);
  v114[2] = v51;
  v110 = v108;
  WitnessTable = swift_getWitnessTable();
  v112 = sub_1C121DE98();
  v109 = v107;
  v113 = swift_getWitnessTable();
  sub_1C119EE80(v115, 3, v114);
  sub_1C0FDB8A4(v76, v77, v78, v79);
  v80 = v95;
  (v95)(v67, v51);
  v81 = v93;
  (v93)(v104, v75);
  (v80)(v66, v51);
  sub_1C0FDB8A4(v116, v117, v118, v119);
  return v81(v105, v75);
}

uint64_t sub_1C121DD28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1265E50();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1265DF0();
  v6 = static String.photosSwiftUICoreLocalized(_:)(v5);
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1C121DE34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C121DE98()
{
  result = qword_1EDE76D18;
  if (!qword_1EDE76D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76D18);
  }

  return result;
}

uint64_t sub_1C121DF40@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97EC0) + 36)) = a1 & 1;

  return sub_1C121DFC8(a1 & 1, a2, a3, a4 & 1, a5);
}

uint64_t sub_1C121DFC8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v26[0] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97EC8);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - v14;
  KeyPath = swift_getKeyPath();
  v17 = &v15[v10[13]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v15[v10[14]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = &v15[v10[15]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v15[v10[16]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  *&v15[v10[11]] = 0x4020000000000000;
  v21 = &v15[v10[12]];
  *v21 = 0x4018000000000000;
  v21[8] = 0;
  a1 &= 1u;
  sub_1C121E1E4(a2, v26[0], a4 & 1, v15);
  v22 = swift_getKeyPath();
  sub_1C121E4F0(v15, v12);
  *a5 = a1;
  *(a5 + 8) = 0x4044000000000000;
  *(a5 + 16) = KeyPath;
  *(a5 + 24) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97ED0);
  sub_1C121E4F0(v12, a5 + *(v23 + 64));
  v24 = a5 + *(v23 + 80);
  *v24 = a1;
  *(v24 + 8) = 0x4044000000000000;
  *(v24 + 16) = v22;
  *(v24 + 24) = 0;

  sub_1C121E560(v15);

  sub_1C121E560(v12);
}

uint64_t sub_1C121E1E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for OneUpAnimatedInfoButton(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = sub_1C12637E0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    sub_1C1266420();
    v20 = sub_1C1264410();
    v27 = a2;
    v21 = v20;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FF9034(a1, v27, 0);
    (*(v15 + 8))(v17, v14);
    a2 = v30;
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  v19 = (*(a2 + 160))(ObjectType, a2);
  swift_unknownObjectRelease();
LABEL_6:
  *v13 = swift_getKeyPath();
  *(v13 + 1) = 0;
  v13[16] = 0;
  type metadata accessor for Model(0);
  sub_1C12628D0();
  v28 = 0;
  sub_1C1265410();
  v22 = v29;
  v23 = v30;
  sub_1C10388D4(v13, v10);
  *a4 = v19 & 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE97ED8);
  sub_1C10388D4(v10, &a4[*(v24 + 48)]);
  v25 = &a4[*(v24 + 64)];
  *v25 = v22;
  *(v25 + 1) = v23;

  sub_1C1040D5C(v13);

  return sub_1C1040D5C(v10);
}

uint64_t sub_1C121E4F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97EC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C121E560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97EC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C121E5C8()
{
  result = qword_1EDE7C0C8[0];
  if (!qword_1EDE7C0C8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97EC0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7C0C8);
  }

  return result;
}

uint64_t PhotosStaticListPicker.init(selection:content:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PhotosStaticListPicker();
  v11 = a5 + v10[13];
  *v11 = sub_1C121E72C();
  *(v11 + 8) = v12 & 1;
  *(v11 + 16) = v13;
  sub_1C1266790();
  v14 = sub_1C1265640();
  result = (*(*(v14 - 8) + 32))(a5, a1, v14);
  *(a5 + v10[11]) = a2;
  v16 = (a5 + v10[12]);
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t sub_1C121E72C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A8);
  sub_1C1265410();
  return v1;
}

uint64_t sub_1C121E784(uint64_t a1)
{
  v2 = sub_1C1266790();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  OUTLINED_FUNCTION_2_68();
  sub_1C1265640();
  sub_1C12655F0();
  return (*(v3 + 8))(a1, v2);
}

uint64_t PhotosStaticListPicker.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40);
  sub_1C1265580();
  sub_1C100EF98();
  sub_1C12656A0();
  OUTLINED_FUNCTION_0_83();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  return sub_1C1264730();
}

uint64_t sub_1C121E95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v9 = type metadata accessor for PhotosStaticListPicker();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &KeyPath - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90D40);
  v37 = a3;
  v38 = a4;
  v14 = sub_1C1265580();
  v15 = sub_1C100EF98();
  v34 = v14;
  v35 = v13;
  v40 = v13;
  v41 = MEMORY[0x1E69E6530];
  v42 = v14;
  v43 = v15;
  v33 = v15;
  v44 = MEMORY[0x1E69E6540];
  v16 = sub_1C12656A0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &KeyPath - v21;
  v32 = a2;
  result = sub_1C1266170();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v40 = 0;
    v41 = result;
    KeyPath = swift_getKeyPath();
    (*(v10 + 16))(v12, a1, v9);
    v24 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v25 = swift_allocObject();
    v27 = v37;
    v26 = v38;
    *(v25 + 2) = v32;
    *(v25 + 3) = v27;
    *(v25 + 4) = v26;
    (*(v10 + 32))(&v25[v24], v12, v9);
    WitnessTable = swift_getWitnessTable();
    sub_1C1265680();
    v39 = WitnessTable;
    v28 = swift_getWitnessTable();
    sub_1C0FDBA4C(v19, v16, v28);
    v29 = *(v17 + 8);
    v29(v19, v16);
    sub_1C0FDBA4C(v22, v16, v28);
    return (v29)(v22, v16);
  }

  return result;
}

uint64_t sub_1C121ED00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C1265580();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22[-v15];
  v17 = *a1;
  v18 = type metadata accessor for PhotosStaticListPicker();
  sub_1C121EECC(v17, v18);
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a2;
  v27 = v17;
  sub_1C1265570();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v13, v10, WitnessTable);
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_1C0FDBA4C(v16, v10, WitnessTable);
  return (v20)(v16, v10);
}

uint64_t sub_1C121EECC(uint64_t a1, void *a2)
{
  v31 = a1;
  v4 = *(a2 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v4 + 16);
  v29(v7, v2, a2, v6);
  sub_1C1266200();
  v8 = sub_1C12661F0();
  v9 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v25 = v9;
  v10 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 2) = v8;
  *(v11 + 3) = v12;
  v13 = a2[2];
  v27 = a2[3];
  v14 = v27;
  v28 = v13;
  *(v11 + 4) = v13;
  *(v11 + 5) = v14;
  v26 = a2[4];
  *(v11 + 6) = v26;
  v15 = *(v4 + 32);
  v15(&v11[v9], v7, a2);
  v16 = v30;
  v17 = v31;
  *&v11[v10] = v31;
  (v29)(v7, v16, a2);
  v18 = sub_1C12661F0();
  v19 = swift_allocObject();
  *(v19 + 2) = v18;
  v21 = v27;
  v20 = v28;
  *(v19 + 3) = MEMORY[0x1E69E85E0];
  *(v19 + 4) = v20;
  v22 = v25;
  v23 = v26;
  *(v19 + 5) = v21;
  *(v19 + 6) = v23;
  v15(&v19[v22], v7, a2);
  *&v19[v10] = v17;
  sub_1C1265620();
  return v32;
}

uint64_t sub_1C121F0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v27 = a6;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  v20 = *(a1 + *(type metadata accessor for PhotosStaticListPicker() + 48));
  sub_1C12661D0();
  v20(v11);
  (*(v9 + 8))(v11, a3);
  v21 = v25;
  sub_1C0FDBA4C(v16, a4, v25);
  v22 = *(v13 + 8);
  v22(v16, a4);
  sub_1C0FDBA4C(v19, a4, v21);
  return (v22)(v19, a4);
}

uint64_t sub_1C121F2F4@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  type metadata accessor for PhotosStaticListPicker();
  result = sub_1C121F34C();
  *a2 = (result == a1) & ~v5;
  return result;
}

uint64_t sub_1C121F34C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F68);
  sub_1C1265420();
  return v1;
}

void sub_1C121F3B8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v11 - v9;
  if (*a1 == 1)
  {
    type metadata accessor for PhotosStaticListPicker();
    sub_1C121F4B8();
    sub_1C12661D0();
    __swift_storeEnumTagSinglePayload(v10, 0, 1, a6);
    sub_1C121E784(v10);
  }
}

void sub_1C121F530()
{
  sub_1C1266790();
  sub_1C1265640();
  if (v0 <= 0x3F)
  {
    sub_1C12661A0();
    if (v1 <= 0x3F)
    {
      sub_1C1007F88();
      if (v2 <= 0x3F)
      {
        sub_1C121FA2C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_DWORD *sub_1C121F5FC(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = 7;
  if (!v6)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    v19 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v19 + v9 + 8) & ~v9, v6, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return (EnumTagSinglePayload - 1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *v19;
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  else
  {
    v11 = ((((((v10 + *(*(v4 - 8) + 64) + ((v9 + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
    v12 = a2 - v8;
    v13 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

LABEL_27:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *result;
        }

        result = (v8 + (v13 | v18) + 1);
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_1C121F794(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  v14 = ((((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v11 < a3)
  {
    v15 = a3 - v11;
    if (((((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v11)
  {
    switch(v6)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_59:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v10 & 0x80000000) != 0)
          {
            v22 = ((v20 + v12 + 8) & ~v12);
            if (v10 >= a2)
            {
              v26 = a2 + 1;

              __swift_storeEnumTagSinglePayload((v20 + v12 + 8) & ~v12, v26, v9, v7);
            }

            else
            {
              if (v13 <= 3)
              {
                v23 = ~(-1 << (8 * v13));
              }

              else
              {
                v23 = -1;
              }

              if (v13)
              {
                v24 = v23 & (~v10 + a2);
                if (v13 <= 3)
                {
                  v25 = v13;
                }

                else
                {
                  v25 = 4;
                }

                bzero(v22, v13);
                switch(v25)
                {
                  case 2:
                    *v22 = v24;
                    break;
                  case 3:
                    *v22 = v24;
                    v22[2] = BYTE2(v24);
                    break;
                  case 4:
                    *v22 = v24;
                    break;
                  default:
                    *v22 = v24;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = a2 - 1;
            }

            *v20 = v21;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((((((v13 + ((v12 + 16) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v19 = ~v11 + a2;
      bzero(a1, v14);
      *a1 = v19;
    }

    switch(v6)
    {
      case 1:
        a1[v14] = v18;
        break;
      case 2:
        *&a1[v14] = v18;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *&a1[v14] = v18;
        break;
      default:
        return;
    }
  }
}

void sub_1C121FA2C()
{
  if (!qword_1EBE97F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE929A8);
    v0 = sub_1C1265450();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE97F60);
    }
  }
}

uint64_t sub_1C121FA90(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for PhotosStaticListPicker() - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_1C121ED00(a1, v7, v3, v4, v5);
}

uint64_t sub_1C121FB48@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_2_68();
  v3 = *(type metadata accessor for PhotosStaticListPicker() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 56) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C121F2F4(v4, a1);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_2_68();
  type metadata accessor for PhotosStaticListPicker();
  OUTLINED_FUNCTION_10_4();
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  sub_1C1266790();
  v4 = *(sub_1C1265640() + 32);
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v4, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v0 + v3 + v4, v1);
  }

  return swift_deallocObject();
}

void sub_1C121FD6C(_BYTE *a1)
{
  v3 = v1[4];
  OUTLINED_FUNCTION_2_68();
  v4 = *(type metadata accessor for PhotosStaticListPicker() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1C121F3B8(a1, v6, v7, v1 + v5, v8, v3);
}

uint64_t OneUpChromeLegibilityView.init(model:enableDebugBorders:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  v6 = *(type metadata accessor for OneUpChromeLegibilityView() + 32);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t type metadata accessor for OneUpChromeLegibilityView()
{
  result = qword_1EDE7C9A8;
  if (!qword_1EDE7C9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OneUpChromeLegibilityView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_58();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F70);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F78);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  *v12 = sub_1C1263AA0();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F80);
  sub_1C12201B0(v3, &v12[*(v17 + 44)]);
  v12[*(v10 + 44)] = 0;
  sub_1C1220C08();
  v18 = sub_1C1222F4C();

  if (v18)
  {
    (*(v7 + 104))(v2, *MEMORY[0x1E697DBA8], v5);
  }

  else
  {
    sub_1C1220F3C(v2);
  }

  KeyPath = swift_getKeyPath();
  v20 = &v16[*(v13 + 36)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93D70);
  (*(v7 + 32))(v20 + *(v21 + 28), v2, v5);
  *v20 = KeyPath;
  sub_1C0FDB71C(v12, v16, &qword_1EBE97F70);
  v22 = sub_1C12631E0();
  v23 = sub_1C1264470();
  sub_1C0FDB71C(v16, a1, &qword_1EBE97F78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F88);
  v25 = a1 + *(result + 36);
  *v25 = v22;
  *(v25 + 8) = v23;
  return result;
}

uint64_t sub_1C12201B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97F98);
  MEMORY[0x1EEE9AC00](v70);
  v4 = &v55 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A90);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v55 - v5;
  v7 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FA0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A88);
  v64 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FA8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v61 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v59 = &v55 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v66 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v68 = &v55 - v28;
  sub_1C1220C08();
  sub_1C1223BB0();

  PhotosBlurLegibilityGradient.init(spec:)(v9, v12);
  sub_1C1220C08();
  sub_1C1224208();

  sub_1C12659A0();
  sub_1C1262C80();
  v29 = &v12[*(v10 + 36)];
  v30 = v79;
  *v29 = v78;
  *(v29 + 1) = v30;
  *(v29 + 2) = v80;
  sub_1C1265A30();
  v73 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FB0);
  v32 = sub_1C122155C();
  v33 = sub_1C12215E8();
  v72 = v31;
  v71 = v32;
  v34 = v33;
  sub_1C1265030();

  sub_1C12216A0(v12);
  v35 = *(a1 + 8);
  v67 = (v64 + 8);
  v56 = v35;
  v62 = v4;
  v55 = v6;
  if (v35 == 1)
  {
    v36 = sub_1C1265180();
    sub_1C11C37BC(v36, v6);

    sub_1C0FDB800(v6, v4, &qword_1EBE96A90);
    swift_storeEnumTagMultiPayload();
    sub_1C1221708();
    *&v81 = v10;
    *(&v81 + 1) = v72;
    *&v82 = v71;
    *(&v82 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    sub_1C0FD1A5C(v6, &qword_1EBE96A90);
  }

  else
  {
    (*(v64 + 16))(v4, v16, v69);
    swift_storeEnumTagMultiPayload();
    sub_1C1221708();
    *&v81 = v10;
    *(&v81 + 1) = v72;
    *&v82 = v71;
    *(&v82 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
  }

  v37 = *v67;
  v38 = v16;
  v39 = v69;
  (*v67)(v38, v69);
  sub_1C0FDB71C(v66, v68, &qword_1EBE97FA8);
  sub_1C1220C08();
  sub_1C1223DE8();

  PhotosBlurLegibilityGradient.init(spec:)(v9, v12);
  sub_1C1220C08();
  sub_1C1224300();

  sub_1C12659A0();
  sub_1C1262C80();
  v40 = &v12[*(v10 + 36)];
  v41 = v82;
  *v40 = v81;
  *(v40 + 1) = v41;
  *(v40 + 2) = v83;
  v42 = sub_1C1265A30();
  MEMORY[0x1EEE9AC00](v42);
  *(&v55 - 2) = a1;
  v43 = v65;
  sub_1C1265030();

  sub_1C12216A0(v12);
  if (v56)
  {
    v44 = sub_1C1265180();
    v45 = v55;
    sub_1C11C37BC(v44, v55);

    sub_1C0FDB800(v45, v62, &qword_1EBE96A90);
    swift_storeEnumTagMultiPayload();
    sub_1C1221708();
    v74 = v10;
    v75 = v72;
    v76 = v71;
    v77 = v34;
    swift_getOpaqueTypeConformance2();
    v46 = v58;
    v43 = v65;
    sub_1C1263C20();
    sub_1C0FD1A5C(v45, &qword_1EBE96A90);
  }

  else
  {
    (*(v64 + 16))(v62, v43, v39);
    swift_storeEnumTagMultiPayload();
    sub_1C1221708();
    v74 = v10;
    v75 = v72;
    v76 = v71;
    v77 = v34;
    swift_getOpaqueTypeConformance2();
    v46 = v58;
    sub_1C1263C20();
  }

  v37(v43, v39);
  v47 = v59;
  sub_1C0FDB71C(v46, v59, &qword_1EBE97FA8);
  v48 = v68;
  v49 = v60;
  sub_1C0FDB800(v68, v60, &qword_1EBE97FA8);
  v50 = v61;
  sub_1C0FDB800(v47, v61, &qword_1EBE97FA8);
  v51 = v63;
  sub_1C0FDB800(v49, v63, &qword_1EBE97FA8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FC0);
  v53 = v51 + *(v52 + 48);
  *v53 = 0;
  *(v53 + 8) = 1;
  sub_1C0FDB800(v50, v51 + *(v52 + 64), &qword_1EBE97FA8);
  sub_1C0FD1A5C(v47, &qword_1EBE97FA8);
  sub_1C0FD1A5C(v48, &qword_1EBE97FA8);
  sub_1C0FD1A5C(v50, &qword_1EBE97FA8);
  return sub_1C0FD1A5C(v49, &qword_1EBE97FA8);
}

uint64_t sub_1C1220C08()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C1220D48@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  if (sub_1C1220DF4(a2))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FB8);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(a3, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FB0);
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1C1220DF4(uint64_t (*a1)(uint64_t))
{
  v4 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_58();
  v8 = *(v1 + 24);

  if ((v8 & 1) == 0)
  {
    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    v9 = (*(v6 + 8))(v2, v4);
  }

  v11 = a1(v9);

  return v11 & 1;
}

uint64_t sub_1C1220F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OneUpChromeLegibilityView();
  sub_1C101268C(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C1221130(uint64_t a1)
{
  v2 = sub_1C12629F0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C12634C0();
}

void sub_1C122123C()
{
  type metadata accessor for OneUpChromeViewModel();
  if (v0 <= 0x3F)
  {
    sub_1C1057868(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
    if (v1 <= 0x3F)
    {
      sub_1C10387FC();
      if (v2 <= 0x3F)
      {
        sub_1C1057868(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C1221330()
{
  result = qword_1EDE770C8;
  if (!qword_1EDE770C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97F88);
    sub_1C12213BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770C8);
  }

  return result;
}

unint64_t sub_1C12213BC()
{
  result = qword_1EDE77188;
  if (!qword_1EDE77188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97F78);
    sub_1C1221474();
    sub_1C0FDB6D4(&qword_1EDE7B960, &qword_1EBE93D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77188);
  }

  return result;
}

unint64_t sub_1C1221474()
{
  result = qword_1EDE77300;
  if (!qword_1EDE77300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97F70);
    sub_1C0FDB6D4(&qword_1EDE76BE0, &qword_1EBE97F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77300);
  }

  return result;
}

unint64_t sub_1C122155C()
{
  result = qword_1EDE774A8;
  if (!qword_1EDE774A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FA0);
    sub_1C11217A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774A8);
  }

  return result;
}

unint64_t sub_1C12215E8()
{
  result = qword_1EDE77460;
  if (!qword_1EDE77460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FB0);
    sub_1C0FDB6D4(&qword_1EDE76DC0, &qword_1EBE97FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77460);
  }

  return result;
}

uint64_t sub_1C12216A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1221708()
{
  result = qword_1EDE77350;
  if (!qword_1EDE77350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96A90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FB0);
    sub_1C122155C();
    sub_1C12215E8();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&unk_1EDE7BCC0, &qword_1EBE96990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77350);
  }

  return result;
}

id sub_1C1221858(uint64_t a1, void *a2)
{
  if (a2)
  {

    return a2;
  }

  else
  {
    result = sub_1C1266B70();
    __break(1u);
  }

  return result;
}

uint64_t View.sheet(presentedViewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  sub_1C1265410();
  v10 = v13;
  v11 = v14;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = v10;
  v17 = v11;
  MEMORY[0x1C68EE920](&v13, a4, &type metadata for ViewControllerSheet, a5);
}

unint64_t sub_1C1221970()
{
  result = qword_1EBE97FC8;
  if (!qword_1EBE97FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97FC8);
  }

  return result;
}

uint64_t sub_1C12219F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FD0);
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v18 - v3;
  v34[0] = *(v2 + 24);
  v32 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265440();
  v20 = v29;
  v4 = *v2;
  v5 = *(v2 + 8);
  v21 = *(v2 + 16);
  *&v32 = v4;
  v33 = v21;
  v6 = swift_allocObject();
  v7 = *(v2 + 16);
  *(v6 + 16) = *v2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v2 + 32);
  sub_1C110BC68(&v32, &v27);

  sub_1C102EFA0(&v33, &v27, &qword_1EBE97FD8);
  sub_1C102EFA0(v34, &v27, &unk_1EBE95B10);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FE0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FE8);
  v16 = sub_1C1221EA8();
  v17 = sub_1C1221F0C();
  sub_1C1264EB0();

  v27 = v4;
  v28 = v5;
  v29 = v21;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98008);
  MEMORY[0x1C68EEF20](&v31, v9);
  v10 = v31;
  v11 = swift_allocObject();
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  sub_1C110BC68(&v32, &v27);

  sub_1C102EFA0(&v33, &v27, &qword_1EBE97FD8);
  sub_1C102EFA0(v34, &v27, &unk_1EBE95B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97FD8);
  v27 = v19;
  v28 = v8;
  v29 = v16;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1C1222044();
  v13 = v23;
  v14 = v26;
  sub_1C1265000();

  return (*(v25 + 8))(v14, v13);
}

uint64_t sub_1C1221D88@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98008);
  MEMORY[0x1C68EEF20](&v7, v3);
  v4 = v7;
  v5 = sub_1C12631E0();
  result = sub_1C1264470();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1C1221E00(uint64_t a1, void *a2)
{
  if (*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
    return sub_1C1265430();
  }

  return result;
}

unint64_t sub_1C1221EA8()
{
  result = qword_1EBE97FF0;
  if (!qword_1EBE97FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97FF0);
  }

  return result;
}

unint64_t sub_1C1221F0C()
{
  result = qword_1EBE97FF8;
  if (!qword_1EBE97FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FE8);
    sub_1C1221F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE97FF8);
  }

  return result;
}

unint64_t sub_1C1221F98()
{
  result = qword_1EBE98000;
  if (!qword_1EBE98000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98000);
  }

  return result;
}

uint64_t objectdestroyTm_23()
{

  return swift_deallocObject();
}

unint64_t sub_1C1222044()
{
  result = qword_1EBE98010;
  if (!qword_1EBE98010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE97FD8);
    sub_1C12220C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98010);
  }

  return result;
}

unint64_t sub_1C12220C8()
{
  result = qword_1EBE98018;
  if (!qword_1EBE98018)
  {
    sub_1C116E8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98018);
  }

  return result;
}

id sub_1C1222134(void *a1)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    result = sub_1C1266B70();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C1222204(uint64_t a1)
{
  result = sub_1C122222C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C122222C()
{
  result = qword_1EBE98020;
  if (!qword_1EBE98020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98020);
  }

  return result;
}

uint64_t sub_1C1222280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C122222C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1C12222E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C122222C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1C1222348()
{
  sub_1C122222C();
  sub_1C1264320();
  __break(1u);
}

uint64_t EnvironmentValues.oneUpChromeSpec.getter()
{
  sub_1C12223AC();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C12223AC()
{
  result = qword_1EDE7D6C0;
  if (!qword_1EDE7D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6C0);
  }

  return result;
}

void (*sub_1C1222454())(void)
{
  result = sub_1C12225F8();
  if (result)
  {
    result();
    v1 = OUTLINED_FUNCTION_18();
    return sub_1C0FCF004(v1);
  }

  return result;
}

uint64_t (*sub_1C12224AC())()
{
  OUTLINED_FUNCTION_42_8();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1C12224F8@<X0>(void (**a1)(double *a1@<X8>)@<X8>)
{
  result = sub_1C12225F8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C122931C;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1C1222568(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_1C0FCF1B4(v1);
  return sub_1C12226E0();
}

uint64_t sub_1C12225F8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v1, v2);
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  v3 = *(v0 + 16);
  sub_1C0FCF1B4(v3);
  return v3;
}

uint64_t type metadata accessor for OneUpChromeSpec()
{
  result = qword_1EDE7E150;
  if (!qword_1EDE7E150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C12226E0()
{
  swift_getKeyPath();
  sub_1C1227794();
  v0 = OUTLINED_FUNCTION_20_15();
  sub_1C0FCF004(v0);
}

uint64_t sub_1C1222764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_1C0FCF1B4(a2);
  return sub_1C0FCF004(v6);
}

void (*sub_1C1222800(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_84();
  v6 = sub_1C122772C(v4, v5);
  OUTLINED_FUNCTION_1_6(v6);

  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v3[7] = sub_1C12224AC();
  return sub_1C12228E8;
}

void sub_1C12228F4(char a1)
{
  v1 = a1 & 1;
  sub_1C12229B0();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1222A30(v1);
  }
}

uint64_t (*sub_1C1222944(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C12229B0();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C1222984;
}

uint64_t sub_1C12229B0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v1, v2);
  OUTLINED_FUNCTION_6();

  return *(v0 + 32);
}

uint64_t sub_1C1222A30(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12();
  }

  return result;
}

void sub_1C1222AB8(char a1)
{
  v1 = a1 & 1;
  sub_1C1222BC4();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1222C44(v1);
  }
}

uint64_t (*sub_1C1222B08(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C1222BC4();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C1222B48;
}

uint64_t sub_1C1222B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v5 = *(a1 + 8);
  result = a3();
  if (v5 != (result & 1))
  {
    return a4(v5);
  }

  return result;
}

uint64_t sub_1C1222BC4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v1, v2);
  OUTLINED_FUNCTION_6();

  return *(v0 + 33);
}

uint64_t sub_1C1222C44(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12();
  }

  return result;
}

void sub_1C1222CCC(char a1)
{
  v1 = a1 & 1;
  sub_1C1222D88();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1222E08(v1);
  }
}

uint64_t (*sub_1C1222D1C(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C1222D88();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C1222D5C;
}

uint64_t sub_1C1222D88()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v1, v2);
  OUTLINED_FUNCTION_6();

  return *(v0 + 34);
}

uint64_t sub_1C1222E08(uint64_t result)
{
  if (*(v1 + 34) == (result & 1))
  {
    *(v1 + 34) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12();
  }

  return result;
}

void sub_1C1222E90(char a1)
{
  v1 = a1 & 1;
  sub_1C1222F4C();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1222FCC(v1);
  }
}

uint64_t (*sub_1C1222EE0(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C1222F4C();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C1222F20;
}

uint64_t sub_1C1222F4C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v1, v2);
  OUTLINED_FUNCTION_6();

  return *(v0 + 35);
}

uint64_t sub_1C1222FCC(uint64_t result)
{
  if (*(v1 + 35) == (result & 1))
  {
    *(v1 + 35) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12();
  }

  return result;
}

void sub_1C1223054(char a1)
{
  v1 = a1 & 1;
  sub_1C1223110();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1223190(v1);
  }
}

uint64_t (*sub_1C12230A4(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C1223110();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C12230E4;
}

uint64_t sub_1C1223110()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v1, v2);
  OUTLINED_FUNCTION_6();

  return *(v0 + 36);
}

uint64_t sub_1C1223190(uint64_t result)
{
  if (*(v1 + 36) == (result & 1))
  {
    *(v1 + 36) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12();
  }

  return result;
}

void sub_1C1223244(double a1, double a2, double a3, double a4)
{
  if (sub_1C122336C() != a1 || v8 != a2 || v9 != a3 || v10 != a4)
  {

    sub_1C122344C(a1, a2, a3, a4);
  }
}

uint64_t sub_1C12232C4(double **a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *(v3 + 4) = v1;
  *v3 = sub_1C122336C();
  *(v3 + 1) = v4;
  *(v3 + 2) = v5;
  *(v3 + 3) = v6;
  return OUTLINED_FUNCTION_36();
}

void sub_1C1223328(double **a1)
{
  v1 = *a1;
  sub_1C1223244(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double sub_1C122336C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v1, v2);
  OUTLINED_FUNCTION_6();

  return *(v0 + 40);
}

void sub_1C12233F0()
{
  OUTLINED_FUNCTION_13_1();
  *v0 = v1();
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
}

void sub_1C122344C(double a1, double a2, double a3, double a4)
{
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*(v4 + 40), v5), vceqq_f64(*(v4 + 56), v6))))))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_31();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_29_12();
  }

  else
  {
    *(v4 + 40) = a1;
    *(v4 + 48) = a2;
    *(v4 + 56) = a3;
    *(v4 + 64) = a4;
  }
}

void sub_1C1223528(double a1)
{
  if (sub_1C12235E4() != a1)
  {

    sub_1C1223664(a1);
  }
}

uint64_t sub_1C1223578(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C12235E4();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C12235E4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v1, v2);
  OUTLINED_FUNCTION_6();

  return *(v0 + 72);
}

void sub_1C1223664(double a1)
{
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_31();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_29_12();
  }
}

void sub_1C12236FC(double a1)
{
  if (sub_1C1223804() != a1)
  {

    sub_1C1223884(a1);
  }
}

uint64_t sub_1C122374C(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1223804();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C12237B8(double *a1, uint64_t a2, double (*a3)(void), void (*a4)(double))
{
  v5 = *a1;
  if (v5 != a3())
  {
    a4(v5);
  }
}

double sub_1C1223804()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v1, v2);
  OUTLINED_FUNCTION_6();

  return *(v0 + 80);
}

void sub_1C1223884(double a1)
{
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_31();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_29_12();
  }
}

void sub_1C122391C(double a1)
{
  if (sub_1C12239D8() != a1)
  {

    sub_1C1223A58(a1);
  }
}

uint64_t sub_1C122396C(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C12239D8();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C12239D8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v1, v2);
  OUTLINED_FUNCTION_6();

  return *(v0 + 88);
}

void sub_1C1223A58(double a1)
{
  if (*(v1 + 88) == a1)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_17_31();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_9_1();
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_29_12();
  }
}

uint64_t sub_1C1223B20(void *a1)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  OUTLINED_FUNCTION_15(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_52_6(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_22_23(v5);
  sub_1C1223BB0();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1223C2C(double *a1, void (*a2)(void), void (*a3)(double *))
{
  v7 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v8 = OUTLINED_FUNCTION_15(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26_11();
  a2();
  LOBYTE(a2) = static PhotosBlurLegibilityGradientSpec.== infix(_:_:)(a1, v3);
  sub_1C122766C(v3);
  if ((a2 & 1) == 0)
  {
    sub_1C12276C8(a1, v3);
    a3(v3);
  }

  return sub_1C122766C(a1);
}

uint64_t sub_1C1223CE8(void *a1)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  OUTLINED_FUNCTION_15(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_52_6(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_22_23(v5);
  sub_1C1223DE8();
  return OUTLINED_FUNCTION_36();
}

void sub_1C1223D78(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_55_4(a1);
  if (v5)
  {
    sub_1C12276C8(v4, v1);
    v3(v1);
    sub_1C122766C(v2);
  }

  else
  {
    v3(v4);
  }

  free(v2);

  free(v1);
}

uint64_t sub_1C1223E10@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(uint64_t, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v10 = sub_1C122772C(v8, v9);
  OUTLINED_FUNCTION_14_27(v10, v11, v12, v13, v14, v15, v16, v17, v20, v3);
  sub_1C1261F30();

  v18 = *a1;
  OUTLINED_FUNCTION_7_4();
  return a2(v6 + v18, a3);
}

uint64_t sub_1C1223EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v9 = OUTLINED_FUNCTION_15(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26_11();
  sub_1C12276C8(a1, v5);
  return a5(v5);
}

uint64_t sub_1C1223F6C(double *a1, uint64_t *a2)
{
  v5 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v6 = OUTLINED_FUNCTION_15(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = (v8 - v7);
  v10 = *a2;
  swift_beginAccess();
  sub_1C12276C8(v2 + v10, v9);
  LOBYTE(a2) = static PhotosBlurLegibilityGradientSpec.== infix(_:_:)(v9, a1);
  sub_1C122766C(v9);
  if (a2)
  {
    sub_1C12276C8(a1, v9);
    OUTLINED_FUNCTION_42_8();
    swift_beginAccess();
    sub_1C12291FC(v9, v2 + v10);
    swift_endAccess();
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_38_11();
  }

  return sub_1C122766C(a1);
}

uint64_t sub_1C1224098(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v7 = OUTLINED_FUNCTION_15(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  sub_1C12276C8(a2, v9 - v8);
  v11 = *a3;
  OUTLINED_FUNCTION_42_8();
  swift_beginAccess();
  sub_1C12291FC(v10, a1 + v11);
  return swift_endAccess();
}

void sub_1C122414C(double a1)
{
  if (sub_1C1224208() != a1)
  {

    sub_1C122421C(a1);
  }
}

uint64_t sub_1C122419C(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1224208();
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C1224244(double a1)
{
  if (sub_1C1224300() != a1)
  {

    sub_1C122439C(a1);
  }
}

uint64_t sub_1C1224294(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C1224300();
  return OUTLINED_FUNCTION_17_3();
}

double sub_1C1224314()
{
  OUTLINED_FUNCTION_51_9();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v4 = sub_1C122772C(v2, v3);
  OUTLINED_FUNCTION_14_27(v4, v5, v6, v7, v8, v9, v10, v11, v13, v1);
  sub_1C1261F30();

  return *(v1 + *v0);
}

uint64_t sub_1C1224440(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = sub_1C12244A8();
  OUTLINED_FUNCTION_32(v2, v3);
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C1224518(double a1)
{
  if (sub_1C12245D4() != a1)
  {

    sub_1C12245E8(a1);
  }
}

uint64_t sub_1C1224568(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C12245D4();
  return OUTLINED_FUNCTION_17_3();
}

void *sub_1C1224610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C12246B0(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C12246B4(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1224710();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1224724@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1224710();
  *a1 = v3;
  return result;
}

unsigned __int8 *sub_1C1224798(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 == *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___videoScrubberButtonPlacement))
  {
    *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___videoScrubberButtonPlacement) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12();
  }

  return result;
}

void sub_1C1224828(char a1)
{
  v1 = a1 & 1;
  sub_1C12248E4();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C12248F8(v1);
  }
}

uint64_t (*sub_1C1224878(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C12248E4();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C12248B8;
}

void *sub_1C1224920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1224A1C(&v3);
  *a1 = v3;
  return result;
}

void *sub_1C12249C0(unsigned __int8 *a1, void *(*a2)(uint64_t *__return_ptr), uint64_t (*a3)(char *))
{
  v4 = *a1;
  result = a2(&v7);
  if (v4 != v7)
  {
    v6 = v4;
    return a3(&v6);
  }

  return result;
}

uint64_t sub_1C1224A20(void *a1)
{
  OUTLINED_FUNCTION_43(a1);
  sub_1C1224ADC();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1224A7C(uint64_t a1, char a2, uint64_t (*a3)(char *))
{
  if (a2)
  {
    v5 = *(a1 + 8);
    v3 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v3 = &v6;
  }

  return a3(v3);
}

uint64_t sub_1C1224AF0()
{
  OUTLINED_FUNCTION_51_9();
  v3 = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v6 = sub_1C122772C(v4, v5);
  OUTLINED_FUNCTION_14_27(v6, v7, v8, v9, v10, v11, v12, v13, v15, v1);
  sub_1C1261F30();

  *v3 = *(v1 + *v0);
  return result;
}

uint64_t sub_1C1224B88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1224ADC();
  *a1 = v3;
  return result;
}

uint64_t sub_1C1224BFC(unsigned __int8 *a1)
{
  if (*a1 == *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___viewAspectRatio))
  {
    v4[0] = *a1;
    return sub_1C1224AC8(v4);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12();
  }
}

void sub_1C1224C94(char a1)
{
  v1 = a1 & 1;
  sub_1C1224CE4();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1224D80(v1);
  }
}

uint64_t sub_1C1224CF8()
{
  OUTLINED_FUNCTION_51_9();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v4 = sub_1C122772C(v2, v3);
  OUTLINED_FUNCTION_14_27(v4, v5, v6, v7, v8, v9, v10, v11, v13, v1);
  sub_1C1261F30();

  return *(v1 + *v0);
}

uint64_t sub_1C1224DA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  v1 = OUTLINED_FUNCTION_15(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_30();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-v6];
  if (sub_1C1226204())
  {
    v8 = 1;
  }

  else
  {
    sub_1C12265E0();
    sub_1C1226AE4();
    sub_1C1224ADC();
    v12[14] = v12[15];
    static OneUpChromeSpec.shouldShowBadgesInSeparateBar(verticalSizeClass:horizontalSizeClass:aspectRatio:)();
    v8 = v9;
    sub_1C0FD1A5C(v4, &qword_1EBE902F0);
    sub_1C0FD1A5C(v7, &qword_1EBE902F0);
  }

  v10 = sub_1C1224CE4() & 1;
  result = v8 & 1;
  if (result != v10)
  {
    return sub_1C1224D80(result);
  }

  return result;
}

void static OneUpChromeSpec.shouldShowBadgesInSeparateBar(verticalSizeClass:horizontalSizeClass:aspectRatio:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v110 = v2;
  v4 = v3;
  v5 = sub_1C1263EB0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v109 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v106 = (v13 - v14);
  OUTLINED_FUNCTION_7();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v100[-v17];
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_8();
  v108 = v19;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v100[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  v24 = OUTLINED_FUNCTION_15(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_30();
  v104 = v25 - v26;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_3_8();
  v105 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_8();
  v113 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_8();
  v115 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_3_8();
  v107 = v34;
  OUTLINED_FUNCTION_7();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v100[-v37];
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v100[-v40];
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v100[-v42];
  v111 = *v1;
  v44 = v11;
  v45 = *MEMORY[0x1E697FF40];
  v116 = v7;
  v47 = *(v7 + 104);
  v46 = v7 + 104;
  v114 = v45;
  v117 = v47;
  v47(&v100[-v42]);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v5);
  v51 = *(v11 + 48);
  v112 = v4;
  sub_1C10B1CE8(v4, v22);
  sub_1C10B1CE8(v43, &v22[v51]);
  OUTLINED_FUNCTION_17_1(v22);
  if (v52)
  {
    sub_1C0FD1A5C(v43, &qword_1EBE902F0);
    OUTLINED_FUNCTION_17_1(&v22[v51]);
    if (!v52)
    {
      OUTLINED_FUNCTION_50_5();
LABEL_19:
      sub_1C0FD1A5C(v22, &qword_1EBE902E8);
      goto LABEL_20;
    }

    sub_1C0FD1A5C(v22, &qword_1EBE902F0);
    OUTLINED_FUNCTION_50_5();
  }

  else
  {
    sub_1C10B1CE8(v22, v41);
    OUTLINED_FUNCTION_17_1(&v22[v51]);
    if (v52)
    {
      OUTLINED_FUNCTION_50_5();
LABEL_18:
      sub_1C0FD1A5C(v43, &qword_1EBE902F0);
      v66 = OUTLINED_FUNCTION_18();
      v67(v66);
      goto LABEL_19;
    }

    v53 = v116;
    v54 = *(v116 + 32);
    v103 = v46;
    v55 = v109;
    v54(v109, &v22[v51], v5);
    OUTLINED_FUNCTION_1_59();
    sub_1C122772C(v56, v57);
    v101 = sub_1C1265DE0();
    v102 = v44;
    v51 = v53 + 8;
    v4 = *(v53 + 8);
    v58 = v55;
    v46 = v103;
    (v4)(v58, v5);
    v59 = v43;
    v43 = &qword_1EBE902F0;
    sub_1C0FD1A5C(v59, &qword_1EBE902F0);
    v60 = OUTLINED_FUNCTION_18();
    v4(v60);
    v44 = v102;
    sub_1C0FD1A5C(v22, &qword_1EBE902F0);
    OUTLINED_FUNCTION_50_5();
    if ((v101 & 1) == 0)
    {
LABEL_20:
      v117(v4, v51, v5);
      OUTLINED_FUNCTION_29_2();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v5);
      v71 = *(v44 + 48);
      sub_1C10B1CE8(v112, v18);
      sub_1C10B1CE8(v4, &v18[v71]);
      OUTLINED_FUNCTION_17_1(v18);
      if (v52)
      {
        sub_1C0FD1A5C(v4, &qword_1EBE902F0);
        OUTLINED_FUNCTION_17_1(&v18[v71]);
        if (!v52)
        {
          goto LABEL_36;
        }

        sub_1C0FD1A5C(v18, &qword_1EBE902F0);
      }

      else
      {
        sub_1C10B1CE8(v18, v113);
        OUTLINED_FUNCTION_17_1(&v18[v71]);
        if (v72)
        {
          goto LABEL_35;
        }

        v73 = v116;
        v74 = OUTLINED_FUNCTION_2_37();
        v75(v74);
        OUTLINED_FUNCTION_1_59();
        sub_1C122772C(v76, v77);
        v78 = v113;
        v79 = sub_1C1265DE0();
        v80 = *(v73 + 8);
        v80(v43, v5);
        v43 = &qword_1EBE902F0;
        sub_1C0FD1A5C(v4, &qword_1EBE902F0);
        v80(v78, v5);
        sub_1C0FD1A5C(v18, &qword_1EBE902F0);
        if ((v79 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v4 = v105;
      v117(v105, *MEMORY[0x1E697FF38], v5);
      OUTLINED_FUNCTION_29_2();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v5);
      v84 = *(v44 + 48);
      v18 = v106;
      sub_1C10B1CE8(v110, v106);
      sub_1C10B1CE8(v4, &v18[v84]);
      OUTLINED_FUNCTION_17_1(v18);
      if (v52)
      {
        sub_1C0FD1A5C(v4, &qword_1EBE902F0);
        OUTLINED_FUNCTION_17_1(&v18[v84]);
        if (v52)
        {
          sub_1C0FD1A5C(v18, &qword_1EBE902F0);
          goto LABEL_37;
        }

LABEL_36:
        sub_1C0FD1A5C(v18, &qword_1EBE902E8);
        goto LABEL_37;
      }

      v85 = v104;
      sub_1C10B1CE8(v18, v104);
      OUTLINED_FUNCTION_17_1(&v18[v84]);
      if (!v86)
      {
        v94 = v116;
        v95 = OUTLINED_FUNCTION_2_37();
        v96(v95);
        OUTLINED_FUNCTION_1_59();
        sub_1C122772C(v97, v98);
        sub_1C1265DE0();
        v99 = *(v94 + 8);
        v99(v43, v5);
        sub_1C0FD1A5C(v4, &qword_1EBE902F0);
        v99(v85, v5);
        sub_1C0FD1A5C(v18, &qword_1EBE902F0);
        goto LABEL_37;
      }

      v113 = v85;
LABEL_35:
      sub_1C0FD1A5C(v4, &qword_1EBE902F0);
      (*(v116 + 8))(v113, v5);
      goto LABEL_36;
    }
  }

  v117(v38, v51, v5);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v5);
  v64 = *(v44 + 48);
  v22 = v108;
  sub_1C10B1CE8(v110, v108);
  sub_1C10B1CE8(v38, &v22[v64]);
  OUTLINED_FUNCTION_17_1(v22);
  if (v52)
  {
    sub_1C0FD1A5C(v38, &qword_1EBE902F0);
    OUTLINED_FUNCTION_17_1(&v22[v64]);
    if (v52)
    {
      sub_1C0FD1A5C(v22, &qword_1EBE902F0);
      goto LABEL_37;
    }

    goto LABEL_19;
  }

  sub_1C10B1CE8(v22, v107);
  OUTLINED_FUNCTION_17_1(&v22[v64]);
  if (v65)
  {
    v43 = v38;
    goto LABEL_18;
  }

  v87 = v116;
  v88 = OUTLINED_FUNCTION_2_37();
  v89(v88);
  OUTLINED_FUNCTION_1_59();
  sub_1C122772C(v90, v91);
  LODWORD(v102) = sub_1C1265DE0();
  v103 = v46;
  v92 = *(v87 + 8);
  v92(v43, v5);
  v43 = &qword_1EBE902F0;
  sub_1C0FD1A5C(v38, &qword_1EBE902F0);
  v93 = OUTLINED_FUNCTION_18();
  (v92)(v93);
  v51 = v114;
  v4 = v115;
  sub_1C0FD1A5C(v22, &qword_1EBE902F0);
  if ((v102 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_37:
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1225818()
{
  sub_1C1224ADC();
  if (v1 != 1)
  {
    return 0;
  }

  return sub_1C1225C6C();
}

unint64_t sub_1C12258C8(unint64_t a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(unint64_t, void, __n128, __n128))
{
  *&result = COERCE_DOUBLE(a3());
  if (a2)
  {
    if (v7)
    {
      return result;
    }
  }

  else if ((v7 & 1) == 0)
  {
    v8.n128_u64[0] = result;
    v9.n128_u64[0] = a1;
    if (*&a1 == *&result)
    {
      return result;
    }
  }

  *&result = COERCE_DOUBLE(a4(a1, a2 & 1, v8, v9));
  return result;
}

uint64_t sub_1C1225978(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = sub_1C12259E0();
  OUTLINED_FUNCTION_32(v2, v3);
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C12259F4()
{
  OUTLINED_FUNCTION_51_9();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_84();
  v4 = sub_1C122772C(v2, v3);
  OUTLINED_FUNCTION_14_27(v4, v5, v6, v7, v8, v9, v10, v11, v13, v1);
  sub_1C1261F30();

  return *(v1 + *v0);
}

uint64_t sub_1C1225AE0(uint64_t result, int a2, void *a3)
{
  v4 = v3 + *a3;
  v5 = *(v4 + 8);
  if (v5 & 1) != 0 || (a2)
  {
    if (v5 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*v4 == *&result)
  {
LABEL_4:
    *v4 = *&result;
    *(v4 + 8) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1227794();
  *&result = COERCE_DOUBLE();
  return result;
}

void sub_1C1225BB0(char a1)
{
  v1 = a1 & 1;
  sub_1C1225C6C();
  OUTLINED_FUNCTION_15_0();
  if (!v2)
  {

    sub_1C1225C80(v1);
  }
}

uint64_t (*sub_1C1225C00(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = sub_1C1225C6C();
  OUTLINED_FUNCTION_4_5(v1);
  return sub_1C1225C40;
}

uint64_t sub_1C1225CA8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_1_0();
    sub_1C1227794();
  }

  return result;
}

double static OneUpChromeSpec.landscapeScrubberTopPadding(verticalSizeClass:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  v3 = OUTLINED_FUNCTION_15(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_30();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  sub_1C10B1CE8(a1, &v19 - v8);
  v10 = sub_1C1263EB0();
  v11 = 8.0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v12 = OUTLINED_FUNCTION_18();
    sub_1C10B1CE8(v12, v13);
    OUTLINED_FUNCTION_1();
    v15 = v14;
    v17 = (*(v16 + 88))(v6, v10);
    if (v17 != *MEMORY[0x1E697FF38])
    {
      v11 = 12.0;
      if (v17 != *MEMORY[0x1E697FF40])
      {
        (*(v15 + 8))(v6, v10);
        v11 = 8.0;
      }
    }
  }

  sub_1C0FD1A5C(v9, &qword_1EBE902F0);
  return v11;
}

double sub_1C1225F1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  OUTLINED_FUNCTION_15(v1);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_11();
  sub_1C12265E0();
  v3 = static OneUpChromeSpec.landscapeScrubberTopPadding(verticalSizeClass:)(v0);
  v4 = OUTLINED_FUNCTION_20_15();
  sub_1C0FD1A5C(v4, v5);
  return v3;
}

void sub_1C1225FC0(double a1)
{
  if (sub_1C122607C() != a1)
  {

    sub_1C1226090(a1);
  }
}

uint64_t sub_1C1226010(uint64_t a1)
{
  OUTLINED_FUNCTION_44_0(a1);
  *v1 = sub_1C122607C();
  return OUTLINED_FUNCTION_17_3();
}

void *sub_1C12260B8(void *result, double a2)
{
  if (*(v2 + *result) == a2)
  {
    *(v2 + *result) = a2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_9_1();
    *(v5 - 8) = a2;
    sub_1C1227794();
  }

  return result;
}

uint64_t (*sub_1C1226150())()
{
  OUTLINED_FUNCTION_42_8();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C12261AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1226204();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1226204()
{
  swift_getKeyPath();
  v5 = v0;
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v1, v2);
  OUTLINED_FUNCTION_6();

  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec__useSystemBars;
  OUTLINED_FUNCTION_7_4();
  return *(v5 + v3);
}

uint64_t sub_1C1226294(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec__useSystemBars;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_29_12();
  }

  return result;
}

uint64_t sub_1C1226338(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec__useSystemBars;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_1C1226394(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_84();
  v6 = sub_1C122772C(v4, v5);
  OUTLINED_FUNCTION_1_6(v6);

  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v3[7] = sub_1C1226150();
  return sub_1C122647C;
}

uint64_t sub_1C12264B8(void *a1)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  OUTLINED_FUNCTION_15(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_52_6(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_22_23(v5);
  sub_1C12265E0();
  return OUTLINED_FUNCTION_36();
}

void sub_1C1226554(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_55_4(a1);
  if (v5)
  {
    sub_1C10B1CE8(v4, v1);
    v3(v1);
    sub_1C0FD1A5C(v2, &qword_1EBE902F0);
  }

  else
  {
    v3(v4);
  }

  free(v2);

  free(v1);
}

void sub_1C1226674()
{
  OUTLINED_FUNCTION_23();
  v37 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C1263EB0();
  OUTLINED_FUNCTION_1();
  v35 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_7();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  v16 = OUTLINED_FUNCTION_15(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v19 = v17 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v33[-v22];
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v33[-v25];
  v36 = v0;
  v4(v24);
  v27 = *(v13 + 56);
  sub_1C10B1CE8(v6, v1);
  sub_1C10B1CE8(v26, v1 + v27);
  OUTLINED_FUNCTION_61(v1);
  if (v28)
  {
    sub_1C0FD1A5C(v26, &qword_1EBE902F0);
    OUTLINED_FUNCTION_61(v1 + v27);
    if (v28)
    {
      sub_1C0FD1A5C(v1, &qword_1EBE902F0);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1C10B1CE8(v1, v23);
  OUTLINED_FUNCTION_61(v1 + v27);
  if (v28)
  {
    sub_1C0FD1A5C(v26, &qword_1EBE902F0);
    (*(v35 + 8))(v23, v7);
LABEL_9:
    sub_1C0FD1A5C(v1, &qword_1EBE902E8);
LABEL_10:
    sub_1C10B1CE8(v6, v19);
    v37(v19);
    goto LABEL_11;
  }

  v29 = v35;
  (*(v35 + 32))(v12, v1 + v27, v7);
  OUTLINED_FUNCTION_1_59();
  sub_1C122772C(v30, v31);
  v34 = sub_1C1265DE0();
  v32 = *(v29 + 8);
  v32(v12, v7);
  sub_1C0FD1A5C(v26, &qword_1EBE902F0);
  v32(v23, v7);
  sub_1C0FD1A5C(v1, &qword_1EBE902F0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_1C0FD1A5C(v6, &qword_1EBE902F0);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C12269C8(void *a1)
{
  OUTLINED_FUNCTION_14_3(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  OUTLINED_FUNCTION_15(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_52_6(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_22_23(v5);
  sub_1C1226AE4();
  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1C1226A70(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_42_8();
  swift_beginAccess();
  sub_1C1228FD0(a1, v2 + v4);
  swift_endAccess();
  sub_1C1224DA8();
  return sub_1C0FD1A5C(a1, &qword_1EBE902F0);
}

uint64_t sub_1C1226B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_11();
  sub_1C10B1CE8(a1, v5);
  return a5(v5);
}

void sub_1C1226BD8()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_7();
  v10 = *v5;
  swift_beginAccess();
  sub_1C10B1CE8(v0 + v10, v1);
  LOBYTE(v10) = sub_1C12278A0(v1, v7);
  sub_1C0FD1A5C(v1, &qword_1EBE902F0);
  if (v10)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_38_11();
  }

  else
  {
    sub_1C10B1CE8(v7, v1);
    v3(v1);
  }

  sub_1C0FD1A5C(v7, &qword_1EBE902F0);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1226D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_7();
  sub_1C10B1CE8(a2, v3);
  return a3(v3);
}

uint64_t OneUpChromeSpec.__allocating_init()()
{
  v0 = swift_allocObject();
  OneUpChromeSpec.init()();
  return v0;
}

void OneUpChromeSpec.init()()
{
  OUTLINED_FUNCTION_23();
  v1 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13();
  v5 = v4 - v3;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 29) = 0;
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 40) = *MEMORY[0x1E69DDCE0];
  *(v0 + 56) = v6;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  v7 = (v4 - v3 + *(v2 + 48));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0);
  v9 = *(v8 + 48);
  *v7 = sub_1C1265160();
  v10 = *MEMORY[0x1E6981DF0];
  v11 = sub_1C1265A90();
  OUTLINED_FUNCTION_3();
  v13 = *(v12 + 104);
  v13(v7 + v9, v10, v11);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v8);
  *v5 = 0;
  *(v5 + 8) = xmmword_1C12C9BC0;
  *(v5 + 24) = 1;
  *(v5 + 32) = 0x3FE4CCCCCCCCCCCDLL;
  *(v5 + 40) = 0;
  sub_1C122783C(v5, v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___topImmersiveGradientSpec);
  v17 = (v5 + *(v2 + 48));
  v18 = *(v8 + 48);
  *v17 = sub_1C1265160();
  v13(v17 + v18, v10, v11);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);
  *v5 = 0;
  *(v5 + 8) = xmmword_1C12C9BC0;
  *(v5 + 24) = 1;
  *(v5 + 32) = 0x3FE4CCCCCCCCCCCDLL;
  *(v5 + 40) = 0;
  sub_1C122783C(v5, v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___bottomImmersiveGradientSpec);
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___topLegibilityHeight) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___bottomLegibilityHeight) = 0;
  v22 = v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___videoScrubberMaxWidth;
  *v22 = 0;
  *(v22 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___videoScrubberHorizontalOffset) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___videoScrubberButtonPlacement) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___isVideoScrubberOverContent) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___viewAspectRatio) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___wantsBadgesInSeparateBar) = 0;
  v23 = v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___maxTitleWidth;
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___wantsLightTitleAppearance) = 0;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___chromeOpacity) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec__useSystemBars) = 0;
  v24 = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___verticalSizeClass;
  v25 = sub_1C1263EB0();
  __swift_storeEnumTagSinglePayload(v0 + v24, 1, 1, v25);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___horizontalSizeClass, 1, 1, v25);
  sub_1C1261F60();
  OUTLINED_FUNCTION_22_0();
}

uint64_t static OneUpChromeSpec.bottomLegibilityHeight(_:layoutMarginBottom:verticalSizeClass:isElementVisible:)(char a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_11();
  if (a1)
  {
    v18 = 3;
    if (a3(&v18) & 1) != 0 || (v17 = 4, result = a3(&v17), (result))
    {
      v9 = sub_1C1263EB0();
      OUTLINED_FUNCTION_3();
      v10 = OUTLINED_FUNCTION_20_15();
      v11(v10);
      OUTLINED_FUNCTION_29_2();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
      static OneUpChromeSpec.landscapeScrubberTopPadding(verticalSizeClass:)(v3);
      return sub_1C0FD1A5C(v3, &qword_1EBE902F0);
    }
  }

  else
  {
    v16 = 2;
    a3(&v16);
    v15 = 3;
    return a3(&v15);
  }

  return result;
}

uint64_t static OneUpChromeSpec.contentInsetsForToolbarAxis(_:horizontalSizeClass:verticalSizeClass:layoutMargins:viewAspectRatio:)(int a1, uint64_t a2, uint64_t a3, char *a4)
{
  v40 = a1;
  v8 = sub_1C1263EB0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_26_11();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  v13 = OUTLINED_FUNCTION_15(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = *a4;
  v22 = v10[2];
  v22(&v39 - v19, a3, v8, v18);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v8);
  v39 = a2;
  (v22)(v16, a2, v8);
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v8);
  v41 = v21;
  static OneUpChromeSpec.shouldShowBadgesInSeparateBar(verticalSizeClass:horizontalSizeClass:aspectRatio:)();
  sub_1C0FD1A5C(v16, &qword_1EBE902F0);
  sub_1C0FD1A5C(v20, &qword_1EBE902F0);
  if (v40)
  {
    (v22)(v20, a3, v8);
    OUTLINED_FUNCTION_29_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v8);
    static OneUpChromeSpec.landscapeScrubberTopPadding(verticalSizeClass:)(v20);
    return sub_1C0FD1A5C(v20, &qword_1EBE902F0);
  }

  else
  {
    v33 = *MEMORY[0x1E697FF40];
    v34 = v10[13];
    v34(v4, v33, v8);
    v35 = sub_1C1263EA0();
    v36 = v10[1];
    v37 = OUTLINED_FUNCTION_20_15();
    result = v36(v37);
    if (v35)
    {
      v34(v4, v33, v8);
      sub_1C1263EA0();
      v38 = OUTLINED_FUNCTION_20_15();
      return v36(v38);
    }
  }

  return result;
}

uint64_t sub_1C122766C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C12276C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C122772C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1227794()
{
  OUTLINED_FUNCTION_0_84();
  sub_1C122772C(v0, v1);
  return sub_1C1261F20();
}

uint64_t sub_1C122783C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C12278A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263EB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1C10B1CE8(a1, &v20 - v13);
  sub_1C10B1CE8(a2, &v14[v15]);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_1C10B1CE8(v14, v10);
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1C122772C(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FD1A5C(v14, &qword_1EBE902F0);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FD1A5C(v14, &qword_1EBE902E8);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FD1A5C(v14, &qword_1EBE902F0);
  v16 = 0;
  return v16 & 1;
}

uint64_t OneUpChromeSpec.deinit()
{
  sub_1C0FCF004(*(v0 + 16));
  sub_1C122766C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___topImmersiveGradientSpec);
  sub_1C122766C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___bottomImmersiveGradientSpec);
  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___verticalSizeClass, &qword_1EBE902F0);
  sub_1C0FD1A5C(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___horizontalSizeClass, &qword_1EBE902F0);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore15OneUpChromeSpec___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t OneUpChromeSpec.__deallocating_deinit()
{
  OneUpChromeSpec.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t EnvironmentValues.oneUpChromeSpec.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C12223AC();
  sub_1C12637F0();
  return OUTLINED_FUNCTION_17_3();
}

uint64_t sub_1C1227CEC(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1C1263800();
  }

  sub_1C1263800();
}

unint64_t sub_1C1227D84()
{
  result = qword_1EBE98028;
  if (!qword_1EBE98028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98028);
  }

  return result;
}

unint64_t sub_1C1227DDC()
{
  result = qword_1EBE98030;
  if (!qword_1EBE98030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98030);
  }

  return result;
}

void sub_1C1227E38()
{
  type metadata accessor for PhotosBlurLegibilityGradientSpec(319);
  if (v0 <= 0x3F)
  {
    sub_1C1228DD0();
    if (v1 <= 0x3F)
    {
      sub_1C1261F70();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C1228DD0()
{
  if (!qword_1EDE7BAA8)
  {
    sub_1C1263EB0();
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE7BAA8);
    }
  }
}

_BYTE *sub_1C1228E38(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1C1228F24()
{
  type metadata accessor for OneUpChromeSpec();
  v0 = swift_allocObject();
  OneUpChromeSpec.init()();
  qword_1EDE7D6D0 = v0;
}

uint64_t sub_1C1228F64@<X0>(void *a1@<X8>)
{
  if (qword_1EDE7D6C8 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE7D6D0;
}

uint64_t sub_1C1228FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t keypath_get_47Tm()
{
  OUTLINED_FUNCTION_13_1();
  v1 = v0();
  return OUTLINED_FUNCTION_32(v1, v2);
}

uint64_t sub_1C12291FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1C1229284()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_11()
{

  return sub_1C1227794();
}

uint64_t PhotosMockCollection.__allocating_init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:isContentPrivacyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, __int16 a10)
{
  HIDWORD(v20) = a8;
  OUTLINED_FUNCTION_9_40();
  v12 = swift_allocObject();
  LOWORD(v18) = a10;
  v13 = OUTLINED_FUNCTION_8_42();
  PhotosMockCollection.init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:isContentPrivacyEnabled:)(v13, v14, v15, v16, a5, a6, a7, HIDWORD(v20), a9, v18, a7, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, HIBYTE(v30));
  return v12;
}

uint64_t PhotosMockMemory.__allocating_init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:titleStyle:titleLayout:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_9_40();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_8_42();
  PhotosMockMemory.init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:titleStyle:titleLayout:isContentPrivacyEnabled:)(v1);
  return v0;
}