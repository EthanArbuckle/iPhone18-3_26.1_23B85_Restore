void PhotosMockCollection.init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:isContentPrivacyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, unsigned __int8 a23)
{
  OUTLINED_FUNCTION_23();
  v25 = v24;
  v50 = v26;
  v51 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v54 = a23;
  v52 = v36;
  v53 = a22;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  OUTLINED_FUNCTION_15(v37);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v50 - v39;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  v41 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__dateInterval;
  v42 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v23 + v41, 1, 1, v42);
  *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset) = 0;
  v43 = v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__count;
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1C1261F60();

  *(v23 + 16) = v35;
  *(v23 + 24) = v33;
  v44 = 0x80000001C126AE30;
  v45 = 0xD000000000000013;
  if (v33)
  {
    v45 = v35;
    v44 = v33;
  }

  *(v23 + 32) = v45;
  *(v23 + 40) = v44;

  *(v23 + 48) = v31;
  *(v23 + 56) = v29;

  v46 = v51;
  *(v23 + 64) = v50;
  *(v23 + 72) = v46;
  sub_1C109CF2C(v25, v40);
  sub_1C0FFC7B0(v23 + v41, &qword_1EBE929A0);
  sub_1C11DA978(v40, v23 + v41);
  *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isFavorite) = v52;
  if (a21)
  {
    *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAssets) = a21;
    if (sub_1C0FF7688(a21))
    {
      sub_1C0FF768C(0);
      if ((a21 & 0xC000000000000001) != 0)
      {

        v47 = MEMORY[0x1C68F02D0](0, a21);
      }

      else
      {
        v47 = *(a21 + 32);
      }
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v47 = 0;
    *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAssets) = MEMORY[0x1E69E7CC0];
  }

  sub_1C0FFC7B0(v25, &qword_1EBE929A0);
  v48 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset;

  *(v23 + v48) = v47;
  *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isFolder) = v53 & 1;
  v49 = v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__count;
  *v49 = 0;
  *(v49 + 8) = 1;
  *(v23 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isContentPrivacyEnabled) = v54 & 1;
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C12297B8()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_26_16();
  }

  else
  {
    *(v1 + 16) = v2;
    *(v1 + 24) = v0;
  }
}

uint64_t sub_1C1229864()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  v3 = *(v1 + 32) == v2 && *(v1 + 40) == v0;
  if (v3 || (OUTLINED_FUNCTION_15_3(), (sub_1C1266D50() & 1) != 0))
  {
    *(v1 + 32) = v2;
    *(v1 + 40) = v0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_26_16();
  }
}

uint64_t sub_1C1229920()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_26_16();
  }

  else
  {
    *(v1 + 48) = v2;
    *(v1 + 56) = v0;
  }
}

uint64_t sub_1C12299CC()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_26_16();
  }

  else
  {
    *(v1 + 64) = v2;
    *(v1 + 72) = v0;
  }
}

void sub_1C1229A78()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__dateInterval;
  swift_beginAccess();
  sub_1C109CF2C(v0 + v7, v6);
  v8 = sub_1C122BB38(v6, v2);
  sub_1C0FFC7B0(v6, &qword_1EBE929A0);
  if (v8)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_2_7();
    *(v10 - 16) = v0;
    *(v10 - 8) = v2;
    OUTLINED_FUNCTION_26_16();
  }

  else
  {
    sub_1C109CF2C(v2, v6);
    swift_beginAccess();
    sub_1C109CD00(v6, v0 + v7);
    swift_endAccess();
  }

  sub_1C0FFC7B0(v2, &qword_1EBE929A0);
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1229C0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAssets;
  OUTLINED_FUNCTION_9_5();

  v5 = sub_1C0FEAAF0(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_7();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    OUTLINED_FUNCTION_26_16();
  }
}

void sub_1C1229CDC(void *a1)
{
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset;
  OUTLINED_FUNCTION_9_5();
  v4 = *(v1 + v3);
  v5 = v4;
  LOBYTE(v4) = sub_1C0FDFE74(v4, a1);

  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_2_7();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    OUTLINED_FUNCTION_26_16();
  }

  else
  {
    v8 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

uint64_t sub_1C1229DD0(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = OUTLINED_FUNCTION_9_5();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v7 - 16) = v2;
    *(v7 - 8) = v3;
    sub_1C122BA90();
  }

  return result;
}

uint64_t sub_1C1229E78(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__count;
  result = swift_beginAccess();
  if ((*(v5 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v5 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v5 = a1;
    *(v5 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_16();
}

uint64_t sub_1C1229F88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1229FCC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1229FCC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C122A068()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1073F50();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122A134@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C122A1A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C122A1A0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C122A23C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122A308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C122A34C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C122A34C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C122A3E8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122A4B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C122A4F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C122A4F8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C122A594()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE88E4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122A660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C122A6EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C122A6A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C122A6EC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_5_5();
}

uint64_t sub_1C122A788()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_26_16();
  }

  else
  {
    *(v1 + 80) = v2;
    *(v1 + 88) = v0;
  }
}

uint64_t sub_1C122A834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
}

void sub_1C122A8A0()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10746C8();
  OUTLINED_FUNCTION_18_4();
}

void sub_1C122A9DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C109CF2C(a1, &v4 - v3);
  sub_1C1229A78();
}

uint64_t sub_1C122AA70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v6 = sub_1C122C890(v4, v5);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__dateInterval;
  OUTLINED_FUNCTION_7_4();
  return sub_1C109CF2C(v2 + v14, a1);
}

uint64_t sub_1C122AB14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C109CF2C(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__dateInterval;
  swift_beginAccess();
  sub_1C109CD00(v6, a1 + v7);
  return swift_endAccess();
}

void sub_1C122ABD8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122A96C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122ACF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C122AD48();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C122AD5C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isFavorite;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C122ADB8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122ACA4();
  OUTLINED_FUNCTION_18_4();
}

void *sub_1C122AED0@<X0>(void *a1@<X8>)
{
  result = sub_1C122AF2C();
  *a1 = result;
  return result;
}

void sub_1C122AEFC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C1229CDC(v1);
}

void *sub_1C122AF2C()
{
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v4 = sub_1C122C890(v2, v3);
  OUTLINED_FUNCTION_0_1(v4, v5, v6, v7, v8, v9, v10, v11, v16, v0);
  sub_1C1261F30();

  v12 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset;
  OUTLINED_FUNCTION_7_4();
  v13 = *(v1 + v12);
  v14 = v13;
  return v13;
}

void sub_1C122AFCC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAsset;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void sub_1C122B03C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122AE84();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122B154@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C122B1AC();
  *a1 = result;
  return result;
}

uint64_t sub_1C122B1AC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
}

uint64_t sub_1C122B248(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__keyAssets;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void sub_1C122B2B8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122B108();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122B3D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C122B428();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C122B43C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isFolder;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C122B498()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122B384();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122B5B0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C122B618();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C122B618()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  v3 = sub_1C122C890(v1, v2);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  v11 = v0 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__count;
  swift_beginAccess();
  return *v11;
}

uint64_t sub_1C122B6C4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a1 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__count;
  result = swift_beginAccess();
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  return result;
}

void sub_1C122B72C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122B564();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122B864@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C122B8BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C122B8D0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_85();
  sub_1C122C890(v4, v5);
  sub_1C1261F30();

  v6 = *a2;
  OUTLINED_FUNCTION_7_4();
  return *(v2 + v6);
}

uint64_t sub_1C122B968(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__isContentPrivacyEnabled;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C122B9C4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_85();
  v5 = sub_1C122C890(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3();

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C122B818();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C122BA90()
{
  OUTLINED_FUNCTION_0_85();
  sub_1C122C890(v0, v1);
  return sub_1C1261F20();
}

uint64_t sub_1C122BB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261990();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96F00);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1C109CF2C(a1, &v20 - v12);
  sub_1C109CF2C(a2, &v13[v15]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_1C109CF2C(v13, v10);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C122C890(&qword_1EDE82F50, MEMORY[0x1E6968130]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FFC7B0(v13, &qword_1EBE929A0);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FFC7B0(v13, &qword_1EBE96F00);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FFC7B0(v13, &qword_1EBE929A0);
  v16 = 0;
  return v16 & 1;
}

uint64_t PhotosMockCollection.deinit()
{

  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection__dateInterval, &qword_1EBE929A0);

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore20PhotosMockCollection___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

void (*sub_1C122BEE8(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C122B498();
  v2[4] = v3;
  return sub_1C1077800;
}

void (*sub_1C122BF6C(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C122B9C4();
  v2[4] = v3;
  return sub_1C10768AC;
}

void *sub_1C122C05C@<X0>(void *a1@<X8>)
{
  result = sub_1C122AF2C();
  *a1 = result;
  return result;
}

void PhotosMockMemory.__allocating_init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_23();
  v10 = v0;
  v2 = v1;
  v9 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C109CF2C(v2, &v9 - v8);
  v12 = 0;
  v11 = 768;
  type metadata accessor for PhotosMockMemory(0);
  swift_allocObject();
  PhotosMockMemory.init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:titleStyle:titleLayout:isContentPrivacyEnabled:)(v5);
  sub_1C0FFC7B0(v2, &qword_1EBE929A0);
  OUTLINED_FUNCTION_37_9();
  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosMockMemory.TitleStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C122C6B0()
{
  PhotosMockCollection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C122C838(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE98080, type metadata accessor for PhotosMockCollection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C122C890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C122C8D8(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE98088, type metadata accessor for PhotosMockCollection);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C122C978(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE98090, type metadata accessor for PhotosMockCollection);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C122CA18(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE980A0, type metadata accessor for PhotosMockTrip);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C122CA90(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE980A8, type metadata accessor for PhotosMockEvent);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C122CB0C()
{
  result = qword_1EBE980B0;
  if (!qword_1EBE980B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE980B0);
  }

  return result;
}

uint64_t sub_1C122CB60(uint64_t a1)
{
  result = sub_1C122C890(&qword_1EBE980B8, type metadata accessor for PhotosMockMemory);
  *(a1 + 8) = result;
  return result;
}

void sub_1C122CBC0()
{
  sub_1C0FA4124();
  if (v0 <= 0x3F)
  {
    sub_1C1261F70();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for PhotosMockMemory.TitleStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosMockMemory.TitleStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C122D670()
{
  OUTLINED_FUNCTION_1();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_1C1262CE0();
  sub_1C12649D0();
}

double PhotosNotificationStackView.init(notifications:id:expanded:notificationView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&result = 3;
  *(a8 + 56) = xmmword_1C12CA7C0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 16) = a6;
  *(a8 + 24) = a7;
  return result;
}

uint64_t sub_1C122D7C0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  MEMORY[0x1C68EEF20](&v5, v3);
  return v5;
}

uint64_t sub_1C122D818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  sub_1C1265610();
  return v1;
}

uint64_t PhotosNotificationStackView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8);
  v4 = a1[2];
  swift_getTupleTypeMetadata2();
  v5 = sub_1C12661A0();
  v7 = a1[3];
  v6 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91538);
  OUTLINED_FUNCTION_11_0();
  v63 = v6;
  v66 = sub_1C1263190();
  v67 = sub_1C1263190();
  v8 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  OUTLINED_FUNCTION_11_0();
  v68 = v8;
  v9 = sub_1C1263190();
  OUTLINED_FUNCTION_1_55();
  WitnessTable = swift_getWitnessTable();
  v11 = a1[6];
  __dst[0] = v5;
  __dst[1] = v7;
  v64 = v7;
  v69 = v9;
  __dst[2] = v9;
  __dst[3] = WitnessTable;
  v62 = v11;
  __dst[4] = v11;
  v12 = sub_1C12656A0();
  OUTLINED_FUNCTION_6_1();
  sub_1C0FDB6D4(v13, qword_1EBE90EF8);
  v65 = v12;
  v14 = sub_1C1262E70();
  OUTLINED_FUNCTION_1();
  v74 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v70 = v61 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210);
  v18 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v80 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v72 = v61 - v21;
  v22 = v4;
  v23 = sub_1C12661A0();
  v24 = a1[5];
  v99[9] = v24;
  OUTLINED_FUNCTION_6_42();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v78 = v23;
  v71 = v25;
  v26 = sub_1C12639F0();
  v81 = v18;
  v76 = v26;
  v75 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v79 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_3();
  v73 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v77 = v61 - v31;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v99, v2, 0x48uLL);
  if (sub_1C122D7C0())
  {
    v99[0] = sub_1C1263AA0();
    v99[1] = 0;
    LOBYTE(v99[2]) = 1;
    sub_1C10228C4();
  }

  else
  {
    v99[0] = 0x402E000000000000;
    v99[1] = __dst[7];
    sub_1C122E040();
  }

  v32 = sub_1C1265A70();
  v61[2] = v32;
  OUTLINED_FUNCTION_10_36();
  if (sub_1C122D7C0())
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = __dst[8];
  }

  OUTLINED_FUNCTION_10_36();
  v34 = sub_1C122D7C0();
  v61[1] = v61;
  v99[0] = v32;
  v35 = MEMORY[0x1EEE9AC00](v34).n128_u64[0];
  *&v36 = v22;
  *(&v36 + 1) = v64;
  *&v37 = v63;
  *(&v37 + 1) = v24;
  *&v61[-10] = v36;
  *&v61[-8] = v37;
  v38 = a1[7];
  v61[-6] = v62;
  v61[-5] = v38;
  v61[-4] = __dst;
  v61[-3] = v33;
  v61[-2] = v35;
  v39 = sub_1C1022650();
  v40 = sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538);
  v97 = v38;
  v98 = v40;
  v95 = swift_getWitnessTable();
  v96 = MEMORY[0x1E697E070];
  v93 = swift_getWitnessTable();
  v94 = MEMORY[0x1E697E5C0];
  v41 = swift_getWitnessTable();
  v42 = sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8);
  v91 = v41;
  v92 = v42;
  v90 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_13();
  v43 = v65;
  v44 = swift_getWitnessTable();
  v45 = v70;
  sub_1C121710C(sub_1C122E668, &v61[-12], MEMORY[0x1E6981D78], v43, v39, v44, v70);
  sub_1C1265A30();
  OUTLINED_FUNCTION_10_36();
  LOBYTE(v87) = sub_1C122D7C0() & 1;
  OUTLINED_FUNCTION_5_0();
  v88 = sub_1C0FDB6D4(v46, v47);
  v89 = v44;
  OUTLINED_FUNCTION_12_0();
  v48 = swift_getWitnessTable();
  v49 = v72;
  sub_1C1265040();

  (*(v74 + 8))(v45, v14);
  sub_1C1265A30();
  v99[0] = __dst[0];
  v87 = __dst[0];
  v50 = sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210);
  v85 = v48;
  v86 = v50;

  v51 = v81;
  v52 = swift_getWitnessTable();
  v53 = v73;
  v54 = v78;
  sub_1C1265040();

  (*(*(v54 - 8) + 8))(v99, v54);
  (*(v80 + 8))(v49, v51);
  v55 = swift_getWitnessTable();
  v83 = v52;
  v84 = v55;
  v56 = v75;
  v57 = swift_getWitnessTable();
  v58 = v77;
  sub_1C0FDBA4C(v53, v56, v57);
  v59 = *(v79 + 8);
  v59(v53, v56);
  sub_1C0FDBA4C(v58, v56, v57);
  return (v59)(v58, v56);
}

unint64_t sub_1C122E040()
{
  result = qword_1EBE98100[0];
  if (!qword_1EBE98100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE98100);
  }

  return result;
}

uint64_t sub_1C122E094@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v46 = a8;
  v57 = a9;
  v58 = a7;
  v44 = a6;
  *&v45 = a2;
  v43 = a1;
  swift_getTupleTypeMetadata2();
  v55 = sub_1C12661A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91538);
  v49 = sub_1C1263190();
  v51 = sub_1C1263190();
  v50 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  v52 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  *&v74 = v55;
  *(&v74 + 1) = a4;
  *&v75 = v52;
  *(&v75 + 1) = WitnessTable;
  v76 = a7;
  v47 = sub_1C12656A0();
  v56 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v41 - v18;
  *&v74 = *a1;
  sub_1C12661A0();

  swift_getWitnessTable();
  sub_1C1266360();
  v45 = v80;
  v78 = v80;
  v79 = v81;
  v19 = sub_1C1266800();
  v20 = swift_getWitnessTable();
  MEMORY[0x1C68EF8D0](&v74, v19, v20);
  swift_unknownObjectRelease();
  v80 = v74;
  v81 = v75;
  sub_1C1266BA0();
  swift_getWitnessTable();
  *&v80 = sub_1C12661C0();
  v59 = a3;
  v60 = a4;
  v21 = a5;
  v61 = a5;
  v22 = v44;
  v62 = v44;
  v63 = v58;
  v23 = v46;
  v64 = v46;
  swift_getKeyPath();
  v24 = v43;
  v42 = a3;
  sub_1C1266AF0();
  *&v45 = sub_1C12669F0();

  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  v26 = a4;
  *(v25 + 32) = v21;
  *(v25 + 40) = v22;
  v27 = v58;
  *(v25 + 48) = v58;
  *(v25 + 56) = v23;
  memcpy((v25 + 64), v24, 0x48uLL);
  *(v25 + 136) = a10;
  v28 = swift_allocObject();
  v29 = v42;
  v28[2] = v42;
  v28[3] = v26;
  v28[4] = v21;
  v28[5] = v22;
  v28[6] = v27;
  v28[7] = v23;
  v28[8] = sub_1C1230F20;
  v28[9] = v25;
  *&v74 = v29;
  *(&v74 + 1) = v26;
  *&v75 = v21;
  *(&v75 + 1) = v22;
  v76 = v27;
  v77 = v23;
  v30 = type metadata accessor for PhotosNotificationStackView();
  (*(*(v30 - 8) + 16))(&v74, v24, v30);
  v31 = sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538);
  v72 = v23;
  v73 = v31;
  v70 = swift_getWitnessTable();
  v71 = MEMORY[0x1E697E070];
  v68 = swift_getWitnessTable();
  v69 = MEMORY[0x1E697E5C0];
  v32 = swift_getWitnessTable();
  v33 = sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8);
  v66 = v32;
  v67 = v33;
  v40 = swift_getWitnessTable();
  v34 = v48;
  sub_1C1265680();
  v65 = v40;
  v35 = v47;
  v36 = swift_getWitnessTable();
  v37 = v53;
  sub_1C0FDBA4C(v34, v35, v36);
  v38 = *(v56 + 8);
  v38(v34, v35);
  sub_1C0FDBA4C(v37, v35, v36);
  return (v38)(v37, v35);
}

uint64_t sub_1C122E680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, long double a10@<D0>, uint64_t a11)
{
  v75 = a5;
  v78 = a2;
  v72 = a1;
  v95 = a9;
  v94 = sub_1C1263840();
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v89 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1C1263210();
  v87 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v86 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE981D8);
  v90 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v88 = &v68 - v19;
  v73 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91538);
  v23 = sub_1C1263190();
  v74 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v71 = &v68 - v24;
  v25 = sub_1C1263190();
  v76 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v70 = &v68 - v26;
  v77 = v27;
  v28 = sub_1C1263190();
  v82 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v79 = &v68 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  v83 = v28;
  v85 = sub_1C1263190();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v80 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v81 = &v68 - v32;
  v33 = a3[7];
  __dst[0] = a4;
  __dst[1] = v75;
  __dst[2] = a6;
  __dst[3] = a7;
  __dst[4] = a8;
  __dst[5] = a11;
  v34 = type metadata accessor for PhotosNotificationStackView();
  v35 = v72;
  if (v33 >= v72)
  {
    v36 = v72;
  }

  else
  {
    v36 = v33;
  }

  v37 = pow(a10, v36);
  v69 = a3;
  v38 = a3[2];
  memcpy(__dst, a3, sizeof(__dst));
  v75 = v34;
  v39 = sub_1C122D818();
  v38(v78, v39, v41, v40 & 1);

  v42 = v71;
  v43 = v70;
  sub_1C1264F20();
  (*(v73 + 8))(v22, a6);
  v44 = sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538);
  v102 = a11;
  v103 = v44;
  WitnessTable = swift_getWitnessTable();
  sub_1C1265B90();
  MEMORY[0x1C68EE3D0](v23, WitnessTable, v37, v37, v46, v47);
  (*(v74 + 8))(v42, v23);
  if (*(v69 + 7) <= v35)
  {
    memcpy(__dst, v69, sizeof(__dst));
    sub_1C122D7C0();
  }

  v100 = WitnessTable;
  v101 = MEMORY[0x1E697E070];
  v48 = v77;
  v49 = swift_getWitnessTable();
  v50 = v79;
  sub_1C1264F50();
  (*(v76 + 8))(v43, v48);
  sub_1C1265B90();
  v51 = v86;
  sub_1C1263220();
  v52 = v89;
  sub_1C1263830();
  v53 = sub_1C1230F8C(&qword_1EBE92E80, MEMORY[0x1E697E898]);
  v54 = sub_1C1230F8C(&qword_1EDE7BC98, MEMORY[0x1E697F260]);
  v55 = v88;
  v56 = v92;
  v57 = v94;
  sub_1C1262980();
  (*(v91 + 8))(v52, v57);
  (*(v87 + 8))(v51, v56);
  v98 = v49;
  v99 = MEMORY[0x1E697E5C0];
  v58 = v83;
  v59 = swift_getWitnessTable();
  __dst[0] = v56;
  __dst[1] = v57;
  __dst[2] = v53;
  __dst[3] = v54;
  swift_getOpaqueTypeConformance2();
  v60 = v80;
  v61 = v93;
  sub_1C122D670();
  (*(v90 + 8))(v55, v61);
  (*(v82 + 8))(v50, v58);
  v62 = sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8);
  v96 = v59;
  v97 = v62;
  v63 = v85;
  v64 = swift_getWitnessTable();
  v65 = v81;
  sub_1C0FDBA4C(v60, v63, v64);
  v66 = *(v84 + 8);
  v66(v60, v63);
  sub_1C0FDBA4C(v65, v63, v64);
  return (v66)(v65, v63);
}

uint64_t sub_1C122F08C(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

double PhotosNotificationStackView<>.init(notifications:notificationView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  swift_getAssociatedConformanceWitness();
  v8 = sub_1C122D764();
  *a4 = a1;
  *(a4 + 8) = KeyPath;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = v8;
  *(a4 + 40) = v10;
  *(a4 + 48) = v9 & 1;
  *&result = 3;
  *(a4 + 56) = xmmword_1C12CA7C0;
  return result;
}

uint64_t sub_1C122F244()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C122F288(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C122F2C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C122F330@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE981B0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_3();
  v24 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  type metadata accessor for PhotosNotificationStackView_Previews.Model();
  OUTLINED_FUNCTION_7_45();
  sub_1C1230F8C(v13, v14);
  v15 = sub_1C1262A80();
  OUTLINED_FUNCTION_11_34(v15, v16);
  v17 = swift_allocObject();
  sub_1C1261F60();
  *(v17 + 16) = &unk_1F406CFE8;
  sub_1C1230E78();
  sub_1C1264A20();

  *&v12[*(v2 + 44)] = xmmword_1C12CA7D0;
  v18 = sub_1C1262A80();
  OUTLINED_FUNCTION_11_34(v18, v19);
  sub_1C122F5B0();
  sub_1C1264A20();

  *&v9[*(v2 + 44)] = xmmword_1C12CA7E0;
  sub_1C0FCB6E4(v12, v6);
  v20 = v24;
  sub_1C0FCB6E4(v9, v24);
  v21 = v25;
  sub_1C0FCB6E4(v6, v25);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE981C8);
  sub_1C0FCB6E4(v20, v21 + *(v22 + 48));
  sub_1C0FCB74C(v9);
  sub_1C0FCB74C(v12);
  sub_1C0FCB74C(v20);
  return sub_1C0FCB74C(v6);
}

uint64_t sub_1C122F5B0()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1C1102490(0, 100, 0);
  for (i = 0; i != 100; ++i)
  {
    sub_1C1266940();

    v1 = sub_1C1266CE0();
    MEMORY[0x1C68EF850](v1);

    MEMORY[0x1C68EF850](10794, 0xE200000000000000);
    v3 = *(v7 + 16);
    v2 = *(v7 + 24);
    if (v3 >= v2 >> 1)
    {
      sub_1C1102490((v2 > 1), v3 + 1, 1);
    }

    *(v7 + 16) = v3 + 1;
    v4 = (v7 + 40 * v3);
    v4[4] = i;
    v4[5] = 0xD000000000000011;
    v4[6] = 0x80000001C12691F0;
    v4[7] = 0xD00000000000001CLL;
    v4[8] = 0x80000001C126E680;
  }

  type metadata accessor for PhotosNotificationStackView_Previews.Model();
  v5 = swift_allocObject();
  sub_1C1261F60();
  *(v5 + 16) = v7;
  return v5;
}

uint64_t sub_1C122F73C()
{
  sub_1C1264440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE981F0);
  sub_1C0FDB6D4(&qword_1EBE981F8, &qword_1EBE981F0);
  return sub_1C1262950();
}

uint64_t sub_1C122F800@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = sub_1C1263AA0();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98200);
  return sub_1C122F868(a1, a2 & 1, (a3 + *(v6 + 44)));
}

uint64_t sub_1C122F868@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98208);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v60 = a1;
  }

  else
  {

    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
  }

  v48 = sub_1C1230774();

  v15 = swift_allocObject();
  v45 = v15;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2 & 1;
  MEMORY[0x1EEE9AC00](v15);
  v16 = MEMORY[0x1E69E6530];
  *(&v40 - 6) = &type metadata for PhotosNotificationStackView_Previews.Model.NotificationData;
  *(&v40 - 5) = v16;
  *(&v40 - 4) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98210);
  *(&v40 - 3) = sub_1C1230D04();
  *(&v40 - 2) = sub_1C1231024();
  *(&v40 - 1) = sub_1C1231078();
  KeyPath = swift_getKeyPath();
  LOBYTE(__src[0]) = 0;

  sub_1C1265630();
  v43 = v51;
  v42 = v52;
  v41 = v53;
  *&v40 = sub_1C1265130();
  sub_1C12659A0();
  sub_1C1262C80();
  v17 = v61;
  v18 = v62;
  v19 = v63;
  v20 = v64;
  v21 = v65;
  v22 = v66;
  v23 = &v9[*(v5 + 36)];
  v24 = *(sub_1C1263320() + 20);
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_1C12639D0();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #10.0 }

  *v23 = _Q0;
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40) + 36)] = 256;
  *v9 = v40;
  *(v9 + 1) = v17;
  v9[16] = v18;
  *(v9 + 3) = v19;
  v9[32] = v20;
  *(v9 + 5) = v21;
  *(v9 + 6) = v22;
  v32 = v46;
  sub_1C10D1A1C(v9, v46, &qword_1EBE98208);
  __src[0] = v48;
  v33 = KeyPath;
  __src[1] = KeyPath;
  __src[2] = sub_1C1231018;
  v34 = v45;
  __src[3] = v45;
  v35 = v43;
  v36 = v42;
  __src[4] = v43;
  __src[5] = v42;
  LOBYTE(v24) = v41;
  LOBYTE(__src[6]) = v41;
  *(&__src[6] + 1) = *v49;
  HIDWORD(__src[6]) = *&v49[3];
  v40 = xmmword_1C12CA7C0;
  *&__src[7] = xmmword_1C12CA7C0;
  v37 = v47;
  memcpy(v47, __src, 0x48uLL);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98238);
  sub_1C10D1A1C(v32, v37 + *(v38 + 48), &qword_1EBE98208);
  sub_1C10D1A1C(__src, &v51, &qword_1EBE98240);
  sub_1C0FD1A5C(v9, &qword_1EBE98208);
  sub_1C0FD1A5C(v32, &qword_1EBE98208);
  v51 = v48;
  v52 = v33;
  v53 = sub_1C1231018;
  v54 = v34;
  v55 = v35;
  v56 = v36;
  v57 = v24;
  *v58 = *v49;
  *&v58[3] = *&v49[3];
  v59 = v40;
  return sub_1C0FD1A5C(&v51, &qword_1EBE98240);
}

uint64_t sub_1C122FDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = *(a1 + 24);
  v27 = *(a1 + 8);
  v28 = v14;
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  KeyPath = swift_getKeyPath();
  v26[0] = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6 & 1;
  v19 = *(a1 + 16);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a1 + 32);
  __asm { FMOV            V1.2D, #20.0 }

  *a7 = xmmword_1C12B0730;
  *(a7 + 16) = _Q1;
  *(a7 + 32) = xmmword_1C12B0740;
  *(a7 + 48) = xmmword_1C12B0750;
  *(a7 + 64) = sub_1C122FF88;
  *(a7 + 72) = 0;
  *(a7 + 80) = sub_1C1231130;
  *(a7 + 88) = v15;
  *(a7 + 96) = j_nullsub_1;
  *(a7 + 104) = 0;
  *(a7 + 112) = a2;
  *(a7 + 120) = a3;
  *(a7 + 128) = a4;
  *(a7 + 136) = KeyPath;
  *(a7 + 144) = 0;
  *(a7 + 152) = 0;
  *(a7 + 160) = sub_1C1231138;
  *(a7 + 168) = v18;
  sub_1C11F16F0(&v27, v26);
  sub_1C11F16F0(&v28, v26);
  sub_1C11F16F0(&v27, v26);
  sub_1C11F16F0(&v28, v26);
}

uint64_t sub_1C122FF88@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1265120();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98250) + 36);
  v4 = *(sub_1C1263320() + 20);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1C12639D0();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  __asm { FMOV            V0.2D, #10.0 }

  *v3 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40);
  *&v3[*(result + 36)] = 256;
  *a1 = v2;
  return result;
}

uint64_t sub_1C123005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1261A10();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C1261A20();
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1261A40();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98248);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v24 = sub_1C1261AD0();
  v14 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v17 = sub_1C1261C70();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v17);
  (*(v7 + 104))(v9, *MEMORY[0x1E6968750], v23);
  (*(v25 + 104))(v6, *MEMORY[0x1E6968728], v26);

  sub_1C1261A30();
  sub_1C1261AC0();
  if (qword_1EBE8FC18 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBE90BC0;
  v29 = *(v27 + 8);
  v19 = type metadata accessor for PhotosNotificationCellTextView();
  (*(v14 + 32))(a2 + v19[6], v16, v24);
  v20 = a2 + v19[9];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  *a2 = 0x4000000000000000;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 3;
  *(a2 + 32) = 0;
  *(a2 + 40) = v18;
  *(a2 + 48) = v29;
  v21 = (a2 + v19[7]);
  *v21 = 0;
  v21[1] = 0;
  *(a2 + v19[8]) = 0;

  return sub_1C11F16F0(&v29, v28);
}

uint64_t sub_1C1230448(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = sub_1C12637E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v11 = sub_1C1230774();

  v12 = sub_1C125D824(a3, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {

    if ((a2 & 1) == 0)
    {
      sub_1C1266420();
      v16 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      a1 = v18;
    }

    swift_getKeyPath();
    v18 = a1;
    sub_1C1230F8C(&qword_1EBE981B8, type metadata accessor for PhotosNotificationStackView_Previews.Model);
    sub_1C1261F30();

    v18 = a1;
    swift_getKeyPath();
    sub_1C1261F50();

    swift_beginAccess();
    sub_1C125D93C(v12, &v18);
    v21 = v20;
    v22 = v19;
    swift_endAccess();
    sub_1C1231148(&v22);
    sub_1C1231148(&v21);
    v17 = a1;
    swift_getKeyPath();
    sub_1C1261F40();
  }

  return result;
}

uint64_t sub_1C1230774()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_45();
  sub_1C1230F8C(v0, v1);
  sub_1C1261F30();

  swift_beginAccess();
}

uint64_t sub_1C1230848(uint64_t a1)
{
  swift_beginAccess();
  sub_1C0FEAF28();
  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1230AB0();
  }
}

uint64_t sub_1C1230920(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_1C1266D50() & 1) == 0)
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  return sub_1C1266D50();
}

uint64_t sub_1C12309B8()
{
  MEMORY[0x1C68F07E0](*v0);
  sub_1C1265EF0();

  return sub_1C1265EF0();
}

uint64_t sub_1C1230A08()
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](*v0);
  sub_1C1265EF0();
  sub_1C1265EF0();
  return sub_1C1266EE0();
}

uint64_t sub_1C1230A70()
{
  sub_1C1266E90();
  sub_1C12309B8();
  return sub_1C1266EE0();
}

uint64_t sub_1C1230B68()
{

  v1 = OBJC_IVAR____TtCV17PhotosSwiftUICore36PhotosNotificationStackView_Previews5Model___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for PhotosNotificationStackView_Previews.Model()
{
  result = qword_1EBE98190;
  if (!qword_1EBE98190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1230C68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C1230CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1230D04()
{
  result = qword_1EBE981A0;
  if (!qword_1EBE981A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE981A0);
  }

  return result;
}

uint64_t sub_1C1230D6C(uint64_t a1)
{
  v2 = sub_1C1230ECC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1C1230DB8(uint64_t a1)
{
  v2 = sub_1C1230ECC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

unint64_t sub_1C1230E08()
{
  result = qword_1EBE981A8;
  if (!qword_1EBE981A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE981A8);
  }

  return result;
}

unint64_t sub_1C1230E78()
{
  result = qword_1EBE981C0;
  if (!qword_1EBE981C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE981C0);
  }

  return result;
}

unint64_t sub_1C1230ECC()
{
  result = qword_1EBE981D0;
  if (!qword_1EBE981D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE981D0);
  }

  return result;
}

uint64_t sub_1C1230F8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1231024()
{
  result = qword_1EBE98218;
  if (!qword_1EBE98218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98218);
  }

  return result;
}

unint64_t sub_1C1231078()
{
  result = qword_1EBE98220;
  if (!qword_1EBE98220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98210);
    sub_1C0FDB6D4(&qword_1EBE98228, &qword_1EBE98230);
    sub_1C10A9F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98220);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_34(uint64_t result, char a2)
{
  *(v2 - 96) = result;
  *(v2 - 88) = a2 & 1;
  return result;
}

uint64_t PhotosBounceEffectButton.init(action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1C123122C();
  *(a5 + 32) = v11;
  *(a5 + 40) = v10;
  *(a5 + 48) = sub_1C1231268();
  *(a5 + 56) = v12;
  result = sub_1C1012790();
  *(a5 + 64) = result & 1;
  *(a5 + 72) = v14;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_1C1231268()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DF0);
  sub_1C1265410();
  return v1;
}

uint64_t PhotosBounceEffectButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = *(a1 + 16);
  v25 = a1;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92420);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98270);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C08);
  OUTLINED_FUNCTION_11_0();
  v3 = sub_1C1263190();
  v33 = *(a1 + 24);
  v4 = v33;
  v34 = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_52();
  v32[14] = WitnessTable;
  v32[15] = sub_1C0FDB6D4(v6, &qword_1EBE92420);
  v7 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_60();
  v32[12] = v7;
  v32[13] = sub_1C0FDB6D4(v8, &qword_1EBE98270);
  v9 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_7();
  v32[10] = v9;
  v32[11] = sub_1C0FDB6D4(v10, &qword_1EBE90C08);
  v24[1] = v3;
  swift_getWitnessTable();
  v11 = sub_1C12654A0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v24 - v16;
  v18 = v26;
  memcpy(__dst, v26, 0x50uLL);
  v19 = swift_allocObject();
  v20 = v27;
  v19[2] = v27;
  v19[3] = v4;
  memcpy(v19 + 4, v18, 0x50uLL);
  v29 = v20;
  v30 = v4;
  v31 = __dst;
  (*(*(v25 - 8) + 16))(v32, __dst);
  sub_1C1265480();
  OUTLINED_FUNCTION_8_1();
  v21 = swift_getWitnessTable();
  sub_1C0FDBA4C(v14, v11, v21);
  v22 = *(v12 + 8);
  v22(v14, v11);
  sub_1C0FDBA4C(v17, v11, v21);
  return (v22)(v17, v11);
}

uint64_t sub_1C123163C(uint64_t (**__src)(uint64_t), uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x50uLL);
  v6 = type metadata accessor for PhotosBounceEffectButton();
  v7 = sub_1C12319FC();
  if (v7 == 2)
  {
    return (*__src)(v7);
  }

  if ((v7 & 1) == 0)
  {
    return (*__src)(v7);
  }

  v7 = swift_beginAccess();
  v8 = qword_1EDE7C6F0;
  if (!qword_1EDE7C6F0)
  {
    return (*__src)(v7);
  }

  if (![swift_unknownObjectRetain() allowZoomBounce])
  {
    v7 = swift_unknownObjectRelease();
    return (*__src)(v7);
  }

  memcpy(__dst, __src, 0x50uLL);
  v9 = &selRef_proposedBeginState;
  if ((sub_1C1231A54() & 1) == 0)
  {
    memcpy(__dst, __src, 0x50uLL);
    v10 = *(v6 - 8);
    v11 = *(v10 + 16);
    v11(v20, __src, v6);
    sub_1C1231AAC();
    memcpy(v20, __dst, sizeof(v20));
    v12 = *(v10 + 8);
    v12(v20, v6);
    memcpy(v19, __src, sizeof(v19));
    v11(__dst, __src, v6);
    [v8 zoomBounceScale];
    sub_1C1231B08();
    memcpy(__dst, v19, 0x50uLL);
    v12(__dst, v6);
    v9 = &selRef_proposedBeginState;
    sub_1C0FDAFC4();
    v13 = sub_1C12664C0();
    [v8 zoomBounceDelay];
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    memcpy(v14 + 4, __src, 0x50uLL);
    v11(v19, __src, v6);
    sub_1C1231CA8(sub_1C1232CC8, v14);
  }

  if (byte_1EDE78A38)
  {
    return swift_unknownObjectRelease();
  }

  byte_1EDE78A38 = 1;
  sub_1C0FDAFC4();
  v16 = sub_1C12664C0();
  [v8 zoomBounceRefractoryPeriod];
  sub_1C1231CA8(sub_1C1232044, 0);

  v17 = sub_1C12664C0();
  [v8 v9[219]];
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  memcpy(v18 + 4, __src, 0x50uLL);
  (*(*(v6 - 8) + 16))(__dst, __src, v6);
  sub_1C1231CA8(sub_1C1023CDC, v18);

  swift_unknownObjectRelease();
}

uint64_t sub_1C12319FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98278);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1231A54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1231B60(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = type metadata accessor for PhotosBounceEffectButton();
  v3 = *(v2 - 8);
  v4 = *(v3 + 16);
  v4(v8, __src, v2);
  sub_1C1231AAC();
  memcpy(v8, __dst, sizeof(v8));
  v5 = *(v3 + 8);
  v5(v8, v2);
  memcpy(v7, __src, sizeof(v7));
  v4(__dst, __src, v2);
  sub_1C1231B08();
  memcpy(__dst, v7, sizeof(__dst));
  return (v5)(__dst, v2);
}

uint64_t sub_1C1231CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1265C10();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1265C30();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1265C50();
  v22 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  UIAnimationDragCoefficient();
  sub_1C1265C40();
  sub_1C1265C90();
  v21 = *(v11 + 8);
  v21(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_1C0FFC3FC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0FD7FC4;
  aBlock[3] = &block_descriptor_17;
  v18 = _Block_copy(aBlock);

  sub_1C1265C20();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1C1232D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
  sub_1C0FDB6D4(&qword_1EDE7B708, &unk_1EBE95B00);
  sub_1C1266870();
  MEMORY[0x1C68EFDD0](v16, v9, v6, v18);
  _Block_release(v18);
  (*(v25 + 8))(v6, v4);
  (*(v23 + 8))(v9, v24);
  v21(v16, v22);
}

uint64_t sub_1C1232050@<X0>(void (**a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1263190();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v37 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92420);
  v42 = sub_1C1263190();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v37 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98270);
  v44 = sub_1C1263190();
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v37 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90C08);
  v47 = sub_1C1263190();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v46 = &v37 - v17;
  a1[2](v16);
  memcpy(__dst, a1, sizeof(__dst));
  v18 = type metadata accessor for PhotosBounceEffectButton();
  sub_1C12327B0();
  sub_1C1265B90();
  sub_1C1264A80();
  (*(v7 + 8))(v9, a2);
  MEMORY[0x1C68EF360](0.5, 1.0, 0.0);
  memcpy(__dst, a1, sizeof(__dst));
  v59 = sub_1C12327B0();
  v57 = a3;
  v58 = MEMORY[0x1E697E070];
  WitnessTable = swift_getWitnessTable();
  sub_1C0FF9EE4();
  v20 = v39;
  v21 = v38;
  sub_1C1265040();

  (*(v41 + 8))(v21, v10);
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  memcpy(v22 + 4, a1, 0x50uLL);
  (*(*(v18 - 8) + 16))(__dst, a1, v18);
  v23 = sub_1C0FDB6D4(&qword_1EDE7BC88, &qword_1EBE92420);
  v55 = WitnessTable;
  v56 = v23;
  v24 = v42;
  v25 = swift_getWitnessTable();
  sub_1C1061D74();
  sub_1C10F8E40();
  v26 = v40;
  sub_1C1264C90();

  (*(v45 + 8))(v20, v24);
  v27 = sub_1C0FDB6D4(&qword_1EDE7BA18, &qword_1EBE98270);
  v53 = v25;
  v54 = v27;
  v28 = v44;
  v29 = swift_getWitnessTable();
  sub_1C100AE3C();
  OUTLINED_FUNCTION_2_1();
  v30 = v43;
  sub_1C1264AC0();
  (*(v48 + 8))(v26, v28);
  v31 = sub_1C0FDB6D4(&unk_1EDE7BB80, &qword_1EBE90C08);
  v51 = v29;
  v52 = v31;
  v32 = v47;
  v33 = swift_getWitnessTable();
  v34 = v46;
  sub_1C0FDBA4C(v30, v32, v33);
  v35 = *(v49 + 8);
  v35(v30, v32);
  sub_1C0FDBA4C(v34, v32, v33);
  return (v35)(v34, v32);
}

double sub_1C12327B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1232808(uint64_t a1, const void *a2)
{
  memcpy(v6, a2, sizeof(v6));
  v3 = type metadata accessor for PhotosBounceEffectButton();
  v4 = *(v3 - 8);
  (*(v4 + 16))(__dst, a2, v3);
  sub_1C12328EC();
  memcpy(__dst, v6, sizeof(__dst));
  return (*(v4 + 8))(__dst, v3);
}

uint64_t static PhotosWantsBounceEffectPreferenceKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBE98269 = a1;
  return result;
}

uint64_t sub_1C1232A30@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBE98269;
  return result;
}

uint64_t sub_1C1232A7C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EBE98269 = v1;
  return result;
}

unsigned __int8 *sub_1C1232AC4(unsigned __int8 *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (v3 == 2)
  {
    result = a2(&v4);
    LOBYTE(v3) = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t static PhotosWantsBounceEffectPreferenceKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (result == 2)
  {
    result = a2();
  }

  *a1 = result;
  return result;
}

uint64_t sub_1C1232B90@<X0>(_BYTE *a1@<X8>)
{
  result = static PhotosWantsBounceEffectPreferenceKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1232BBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *storeEnumTagSinglePayload for PhotosWantsBounceEffectPreferenceKey(_BYTE *result, int a2, int a3)
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

uint64_t objectdestroyTm_24()
{

  return swift_deallocObject();
}

unint64_t sub_1C1232D34()
{
  result = qword_1EDE7B768;
  if (!qword_1EDE7B768)
  {
    sub_1C1265C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B768);
  }

  return result;
}

uint64_t PhotosFeedStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1232E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C1232FFC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.photosFeedStyle.getter()
{
  sub_1C1232ECC();

  return sub_1C12637F0();
}

unint64_t sub_1C1232ECC()
{
  result = qword_1EBE98280;
  if (!qword_1EBE98280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98280);
  }

  return result;
}

uint64_t (*EnvironmentValues.photosFeedStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C1232ECC();
  sub_1C12637F0();
  return sub_1C1232FC0;
}

unint64_t sub_1C1232FFC()
{
  result = qword_1EBE98288;
  if (!qword_1EBE98288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98288);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosFeedStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OneUpRecoveredAlbumToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = 0x4044000000000000;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 25) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpRecoveredAlbumToolbar(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C123327C()
{
  result = qword_1EBE98290;
  if (!qword_1EBE98290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98290);
  }

  return result;
}

uint64_t sub_1C1233324()
{
  sub_1C1266E90();
  PhotosQuestionType.hash(into:)();
  return sub_1C1266EE0();
}

unint64_t sub_1C1233370()
{
  result = qword_1EBE982A0;
  if (!qword_1EBE982A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE982A0);
  }

  return result;
}

unint64_t sub_1C12333C8()
{
  result = qword_1EBE982A8;
  if (!qword_1EBE982A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE982A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosQuestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosQuestionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosQuestionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

__n128 PhotosDetailsNavigationDisplayedMediaTracker.DisplayConfiguration.init(mediaRepository:item:layoutKind:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  v5 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v5;
  result = *(a2 + 32);
  *(a4 + 40) = result;
  *(a4 + 56) = v4;
  return result;
}

double PhotosDetailsNavigationDisplayedMediaTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  return result;
}

double PhotosDetailsNavigationDisplayedMediaTracker.init()()
{
  result = 0.0;
  *(v0 + 57) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  return result;
}

uint64_t sub_1C1233768(uint64_t a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_1C1233CB4(a1, v4);
  sub_1C0FD1A5C(v4, &unk_1EBE8FE18);
  swift_beginAccess();
  sub_1C0FDB800(v1 + 16, v4, &qword_1EBE982B0);
  swift_beginAccess();
  sub_1C0FDB800(v1 + 80, v3, &unk_1EBE8FE18);
  sub_1C1233CB4(v4, v3);
  sub_1C0FD1A5C(v3, &unk_1EBE8FE18);
  return sub_1C0FD1A5C(v4, &qword_1EBE982B0);
}

uint64_t sub_1C12338AC()
{
  OUTLINED_FUNCTION_44();
  sub_1C0FDB800(v0 + 16, v5, &qword_1EBE982B0);
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_0_86();
  sub_1C10CFC40(v1, v2, v3);
  swift_endAccess();
  sub_1C1233768(v5);
  OUTLINED_FUNCTION_2_69();
  return sub_1C0FD1A5C(v5, &qword_1EBE982B0);
}

void (*sub_1C1233950(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v3;
  v3[19] = v1;
  OUTLINED_FUNCTION_44();
  sub_1C0FDB800(v1 + 16, v3, &qword_1EBE982B0);
  return sub_1C12339D4;
}

void sub_1C12339D4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = OUTLINED_FUNCTION_0_86();
    sub_1C0FDB800(v3, v4, v5);
    sub_1C12338AC();
    OUTLINED_FUNCTION_2_69();
  }

  else
  {
    sub_1C12338AC();
  }

  free(v2);
}

uint64_t sub_1C1233A9C()
{
  swift_beginAccess();
  sub_1C0FDB800(v0 + 16, v3, &qword_1EBE982B0);
  swift_beginAccess();
  sub_1C0FDB800(v0 + 80, v2, &unk_1EBE8FE18);
  sub_1C1233CB4(v3, v2);
  sub_1C0FD1A5C(v2, &unk_1EBE8FE18);
  return sub_1C0FD1A5C(v3, &qword_1EBE982B0);
}

uint64_t sub_1C1233BBC()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_0_86();
  sub_1C10CFC40(v0, v1, v2);
  swift_endAccess();
  sub_1C1233A9C();
  return OUTLINED_FUNCTION_2_69();
}

uint64_t (*sub_1C1233C2C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1233C80;
}

uint64_t sub_1C1233C80(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C1233A9C();
  }

  return result;
}

uint64_t sub_1C1233CB4(uint64_t a1, uint64_t a2)
{
  sub_1C0FDB800(a1, &v7, &qword_1EBE982B0);
  if (!v7)
  {
    return sub_1C0FD1A5C(&v7, &qword_1EBE982B0);
  }

  v9[0] = v7;
  v9[1] = *v8;
  *v10 = *&v8[16];
  *&v10[9] = *&v8[25];
  v7 = 0uLL;
  *v8 = 0;
  *&v8[8] = xmmword_1C12A6550;
  v8[24] = 0;
  sub_1C0FDB800(a2, &v4, &unk_1EBE8FE18);
  if (v5)
  {
    sub_1C0FD1A5C(&v7, &qword_1EBE8FE10);
    sub_1C0F9DDE4(&v4, v6);
    sub_1C0F9DDE4(v6, &v7);
    v8[24] = v10[24];
  }

  else
  {
    sub_1C0FD1A5C(&v4, &unk_1EBE8FE18);
  }

  sub_1C0FF9434(&v7, v9 + 1);
  sub_1C0FD1A5C(&v7, &qword_1EBE8FE10);
  return sub_1C1233FD4(v9);
}

uint64_t PhotosDetailsNavigationDisplayedMediaTracker.deinit()
{
  sub_1C0FD1A5C(v0 + 16, &qword_1EBE982B0);
  sub_1C0FD1A5C(v0 + 80, &unk_1EBE8FE18);
  return v0;
}

uint64_t PhotosDetailsNavigationDisplayedMediaTracker.__deallocating_deinit()
{
  sub_1C0FD1A5C(v0 + 16, &qword_1EBE982B0);
  sub_1C0FD1A5C(v0 + 80, &unk_1EBE8FE18);

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

id sub_1C1234004(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhotosDetailsNavigationViewControllerTransitionOptions();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

void sub_1C12340D4()
{
  sub_1C1234290();
  OUTLINED_FUNCTION_3_53();
  OUTLINED_FUNCTION_8_0();
}

void sub_1C1234290()
{
  sub_1C1266400();
  if (qword_1EDE7B5C0 != -1)
  {
    OUTLINED_FUNCTION_0_87();
    swift_once();
  }

  v3 = qword_1EDE7B5C8;
  sub_1C1262620();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v5 = Strong;
  if (![Strong representedItem])
  {
    goto LABEL_12;
  }

  sub_1C12667F0();
  swift_unknownObjectRelease();
  UIViewController.detailsNavigationContext.getter(&v121);
  v6 = *(&v121 + 1);
  if (!*(&v121 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v126);
LABEL_12:

LABEL_13:
    sub_1C1234E7C();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    goto LABEL_14;
  }

  v7 = v121;
  v8 = v122;
  v9 = v124;
  v10 = v125;
  v104 = v123;
  sub_1C1246C30(v126, &v121, &v116);
  if (!v117)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v126);

    OUTLINED_FUNCTION_4_58(v22, v23, v24, v25, v26, v27, v28, v29, v83, buf, v87, v90, v92, v94, v96, v98, v100, v102, v104);
    sub_1C0F9E21C(&v116, &qword_1EBE982C0);
    goto LABEL_13;
  }

  v103 = v7;
  sub_1C0F9DDE4(&v116, v118);
  v11 = [v5 viewIfLoaded];
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v126);
LABEL_18:

    sub_1C1093918(v103, v6, v8, v104, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v118);
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v5 presentingViewController];
  if (!v13)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v126);

    goto LABEL_18;
  }

  v99 = v13;
  v101 = v8;
  v14 = sub_1C1266400();
  sub_1C0FA139C(v126, &v121);
  v95 = v6;
  v97 = v12;
  if (os_log_type_enabled(v3, v14))
  {
    OUTLINED_FUNCTION_5_42();
    v15 = swift_slowAlloc();
    v87 = v10;
    v16 = swift_slowAlloc();
    v113[0] = v16;
    *v15 = 136315138;
    sub_1C0FA139C(&v121, &v116);
    v92 = v9;
    v17 = sub_1C1265ED0();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(&v121);
    v20 = sub_1C0FA0E80(v17, v19, v113);
    v8 = v101;

    *(v15 + 4) = v20;
    v9 = v92;
    _os_log_impl(&dword_1C0F96000, v3, v14, "representedItem: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v10 = v87;
    OUTLINED_FUNCTION_1_61();
    MEMORY[0x1C68F1630]();
    v6 = v95;
    OUTLINED_FUNCTION_1_61();
    MEMORY[0x1C68F1630]();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v121);
  }

  *&v121 = v103;
  *(&v121 + 1) = v6;
  v122 = v8;
  v123 = v104;
  v124 = v9;
  v125 = v10;
  v30 = UIViewController.presentationSourceView(for:in:)(v126, &v121);
  if (v30)
  {
    v91 = v30;
    if (v9)
    {
      v31 = v30;
      sub_1C0FCF1B4(v9);
      v9(&v121, v126);
      sub_1C0FCF004(v9);
      sub_1C0FD09FC(&v121, &v116);
    }

    else
    {
      v41 = v30;
      sub_1C0FA139C(v126, &v116);
      v42 = v41;
    }

    sub_1C10C8EF4(&v116, &v122);
    __swift_destroy_boxed_opaque_existential_0Tm(&v116);
    *&v121 = v103;
    *(&v121 + 1) = v6;

    sub_1C0FF9388(&v121, &v116);
    sub_1C102EFA0(&v116, v113, &qword_1EBE8FE10);
    if (v114 == 1)
    {
      sub_1C0F9E21C(v113, &qword_1EBE8FE10);
      v43 = 2;
    }

    else
    {
      v43 = v115;
      sub_1C0FD09A8(v113);
    }

    v44 = sub_1C1266400();
    if (os_log_type_enabled(v3, v44))
    {
      OUTLINED_FUNCTION_5_42();
      bufb = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v113[0] = v88;
      *bufb = 136315138;
      LOBYTE(v111[0]) = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE982C8);
      v45 = sub_1C1265ED0();
      v47 = sub_1C0FA0E80(v45, v46, v113);
      v8 = v101;

      *(bufb + 4) = v47;
      _os_log_impl(&dword_1C0F96000, v3, v44, "layoutKind: %s", bufb, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v88);
      OUTLINED_FUNCTION_1_61();
      MEMORY[0x1C68F1630]();
      OUTLINED_FUNCTION_1_61();
      MEMORY[0x1C68F1630]();
    }

    v48 = v43 == 2;
    v49 = v43;
    v50 = v97;
    if (v48 || (v49 & 1) != 0)
    {
      [v97 bounds];
      OUTLINED_FUNCTION_3_53();
      [v91 bounds];
      CGRectGetHeight(v127);
      [v91 bounds];
      CGRectGetWidth(v128);

      sub_1C1093918(v103, v95, v8, v104, v9);
      sub_1C0F9E21C(&v116, &qword_1EBE8FE10);
      sub_1C0FD0978(&v121);
      __swift_destroy_boxed_opaque_existential_0Tm(v126);
    }

    else
    {
      sub_1C102EFA0(&v116, v113, &qword_1EBE8FE10);
      v93 = v9;
      if (v114 == 1)
      {
        sub_1C0F9E21C(v113, &qword_1EBE8FE10);
        memset(v111, 0, sizeof(v111));
        v112 = 0;
      }

      else
      {
        sub_1C102EFA0(v113, v111, &unk_1EBE8FE18);
        sub_1C0FD09A8(v113);
      }

      v51 = sub_1C1266400();
      OUTLINED_FUNCTION_6_43(v111, v113);
      OUTLINED_FUNCTION_6_43(v111, v110);
      if (os_log_type_enabled(v3, v51))
      {
        v89 = v51;
        v52 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *v52 = 136315394;
        OUTLINED_FUNCTION_6_43(v113, v105);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE8FE18);
        v53 = sub_1C1265ED0();
        v55 = v54;
        sub_1C0F9E21C(v113, &unk_1EBE8FE18);
        v56 = sub_1C0FA0E80(v53, v55, &v109);

        *(v52 + 4) = v56;
        bufa = v52;
        *(v52 + 12) = 2080;
        OUTLINED_FUNCTION_6_43(v110, v105);
        v57 = v107;
        if (v107)
        {
          v58 = v108;
          __swift_project_boxed_opaque_existential_1(v105, v107);
          v59 = (*(v58 + 16))(v57, v58);
          v57 = v60;
          v62 = v61;
          __swift_destroy_boxed_opaque_existential_0Tm(v105);
        }

        else
        {
          sub_1C0F9E21C(v105, &unk_1EBE8FE18);
          v59 = 0;
          v62 = 1;
        }

        v50 = v97;
        v105[0] = v59;
        v105[1] = v57;
        v106 = v62 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D0);
        v63 = sub_1C1265ED0();
        v65 = v64;
        sub_1C0F9E21C(v110, &unk_1EBE8FE18);
        v66 = sub_1C0FA0E80(v63, v65, &v109);

        *(bufa + 14) = v66;
        _os_log_impl(&dword_1C0F96000, v3, v89, "media: %s pixelSize: %s", bufa, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_61();
        MEMORY[0x1C68F1630]();
        OUTLINED_FUNCTION_1_61();
        MEMORY[0x1C68F1630]();
      }

      else
      {
        sub_1C0F9E21C(v110, &unk_1EBE8FE18);
        sub_1C0F9E21C(v113, &unk_1EBE8FE18);
      }

      v67 = v119;
      v68 = v120;
      __swift_project_boxed_opaque_existential_1(v118, v119);
      v113[0] = v91;
      PhotosDetailsNavigationEndPoint.frameForContent<A>(of:displayedIn:for:)(v111, v113, v126, v67, &type metadata for PXPlatformViewViewport, v68, &off_1F407DDA8);
      OUTLINED_FUNCTION_3_53();
      v69 = v119;
      v70 = v120;
      __swift_project_boxed_opaque_existential_1(v118, v119);
      v71 = (*(v70 + 16))(v69, v70);
      v72 = OUTLINED_FUNCTION_8_0();
      [v73 v74];
      OUTLINED_FUNCTION_3_53();
      v76 = v75;
      swift_unknownObjectRelease();
      v77 = sub_1C1266400();
      if (os_log_type_enabled(v3, v77))
      {
        OUTLINED_FUNCTION_5_42();
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v110[0] = v79;
        *v78 = 136315138;
        v113[0] = v0;
        v113[1] = v1;
        v113[2] = v2;
        v114 = v76;
        type metadata accessor for CGRect(0);
        v80 = sub_1C1265ED0();
        v82 = sub_1C0FA0E80(v80, v81, v110);

        *(v78 + 4) = v82;
        _os_log_impl(&dword_1C0F96000, v3, v77, "frame of source in destination: %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v79);
        OUTLINED_FUNCTION_1_61();
        MEMORY[0x1C68F1630]();
        OUTLINED_FUNCTION_1_61();
        MEMORY[0x1C68F1630]();
      }

      sub_1C1093918(v103, v95, v101, v104, v93);
      sub_1C0F9E21C(v111, &unk_1EBE8FE18);
      sub_1C0F9E21C(&v116, &qword_1EBE8FE10);
      sub_1C0FD0978(&v121);
      __swift_destroy_boxed_opaque_existential_0Tm(v126);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v118);
  }

  else
  {
    sub_1C1234E7C();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_4_58(v33, v34, v35, v36, v37, v38, v39, v40, v83, buf, v87, v90, v92, v95, v12, v99, v101, v103, v104);
    __swift_destroy_boxed_opaque_existential_0Tm(v126);
    __swift_destroy_boxed_opaque_existential_0Tm(v118);
  }

LABEL_14:
  OUTLINED_FUNCTION_8_0();
}

id sub_1C1234E14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsNavigationViewControllerTransitionOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1234E7C()
{
  result = qword_1EDE7EF28[0];
  if (!qword_1EDE7EF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7EF28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosDetailsNavigationViewControllerTransitionOptions.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1234FB0()
{
  result = qword_1EBE982D0;
  if (!qword_1EBE982D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE982D0);
  }

  return result;
}

uint64_t sub_1C1235004(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a1)
  {
    if (a5)
    {
      sub_1C1263AA0();
    }

    sub_1C10228C4();
  }

  else
  {
    if (a7)
    {
      sub_1C12638E0();
    }

    sub_1C1022918();
  }

  return sub_1C1265A70();
}

uint64_t sub_1C1235090(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a4;
  v6 = a1 & 1;
  return MEMORY[0x1C68EE920](&v5, a2, &type metadata for FrameAxisModifier, a3);
}

double sub_1C12350CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C1264450();
  sub_1C1264450();
  sub_1C1264450();
  sub_1C1264450();
  sub_1C12659A0();
  sub_1C1262C80();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE982D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE982E0) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1C1235200()
{
  v1 = v0;
  v2 = sub_1C1263130();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E697E718])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x1E697E6F0])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x1E697E6F8])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x1E697E6E8])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x1E697E708])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x1E697E720])
  {
    return 6;
  }

  if (v7 == *MEMORY[0x1E697E728])
  {
    return 7;
  }

  if (v7 == *MEMORY[0x1E697E6C0])
  {
    return 8;
  }

  if (v7 == *MEMORY[0x1E697E6C8])
  {
    return 9;
  }

  if (v7 == *MEMORY[0x1E697E6D0])
  {
    return 10;
  }

  if (v7 == *MEMORY[0x1E697E6D8])
  {
    return 11;
  }

  if (v7 != *MEMORY[0x1E697E6E0])
  {
    (*(v3 + 8))(v6, v2);
    return 4;
  }

  return 12;
}

uint64_t getEnumTagSinglePayload for FrameAxisModifier(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for FrameAxisModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1C12354F4()
{
  result = qword_1EDE7BF18;
  if (!qword_1EDE7BF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE982E0);
    sub_1C1235580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF18);
  }

  return result;
}

unint64_t sub_1C1235580()
{
  result = qword_1EDE7BB48;
  if (!qword_1EDE7BB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE982D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BB48);
  }

  return result;
}

id PhotosSearchRange.textRange(in:)(void *a1)
{
  swift_getObjectType();

  return sub_1C1235B1C(a1, v1);
}

uint64_t PhotosSearchRange.tokenRange.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t PhotosSearchRange.init(textRange:textInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PhotosSearchRange.TextInputStorage();
  v4 = OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_0_88();
  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  return result;
}

uint64_t PhotosSearchRange.init(tokenRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for PhotosSearchRange.TextInputStorage();
  v8 = OUTLINED_FUNCTION_24_0();
  result = OUTLINED_FUNCTION_0_88();
  if (a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1;
  }

  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  *a4 = v10;
  *(a4 + 8) = v11;
  if (a3)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  *(a4 + 16) = v12;
  *(a4 + 24) = v8;
  return result;
}

uint64_t PhotosSearchRange.init(textRange:textInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    swift_getObjectType();
    v7 = sub_1C1184354(a4, a1, a2);
  }

  type metadata accessor for PhotosSearchRange.TextInputStorage();
  v10 = OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_0_88();
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *a5 = v7;
  *(a5 + 8) = 0;
  *(a5 + 16) = v11;
  *(a5 + 24) = v10;
  return result;
}

uint64_t PhotosSearchRange.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotosSearchRange.TextInputStorage();
  v2 = OUTLINED_FUNCTION_24_0();
  result = OUTLINED_FUNCTION_0_88();
  *(a1 + 24) = v2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  return result;
}

uint64_t sub_1C1235830()
{
  type metadata accessor for PhotosSearchRange.TextInputStorage();
  v0 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  qword_1EBE98308 = v0;
  qword_1EBE982F0 = 0;
  *algn_1EBE982F8 = 0;
  byte_1EBE98300 = 2;
  return result;
}

uint64_t static PhotosSearchRange.beginningOfDocument.getter()
{
  if (qword_1EBE8FD80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_70(&qword_1EBE982F0);
}

id PhotosSearchRange.insertionPoint.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (*(v0 + 16))
  {
    v3 = 0;
    if (v2 != 1 && v2 != 255)
    {
      return 0;
    }
  }

  else if ([*v0 isEmpty] && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v5 = Strong;
    v6 = [Strong beginningOfDocument];
    v7 = [v1 start];
    v3 = [v5 offsetFromPosition:v6 toPosition:v7];
    swift_unknownObjectRelease();
  }

  else
  {
    return 0;
  }

  return v3;
}

BOOL sub_1C1235A00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      sub_1C1049588();
      return sub_1C12666B0() & 1;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a1 | a2)
    {
      v8 = a6 == 2 && a4 == 1;
      if (!v8 || a5)
      {
        return 0;
      }
    }

    else if (a6 != 2 || a5 | a4)
    {
      return 0;
    }

    return 1;
  }

  if (a6 != 1)
  {
    return 0;
  }

  return a1 == a4 && a2 == a5;
}

uint64_t sub_1C1235AD8()
{
  sub_1C0FF4BE4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1C1235B1C(id a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    if (v5 != 1 && v5 != 255)
    {
      if (v4 | v3)
      {
        v8 = [a1 endOfDocument];
        v9 = [a1 endOfDocument];
      }

      else
      {
        v8 = [a1 beginningOfDocument];
        v9 = [a1 beginningOfDocument];
      }

      v6 = [a1 textRangeFromPosition:v8 toPosition:v9];
    }
  }

  else
  {
    sub_1C0F99AE4(v4, v3, 0);
    return v4;
  }

  return v6;
}

uint64_t sub_1C1235C3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C1235C7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1235CC0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t PhotosSectionHeader.init(title:titleSize:titleMaxLines:stackVertically:topPadding:wantsDivider:extraPaddings:titleViewProvider:disclosureViewProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14, uint64_t (*a15)(void), uint64_t a16, void (*a17)(uint64_t))
{
  v24 = *a3;
  v25 = a9 + *(type metadata accessor for PhotosSectionHeader() + 84);
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v24;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 33) = a6;
  v26 = a15();
  a17(v26);
  if (a8)
  {
    if (qword_1EDE812E8 != -1)
    {
      swift_once();
    }

    v27 = qword_1EDE7A438;
  }

  else
  {

    v27 = a7;
  }

  *(a9 + 40) = v27;
  *(a9 + 48) = a14 & 1;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13;
  return result;
}

double sub_1C1235E94(uint64_t a1)
{
  v3 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = v1 + *(a1 + 84);
  v12 = *v10;
  v11 = *(v10 + 8);
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (*(v10 + 32) == 1)
  {
    return *v10;
  }

  sub_1C1266420();
  v16 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C1001C04(v12, v11, v14, v13, 0);
  (*(v5 + 8))(v9, v3);
  return v17;
}

uint64_t PhotosSectionHeader.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v48 = a1[5];
  v73 = v3;
  v74 = v4;
  v75 = v5;
  v76 = v48;
  type metadata accessor for HeaderTitle();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98398);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  v47[1] = swift_getWitnessTable();
  v6 = sub_1C12655A0();
  OUTLINED_FUNCTION_0();
  v49 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v47 - v9;
  v11 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v52 = v12;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_44(v47 - v14);
  v15 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v53 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_44(v47 - v18);
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v56 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_44(v47 - v21);
  v57 = v22;
  v51 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v58 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v54 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = v47 - v27;
  sub_1C1263AB0();
  v60 = v3;
  v61 = v4;
  v62 = v5;
  v63 = v48;
  v64 = v50;
  sub_1C1265590();
  sub_1C12644A0();
  sub_1C1235E94(a1);
  OUTLINED_FUNCTION_1_1();
  WitnessTable = swift_getWitnessTable();
  v29 = v47[0];
  sub_1C1264FB0();
  OUTLINED_FUNCTION_8_11();
  v30(v10, v6);
  sub_1C12644C0();
  sub_1C1235E94(a1);
  v31 = MEMORY[0x1E697E5D8];
  v71 = WitnessTable;
  v72 = MEMORY[0x1E697E5D8];
  v32 = swift_getWitnessTable();
  v33 = v47[3];
  sub_1C1264FB0();
  OUTLINED_FUNCTION_8_11();
  v34(v29, v11);
  sub_1C1264480();
  v69 = v32;
  v70 = v31;
  v35 = v47[2];
  v36 = swift_getWitnessTable();
  sub_1C1264FB0();
  OUTLINED_FUNCTION_8_11();
  v37(v33, v15);
  sub_1C1264490();
  if (qword_1EDE812E0 != -1)
  {
    swift_once();
  }

  v67 = v36;
  v68 = v31;
  v38 = v57;
  v39 = swift_getWitnessTable();
  v40 = v54;
  sub_1C1264FB0();
  OUTLINED_FUNCTION_8_11();
  v41(v35, v38);
  v65 = v39;
  v66 = v31;
  v42 = v51;
  v43 = swift_getWitnessTable();
  v44 = v55;
  sub_1C0FDBA4C(v40, v42, v43);
  v45 = *(v58 + 8);
  v45(v40, v42);
  sub_1C0FDBA4C(v44, v42, v43);
  return (v45)(v44, v42);
}

uint64_t sub_1C123664C@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a6;
  v78 = sub_1C1265670();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v69 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979C8);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v63 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98398);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v63 - v17;
  v73 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a2;
  v86 = a3;
  v87 = a4;
  v88 = a5;
  v66 = type metadata accessor for HeaderTitle();
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v63 - v27;
  v29 = a1[1];
  v70 = *a1;
  v65 = v29;
  LOBYTE(v84[0]) = *(a1 + 16);
  v68 = a1[3];
  v64 = *(a1 + 32);
  v63 = *(a1 + 33);
  v85 = a2;
  v86 = a3;
  v87 = a4;
  v88 = a5;
  v30 = type metadata accessor for PhotosSectionHeader();
  (*(v20 + 16))(v23, a1 + *(v30 + 76), a2);
  v31 = *(v30 + 80);
  v32 = v73[2];
  v73 = a1;
  v33 = v71;
  (v32)(v71, a1 + v31, a3);
  v62 = a2;
  v34 = v66;
  sub_1C1236DA4(v70, v65, v84, v68, v64, v63, v23, v33, v25, v62, a3);
  WitnessTable = swift_getWitnessTable();
  v70 = v28;
  v68 = WitnessTable;
  sub_1C0FDBA4C(v25, v34, WitnessTable);
  v36 = v67;
  v37 = *(v67 + 8);
  v38 = v69;

  v71 = v25;
  v37(v25, v34);
  sub_1C1265660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  LOBYTE(a3) = sub_1C1264480();
  *(inited + 32) = a3;
  v40 = sub_1C1264490();
  *(inited + 33) = v40;
  v41 = sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != a3)
  {
    v41 = sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v40)
  {
    v41 = sub_1C12644B0();
  }

  v42 = *(v73 + 48);
  sub_1C12628A0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v75;
  (*(v76 + 32))(v75, v38, v78);
  v52 = &v51[*(v74 + 36)];
  *v52 = v41;
  *(v52 + 1) = v44;
  *(v52 + 2) = v46;
  *(v52 + 3) = v48;
  *(v52 + 4) = v50;
  v52[40] = 0;
  v53 = v51;
  v54 = v72;
  sub_1C0FDB71C(v53, v72, &qword_1EBE979C8);
  v55 = v79;
  *(v54 + *(v79 + 36)) = v42 ^ 1;
  v56 = v77;
  sub_1C0FDB71C(v54, v77, &qword_1EBE98398);
  v57 = *(v36 + 16);
  v58 = v71;
  v59 = v70;
  v57(v71, v70, v34);
  v85 = v58;
  v60 = v80;
  sub_1C1239FB8(v56, v80);
  v86 = v60;
  v84[0] = v34;
  v84[1] = v55;
  v82 = v68;
  v83 = sub_1C123A028();
  sub_1C119EE80(&v85, 2, v84);
  sub_1C0FD1A5C(v56, &qword_1EBE98398);
  v37(v59, v34);
  sub_1C0FD1A5C(v60, &qword_1EBE98398);
  return (v37)(v58, v34);
}

uint64_t sub_1C1236DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a3;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v16;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5 & 1;
  *(a9 + 49) = a6;
  v17 = type metadata accessor for HeaderTitle();
  (*(*(a10 - 8) + 32))(a9 + *(v17 + 68), a7, a10);
  return (*(*(a11 - 8) + 32))(a9 + *(v17 + 72), a8, a11);
}

uint64_t PhotosSectionHeaderTitleSize.font.getter()
{
  switch(*v0)
  {
    case 1:
      if (qword_1EBE8FD88 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 2:
      if (qword_1EBE8FD90 != -1)
      {
        goto LABEL_12;
      }

      break;
    case 3:
      if (qword_1EBE8FD98 != -1)
      {
        goto LABEL_12;
      }

      break;
    default:
      if (qword_1EDE812C0 != -1)
      {
LABEL_12:
        swift_once();
      }

      break;
  }
}

uint64_t PhotosSectionHeaderTitleSize.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

double PhotosSectionHeaderTitleView.init(title:titleSize:titleMaxLines:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  result = 0.0;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5 & 1;
  return result;
}

uint64_t PhotosSectionHeaderTitleView.init(titleText:titleSize:titleMaxLines:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = v8;
  *(a8 + 24) = result;
  *(a8 + 32) = a2;
  *(a8 + 40) = a3 & 1;
  *(a8 + 48) = a4;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7 & 1;
  return result;
}

uint64_t PhotosSectionHeaderTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x41uLL);
  *a1 = sub_1C12638E0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983A0);
  return sub_1C1237154(__dst, a1 + *(v3 + 44));
}

uint64_t sub_1C1237154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v67 - v5;
  v69 = sub_1C1263D20();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983C0);
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v67 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983C8);
  MEMORY[0x1EEE9AC00](v67);
  v72 = &v67 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983D0);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v67 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983D8);
  MEMORY[0x1EEE9AC00](v71);
  v77 = &v67 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983E0);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v67 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983E8);
  MEMORY[0x1EEE9AC00](v79);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983F0);
  MEMORY[0x1EEE9AC00](v18);
  v19 = *(a1 + 8);
  v84 = v6;
  v85 = a2;
  v82 = v21;
  v83 = v20;
  v80 = v17;
  v81 = &v67 - v22;
  if (v19)
  {
    v86 = *a1;
    v87 = v19;
    sub_1C0FDB9AC();

    v23 = sub_1C12648F0();
    v25 = v24;
    LOBYTE(v19) = v26;
    v28 = v27;
  }

  else
  {
    v28 = *(a1 + 48);
    if (!v28)
    {
      result = sub_1C1266B70();
      __break(1u);
      return result;
    }

    LODWORD(v19) = *(a1 + 40);
    v23 = *(a1 + 24);
    v25 = *(a1 + 32);
    sub_1C0FDB850(v23, v25, v19 & 1);
  }

  KeyPath = swift_getKeyPath();
  v86 = v23;
  v87 = v25;
  v88 = v19 & 1;
  v89 = v28;
  v90 = KeyPath;
  v91 = 1;
  sub_1C1263D10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE983F8);
  sub_1C1239B2C();
  sub_1C1264D60();
  (*(v68 + 8))(v8, v69);
  sub_1C0FDB8E8(v23, v25, v19 & 1);

  v30 = v72;
  v31 = &v72[*(v67 + 36)];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130) + 28);
  v33 = *MEMORY[0x1E6980FA8];
  v34 = sub_1C1264830();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  (*(v74 + 32))(v30, v11, v75);
  v35 = swift_getKeyPath();
  v36 = v73;
  sub_1C0FDB71C(v30, v73, &qword_1EBE983C8);
  v37 = v36 + *(v70 + 36);
  *v37 = v35;
  *(v37 + 8) = 0;
  v38 = *(a1 + 56);
  LOBYTE(v32) = *(a1 + 64);
  v39 = swift_getKeyPath();
  v40 = v36;
  v41 = v77;
  sub_1C0FDB71C(v40, v77, &qword_1EBE983D0);
  v42 = v41 + *(v71 + 36);
  *v42 = v39;
  *(v42 + 8) = v38;
  *(v42 + 16) = v32;
  switch(*(a1 + 16))
  {
    case 1:
      v44 = v83;
      v43 = v84;
      v45 = v82;
      if (qword_1EBE8FD88 != -1)
      {
        swift_once();
      }

      v46 = &qword_1EBE98380;
      break;
    case 2:
      v44 = v83;
      v43 = v84;
      v45 = v82;
      if (qword_1EBE8FD90 != -1)
      {
        swift_once();
      }

      v46 = &qword_1EBE98388;
      break;
    case 3:
      v44 = v83;
      v43 = v84;
      v45 = v82;
      if (qword_1EBE8FD98 != -1)
      {
        swift_once();
      }

      v46 = &qword_1EBE98390;
      break;
    default:
      v44 = v83;
      v43 = v84;
      v45 = v82;
      if (qword_1EDE812C0 != -1)
      {
        swift_once();
      }

      v46 = &qword_1EDE812C8;
      break;
  }

  v47 = *v46;

  v48 = swift_getKeyPath();
  v49 = v41;
  v50 = v78;
  sub_1C0FDB71C(v49, v78, &qword_1EBE983D8);
  v51 = (v50 + *(v76 + 36));
  *v51 = v48;
  v51[1] = v47;
  v52 = sub_1C12651F0();
  v53 = swift_getKeyPath();
  v54 = v50;
  v55 = v80;
  sub_1C0FDB71C(v54, v80, &qword_1EBE983E0);
  v56 = (v55 + *(v79 + 36));
  *v56 = v53;
  v56[1] = v52;
  v57 = *MEMORY[0x1E6980E20];
  v58 = sub_1C1264590();
  (*(*(v58 - 8) + 104))(v43, v57, v58);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v58);
  sub_1C1239BE4();
  v59 = v81;
  sub_1C1264980();
  sub_1C0FD1A5C(v43, &qword_1EBE96550);
  sub_1C0FCC014(v55);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98400);
  v61 = v85;
  v62 = (v85 + *(v60 + 36));
  v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0) + 28);
  v64 = *MEMORY[0x1E69816C8];
  v65 = sub_1C1265340();
  (*(*(v65 - 8) + 104))(v62 + v63, v64, v65);
  *v62 = swift_getKeyPath();
  return (*(v45 + 32))(v61, v59, v44);
}

uint64_t sub_1C1237AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE90EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983B8);
  v20 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C1263C30();
  sub_1C1266790();
  v18 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  v4 = sub_1C1265B00();
  sub_1C0FDB6D4(&qword_1EDE7C010, qword_1EBE90EF8);
  v5 = sub_1C1262E70();
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  if (*(v2 + 49) == 1)
  {
    v24 = sub_1C1263AB0();
    v25 = 0;
    v26 = 1;
    sub_1C10228C4();
  }

  else
  {
    if (qword_1EDE812D0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDE812D8;
    v25 = 0;
    v26 = 1;
    sub_1C1022918();
  }

  v24 = sub_1C1265A70();
  MEMORY[0x1EEE9AC00](v24);
  v11 = v18;
  *(&v17 - 6) = v20;
  *(&v17 - 5) = v11;
  *(&v17 - 2) = *(a1 + 32);
  *(&v17 - 2) = v2;
  v12 = sub_1C1022650();
  WitnessTable = swift_getWitnessTable();
  sub_1C121710C(sub_1C1239A94, (&v17 - 8), MEMORY[0x1E6981D78], v4, v12, WitnessTable, v7);

  v22 = sub_1C0FDB6D4(&unk_1EDE7C000, qword_1EBE90EF8);
  v23 = WitnessTable;
  v14 = swift_getWitnessTable();
  sub_1C0FDBA4C(v7, v5, v14);
  v15 = *(v19 + 8);
  v15(v7, v5);
  sub_1C0FDBA4C(v10, v5, v14);
  return (v15)(v10, v5);
}

uint64_t sub_1C1237E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a4;
  v83 = a5;
  v78 = a6;
  v81 = a3;
  v79 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v77 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v67 - v10;
  swift_getTupleTypeMetadata2();
  v11 = sub_1C1265B00();
  v73 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  v70 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983B8);
  v85 = v11;
  v21 = sub_1C1263C30();
  v22 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v67 - v25;
  v27 = *(a1 + 24);
  v74 = v29;
  v75 = v28;
  v80 = a1;
  v84 = &v67 - v25;
  v72 = v21;
  if (v27)
  {
    v30 = *(a1 + 16);
    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    LOBYTE(__dst[0]) = *(a1 + 48);
    v90[0] = v30;
    v90[1] = v27;
    LOBYTE(v90[2]) = v31;
    memset(&v90[3], 0, 32);
    v90[7] = v32;
    LOBYTE(v90[8]) = __dst[0];
    v70 = a2;
    v33 = v21;
    v34 = v24;
    memcpy(v93, v90, 0x41uLL);
    memcpy(v91, v90, 0x41uLL);
    memcpy(v92, v90, 0x41uLL);
    v89 = 1;

    sub_1C1239AC4(v90, __dst);
    sub_1C1239AC4(v91, __dst);
    sub_1C1239AFC(v93);
    memcpy(v88, v92, 0x48uLL);
    v88[9] = 0;
    LOBYTE(v88[10]) = 1;
    v35 = sub_1C0FDB6D4(&qword_1EDE7B770, &qword_1EBE983B8);
    WitnessTable = swift_getWitnessTable();
    sub_1C1112D68();
    sub_1C1239AFC(v90);
    memcpy(__dst, v88, 0x51uLL);
    sub_1C0FD1A5C(__dst, &qword_1EBE983B8);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
    v86 = v35;
    v87 = WitnessTable;
    v37 = v34;
    swift_getWitnessTable();
    sub_1C1170030(v34, v26);
    v38 = v74;
    v39 = v34;
    v40 = v75;
    v73 = *(v74 + 8);
    (v73)(v39, v75);
    v41 = v80;
    a2 = v70;
    v42 = v26;
  }

  else
  {
    v68 = v13;
    v69 = v20;
    v43 = v85;
    if (a2 == MEMORY[0x1E6981E70])
    {
      v37 = v24;
      __swift_storeEnumTagSinglePayload(v24, 1, 1, v21);
      v54 = sub_1C0FDB6D4(&qword_1EDE7B770, &qword_1EBE983B8);
      v55 = swift_getWitnessTable();
      __dst[11] = v54;
      __dst[12] = v55;
      swift_getWitnessTable();
      v42 = v84;
      v52 = v84;
      v53 = v37;
    }

    else
    {
      v44 = v82;
      __dst[0] = a2;
      __dst[1] = v81;
      __dst[2] = v82;
      __dst[3] = v83;
      v45 = v24;
      v46 = type metadata accessor for HeaderTitle();
      v47 = v19;
      sub_1C0FDBA4C(v80 + *(v46 + 68), a2, v44);
      v48 = v70;
      (*(v70 + 16))(v16, v19, a2);
      v93[0] = 0;
      LOBYTE(v93[1]) = 1;
      __dst[0] = v16;
      __dst[1] = v93;
      v88[0] = a2;
      v88[1] = MEMORY[0x1E6981840];
      v92[0] = v44;
      v92[1] = MEMORY[0x1E6981838];
      v49 = v68;
      sub_1C119EE80(__dst, 2, v88);
      v70 = *(v48 + 8);
      (v70)(v16, a2);
      v50 = sub_1C0FDB6D4(&qword_1EDE7B770, &qword_1EBE983B8);
      v51 = swift_getWitnessTable();
      sub_1C1112E18();
      (*(v73 + 8))(v49, v43);
      (v70)(v47, a2);
      __swift_storeEnumTagSinglePayload(v45, 0, 1, v21);
      __dst[16] = v50;
      __dst[17] = v51;
      v37 = v45;
      swift_getWitnessTable();
      v42 = v84;
      v52 = v84;
      v53 = v45;
    }

    sub_1C1170030(v53, v52);
    v38 = v74;
    v40 = v75;
    v73 = *(v74 + 8);
    (v73)(v37, v75);
    v41 = v80;
  }

  v71 = v37;
  __dst[0] = a2;
  v56 = v81;
  __dst[1] = v81;
  __dst[2] = v82;
  v57 = v83;
  __dst[3] = v83;
  v58 = type metadata accessor for HeaderTitle();
  v59 = v76;
  sub_1C0FDBA4C(v41 + *(v58 + 72), v56, v57);
  (*(v38 + 16))(v37, v42, v40);
  __dst[0] = v37;
  v60 = v79;
  v61 = v77;
  (*(v79 + 16))(v77, v59, v56);
  __dst[1] = v61;
  v88[0] = v40;
  v88[1] = v56;
  v62 = sub_1C0FDB6D4(&qword_1EDE7B770, &qword_1EBE983B8);
  v63 = swift_getWitnessTable();
  __dst[14] = v62;
  __dst[15] = v63;
  __dst[13] = swift_getWitnessTable();
  v92[0] = swift_getWitnessTable();
  v92[1] = v57;
  sub_1C119EE80(__dst, 2, v88);
  v64 = *(v60 + 8);
  v64(v59, v56);
  v65 = v73;
  (v73)(v84, v40);
  v64(v61, v56);
  return v65(v71, v40);
}

uint64_t sub_1C12387D4(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v5 = sub_1C1264680();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  v12 = sub_1C1264560();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  a2();
  sub_1C12645B0();
  sub_1C1264670();

  sub_1C1264550();
  sub_1C1264580();

  (*(v14 + 8))(v18, v12);
  (*(v7 + 104))(v11, *MEMORY[0x1E6980EA8], v5);
  v19 = sub_1C12646C0();

  result = (*(v7 + 8))(v11, v5);
  *a3 = v19;
  return result;
}

uint64_t sub_1C123899C()
{
  v0 = sub_1C1264560();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1264570();
  sub_1C12645B0();
  sub_1C1264670();

  sub_1C1264550();
  v4 = sub_1C1264580();

  result = (*(v1 + 8))(v3, v0);
  qword_1EBE98390 = v4;
  return result;
}

uint64_t sub_1C1238AA4()
{
  result = sub_1C12638E0();
  qword_1EDE812D8 = result;
  return result;
}

uint64_t sub_1C1238AC4()
{
  result = MEMORY[0x1C68F0CE0]();
  v1 = 0.0;
  if (result)
  {
    v1 = 13.0;
  }

  qword_1EDE7A438 = *&v1;
  return result;
}

uint64_t sub_1C1238B24()
{
  result = MEMORY[0x1C68F0CE0]();
  v1 = 0.0;
  if (result)
  {
    v1 = 13.0;
  }

  qword_1EDE7A430 = *&v1;
  return result;
}

unint64_t sub_1C1238B70()
{
  result = qword_1EBE983A8;
  if (!qword_1EBE983A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE983A8);
  }

  return result;
}

void sub_1C1238BE0()
{
  sub_1C1239A2C(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C1239A2C(319, &qword_1EDE76A80, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1C1239A2C(319, &qword_1EDE775A0, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C1238D4C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = *(v6 + 84);
  }

  v12 = *(v6 + 80);
  v13 = *(*(v5 - 8) + 64);
  v14 = *(v9 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (v15 >= a2)
  {
LABEL_29:
    if (v11 > 0x7FFFFFFE)
    {
      v25 = ((((result & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + v12 + 48) & ~v12;
      if (v7 != v15)
      {
        v25 = (v25 + v13 + v14) & ~v14;
        v7 = v10;
        v5 = v8;
      }

      return __swift_getEnumTagSinglePayload(v25, v7, v5);
    }

    else
    {
      v24 = *(result + 8);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      if ((v24 + 1) >= 2)
      {
        return v24;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v16 = ((*(*(v8 - 8) + 64) + ((v13 + v14 + ((v12 + 88) & ~v12)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
    v17 = (a2 - v15 + 255) >> 8;
    if (v16 <= 3)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(result + v16);
        if (!*(result + v16))
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 2:
        v21 = *(result + v16);
        if (!*(result + v16))
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *(result + v16);
        if (!v21)
        {
          goto LABEL_29;
        }

LABEL_25:
        v22 = (v21 - 1) << (8 * v16);
        if (v16 <= 3)
        {
          v23 = *result;
        }

        else
        {
          v22 = 0;
          v23 = *result;
        }

        result = v15 + (v23 | v22) + 1;
        break;
      default:
        goto LABEL_29;
    }
  }

  return result;
}

void sub_1C1238F54(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((*(*(v10 - 8) + 64) + ((v16 + v17 + ((v15 + 88) & ~v15)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v14 >= a3)
  {
    v22 = 0;
  }

  else
  {
    v19 = (a3 - v14 + 255) >> 8;
    if (v18 <= 3)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v14 >= a2)
  {
    switch(v22)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if (v13 > 0x7FFFFFFE)
          {
            v25 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + v15 + 48) & ~v15;
            if (v9 != v14)
            {
              v25 = (v25 + v16 + v17) & ~v17;
              v9 = v12;
              v7 = v10;
            }

            __swift_storeEnumTagSinglePayload(v25, a2, v9, v7);
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *a1 = 0;
            *(a1 + 8) = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 8) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    bzero(a1, v18);
    if (v18 <= 3)
    {
      v24 = (v23 >> 8) + 1;
    }

    else
    {
      v24 = 1;
    }

    if (v18 > 3)
    {
      *a1 = v23;
    }

    else
    {
      *a1 = v23;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v18) = v24;
        break;
      case 2:
        *(a1 + v18) = v24;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v18) = v24;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhotosSectionHeaderTitleSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_7SwiftUI4TextVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C12392F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C123934C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1C12393C4()
{
  sub_1C1239A2C(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1239A2C(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C1239A2C(319, &qword_1EDE76A80, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C1239514(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  if (v7 <= *(v9 + 84))
  {
    v10 = *(v9 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v6 + 80);
  v12 = *(*(v5 - 8) + 64);
  v13 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v12 + v13 + ((v11 + 50) & ~v11)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_28:
      v24 = a1 & 0xFFFFFFFFFFFFFFF8;
      if (v10 > 0x7FFFFFFE)
      {
        v26 = (v24 + v11 + 50) & ~v11;
        if (v7 != v14)
        {
          v26 = (v26 + v12 + v13) & ~v13;
          v7 = *(v9 + 84);
          v5 = v8;
        }

        return __swift_getEnumTagSinglePayload(v26, v7, v5);
      }

      else
      {
        v25 = *(v24 + 24);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        if ((v25 + 1) >= 2)
        {
          return v25;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_28;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v14 + (v23 | v21) + 1;
}

void sub_1C123973C(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  v17 = *(v11 + 80);
  v18 = ((v16 + v17 + ((v15 + 50) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  v20 = a3 >= v14;
  v21 = a3 - v14;
  if (v21 != 0 && v20)
  {
    if (v18 <= 3)
    {
      v25 = ((v21 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v14 >= a2)
  {
    switch(v22)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          v28 = a1 & 0xFFFFFFFFFFFFFFF8;
          if (v13 > 0x7FFFFFFE)
          {
            v29 = (v28 + v15 + 50) & ~v15;
            if (v9 != v14)
            {
              v29 = (v29 + v16 + v17) & ~v17;
              v9 = v12;
              v7 = v10;
            }

            __swift_storeEnumTagSinglePayload(v29, a2, v9, v7);
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *(v28 + 16) = 0;
            *(v28 + 24) = 0;
            *(v28 + 16) = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(v28 + 24) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v23 = ~v14 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v27;
          *(a1 + 2) = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v23;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v18) = v24;
        break;
      case 2:
        *(a1 + v18) = v24;
        break;
      case 3:
        goto LABEL_49;
      case 4:
        *(a1 + v18) = v24;
        break;
      default:
        return;
    }
  }
}

void sub_1C1239A2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C1239B2C()
{
  result = qword_1EDE7BE88;
  if (!qword_1EDE7BE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983F8);
    sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE88);
  }

  return result;
}

unint64_t sub_1C1239BE4()
{
  result = qword_1EDE7BD10;
  if (!qword_1EDE7BD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983E8);
    sub_1C1239C9C();
    sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD10);
  }

  return result;
}

unint64_t sub_1C1239C9C()
{
  result = qword_1EDE7BD18;
  if (!qword_1EDE7BD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983E0);
    sub_1C1239D54();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD18);
  }

  return result;
}

unint64_t sub_1C1239D54()
{
  result = qword_1EDE7BD40;
  if (!qword_1EDE7BD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983D8);
    sub_1C1239E0C();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD40);
  }

  return result;
}

unint64_t sub_1C1239E0C()
{
  result = qword_1EDE7BD98;
  if (!qword_1EDE7BD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983D0);
    sub_1C1239EC4();
    sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD98);
  }

  return result;
}

unint64_t sub_1C1239EC4()
{
  result = qword_1EDE7BE60;
  if (!qword_1EDE7BE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE983F8);
    sub_1C1239B2C();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&unk_1EDE7B920, &qword_1EBE93130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE60);
  }

  return result;
}

uint64_t sub_1C1239FB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C123A028()
{
  result = qword_1EDE77168;
  if (!qword_1EDE77168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98398);
    sub_1C123A0B4();
    sub_1C0FF9130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77168);
  }

  return result;
}

unint64_t sub_1C123A0B4()
{
  result = qword_1EDE772C0;
  if (!qword_1EDE772C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE979C8);
    sub_1C123A140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772C0);
  }

  return result;
}

unint64_t sub_1C123A140()
{
  result = qword_1EDE76B68;
  if (!qword_1EDE76B68)
  {
    sub_1C1265670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76B68);
  }

  return result;
}

uint64_t static PhotosCustomStringAttribute.name.getter()
{
  swift_beginAccess();
  v0 = qword_1EBE98408;

  return v0;
}

uint64_t static PhotosCustomStringAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  qword_1EBE98408 = a1;
  qword_1EBE98410 = a2;
}

uint64_t sub_1C123A2A0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EBE98410;
  *a1 = qword_1EBE98408;
  a1[1] = v2;
}

uint64_t sub_1C123A2F0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBE98408 = v2;
  qword_1EBE98410 = v1;
}

uint64_t static PhotosCustomStringAttribute.transform(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a2;
  v88 = a3;
  v94 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98418);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v73 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98420);
  OUTLINED_FUNCTION_0();
  v89 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v73 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98428);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v73 - v11;
  OUTLINED_FUNCTION_49();
  v12 = sub_1C1261B50();
  OUTLINED_FUNCTION_0();
  v74 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v73 - v19;
  OUTLINED_FUNCTION_49();
  v96 = sub_1C1261A90();
  OUTLINED_FUNCTION_0();
  v93 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v95 = v23 - v22;
  OUTLINED_FUNCTION_49();
  v24 = sub_1C1261A70();
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v92 = &v73 - v31;
  OUTLINED_FUNCTION_49();
  v32 = sub_1C1261AA0();
  OUTLINED_FUNCTION_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98430) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v73 - v41;
  sub_1C1261AD0();
  OUTLINED_FUNCTION_3();
  (*(v43 + 16))(a4, v94);
  v82 = a4;
  sub_1C1261AB0();
  (*(v34 + 16))(v42, v38, v32);
  v44 = *(v39 + 44);
  v94 = sub_1C123AC18(&qword_1EBE98438, MEMORY[0x1E69687C8]);
  sub_1C12662D0();
  v45 = v38;
  v46 = v29;
  (*(v34 + 8))(v45, v32);
  v47 = v24;
  ++v93;
  v90 = (v26 + 32);
  v91 = (v26 + 16);
  v75 = (v74 + 4);
  ++v74;
  v73 = v89 + 1;
  v89 = (v26 + 8);
  v84 = v32;
  v85 = v24;
  v83 = v44;
  while (1)
  {
    v48 = v95;
    sub_1C1266310();
    sub_1C123AC18(&qword_1EBE98440, MEMORY[0x1E69687B0]);
    v49 = v96;
    v50 = sub_1C1265DE0();
    (*v93)(v48, v49);
    if (v50)
    {
      break;
    }

    v51 = sub_1C12663A0();
    v52 = v92;
    (*v91)(v92);
    v51(&v98, 0);
    sub_1C1266320();
    (*v90)(v46, v52, v47);
    sub_1C123AC60();
    v53 = v46;
    sub_1C1261A80();
    v54 = v99;
    if (v99)
    {
      v55 = v53;
      v56 = v97;
      v57 = v98;
      v87(v98, v99);
      if (__swift_getEnumTagSinglePayload(v56, 1, v12) == 1)
      {
        v47 = v85;
        (*v89)(v53, v85);
        v46 = v53;

        sub_1C0FD1A5C(v97, &qword_1EBE98428);
      }

      else
      {
        (*v75)(v86, v97, v12);
        v58 = v77;
        sub_1C1261B40();
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v73 - 2) = v60;
        swift_getKeyPath();
        v61 = v78;
        sub_1C1261B20();

        v62 = *v74;
        (*v74)(v58, v12);
        v98 = v57;
        v99 = v54;
        v63 = v76;
        v64 = v79;
        sub_1C1261B30();
        v65 = v61;
        v66 = v12;
        (*v73)(v65, v64);

        v67 = v80;
        v68 = v55;
        sub_1C1261A60();
        sub_1C123ADF4();
        v69 = sub_1C1261B10();
        v70 = v86;
        sub_1C1261BA0();
        v69(&v98, 0);
        v71 = v67;
        v46 = v68;
        sub_1C0FD1A5C(v71, &qword_1EBE98418);
        v62(v63, v66);
        v12 = v66;
        v62(v70, v66);
        v47 = v85;
        (*v89)(v46, v85);
      }
    }

    else
    {
      (*v89)(v53, v47);
      v46 = v53;
    }
  }

  return sub_1C0FD1A5C(v42, &qword_1EBE98430);
}

uint64_t sub_1C123AC18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C123AC60()
{
  result = qword_1EBE98448;
  if (!qword_1EBE98448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98448);
  }

  return result;
}

uint64_t sub_1C123AD68()
{
  v0 = sub_1C123AC60();

  return MEMORY[0x1EEDC3C18](&type metadata for PhotosCustomStringAttribute, &type metadata for PhotosCustomStringAttribute, v0);
}

unint64_t sub_1C123ADF4()
{
  result = qword_1EBE98450;
  if (!qword_1EBE98450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98450);
  }

  return result;
}

uint64_t static PhotosCustomStringAttribute.transform(_:_:)@<X0>(void *a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C1261AD0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  swift_getKeyPath();
  sub_1C123AF80();
  v15 = a1;
  result = sub_1C1261AF0();
  if (!v4)
  {
    static PhotosCustomStringAttribute.transform(_:_:)(v14, a2, a3, a4);
    return (*(v10 + 8))(v14, v8);
  }

  return result;
}

unint64_t sub_1C123AF80()
{
  result = qword_1EBE98458;
  if (!qword_1EBE98458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98458);
  }

  return result;
}

_BYTE *sub_1C123B098(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C123B14C()
{
  sub_1C123AF80();

  return sub_1C12619E0();
}

uint64_t sub_1C123B198()
{
  sub_1C123AF80();

  return sub_1C12619E0();
}

unint64_t sub_1C123B1E8()
{
  result = qword_1EBE98460;
  if (!qword_1EBE98460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98460);
  }

  return result;
}

unint64_t sub_1C123B240()
{
  result = qword_1EBE98468;
  if (!qword_1EBE98468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98468);
  }

  return result;
}

unint64_t sub_1C123B294()
{
  result = qword_1EBE98470;
  if (!qword_1EBE98470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98470);
  }

  return result;
}

BOOL static OneUpBadgeSpec.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a2[1];
  v21 = *a2;
  v22 = v2;
  v3 = a2[3];
  v23 = a2[2];
  v24 = v3;
  v4 = a1[1];
  v17 = *a1;
  v18 = v4;
  v25[0] = v17;
  v25[1] = v4;
  v5 = a1[3];
  v19 = a1[2];
  v20 = v5;
  v25[2] = v19;
  v25[3] = v5;
  v6 = a2[3];
  v25[6] = v23;
  v25[7] = v6;
  v25[4] = v21;
  v25[5] = v2;
  if ((v5 & 0x8000000000000000) != 0)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      sub_1C123B42C(v25);
      return v17 == v21;
    }

LABEL_7:
    sub_1C0FF526C(&v21, &v13);
    sub_1C123B42C(v25);
    return 0;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    v8 = a1[1];
    v13 = *a1;
    v14 = v8;
    v9 = a1[3];
    v15 = a1[2];
    *(&v16 + 1) = *(&v9 + 1);
    *&v16 = v9 & 0x7FFFFFFFFFFFFFFFLL;
    sub_1C123B494(&v13, v12);
    goto LABEL_7;
  }

  v13 = v17;
  v14 = v18;
  v15 = v19;
  v16 = v20;
  v12[0] = v21;
  v12[1] = v22;
  v12[2] = v23;
  v12[3] = v24;
  v7 = static OneUpPhotosBadgeViewSpec.== infix(_:_:)(&v13, v12);
  sub_1C0FF526C(&v21, v11);
  sub_1C0FF526C(&v17, v11);
  sub_1C123B42C(v25);
  return v7;
}

uint64_t sub_1C123B42C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C123B494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OneUpBadgeSpec.hash(into:)()
{
  v1 = *v0;
  if (((*(v0 + 49) | ((*(v0 + 53) | (*(v0 + 55) << 16)) << 32)) & 0x8000000000000000) == 0)
  {
    v2 = v0[1];
    v3 = v0[3];
    v4 = v0[7];
    v5 = *(v0 + 48);
    MEMORY[0x1C68F07E0](0);
    if (v2)
    {
      sub_1C1266EB0();
      sub_1C1265EF0();
      if (v3)
      {
LABEL_4:
        sub_1C1266EB0();
        sub_1C1265EF0();
LABEL_8:
        sub_1C1265EF0();
        v6 = v5 & 1;
        v1 = v4;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1C1266EB0();
      if (v3)
      {
        goto LABEL_4;
      }
    }

    sub_1C1266EB0();
    goto LABEL_8;
  }

  v6 = 1;
LABEL_9:
  MEMORY[0x1C68F07E0](v6);
  return MEMORY[0x1C68F07E0](v1);
}

uint64_t OneUpBadgeSpec.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 48);
  v5 = *(v0 + 49) | ((*(v0 + 53) | (*(v0 + 55) << 16)) << 32);
  v6 = v0[7];
  sub_1C1266E90();
  if ((v5 & 0x8000000000000000) != 0)
  {
    v7 = 1;
  }

  else
  {
    MEMORY[0x1C68F07E0](0);
    sub_1C1266EB0();
    if (v2)
    {
      sub_1C1265EF0();
    }

    sub_1C1266EB0();
    if (v3)
    {
      sub_1C1265EF0();
    }

    sub_1C1265EF0();
    v7 = v4 & 1;
    v1 = v6;
  }

  MEMORY[0x1C68F07E0](v7);
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C123B720()
{
  sub_1C1266E90();
  OneUpBadgeSpec.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t OneUpBadgeView.spec.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C0FF526C(v7, &v6);
}

uint64_t OneUpBadgeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v51[2] = a1;
  v2 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98480);
  v9 = OUTLINED_FUNCTION_0_49(v8, &v69);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v51 - v10);
  v12 = type metadata accessor for OneUpPhotosBadgeView();
  v13 = OUTLINED_FUNCTION_0_49(v12, &v68);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98488);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v51 - v20;
  v22 = *v1;
  v23 = *(v1 + 48);
  if (v23 < 0)
  {
    v39 = *(v1 + 64);
    v40 = *(v1 + 72);
    if (*(v1 + 80) == 1)
    {
      swift_unknownObjectRetain();
      if (v39)
      {
LABEL_7:
        ObjectType = swift_getObjectType();
        v42 = (*(v40 + 16))(v22, ObjectType, v40);
        swift_unknownObjectRelease();
LABEL_10:
        *v11 = v42;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98490);
        v44 = type metadata accessor for OneUpSpatialPhotoBadgeStateModel();
        OUTLINED_FUNCTION_1_62();
        v47 = sub_1C123BCB4(v45, v46);
        OUTLINED_FUNCTION_0_89();
        v50 = sub_1C123BCB4(v48, v49);
        v60 = v51[0];
        v61 = v44;
        v62 = v47;
        v63 = v50;
        OUTLINED_FUNCTION_2_71();
        swift_getOpaqueTypeConformance2();
        sub_1C123BCFC();
        OUTLINED_FUNCTION_3_54();
        return sub_1C1263C20();
      }
    }

    else
    {

      sub_1C1266420();
      v43 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FF9034(v39, v40, 0);
      (*(v4 + 8))(v7, v2);
      v40 = v61;
      if (v60)
      {
        goto LABEL_7;
      }
    }

    v42 = 0;
    goto LABEL_10;
  }

  v24 = *(v1 + 56);
  v26 = *(v1 + 32);
  v25 = *(v1 + 40);
  v28 = *(v1 + 16);
  v27 = *(v1 + 24);
  v29 = *(v1 + 8);
  v53.n128_u64[0] = *v1;
  v53.n128_u64[1] = v29;
  v54 = v28;
  v55 = v27;
  v56 = v26;
  v57 = v25;
  v58 = v23;
  v59 = v24;
  v60 = v22;
  v61 = v29;
  v62 = v28;
  v63 = v27;
  v64 = v26;
  v65 = v25;
  v66 = v23;
  v67 = v24;
  sub_1C123B494(&v60, v52);
  OneUpPhotosBadgeView.init(spec:)(&v53, v15);
  if (qword_1EDE82FD8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for OneUpSpatialPhotoBadgeStateModel();
  OUTLINED_FUNCTION_1_62();
  v33 = sub_1C123BCB4(v31, v32);
  OUTLINED_FUNCTION_0_89();
  v36 = sub_1C123BCB4(v34, v35);
  v37 = v51[0];
  sub_1C1264A20();
  sub_1C123BD78(v15);
  (*(v18 + 16))(v11, v21, v16);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98490);
  v53.n128_u64[0] = v37;
  v53.n128_u64[1] = v30;
  v54 = v33;
  v55 = v36;
  OUTLINED_FUNCTION_2_71();
  swift_getOpaqueTypeConformance2();
  sub_1C123BCFC();
  OUTLINED_FUNCTION_3_54();
  sub_1C1263C20();
  return (*(v18 + 8))(v21, v16);
}

uint64_t sub_1C123BCB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C123BCFC()
{
  result = qword_1EDE7B7B8;
  if (!qword_1EDE7B7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B7B8);
  }

  return result;
}

uint64_t sub_1C123BD78(uint64_t a1)
{
  v2 = type metadata accessor for OneUpPhotosBadgeView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C123BDD8()
{
  result = qword_1EDE7E478;
  if (!qword_1EDE7E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7E478);
  }

  return result;
}

uint64_t sub_1C123BE58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C123BEA0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C123BF40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C123BF88(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 80) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 81) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C123C000()
{
  result = qword_1EDE76E50;
  if (!qword_1EDE76E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98498);
    type metadata accessor for OneUpPhotosBadgeView();
    type metadata accessor for OneUpSpatialPhotoBadgeStateModel();
    sub_1C123BCB4(&qword_1EDE82E88, type metadata accessor for OneUpPhotosBadgeView);
    sub_1C123BCB4(&qword_1EDE7C6C8, type metadata accessor for OneUpSpatialPhotoBadgeStateModel);
    swift_getOpaqueTypeConformance2();
    sub_1C123BCFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E50);
  }

  return result;
}

uint64_t EnvironmentValues.photosUserInterfaceIdiom.getter()
{
  sub_1C123C198();

  return sub_1C12637F0();
}

unint64_t sub_1C123C198()
{
  result = qword_1EDE80C40;
  if (!qword_1EDE80C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80C40);
  }

  return result;
}

uint64_t PhotosUserInterfaceIdiom.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t (*EnvironmentValues.photosUserInterfaceIdiom.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C123C198();
  sub_1C12637F0();
  return sub_1C123C30C;
}

PhotosSwiftUICore::PhotosUserInterfaceIdiom __swiftcall PhotosCurrentUserInterfaceIdiom()()
{
  v1 = v0;
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v5 = 0x5020606030100uLL >> (8 * v3);
  if (v3 >= 7)
  {
    LOBYTE(v5) = 6;
  }

  *v1 = v5;
  return result;
}

unint64_t sub_1C123C3DC()
{
  result = qword_1EBE984A0;
  if (!qword_1EBE984A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE984A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosUserInterfaceIdiom(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C123C51C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDE80C48 != -1)
  {
    result = swift_once();
  }

  *a1 = byte_1EDE7A0A0;
  return result;
}

uint64_t sub_1C123C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C123C3DC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t PhotosAlbumMultiAssetView.init<>(_:maxItems:customAspectRatio:cornerRadiusOverlayColor:forceUseMultiAsset:wantsPlaceholderSymbol:wantsLargeStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a9 + 80), __src, 0xD1uLL);
  *(a9 + 296) = swift_getKeyPath();
  *(a9 + 304) = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE984B0);
  v18 = *(v17 + 80);
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v19 = a9 + *(v17 + 84);
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;

  v21 = sub_1C123C8C0(v20, a2);

  *(a9 + 72) = v21;
  *(a9 + 16) = nullsub_1;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4 & 1;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 65) = a7;
  *(a9 + 66) = a8;
  return result;
}

uint64_t PhotosAlbumMultiAssetView.init(_:maxItems:showAccessoryContent:customAspectRatio:cornerRadiusOverlayColor:forceUseMultiAsset:wantsPlaceholderSymbol:wantsLargeStyle:accessoryContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a9 + 80), __src, 0xD1uLL);
  *(a9 + 296) = swift_getKeyPath();
  *(a9 + 304) = 0;
  v18 = type metadata accessor for PhotosAlbumMultiAssetView();
  v19 = *(v18 + 80);
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v20 = a9 + *(v18 + 84);
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;

  v22 = sub_1C123C8C0(v21, a2);

  *(a9 + 72) = v22;
  *(a9 + 16) = a11;
  *(a9 + 24) = a12;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5 & 1;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 65) = a8;
  *(a9 + 66) = a10;
  return result;
}

uint64_t sub_1C123C8C0(unint64_t a1, uint64_t a2)
{
  if (a1 && (a1 >> 62 ? (v4 = sub_1C1266BB0()) : (v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10)), v4 >= a2 ? (v5 = a2) : (v5 = v4), v5 >= 1))
  {
    sub_1C0FF768C(0);
    sub_1C0FF768C(v5 - 1);
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1C68F02D0](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C0FE408C();
        v7 = v11;
      }

      v9 = *(v7 + 16);
      if (v9 >= *(v7 + 24) >> 1)
      {
        sub_1C0FE408C();
        v7 = v12;
      }

      *(v7 + 16) = v9 + 1;
      v10 = v7 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v8;
      ++v6;
    }

    while (v5 != v6);
  }

  else
  {
    sub_1C0FE408C();
    v7 = v13;
    v14 = *(v13 + 16);
    if (v14 >= *(v13 + 24) >> 1)
    {
      sub_1C0FE408C();
      v7 = v17;
    }

    *(v7 + 16) = v14 + 1;
    v15 = v7 + 16 * v14;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
  }

  return v7;
}

uint64_t sub_1C123CA7C(uint64_t a1)
{
  if (sub_1C123CAA4(a1))
  {
    return 1;
  }

  else
  {
    return *(v1 + 64);
  }
}

void sub_1C123CAD4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v8 = sub_1C1263E90();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PhotosAssetView();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905E0);
  MEMORY[0x1EEE9AC00](v45);
  v15 = v44 - v14;
  if (*(v4 + 8) <= a2 || (sub_1C123CA7C(a3) & 1) != 0)
  {
    v16 = -3;
  }

  else
  {
    v16 = -1;
  }

  v17 = *(v4 + 72);
  v18 = *(v17 + 16);
  v46 = v8;
  v47 = v15;
  if (v18 > a1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (sub_1C123CA7C(a3))
  {
    v19 = 0;
    goto LABEL_13;
  }

  v18 = *(v17 + 16);
LABEL_11:
  if (v18 <= a1)
  {
    __break(1u);
    return;
  }

  v19 = *(v17 + 16 * a1 + 40);
  swift_unknownObjectRetain();
LABEL_13:
  v44[1] = v16 + a1;
  v20 = a3;
  v21 = sub_1C123CAA4(a3);
  v22 = 4;
  if (!v21)
  {
    v22 = 0;
  }

  v44[0] = v22;
  swift_unknownObjectRetain();
  v23 = sub_1C1200D04();
  [v23 setNetworkAccessAllowed_];
  *(v13 + 19) = swift_getKeyPath();
  v13[160] = 0;
  v24 = v19;
  v25 = v11[12];
  *&v13[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v26 = &v13[v11[13]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v13[v11[14]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  *v13 = 0;
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  v13[48] = 1;
  v13[8] = 0;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 52) = v44[0];
  *(v13 + 60) = 0;
  *(v13 + 34) = 1;
  *(v13 + 9) = 0;
  v13[80] = 1;
  *(v13 + 11) = v24;
  *(v13 + 12) = 0;
  *(v13 + 13) = v23;
  *(v13 + 7) = 0u;
  *(v13 + 8) = 0u;
  v13[144] = 2;
  v28 = v47;
  sub_1C1240310(v13, v47, type metadata accessor for PhotosAssetView);
  v29 = v28 + *(v45 + 36);
  *v29 = 0x3FF0000000000000;
  *(v29 + 8) = 0;
  v30 = sub_1C123CF44(v20);
  v31 = v48;
  v32 = *(v46 + 20);
  v33 = *MEMORY[0x1E697F468];
  v34 = sub_1C12639D0();
  (*(*(v34 - 8) + 104))(&v10[v32], v33, v34);
  sub_1C1263D30();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  swift_unknownObjectRelease();
  *v10 = v36;
  *(v10 + 1) = v38;
  *(v10 + 2) = v40;
  *(v10 + 3) = v42;
  v43 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984C8) + 36);
  sub_1C1240310(v10, v43, MEMORY[0x1E697FF20]);
  *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984E0) + 36)) = v30;
  sub_1C1240144(v28, v31);
}

uint64_t sub_1C123CF44(uint64_t a1)
{
  v3 = sub_1C12629F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 56))
  {
    v7 = *(v1 + 56);
  }

  else
  {
    sub_1C123D0D4(v18);
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v11 = v22;
    sub_1C1012620(v19, v20, v21, v22);
    sub_1C100C7D0(v18);
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v17 = v11;
    sub_1C123D430(a1, v6);
    sub_1C123D2E8();
    sub_1C10C37D8();
    v7 = v12;
    (*(v4 + 8))(v6, v3);
    sub_1C1001C84(v14, v15, v16, v17);
  }

  return v7;
}

uint64_t sub_1C123D0D4@<X0>(void *a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v14, (v1 + 80), 0xD1uLL);
  memcpy(v15, (v1 + 80), 0xD1uLL);
  if (sub_1C100D688(v15) == 1)
  {
    nullsub_1(v15);
    memcpy(v12, v14, 0xD1uLL);
    v7 = nullsub_1(v12);
    memcpy(a1, v7, 0xD0uLL);
    memcpy(v13, v14, 0xD1uLL);
    v8 = nullsub_1(v13);
    return sub_1C100D690(v8, v11);
  }

  else
  {
    nullsub_1(v15);
    memcpy(v12, v14, 0xD1uLL);
    nullsub_1(v12);
    memcpy(v13, v14, 0xD1uLL);
    nullsub_1(v13);

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v14, &qword_1EBE91C80);
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C123D2E8()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 296);
  if (*(v0 + 304) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1C123D430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C10D1A1C(v2 + *(a1 + 80), &v15 - v10, &unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1C123D634(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 84);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosAlbumMultiAssetView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984D0);
  v3 = *(a1 + 16);
  sub_1C1263190();
  sub_1C1263C30();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1C12654C0();
  v30 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v21 - v4;
  sub_1C1263190();
  OUTLINED_FUNCTION_3_5();
  v5 = sub_1C1266790();
  v44 = *(a1 + 24);
  v6 = v44;
  v45 = MEMORY[0x1E697F568];
  v29 = MEMORY[0x1E697E858];
  v42 = swift_getWitnessTable();
  v43 = MEMORY[0x1E697E270];
  v41 = swift_getWitnessTable();
  OUTLINED_FUNCTION_17();
  v23 = v5;
  v24 = swift_getWitnessTable();
  v25 = sub_1C12633A0();
  v7 = sub_1C1263190();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v36 = v3;
  v37 = v6;
  v38 = v31;
  v13 = v31;
  sub_1C1012734();
  v14 = v27;
  sub_1C12654B0();
  sub_1C1263AC0();
  sub_1C12638D0();
  v33 = v3;
  v34 = v6;
  v35 = v13;
  OUTLINED_FUNCTION_1_11();
  v15 = v22;
  v16 = swift_getWitnessTable();
  sub_1C1264F60();
  (*(v30 + 8))(v14, v15);
  OUTLINED_FUNCTION_5_3();
  v17 = swift_getWitnessTable();
  v39 = v16;
  v40 = v17;
  v18 = swift_getWitnessTable();
  sub_1C0FDBA4C(v9, v7, v18);
  v19 = *(v26 + 8);
  v19(v9, v7);
  sub_1C0FDBA4C(v12, v7, v18);
  return (v19)(v12, v7);
}

void sub_1C123DC80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984D0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984C8);
  v135 = a2;
  sub_1C1263190();
  sub_1C1263C30();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata2();
  v114[2] = sub_1C1265B00();
  v114[1] = swift_getWitnessTable();
  v8 = sub_1C12654C0();
  v117 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v116 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = v114 - v11;
  v12 = sub_1C1263C30();
  v121 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v120 = v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v119 = v114 - v15;
  v131 = v16;
  v132 = sub_1C1266790();
  v128 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v129 = v114 - v19;
  v20 = type metadata accessor for PhotosAssetView();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905E0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v114 - v27;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984D8);
  MEMORY[0x1EEE9AC00](v122);
  v123 = v114 - v29;
  v134 = v7;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v114 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984C0);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  v35 = *(a1 + 72);
  v36 = *(v35 + 16);
  v133 = a4;
  v127 = v8;
  v126 = v37;
  v137 = v114 - v38;
  v125 = v39;
  v124 = a1;
  v118 = v20;
  if (v36 > 1)
  {
    goto LABEL_4;
  }

  if (*(a1 + 64) == 1)
  {
    v20 = v118;
    if (v36)
    {
LABEL_4:
      v40 = *(v35 + 40);
      v41 = *(a1 + 65);
      v42 = v35;
      swift_unknownObjectRetain();
      v43 = sub_1C1200D04();
      v44 = v134;
      [v43 0x1FAFA8D8BLL];
      *(v32 + 19) = swift_getKeyPath();
      v32[160] = 0;
      v45 = v20[12];
      *&v32[v45] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
      swift_storeEnumTagMultiPayload();
      v46 = &v32[v20[13]];
      *v46 = swift_getKeyPath();
      v46[8] = 0;
      v47 = &v32[v20[14]];
      *v47 = swift_getKeyPath();
      v47[8] = 0;
      *v32 = 0;
      *(v32 + 4) = 0;
      *(v32 + 5) = 0;
      v32[48] = 1;
      v32[8] = v41;
      *(v32 + 1) = xmmword_1C12CC0B0;
      *(v32 + 52) = 0;
      *(v32 + 60) = 0;
      *(v32 + 34) = 1;
      *(v32 + 9) = 0x3FD0000000000000;
      v32[80] = 0;
      *(v32 + 11) = v40;
      *(v32 + 12) = 0;
      *(v32 + 13) = v43;
      *(v32 + 7) = 0u;
      *(v32 + 8) = 0u;
      v32[144] = 2;
      v48 = &v32[*(v23 + 36)];
      *v48 = 0x3FF0000000000000;
      *(v48 + 4) = 0;
      v49 = type metadata accessor for PhotosAlbumMultiAssetView();
      v50 = sub_1C123CF44(v49);
      v51 = &v32[*(v44 + 36)];
      v52 = *(sub_1C1263E90() + 20);
      v53 = *MEMORY[0x1E697F468];
      v54 = sub_1C12639D0();
      (*(*(v54 - 8) + 104))(&v51[v52], v53, v54);
      sub_1C1263D30();
      *v51 = v55;
      *(v51 + 1) = v56;
      *(v51 + 2) = v57;
      *(v51 + 3) = v58;
      *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984E0) + 36)] = v50;
      sub_1C10D1A1C(v32, v123, &qword_1EBE984C8);
      swift_storeEnumTagMultiPayload();
      sub_1C12401B4();
      sub_1C0FDC834();
      sub_1C1263C20();
      v59 = v32;
      v60 = &qword_1EBE984C8;
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (v36 == 1)
  {
    v114[0] = *(v35 + 40);
    v42 = v35;
    swift_unknownObjectRetain();
    v61 = sub_1C1200D04();
    [v61 0x1FAFA8D8BLL];
    *(v22 + 19) = swift_getKeyPath();
    v22[160] = 0;
    v62 = v118;
    v63 = v118[12];
    *&v22[v63] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
    swift_storeEnumTagMultiPayload();
    v64 = &v22[v62[13]];
    *v64 = swift_getKeyPath();
    v64[8] = 0;
    v65 = &v22[v62[14]];
    *v65 = swift_getKeyPath();
    v65[8] = 0;
    *v22 = 0;
    *(v22 + 4) = 0;
    *(v22 + 5) = 0;
    v22[48] = 1;
    v22[8] = 0;
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    *(v22 + 52) = 0;
    *(v22 + 60) = 0;
    *(v22 + 34) = 1;
    *(v22 + 9) = 0;
    v22[80] = 1;
    *(v22 + 11) = v114[0];
    *(v22 + 12) = 0;
    *(v22 + 13) = v61;
    *(v22 + 14) = 3;
    *(v22 + 16) = 0;
    *(v22 + 17) = 0;
    v22[144] = 0;
    if (*(a1 + 48))
    {
      v66 = 0x40003126E978D4FELL;
    }

    else
    {
      v66 = *(a1 + 40);
    }

    *(v22 + 15) = 0;
    sub_1C1240310(v22, v25, type metadata accessor for PhotosAssetView);
    v67 = &v25[*(v23 + 36)];
    *v67 = v66;
    *(v67 + 4) = 0;
    sub_1C1240144(v25, v28);
    sub_1C10D1A1C(v28, v123, &unk_1EBE905E0);
    swift_storeEnumTagMultiPayload();
    sub_1C12401B4();
    sub_1C0FDC834();
    sub_1C1263C20();
    v59 = v28;
    v60 = &unk_1EBE905E0;
LABEL_10:
    v68 = sub_1C0FD1A5C(v59, v60);
    v69 = *(v42 + 16);
    if (v69 > 1)
    {
      v76 = v42;
      v70 = v127;
      v72 = v135;
      v71 = v136;
      if (v69 <= 4 && (*(v124 + 64) & 1) == 0)
      {
        v97 = *(v76 + 56);
        swift_unknownObjectRetain();
        v98 = sub_1C1200D04();
        v123 = v23;
        [v98 setNetworkAccessAllowed_];
        *(v32 + 19) = swift_getKeyPath();
        v32[160] = 0;
        v99 = v118;
        v100 = v118[12];
        *&v32[v100] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
        swift_storeEnumTagMultiPayload();
        v101 = &v32[v99[13]];
        *v101 = swift_getKeyPath();
        v101[8] = 0;
        v102 = &v32[v99[14]];
        *v102 = swift_getKeyPath();
        v102[8] = 0;
        *v32 = 0;
        *(v32 + 4) = 0;
        *(v32 + 5) = 0;
        v32[48] = 1;
        v32[8] = 0;
        *(v32 + 2) = 0;
        *(v32 + 3) = 0;
        *(v32 + 52) = 0;
        *(v32 + 60) = 0;
        *(v32 + 34) = 1;
        *(v32 + 9) = 0;
        v32[80] = 1;
        *(v32 + 11) = v97;
        *(v32 + 12) = 0;
        *(v32 + 13) = v98;
        *(v32 + 7) = 0u;
        *(v32 + 8) = 0u;
        v32[144] = 2;
        v103 = &v32[*(v123 + 36)];
        *v103 = 0x3FF0000000000000;
        *(v103 + 4) = 0;
        v104 = type metadata accessor for PhotosAlbumMultiAssetView();
        v105 = sub_1C123CF44(v104);
        v106 = &v32[*(v134 + 36)];
        v107 = *(sub_1C1263E90() + 20);
        v108 = *MEMORY[0x1E697F468];
        v109 = sub_1C12639D0();
        (*(*(v109 - 8) + 104))(&v106[v107], v108, v109);
        sub_1C1263D30();
        *v106 = v110;
        *(v106 + 1) = v111;
        *(v106 + 2) = v112;
        *(v106 + 3) = v113;
        *&v106[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984E0) + 36)] = v105;
        sub_1C12401B4();
        swift_getWitnessTable();
        v82 = v119;
        sub_1C1112D68();
        sub_1C0FD1A5C(v32, &qword_1EBE984C8);
        goto LABEL_16;
      }
    }

    else
    {
      v70 = v127;
      v72 = v135;
      v71 = v136;
      if ((*(v124 + 64) & 1) == 0)
      {
        v73 = v130;
        __swift_storeEnumTagSinglePayload(v130, 1, 1, v131);
        v74 = sub_1C12401B4();
        WitnessTable = swift_getWitnessTable();
        v138 = v74;
        v139 = WitnessTable;
        swift_getWitnessTable();
LABEL_17:
        v89 = v129;
        sub_1C1170030(v73, v129);
        v90 = v128;
        v91 = *(v128 + 8);
        v92 = v132;
        v91(v73, v132);
        v93 = v137;
        v94 = v126;
        sub_1C10D1A1C(v137, v126, &qword_1EBE984C0);
        v146[0] = v94;
        (*(v90 + 16))(v73, v89, v92);
        v146[1] = v73;
        v145[0] = v125;
        v145[1] = v92;
        v143 = sub_1C1240278();
        v95 = sub_1C12401B4();
        v96 = swift_getWitnessTable();
        v141 = v95;
        v142 = v96;
        v140 = swift_getWitnessTable();
        v144 = swift_getWitnessTable();
        sub_1C119EE80(v146, 2, v145);
        v91(v89, v92);
        sub_1C0FD1A5C(v93, &qword_1EBE984C0);
        v91(v73, v92);
        sub_1C0FD1A5C(v94, &qword_1EBE984C0);
        return;
      }
    }

    MEMORY[0x1EEE9AC00](v68);
    v114[-4] = v72;
    v114[-3] = v71;
    v114[-2] = v77;
    sub_1C1012734();
    v78 = v116;
    sub_1C12654B0();
    v79 = swift_getWitnessTable();
    v80 = v115;
    sub_1C0FDBA4C(v78, v70, v79);
    v81 = *(v117 + 8);
    v81(v78, v70);
    sub_1C0FDBA4C(v80, v70, v79);
    sub_1C12401B4();
    v82 = v119;
    sub_1C1112E18();
    v81(v78, v70);
    v81(v80, v70);
LABEL_16:
    v83 = sub_1C12401B4();
    v84 = swift_getWitnessTable();
    v146[2] = v83;
    v146[3] = v84;
    v85 = v131;
    v86 = swift_getWitnessTable();
    v87 = v120;
    sub_1C0FDBA4C(v82, v85, v86);
    v88 = v121;
    (*(v121 + 8))(v82, v85);
    v73 = v130;
    (*(v88 + 32))(v130, v87, v85);
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v85);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1C123ED2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984C8);
  sub_1C1263190();
  sub_1C1263C30();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v29 = sub_1C12655A0();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v27 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28 = v25 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984D0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v25 - v12);
  if (*(a1 + 66))
  {
    v14 = 5.0;
  }

  else
  {
    v14 = 3.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984F8);
  sub_1C0FDB6D4(&qword_1EBE98500, &qword_1EBE984F8);
  v15 = v13;
  *v13 = sub_1C10A7F5C();
  v13[1] = v14;
  *(v13 + 16) = 0;
  v16 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE98508) + 44);
  v26 = v13;
  sub_1C123F160(a1, a3, v16);
  v34 = a2;
  v35 = a3;
  v36 = a1;
  sub_1C10A7F5C();
  v17 = v27;
  sub_1C1265590();
  v25[1] = MEMORY[0x1E6981870];
  v18 = v29;
  WitnessTable = swift_getWitnessTable();
  v20 = v28;
  sub_1C0FDBA4C(v17, v18, WitnessTable);
  v21 = v31;
  v22 = *(v31 + 8);
  v22(v17, v18);
  v23 = v33;
  sub_1C10D1A1C(v15, v33, &qword_1EBE984D0);
  v40[0] = v23;
  (*(v21 + 16))(v17, v20, v18);
  v40[1] = v17;
  v39[0] = v30;
  v39[1] = v18;
  v37 = sub_1C0FDB6D4(&qword_1EDE76BF0, &qword_1EBE984D0);
  v38 = WitnessTable;
  sub_1C119EE80(v40, 2, v39);
  v22(v20, v18);
  sub_1C0FD1A5C(v26, &qword_1EBE984D0);
  v22(v17, v18);
  return sub_1C0FD1A5C(v33, &qword_1EBE984D0);
}

uint64_t sub_1C123F160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v16 = *(a1 + 72);
  v17 = *(v16 + 16);
  v18 = type metadata accessor for PhotosAlbumMultiAssetView();
  sub_1C123CAD4(1uLL, v17, v18, v15);
  sub_1C123CAD4(2uLL, *(v16 + 16), v18, v12);
  sub_1C10D1A1C(v15, v9, &qword_1EBE984C8);
  sub_1C10D1A1C(v12, v6, &qword_1EBE984C8);
  v19 = v23;
  sub_1C10D1A1C(v9, v23, &qword_1EBE984C8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98518);
  sub_1C10D1A1C(v6, v19 + *(v20 + 48), &qword_1EBE984C8);
  sub_1C0FD1A5C(v12, &qword_1EBE984C8);
  sub_1C0FD1A5C(v15, &qword_1EBE984C8);
  sub_1C0FD1A5C(v6, &qword_1EBE984C8);
  return sub_1C0FD1A5C(v9, &qword_1EBE984C8);
}

uint64_t sub_1C123F358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v42 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1263190();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984C8);
  v45 = sub_1C1263C30();
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v50 = v13;
  v51 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v23 = *(a1 + 72);
  v24 = *(v23 + 16);
  v25 = a3;
  v26 = type metadata accessor for PhotosAlbumMultiAssetView();
  v46 = v22;
  sub_1C123CAD4(3uLL, v24, v26, v22);
  v27 = MEMORY[0x1E697F568];
  if (*(a1 + 32) == 1)
  {
    v28 = v41;
    (*(a1 + 16))(0);
    v29 = v25;
    sub_1C12649E0();
    (*(v42 + 8))(v28, a2);
    v52 = v25;
    v53 = v27;
    WitnessTable = swift_getWitnessTable();
    v31 = v43;
    sub_1C0FDBA4C(v10, v8, WitnessTable);
    v32 = *(v44 + 8);
    v32(v10, v8);
    sub_1C0FDBA4C(v31, v8, WitnessTable);
    sub_1C12401B4();
    sub_1C1112D68();
    v32(v10, v8);
    v32(v31, v8);
  }

  else
  {
    sub_1C123CAD4(4uLL, *(v23 + 16), v26, v19);
    v29 = v25;
    v61[2] = v25;
    v61[3] = v27;
    swift_getWitnessTable();
    sub_1C12401B4();
    sub_1C1112E18();
    sub_1C0FD1A5C(v19, &qword_1EBE984C8);
  }

  v33 = v46;
  sub_1C10D1A1C(v46, v19, &qword_1EBE984C8);
  v61[0] = v19;
  v35 = v47;
  v34 = v48;
  v36 = v51;
  v37 = v45;
  (*(v48 + 16))(v47, v51, v45);
  v61[1] = v35;
  v60[0] = v50;
  v60[1] = v37;
  v38 = sub_1C12401B4();
  v58 = v38;
  v56 = v29;
  v57 = MEMORY[0x1E697F568];
  v54 = swift_getWitnessTable();
  v55 = v38;
  v59 = swift_getWitnessTable();
  sub_1C119EE80(v61, 2, v60);
  v39 = *(v34 + 8);
  v39(v36, v37);
  sub_1C0FD1A5C(v33, &qword_1EBE984C8);
  v39(v35, v37);
  return sub_1C0FD1A5C(v19, &qword_1EBE984C8);
}

uint64_t sub_1C123F8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v42 = a3;
  v36 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1263190();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_1C1263190();
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v35 - v15;
  v16 = sub_1C1266790();
  v40 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v39 = &v35 - v21;
  if (*(*(a1 + 72) + 16) <= 4uLL && *(a1 + 32) == 1)
  {
    (*(a1 + 16))(1, v20);
    v22 = v42;
    sub_1C12649E0();
    (*(v36 + 8))(v7, a2);
    v45 = v22;
    v46 = MEMORY[0x1E697F568];
    WitnessTable = swift_getWitnessTable();
    sub_1C1264ED0();
    (*(v37 + 8))(v10, v8);
    v43 = WitnessTable;
    v44 = MEMORY[0x1E697E270];
    v24 = swift_getWitnessTable();
    v25 = v35;
    sub_1C0FDBA4C(v13, v11, v24);
    v26 = v38;
    v27 = *(v38 + 8);
    v27(v13, v11);
    sub_1C0FDBA4C(v25, v11, v24);
    v27(v25, v11);
    v28 = MEMORY[0x1E697E270];
    v29 = v13;
    v30 = v42;
    (*(v26 + 32))(v18, v29, v11);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v11);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v11);
    v30 = v42;
    v54 = v42;
    v55 = MEMORY[0x1E697F568];
    v52 = swift_getWitnessTable();
    v28 = MEMORY[0x1E697E270];
    v53 = MEMORY[0x1E697E270];
    swift_getWitnessTable();
  }

  v31 = v39;
  sub_1C1170030(v18, v39);
  v32 = *(v40 + 8);
  v32(v18, v16);
  v50 = v30;
  v51 = MEMORY[0x1E697F568];
  v48 = swift_getWitnessTable();
  v49 = v28;
  v47 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  sub_1C0FDBA4C(v31, v16, v33);
  return (v32)(v31, v16);
}

void sub_1C123FEB4()
{
  sub_1C10D1780();
  if (v0 <= 0x3F)
  {
    sub_1C1007F88();
    if (v1 <= 0x3F)
    {
      sub_1C12400F4(319, &qword_1EDE7B4C0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C12400F4(319, &qword_1EDE76CE0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C12400F4(319, &unk_1EDE76AE0, &type metadata for PhotosMultiAssetViewItem, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1C12400F4(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1C12400F4(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1C1011E54();
                if (v7 <= 0x3F)
                {
                  sub_1C12400F4(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom, MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
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
  }
}

void sub_1C12400F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C1240144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C12401B4()
{
  result = qword_1EDE77290;
  if (!qword_1EDE77290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984C8);
    sub_1C0FDC834();
    sub_1C0FDB6D4(qword_1EDE7AE20, &qword_1EBE984E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77290);
  }

  return result;
}

unint64_t sub_1C1240278()
{
  result = qword_1EBE984E8;
  if (!qword_1EBE984E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE984C0);
    sub_1C12401B4();
    sub_1C0FDC834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE984E8);
  }

  return result;
}

uint64_t sub_1C1240310(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void *PhotosMockImage.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C12659A0();
  v4 = v3;
  sub_1C1240428(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_1C102EFA0(__dst, &v6, &qword_1EBE98520);
  sub_1C0F9E21C(v9, &qword_1EBE98520);
  *a1 = v2;
  a1[1] = v4;
  return memcpy(a1 + 2, __dst, 0x58uLL);
}

uint64_t sub_1C1240428@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1C1265300();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C12652F0();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v6 = sub_1C1265350();

  (*(v3 + 8))(v5, v2);
  v7 = sub_1C12651B0();
  sub_1C12659A0();
  sub_1C1262C80();
  v17[0] = v6;
  LOWORD(v17[1]) = 1;
  *(&v17[1] + 2) = v15;
  WORD3(v17[1]) = v16;
  *(&v17[1] + 1) = v7;
  v17[2] = v12;
  v17[3] = v13;
  v17[4] = v14;
  memcpy(&v11[7], v17, 0x50uLL);
  *a1 = 1;
  memcpy(a1 + 1, v11, 0x57uLL);
  v18[0] = v6;
  v18[1] = 0;
  v19 = 1;
  v20 = v15;
  v21 = v16;
  v22 = v7;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  sub_1C102EFA0(v17, &v10, &qword_1EBE98538);
  return sub_1C0F9E21C(v18, &qword_1EBE98538);
}

_BYTE *storeEnumTagSinglePayload for PhotosMockImage(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C124073C()
{
  result = qword_1EBE98528;
  if (!qword_1EBE98528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98528);
  }

  return result;
}

uint64_t sub_1C12407A0()
{
  sub_1C124247C();
  sub_1C12637F0();
  return v1;
}

uint64_t PhotosInlinePlaybackEnvironment.Configuration.init(maxConcurrentPlayers:maxPreloadPlayers:maxSupportedVisiblePlayers:playbackVisibilityThreshold:enableHoverPlayback:hoverPlaybackDelay:enableDebugHUD:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a5;
  *(a6 + 32) = a7;
  *(a6 + 40) = a4;
  *(a6 + 48) = a8;
  return result;
}

uint64_t View.photosInlinePlaybackEnvironment(allowedPlayState:isAutoPlayEnabledUserPreference:configuration:)(_BYTE *a1, char a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v22 = a4;
  v8 = type metadata accessor for PhotosInlinePlaybackEnvironment();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v21 = *a3;
  v12 = *(a3 + 2);
  v13 = *(a3 + 24);
  v14 = *(a3 + 4);
  v15 = *(a3 + 40);
  v16 = *(a3 + 6);
  v18 = &v11[*(v17 + 28)];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = *(type metadata accessor for PhotosScenePhase(0) + 20);
  *&v18[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE938B0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PhotosInlinePlaybackCoordinator(0);
  sub_1C12628D0();
  *v11 = a1;
  *(v11 + 8) = v21;
  *(v11 + 3) = v12;
  v11[32] = v13;
  *(v11 + 5) = v14;
  v11[48] = v15;
  *(v11 + 7) = v16;
  v11[64] = a2;
  MEMORY[0x1C68EE920](v11, v22, v8, v23);
  return sub_1C1240C9C(v11);
}

uint64_t type metadata accessor for PhotosInlinePlaybackEnvironment()
{
  result = qword_1EDE80360;
  if (!qword_1EDE80360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static PhotosInlinePlaybackEnvironment.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v5 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && *(a1 + 32) == *(a2 + 32) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0)
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return result;
}

uint64_t PhotosInlinePlaybackEnvironment.Configuration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  MEMORY[0x1C68F07E0](*v0);
  MEMORY[0x1C68F07E0](v1);
  MEMORY[0x1C68F07E0](v2);
  sub_1C1266EB0();
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x1C68F0810](*&v5);
  sub_1C1266EB0();
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  return MEMORY[0x1C68F0810](*&v6);
}

uint64_t PhotosInlinePlaybackEnvironment.Configuration.hashValue.getter()
{
  sub_1C1266E90();
  PhotosInlinePlaybackEnvironment.Configuration.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C1240BA4()
{
  sub_1C1266E90();
  PhotosInlinePlaybackEnvironment.Configuration.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C1240C18()
{
  v0 = sub_1C1263D00();
  __swift_allocate_value_buffer(v0, qword_1EDE9B6A8);
  __swift_project_value_buffer(v0, qword_1EDE9B6A8);
  return sub_1C1263F30();
}

uint64_t sub_1C1240C9C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosInlinePlaybackEnvironment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosInlinePlaybackEnvironment.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  sub_1C1262930();
  OUTLINED_FUNCTION_0();
  v78 = v4;
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosInlinePlaybackEnvironment();
  OUTLINED_FUNCTION_0();
  v68 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v81 = v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98540);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98548);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98550);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v64 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98558);
  OUTLINED_FUNCTION_0();
  v71 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v64 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98560);
  OUTLINED_FUNCTION_0();
  v73 = v22;
  v74 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  v80 = &v64 - v24;
  if (qword_1EDE80380 != -1)
  {
    swift_once();
  }

  v25 = sub_1C1263D00();
  __swift_project_value_buffer(v25, qword_1EDE9B6A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98568);
  sub_1C0FDB6D4(&qword_1EDE7BB18, &qword_1EBE98568);
  sub_1C1264BA0();
  v26 = sub_1C1265940();
  v28 = v27;
  v29 = 0;
  if (*(v2 + 32) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98578);
    sub_1C12628E0();
    v29 = v86;
  }

  v30 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98570) + 36)];
  *v30 = v29;
  *(v30 + 1) = v26;
  *(v30 + 2) = v28;
  KeyPath = swift_getKeyPath();
  v75 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98578);
  sub_1C12628E0();
  v32 = v86;
  v33 = &v12[*(v65 + 36)];
  *v33 = KeyPath;
  v33[1] = v32;
  v34 = swift_getKeyPath();
  sub_1C12628E0();
  v35 = sub_1C1164D00();

  if (v35)
  {
    v36 = *(v2 + 64);
  }

  else
  {
    v36 = 0;
  }

  sub_1C1012024(v12, v15, &qword_1EBE98540);
  v37 = &v15[*(v67 + 36)];
  *v37 = v34;
  v37[8] = v36;
  OUTLINED_FUNCTION_8_43();
  v38 = *(v68 + 80);
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_7_46(v39);
  v40 = v66;
  sub_1C1012024(v15, v66, &qword_1EBE98548);
  v41 = v69;
  v42 = (v40 + *(v69 + 36));
  *v42 = sub_1C0FA84D0;
  v42[1] = 0;
  v42[2] = sub_1C1241734;
  v42[3] = v39;
  LOBYTE(v86) = *v2;
  OUTLINED_FUNCTION_8_43();
  v68 = v38;
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_7_46(v43);
  v44 = sub_1C1241878();
  v45 = sub_1C1188E24();
  v46 = v70;
  sub_1C1265000();

  sub_1C0FCC6E8(v40);
  v47 = *(v2 + 24);
  v48 = *(v2 + 32);
  v49 = *(v2 + 40);
  v50 = *(v2 + 48);
  v51 = *(v2 + 56);
  v86 = *(v2 + 8);
  v87 = v47;
  LOBYTE(v88) = v48;
  v89 = v49;
  v90 = v50;
  v91 = v51;
  OUTLINED_FUNCTION_8_43();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_7_46(v52);
  v82 = v41;
  v83 = &type metadata for PhotosInlinePlayState;
  v84 = v44;
  v85 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_1C1241CE0();
  v55 = v72;
  sub_1C1265000();

  (*(v71 + 8))(v46, v55);
  v56 = v76;
  PhotosScenePhase.wrappedValue.getter(v76);
  OUTLINED_FUNCTION_8_43();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_7_46(v57);
  *&v86 = v55;
  *(&v86 + 1) = &type metadata for PhotosInlinePlaybackEnvironment.Configuration;
  v87 = OpaqueTypeConformance2;
  v88 = v54;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_55();
  sub_1C0F9B7EC(v58, v59);
  v60 = v74;
  v62 = v79;
  v61 = v80;
  sub_1C1265000();

  (*(v78 + 8))(v56, v62);
  return (*(v73 + 8))(v61, v60);
}

uint64_t EnvironmentValues.photosInlinePlaybackSupportedByDevice.getter()
{
  sub_1C124203C();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1241558@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosInlinePlaybackSupportedByDevice.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C12415EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for PhotosInlinePlaybackEnvironment();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98578);
  sub_1C12628E0();
  v4[0] = 0;
  v4[1] = 0;
  v4[2] = v1;
  v4[3] = v2;
  v5 = 0;
  sub_1C1163E7C(v4);
}

uint64_t sub_1C124166C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosInlinePlaybackEnvironment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C12416D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosInlinePlaybackEnvironment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1241734(uint64_t *a1)
{
  v2 = type metadata accessor for PhotosInlinePlaybackEnvironment();
  OUTLINED_FUNCTION_15(v2);

  return sub_1C12415EC(a1);
}

uint64_t sub_1C12417A0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for PhotosInlinePlaybackEnvironment();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98578);
  sub_1C12628E0();
  v4 = v2;
  sub_1C1163D44(&v4);
}

uint64_t sub_1C1241818()
{
  v0 = OUTLINED_FUNCTION_5_43();
  OUTLINED_FUNCTION_15(v0);
  v1 = OUTLINED_FUNCTION_2_72();

  return sub_1C12417A0(v1, v2);
}

unint64_t sub_1C1241878()
{
  result = qword_1EDE77070;
  if (!qword_1EDE77070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98550);
    sub_1C1241930();
    sub_1C0FDB6D4(&qword_1EDE7BA88, &qword_1EBE93AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77070);
  }

  return result;
}

unint64_t sub_1C1241930()
{
  result = qword_1EDE77108;
  if (!qword_1EDE77108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98548);
    sub_1C12419E8();
    sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77108);
  }

  return result;
}

unint64_t sub_1C12419E8()
{
  result = qword_1EDE7BDA0;
  if (!qword_1EDE7BDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98540);
    sub_1C1241AA0();
    sub_1C0FDB6D4(&qword_1EDE7B9A0, &qword_1EBE98598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDA0);
  }

  return result;
}

unint64_t sub_1C1241AA0()
{
  result = qword_1EDE7BE70;
  if (!qword_1EDE7BE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98568);
    sub_1C0FDB6D4(&qword_1EDE7BB18, &qword_1EBE98568);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7BCD8, &qword_1EBE98590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE70);
  }

  return result;
}

uint64_t sub_1C1241BC8(uint64_t a1, __int128 *a2)
{
  v8 = *a2;
  v2 = *(a2 + 2);
  v3 = *(a2 + 24);
  v4 = *(a2 + 4);
  v5 = *(a2 + 40);
  v6 = *(a2 + 6);
  type metadata accessor for PhotosInlinePlaybackEnvironment();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98578);
  sub_1C12628E0();
  v9 = v8;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  sub_1C11645A4(&v9);
}

uint64_t sub_1C1241C80()
{
  v0 = OUTLINED_FUNCTION_5_43();
  OUTLINED_FUNCTION_15(v0);
  v1 = OUTLINED_FUNCTION_2_72();

  return sub_1C1241BC8(v1, v2);
}

unint64_t sub_1C1241CE0()
{
  result = qword_1EDE80388;
  if (!qword_1EDE80388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80388);
  }

  return result;
}

uint64_t sub_1C1241D34(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1262930();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosInlinePlaybackEnvironment();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98578);
  sub_1C12628E0();
  (*(v4 + 16))(v6, a2, v3);
  sub_1C1164818();
}

uint64_t objectdestroyTm_25()
{
  v1 = type metadata accessor for PhotosInlinePlaybackEnvironment();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2 + *(v1 + 28);
  j__swift_release_2();
  v4 = *(type metadata accessor for PhotosScenePhase(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE938B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1262930();
    OUTLINED_FUNCTION_3();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v0 + v2 + *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98580);
  OUTLINED_FUNCTION_3();
  (*(v7 + 8))(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98588);

  return swift_deallocObject();
}

uint64_t sub_1C1241FDC()
{
  v0 = OUTLINED_FUNCTION_5_43();
  OUTLINED_FUNCTION_15(v0);
  v1 = OUTLINED_FUNCTION_2_72();

  return sub_1C1241D34(v1, v2);
}

unint64_t sub_1C124203C()
{
  result = qword_1EDE78ED0;
  if (!qword_1EDE78ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78ED0);
  }

  return result;
}

uint64_t (*EnvironmentValues.photosInlinePlaybackSupportedByDevice.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C124203C();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C12420FC;
}

void sub_1C124217C()
{
  type metadata accessor for PhotosScenePhase(319);
  if (v0 <= 0x3F)
  {
    sub_1C1242228();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1242228()
{
  if (!qword_1EDE776A0)
  {
    type metadata accessor for PhotosInlinePlaybackCoordinator(255);
    v0 = sub_1C1262900();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE776A0);
    }
  }
}

uint64_t sub_1C1242280(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1C12422CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C124233C()
{
  type metadata accessor for PhotosInlinePlaybackCoordinator(0);
  swift_allocObject();
  result = sub_1C1163B08();
  qword_1EDE7F7A0 = result;
  return result;
}

uint64_t sub_1C124237C@<X0>(void *a1@<X8>)
{
  if (qword_1EDE7F798 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE7F7A0;
}

uint64_t sub_1C12423E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C0F9B7EC(&qword_1EDE803C8, type metadata accessor for PhotosInlinePlaybackCoordinator);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C124247C()
{
  result = qword_1EDE7F788;
  if (!qword_1EDE7F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F788);
  }

  return result;
}

char *PhotosPrefetchable.Font.leading(_:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(v2 + 8);
  v5 = *(v2 + 10);
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 10) = v5;
  *(a2 + 11) = v3;
  return result;
}

uint64_t PhotosPrefetchable.Font.font.getter()
{
  v2 = sub_1C1264680();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_47();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = *(v0 + 4);
  v10 = *(v0 + 10);
  v11 = *(v0 + 11);
  v18 = *v0;
  v19 = v9;
  sub_1C1242DD0();
  v13 = v12;
  switch(v10)
  {
    case 1:
      sub_1C12645C0();
      goto LABEL_11;
    case 2:
      sub_1C12645F0();
      goto LABEL_11;
    case 3:
      sub_1C1264610();
      goto LABEL_11;
    case 4:
      sub_1C1264600();
      goto LABEL_11;
    case 5:
      sub_1C1264620();
      goto LABEL_11;
    case 6:
      sub_1C12645B0();
      goto LABEL_11;
    case 7:
      sub_1C12645E0();
      goto LABEL_11;
    case 8:
      sub_1C12645D0();
      goto LABEL_11;
    case 9:
      goto LABEL_12;
    default:
      sub_1C12645A0();
LABEL_11:
      v14 = sub_1C1264670();

      v13 = v14;
LABEL_12:
      v15 = MEMORY[0x1E6980EB0];
      switch(v11)
      {
        case 1:
          v15 = MEMORY[0x1E6980EA8];
          goto LABEL_15;
        case 2:
          v15 = MEMORY[0x1E6980E98];
          goto LABEL_15;
        case 3:
          return v13;
        default:
LABEL_15:
          (*(v4 + 104))(v1, *v15, v2);
          (*(v4 + 32))(v8, v1, v2);
          v16 = sub_1C12646C0();

          (*(v4 + 8))(v8, v2);
          return v16;
      }
  }
}

char *PhotosPrefetchable.Font.weight(_:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(v2 + 8);
  v5 = *(v2 + 11);
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 10) = v3;
  *(a2 + 11) = v5;
  return result;
}

char *static PhotosPrefetchable.Font.system(size:weight:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 9) = 2305;
  *(a2 + 11) = 3;
  return result;
}

double sub_1C1242AA4()
{
  qword_1EBE985A0 = 0;
  *&result = 50921472;
  dword_1EBE985A8 = 50921472;
  return result;
}

double sub_1C1242B1C()
{
  qword_1EBE985B0 = 2;
  *&result = 50921472;
  dword_1EBE985B8 = 50921472;
  return result;
}

double sub_1C1242B5C()
{
  qword_1EBE985C0 = 3;
  *&result = 50921472;
  dword_1EBE985C8 = 50921472;
  return result;
}

double sub_1C1242C14()
{
  qword_1EDE7AFD8 = 6;
  *&result = 50921472;
  dword_1EDE7AFE0 = 50921472;
  return result;
}

double sub_1C1242C54()
{
  qword_1EBE985D0 = 7;
  *&result = 50921472;
  dword_1EBE985D8 = 50921472;
  return result;
}

double sub_1C1242C94()
{
  qword_1EBE985E0 = 8;
  *&result = 50921472;
  dword_1EBE985E8 = 50921472;
  return result;
}

double sub_1C1242CD4()
{
  qword_1EBE985F0 = 9;
  *&result = 50921472;
  dword_1EBE985F8 = 50921472;
  return result;
}

double sub_1C1242D14()
{
  qword_1EBE98600 = 10;
  *&result = 50921472;
  dword_1EBE98608 = 50921472;
  return result;
}

void *sub_1C1242D54@<X0>(void *result@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*result != -1)
  {
    result = swift_once();
  }

  *a4 = *a2;
  *(a4 + 8) = *a3;
  return result;
}

void PhotosPrefetchable.Font.bold()(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 11);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 10) = 6;
  *(a1 + 11) = v3;
}

void sub_1C1242DD0()
{
  v2 = sub_1C1264590();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1264700();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_7_47();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = *v0;
  if (*(v0 + 9))
  {
    if (*(v0 + 9) == 1)
    {
      v19 = *(v0 + 8);
      if (v19 != 9)
      {
        switch(v19)
        {
          case 1:
            sub_1C12645C0();
            break;
          case 2:
            sub_1C12645F0();
            break;
          case 3:
            sub_1C1264610();
            break;
          case 4:
            sub_1C1264600();
            break;
          case 5:
            sub_1C1264620();
            break;
          case 6:
            sub_1C12645B0();
            break;
          case 7:
            sub_1C12645E0();
            break;
          case 8:
            sub_1C12645D0();
            break;
          default:
            sub_1C12645A0();
            break;
        }
      }

      __swift_storeEnumTagSinglePayload(v17, 1, 1, v2);
      sub_1C1264630();
      sub_1C119A284(v17);
    }

    else
    {
      (*(v10 + 104))(v13, **(&unk_1E813C760 + v18), v8);
      v21 = MEMORY[0x1E6980E20];
      v22 = 1;
      switch(BYTE1(v18))
      {
        case 1:
          v21 = MEMORY[0x1E6980E10];
          goto LABEL_15;
        case 2:
          v21 = MEMORY[0x1E6980E28];
          goto LABEL_15;
        case 3:
          v21 = MEMORY[0x1E6980E08];
          goto LABEL_15;
        case 4:
          goto LABEL_16;
        default:
LABEL_15:
          (*(v4 + 104))(v7, *v21, v2);
          (*(v4 + 32))(v1, v7, v2);
          v22 = 0;
LABEL_16:
          __swift_storeEnumTagSinglePayload(v1, v22, 1, v2);
          if (BYTE2(v18) != 9)
          {
            switch(BYTE2(v18))
            {
              case 1:
                sub_1C12645C0();
                break;
              case 2:
                sub_1C12645F0();
                break;
              case 3:
                sub_1C1264610();
                break;
              case 4:
                sub_1C1264600();
                break;
              case 5:
                sub_1C1264620();
                break;
              case 6:
                sub_1C12645B0();
                break;
              case 7:
                sub_1C12645E0();
                break;
              case 8:
                sub_1C12645D0();
                break;
              default:
                sub_1C12645A0();
                break;
            }
          }

          sub_1C1264640();
          sub_1C119A284(v1);
          (*(v10 + 8))(v13, v8);
          break;
      }
    }

    OUTLINED_FUNCTION_33();
  }

  else
  {
    switch(*v0)
    {
      case 1u:
        OUTLINED_FUNCTION_33();

        sub_1C1264570();
        break;
      case 2u:
        OUTLINED_FUNCTION_33();

        sub_1C1264650();
        break;
      case 3u:
        OUTLINED_FUNCTION_33();

        sub_1C1264660();
        break;
      case 4u:
        OUTLINED_FUNCTION_33();

        sub_1C12646F0();
        break;
      case 5u:
        OUTLINED_FUNCTION_33();

        sub_1C1264510();
        break;
      case 6u:
        OUTLINED_FUNCTION_33();

        sub_1C1264530();
        break;
      case 7u:
        OUTLINED_FUNCTION_33();

        sub_1C1264690();
        break;
      case 8u:
        OUTLINED_FUNCTION_33();

        sub_1C12646E0();
        break;
      case 9u:
        OUTLINED_FUNCTION_33();

        sub_1C12646A0();
        break;
      case 0xAu:
        OUTLINED_FUNCTION_33();

        sub_1C12646D0();
        break;
      default:
        OUTLINED_FUNCTION_33();

        sub_1C12644F0();
        break;
    }
  }
}

uint64_t PhotosPrefetchable.Font.debugDescription.getter()
{
  v1 = *(v0 + 10);
  v2 = *(v0 + 11);
  v6 = sub_1C1265ED0();
  if (v1 != 9)
  {
    v3 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v3);

    MEMORY[0x1C68EF850](41, 0xE100000000000000);
    MEMORY[0x1C68EF850](0x287468676965772ELL, 0xE800000000000000);
  }

  if (v2 != 3)
  {
    v4 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v4);

    MEMORY[0x1C68EF850](41, 0xE100000000000000);
    MEMORY[0x1C68EF850](0x676E696461656C2ELL, 0xE900000000000028);
  }

  return v6;
}

uint64_t sub_1C12434C0()
{
  v1 = *v0;
  if (*(v0 + 9))
  {
    if (*(v0 + 9) == 1)
    {
      v2 = *(v0 + 8);
      strcpy(v9, ".systemSize(");
      BYTE5(v9[1]) = 0;
      HIWORD(v9[1]) = -5120;
      v3 = sub_1C1266260();
      MEMORY[0x1C68EF850](v3);

      if (v2 == 9)
      {
LABEL_10:
        MEMORY[0x1C68EF850](41, 0xE100000000000000);
        return v9[0];
      }
    }

    else
    {
      strcpy(v9, ".systemStyle(");
      HIWORD(v9[1]) = -4864;
      v5 = sub_1C1265ED0();
      MEMORY[0x1C68EF850](v5);

      if (BYTE1(v1) != 4)
      {
        v6 = sub_1C1265ED0();
        MEMORY[0x1C68EF850](v6);

        MEMORY[0x1C68EF850](0x6E6769736564202CLL, 0xE90000000000003ALL);
      }

      if (BYTE2(v1) == 9)
      {
        goto LABEL_10;
      }
    }

    v7 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v7);

    MEMORY[0x1C68EF850](0x746867696577202CLL, 0xE90000000000003ALL);

    goto LABEL_10;
  }

  v9[0] = 46;
  v9[1] = 0xE100000000000000;
  v4 = sub_1C1265ED0();
  MEMORY[0x1C68EF850](v4);

  return v9[0];
}

uint64_t sub_1C12436EC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 9);
  if (*(a1 + 9))
  {
    if (*(a1 + 9) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }

      v6 = *(a1 + 8);
      v7 = *(a2 + 8);
      if (v6 == 9)
      {
        if (v7 == 9)
        {
          return 1;
        }
      }

      else if (v7 != 9 && v6 == v7)
      {
        return 1;
      }

      return 0;
    }

    if (v4 != 2)
    {
      return 0;
    }

    v10 = LODWORD(v3) ^ LODWORD(v2);
    if (LOBYTE(v3) != LOBYTE(v2))
    {
      return 0;
    }

    if ((*a1 & 0xFF00) == 0x400)
    {
      if (BYTE1(v3) != 4)
      {
        return 0;
      }

      goto LABEL_27;
    }

    result = 0;
    if (BYTE1(v3) != 4 && (v10 & 0xFF00) == 0)
    {
LABEL_27:
      v12 = BYTE2(v3);
      if ((*&v2 & 0xFF0000) == 0x90000)
      {
        if (v12 == 9)
        {
          return 1;
        }
      }

      else if (v12 != 9 && (*&v10 & 0xFF0000) == 0)
      {
        return 1;
      }

      return 0;
    }
  }

  else
  {
    v8 = (LOBYTE(v3) ^ LOBYTE(v2)) == 0;
    return !*(a2 + 9) && v8;
  }

  return result;
}

uint64_t sub_1C12437DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C79745374786574 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69536D6574737973 && a2 == 0xEA0000000000657ALL;
    if (v6 || (sub_1C1266D50() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74536D6574737973 && a2 == 0xEB00000000656C79)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C1266D50();

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

uint64_t sub_1C1243908(char a1)
{
  if (!a1)
  {
    return 0x6C79745374786574;
  }

  if (a1 == 1)
  {
    return 0x69536D6574737973;
  }

  return 0x74536D6574737973;
}

uint64_t sub_1C1243970(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000)
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

uint64_t sub_1C1243A34(char a1)
{
  if (a1)
  {
    return 0x746867696577;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_1C1243A60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6769736564 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C1266D50() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746867696577 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C1266D50();

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

uint64_t sub_1C1243B6C(char a1)
{
  if (!a1)
  {
    return 0x656C797473;
  }

  if (a1 == 1)
  {
    return 0x6E6769736564;
  }

  return 0x746867696577;
}

uint64_t sub_1C1243BB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98658);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98660);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98668);
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98670);
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v32 = *v1;
  v37 = *(v1 + 8);
  v15 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C12460E8();
  sub_1C1266F00();
  if (!v15)
  {
    LOBYTE(v36) = 0;
    sub_1C12462E0();
    v20 = v34;
    sub_1C1266C70();
    LOBYTE(v36) = v32;
    sub_1C1246190();
    sub_1C1266CB0();
    (*(v26 + 8))(v10, v8);
    return (*(v35 + 8))(v14, v20);
  }

  if (v15 != 1)
  {
    LOBYTE(v36) = 2;
    sub_1C124613C();
    v21 = v29;
    v20 = v34;
    sub_1C1266C70();
    v22 = v32;
    LOBYTE(v36) = v32;
    v38 = 0;
    sub_1C1246190();
    v23 = v31;
    v24 = v33;
    sub_1C1266CB0();
    if (!v24)
    {
      LOBYTE(v36) = BYTE1(v22);
      v38 = 1;
      sub_1C12461E4();
      sub_1C1266C80();
      LOBYTE(v36) = BYTE2(v22);
      v38 = 2;
      sub_1C12453B4();
      sub_1C1266C80();
    }

    (*(v30 + 8))(v21, v23);
    return (*(v35 + 8))(v14, v20);
  }

  LOBYTE(v36) = 1;
  sub_1C1246238();
  v16 = v34;
  sub_1C1266C70();
  v36 = v32;
  v38 = 0;
  sub_1C124628C();
  v17 = v28;
  v18 = v33;
  sub_1C1266CB0();
  if (!v18)
  {
    LOBYTE(v36) = v37;
    v38 = 1;
    sub_1C12453B4();
    sub_1C1266C80();
  }

  (*(v27 + 8))(v7, v17);
  return (*(v35 + 8))(v14, v16);
}

uint64_t sub_1C12440E4()
{
  v1 = *v0;
  if (!*(v0 + 9))
  {
    MEMORY[0x1C68F07E0](0);
    v4 = v1;
    return MEMORY[0x1C68F07E0](v4);
  }

  if (*(v0 + 9) != 1)
  {
    MEMORY[0x1C68F07E0](2);
    MEMORY[0x1C68F07E0](v1);
    sub_1C1266EB0();
    if ((v1 & 0xFF00) != 0x400)
    {
      MEMORY[0x1C68F07E0](BYTE1(v1));
    }

    if ((v1 & 0xFF0000) != 0x90000)
    {
      sub_1C1266EB0();
      v4 = BYTE2(v1);
      return MEMORY[0x1C68F07E0](v4);
    }

    return sub_1C1266EB0();
  }

  v2 = *(v0 + 8);
  MEMORY[0x1C68F07E0](1);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1C68F0810](v3);
  if (v2 == 9)
  {
    return sub_1C1266EB0();
  }

  sub_1C1266EB0();
  v4 = v2;
  return MEMORY[0x1C68F07E0](v4);
}

uint64_t sub_1C12441C4()
{
  sub_1C1266E90();
  sub_1C12440E4();
  return sub_1C1266EE0();
}

uint64_t sub_1C1244218@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98688);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98690);
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98698);
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE986A0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  v15 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1C12460E8();
  v16 = v63;
  sub_1C1266EF0();
  if (v16)
  {
    goto LABEL_12;
  }

  v54 = v10;
  v17 = v61;
  v63 = v12;
  v18 = sub_1C1266C60();
  result = sub_1C11288E8(v18, 0);
  if (v21 == v22 >> 1)
  {
    v23 = v14;
LABEL_11:
    v34 = sub_1C12669D0();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946C0);
    *v36 = &_s4FontV4BaseON;
    sub_1C1266C10();
    sub_1C12669C0();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v63 + 8))(v23, v11);
LABEL_12:
    v37 = v62;
    return __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  v52 = 0;
  v53 = v14;
  if (v21 < (v22 >> 1))
  {
    v24 = *(v20 + v21);
    sub_1C1129C38(v21 + 1);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 != v28 >> 1)
    {
      v23 = v53;
      goto LABEL_11;
    }

    v29 = v11;
    LODWORD(v11) = v24;
    v30 = v53;
    if (v24)
    {
      if (v24 == 1)
      {
        LOBYTE(v64) = 1;
        sub_1C1246238();
        v31 = v52;
        sub_1C1266C00();
        v32 = v60;
        if (!v31)
        {
          v67 = 0;
          sub_1C12463DC();
          v33 = v58;
          sub_1C1266C50();
          v47 = v64;
          v66 = 1;
          sub_1C12458F0();
          sub_1C1266C20();
          v48 = v59;
          swift_unknownObjectRelease();
          (*(v48 + 8))(v7, v33);
          (*(v63 + 8))(v53, v29);
          v49 = v67;
          v50 = v62;
LABEL_19:
          *v32 = v47;
          *(v32 + 8) = v49;
          *(v32 + 9) = v11;
          return __swift_destroy_boxed_opaque_existential_0Tm(v50);
        }
      }

      else
      {
        LOBYTE(v64) = 2;
        sub_1C124613C();
        v41 = v17;
        v42 = v52;
        sub_1C1266C00();
        v32 = v60;
        if (!v42)
        {
          LODWORD(v59) = v11;
          v11 = v30;
          v67 = 0;
          sub_1C1246334();
          v43 = v57;
          v44 = v41;
          sub_1C1266C50();
          v45 = v63;
          v46 = v64;
          v66 = 1;
          sub_1C1246388();
          sub_1C1266C20();
          v58 = v46;
          v56 = v67;
          v65 = 2;
          sub_1C12458F0();
          sub_1C1266C20();
          swift_unknownObjectRelease();
          (*(v55 + 8))(v44, v43);
          (*(v45 + 8))(v11, v29);
          v49 = 0;
          v47 = v58 | (v56 << 8) | (v66 << 16);
          v50 = v62;
          LOBYTE(v11) = v59;
          goto LABEL_19;
        }
      }
    }

    else
    {
      LOBYTE(v64) = 0;
      sub_1C12462E0();
      v38 = v54;
      v39 = v52;
      sub_1C1266C00();
      if (!v39)
      {
        sub_1C1246334();
        sub_1C1266C50();
        v40 = v63;
        swift_unknownObjectRelease();
        (*(v56 + 8))(v38, v8);
        (*(v40 + 8))(v53, v29);
        v49 = 0;
        v47 = v64;
        v50 = v62;
        v32 = v60;
        goto LABEL_19;
      }
    }

    (*(v63 + 8))(v30, v29);
    swift_unknownObjectRelease();
    v37 = v62;
    return __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1244B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C12437DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1244B38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1243900();
  *a1 = result;
  return result;
}

uint64_t sub_1C1244B60(uint64_t a1)
{
  v2 = sub_1C12460E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1244B9C(uint64_t a1)
{
  v2 = sub_1C12460E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1244BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1243970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1244C08(uint64_t a1)
{
  v2 = sub_1C1246238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1244C44(uint64_t a1)
{
  v2 = sub_1C1246238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1244C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1243A60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1244CB0(uint64_t a1)
{
  v2 = sub_1C124613C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1244CEC(uint64_t a1)
{
  v2 = sub_1C124613C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1244D28(uint64_t a1)
{
  v2 = sub_1C12462E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1244D64(uint64_t a1)
{
  v2 = sub_1C12462E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1244DA8()
{
  sub_1C1266E90();
  sub_1C12440E4();
  return sub_1C1266EE0();
}

BOOL static PhotosPrefetchable.Font.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 10);
  v4 = *(a1 + 11);
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = *(a2 + 10);
  v8 = *(a2 + 11);
  v14 = *a1;
  v15 = v2;
  v12 = v5;
  v13 = v6;
  if ((sub_1C12436EC(&v14, &v12) & 1) == 0)
  {
    return 0;
  }

  if (v3 == 9)
  {
    if (v7 != 9)
    {
      return 0;
    }
  }

  else if (v7 == 9 || v3 != v7)
  {
    return 0;
  }

  if (v4 != 3)
  {
    return v8 != 3 && v4 == v8;
  }

  return v8 == 3;
}

uint64_t sub_1C1244EE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746867696577 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C1266D50() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C1266D50();

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

uint64_t sub_1C1244FF0(char a1)
{
  if (!a1)
  {
    return 1702060386;
  }

  if (a1 == 1)
  {
    return 0x746867696577;
  }

  return 0x676E696461656CLL;
}

uint64_t sub_1C124503C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C1266E90();
  a4(v8, v6);
  return sub_1C1266EE0();
}

uint64_t sub_1C1245090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1244EE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C12450B8(uint64_t a1)
{
  v2 = sub_1C124530C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C12450F4(uint64_t a1)
{
  v2 = sub_1C124530C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhotosPrefetchable.Font.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98610);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 4);
  v11 = *(v1 + 10);
  v15 = *(v1 + 11);
  v16 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C124530C();
  sub_1C1266F00();
  v18 = v9;
  v19 = v10;
  v24 = 0;
  sub_1C1245360();
  v12 = v17;
  sub_1C1266CB0();
  if (!v12)
  {
    v13 = v15;
    v23 = v16;
    v22 = 1;
    sub_1C12453B4();
    sub_1C1266C80();
    v21 = v13;
    v20 = 2;
    sub_1C1245408();
    sub_1C1266C80();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C124530C()
{
  result = qword_1EDE7B080[0];
  if (!qword_1EDE7B080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7B080);
  }

  return result;
}

unint64_t sub_1C1245360()
{
  result = qword_1EDE7AFF0;
  if (!qword_1EDE7AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AFF0);
  }

  return result;
}

unint64_t sub_1C12453B4()
{
  result = qword_1EDE7AF90;
  if (!qword_1EDE7AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF90);
  }

  return result;
}

unint64_t sub_1C1245408()
{
  result = qword_1EDE7AF78;
  if (!qword_1EDE7AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF78);
  }

  return result;
}

uint64_t PhotosPrefetchable.Font.hash(into:)()
{
  v1 = *(v0 + 10);
  v2 = *(v0 + 11);
  sub_1C12440E4();
  sub_1C1266EB0();
  if (v1 != 9)
  {
    MEMORY[0x1C68F07E0](v1);
  }

  if (v2 == 3)
  {
    return sub_1C1266EB0();
  }

  sub_1C1266EB0();
  return MEMORY[0x1C68F07E0](v2);
}

uint64_t PhotosPrefetchable.Font.hashValue.getter()
{
  v1 = *(v0 + 10);
  v2 = *(v0 + 11);
  sub_1C1266E90();
  sub_1C12440E4();
  sub_1C1266EB0();
  if (v1 != 9)
  {
    MEMORY[0x1C68F07E0](v1);
  }

  sub_1C1266EB0();
  if (v2 != 3)
  {
    MEMORY[0x1C68F07E0](v2);
  }

  return sub_1C1266EE0();
}

uint64_t PhotosPrefetchable.Font.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98618);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C124530C();
  sub_1C1266EF0();
  if (!v2)
  {
    v26 = 0;
    sub_1C124589C();
    OUTLINED_FUNCTION_3_56();
    sub_1C1266C50();
    v18 = v19;
    v11 = v20;
    v12 = v21;
    v24 = 1;
    sub_1C12458F0();
    OUTLINED_FUNCTION_3_56();
    sub_1C1266C20();
    v16 = v11;
    v17 = v12;
    LOBYTE(v12) = v25;
    v22 = 2;
    sub_1C1245944();
    OUTLINED_FUNCTION_3_56();
    sub_1C1266C20();
    (*(v7 + 8))(v10, v5);
    v14 = v23;
    *a2 = v18;
    v15 = v17;
    *(a2 + 8) = v16;
    *(a2 + 9) = v15;
    *(a2 + 10) = v12;
    *(a2 + 11) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1C12457DC()
{
  v1 = *(v0 + 10);
  v2 = *(v0 + 11);
  sub_1C1266E90();
  sub_1C12440E4();
  sub_1C1266EB0();
  if (v1 != 9)
  {
    MEMORY[0x1C68F07E0](v1);
  }

  sub_1C1266EB0();
  if (v2 != 3)
  {
    MEMORY[0x1C68F07E0](v2);
  }

  return sub_1C1266EE0();
}

unint64_t sub_1C124589C()
{
  result = qword_1EDE7AFE8;
  if (!qword_1EDE7AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AFE8);
  }

  return result;
}

unint64_t sub_1C12458F0()
{
  result = qword_1EDE7AF80;
  if (!qword_1EDE7AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF80);
  }

  return result;
}

unint64_t sub_1C1245944()
{
  result = qword_1EDE7AF68;
  if (!qword_1EDE7AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF68);
  }

  return result;
}

unint64_t sub_1C124599C()
{
  result = qword_1EBE98620;
  if (!qword_1EBE98620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98620);
  }

  return result;
}

unint64_t sub_1C12459F4()
{
  result = qword_1EBE98628;
  if (!qword_1EBE98628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98628);
  }

  return result;
}

unint64_t sub_1C1245A4C()
{
  result = qword_1EBE98630;
  if (!qword_1EBE98630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98630);
  }

  return result;
}

unint64_t sub_1C1245AA4()
{
  result = qword_1EBE98638;
  if (!qword_1EBE98638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98638);
  }

  return result;
}

unint64_t sub_1C1245AFC()
{
  result = qword_1EBE98640;
  if (!qword_1EBE98640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98640);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s4FontVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 12))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 9);
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

uint64_t _s4FontVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

_BYTE *_s4FontV9TextStyleOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s4FontV6WeightOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s4FontV6DesignOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s4FontV4BaseOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 10))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 9);
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

uint64_t _s4FontV4BaseOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C1245F8C()
{
  result = qword_1EBE98648;
  if (!qword_1EBE98648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98648);
  }

  return result;
}

unint64_t sub_1C1245FE4()
{
  result = qword_1EBE98650;
  if (!qword_1EBE98650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98650);
  }

  return result;
}

unint64_t sub_1C124603C()
{
  result = qword_1EDE7B070;
  if (!qword_1EDE7B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B070);
  }

  return result;
}

unint64_t sub_1C1246094()
{
  result = qword_1EDE7B078;
  if (!qword_1EDE7B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B078);
  }

  return result;
}

unint64_t sub_1C12460E8()
{
  result = qword_1EDE7B048;
  if (!qword_1EDE7B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B048);
  }

  return result;
}

unint64_t sub_1C124613C()
{
  result = qword_1EDE7B008;
  if (!qword_1EDE7B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B008);
  }

  return result;
}

unint64_t sub_1C1246190()
{
  result = qword_1EDE7AF40;
  if (!qword_1EDE7AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF40);
  }

  return result;
}

unint64_t sub_1C12461E4()
{
  result = qword_1EDE7AFA8;
  if (!qword_1EDE7AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AFA8);
  }

  return result;
}

unint64_t sub_1C1246238()
{
  result = qword_1EBE98678;
  if (!qword_1EBE98678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98678);
  }

  return result;
}

unint64_t sub_1C124628C()
{
  result = qword_1EBE98680;
  if (!qword_1EBE98680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98680);
  }

  return result;
}

unint64_t sub_1C12462E0()
{
  result = qword_1EDE7B030;
  if (!qword_1EDE7B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B030);
  }

  return result;
}

unint64_t sub_1C1246334()
{
  result = qword_1EDE7AF30;
  if (!qword_1EDE7AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF30);
  }

  return result;
}

unint64_t sub_1C1246388()
{
  result = qword_1EDE7AF98;
  if (!qword_1EDE7AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF98);
  }

  return result;
}

unint64_t sub_1C12463DC()
{
  result = qword_1EBE986A8;
  if (!qword_1EBE986A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE986A8);
  }

  return result;
}

unint64_t sub_1C1246430()
{
  result = qword_1EDE7AFA0;
  if (!qword_1EDE7AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AFA0);
  }

  return result;
}

unint64_t sub_1C1246484()
{
  result = qword_1EDE7AF70;
  if (!qword_1EDE7AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF70);
  }

  return result;
}

unint64_t sub_1C12464D8()
{
  result = qword_1EDE7AF88;
  if (!qword_1EDE7AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF88);
  }

  return result;
}

unint64_t sub_1C124652C()
{
  result = qword_1EDE7AF38;
  if (!qword_1EDE7AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF38);
  }

  return result;
}

_BYTE *_s4FontV4BaseO19TextStyleCodingKeysOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s4FontV4BaseO20SystemSizeCodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C1246718(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C12467F8()
{
  result = qword_1EBE986B0;
  if (!qword_1EBE986B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE986B0);
  }

  return result;
}

unint64_t sub_1C1246850()
{
  result = qword_1EBE986B8;
  if (!qword_1EBE986B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE986B8);
  }

  return result;
}

unint64_t sub_1C12468A8()
{
  result = qword_1EBE986C0;
  if (!qword_1EBE986C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE986C0);
  }

  return result;
}

unint64_t sub_1C1246900()
{
  result = qword_1EBE986C8;
  if (!qword_1EBE986C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE986C8);
  }

  return result;
}

unint64_t sub_1C1246958()
{
  result = qword_1EDE7B020;
  if (!qword_1EDE7B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B020);
  }

  return result;
}

unint64_t sub_1C12469B0()
{
  result = qword_1EDE7B028;
  if (!qword_1EDE7B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B028);
  }

  return result;
}

unint64_t sub_1C1246A08()
{
  result = qword_1EDE7B010;
  if (!qword_1EDE7B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B010);
  }

  return result;
}

unint64_t sub_1C1246A60()
{
  result = qword_1EDE7B018;
  if (!qword_1EDE7B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B018);
  }

  return result;
}

unint64_t sub_1C1246AB8()
{
  result = qword_1EDE7AFF8;
  if (!qword_1EDE7AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AFF8);
  }

  return result;
}

unint64_t sub_1C1246B10()
{
  result = qword_1EDE7B000;
  if (!qword_1EDE7B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B000);
  }

  return result;
}

unint64_t sub_1C1246B68()
{
  result = qword_1EDE7B038;
  if (!qword_1EDE7B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B038);
  }

  return result;
}

unint64_t sub_1C1246BC0()
{
  result = qword_1EDE7B040;
  if (!qword_1EDE7B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B040);
  }

  return result;
}

double sub_1C1246C30@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  v26 = *(a2 + 1);
  v9 = a2[3];
  v8 = a2[4];
  v10 = a2[5];
  v11 = [v4 childViewControllerForRepresentedItem];
  if (v11)
  {
    v12 = v11;
    *&v30[0] = v7;
    *(v30 + 8) = v26;
    *(&v30[1] + 1) = v9;
    v31 = v8;
    v32 = v10;
    sub_1C1246C30(a1, v30);

    return result;
  }

  if ([v4 representedItem])
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
    if (v8)
    {

      v8(v30, v33);
      sub_1C0FCF004(v8);
      sub_1C0FD09FC(v30, &v28);
    }

    else
    {
      sub_1C0FA139C(v33, &v28);
    }

    sub_1C10C8EF4(&v28, &v30[1]);
    __swift_destroy_boxed_opaque_existential_0Tm(&v28);
    *&v30[0] = v7;
    *(&v30[0] + 1) = v26;
    if (v8)
    {
      sub_1C0FCF1B4(v8);

      v8(&v28, a1);
      sub_1C0FCF004(v8);
      sub_1C0FD09FC(&v28, v27);
    }

    else
    {
      sub_1C0FA139C(a1, v27);
    }

    sub_1C10C8EF4(v27, v29);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    *&v28 = v7;
    *(&v28 + 1) = v26;

    v14 = sub_1C0FCFE68(&v30[1], v29);
    sub_1C0FD0978(&v28);
    sub_1C0FD0978(v30);
    if (v14)
    {
      *&v28 = v4;
      sub_1C116E8B4();
      v15 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE986D0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        sub_1C0F9DDE4(v30, a3);
        return result;
      }

      v31 = 0;
      memset(v30, 0, sizeof(v30));
      sub_1C0F9E21C(v30, &qword_1EBE982C0);
      v16 = sub_1C1266410();
      if (qword_1EDE7B5C0 != -1)
      {
        swift_once();
      }

      v17 = qword_1EDE7B5C8;
      if (os_log_type_enabled(qword_1EDE7B5C8, v16))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v30[0] = v19;
        *v18 = 136315138;
        v20 = v15;
        v21 = [v20 description];
        v22 = sub_1C1265EA0();
        v24 = v23;

        v25 = sub_1C0FA0E80(v22, v24, v30);

        *(v18 + 4) = v25;
        _os_log_impl(&dword_1C0F96000, v17, v16, "couldn't find photosDetailsNavigationEndPoint because %s doesn't conform to PhotosDetailsNavigationEndPoint", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v19);
        MEMORY[0x1C68F1630](v19, -1, -1);
        MEMORY[0x1C68F1630](v18, -1, -1);
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

void PhotosDetailsNavigationEndPoint.frameForContent<A>(of:displayedIn:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1C10B39E4(a1, &v29);
  if (!v30)
  {
    sub_1C0F9E21C(&v29, &unk_1EBE8FE18);
    OUTLINED_FUNCTION_1_63(0);
    OUTLINED_FUNCTION_5_1();
    goto LABEL_8;
  }

  sub_1C0F9DDE4(&v29, v32);
  v13 = v33;
  v14 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v14 + 16))(v13, v14);
  if (v15 & 1) != 0 || (sub_1C12665E0())
  {
    v16 = 1;
  }

  else
  {
    v17 = v33;
    v18 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v30 = a5;
    v31 = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
    PhotosDisplayableMedia.contentBoundsWhenDisplayed(in:options:)(&v29, v20, v17, v18);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0Tm(&v29);
    v35.origin.x = v22;
    v35.origin.y = v24;
    v35.size.width = v26;
    v35.size.height = v28;
    if (CGRectIsEmpty(v35))
    {
      v16 = 2;
    }

    else
    {
      sub_1C1247570(v32, a3, a4, a6, &v29);
      if (v31)
      {
        v16 = 3;
      }

      else
      {
        v36.origin.x = OUTLINED_FUNCTION_8_0();
        if (!CGRectIsEmpty(v36))
        {
          goto LABEL_6;
        }

        OUTLINED_FUNCTION_8_0();
        if (PXRectIsValid())
        {
          goto LABEL_6;
        }

        v16 = 4;
      }
    }
  }

  OUTLINED_FUNCTION_1_63(v16);
  OUTLINED_FUNCTION_5_1();
LABEL_6:
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
LABEL_8:
  OUTLINED_FUNCTION_8_0();
}

double sub_1C12471E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_1C1266410();
  if (qword_1EDE7B5C0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDE7B5C8;
  if (os_log_type_enabled(qword_1EDE7B5C8, v14))
  {
    v24 = v14;
    v16 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v16 = 136315138;
    v17 = sub_1C1265ED0();
    v19 = a6;
    v20 = a7;
    v21 = sub_1C0FA0E80(v17, v18, &v25);

    *(v16 + 4) = v21;
    a7 = v20;
    a6 = v19;
    _os_log_impl(&dword_1C0F96000, v15, v24, "using fallback determination of content frame because of %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x1C68F1630](v23, -1, -1);
    MEMORY[0x1C68F1630](v16, -1, -1);
  }

  return sub_1C12473AC(a3, a4, a5, a6, a7, a8);
}

double sub_1C12473AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  (*(a5 + 8))(v25, v23, a2, a3, a5);
  sub_1C0F9E21C(v23, &unk_1EBE8FE18);
  (*(a6 + 8))(a4, a6);
  sub_1C12665B0();
  v10 = v26;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  PhotosViewport.bounds.getter(v10, v11);
  PXRectWithAspectRatioFillingRect();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(a5 + 16))(a3, a5);
  v21 = (*(v20 + 24))(v13, v15, v17, v19);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  return v21;
}

uint64_t sub_1C1247570@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1C0FDB0A8(a1, v32);
  (*(a4 + 8))(v33, v32, a2, a3, a4);
  sub_1C0F9E21C(v32, &unk_1EBE8FE18);
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  PhotosDisplayableMedia.contentBoundsWhenDisplayed(in:options:)(v33, v12, v10, v11);
  PXRectNormalize();
  v13 = v34;
  v14 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  PhotosViewport.bounds.getter(v13, v14);
  PXRectDenormalize();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  (*(a4 + 16))(a3, a4);
  v24 = (*(v23 + 24))(v16, v18, v20, v22);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  swift_unknownObjectRelease();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v33);
  *a5 = v24;
  *(a5 + 8) = v26;
  *(a5 + 16) = v28;
  *(a5 + 24) = v30;
  *(a5 + 32) = 0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C1247880()
{
  result = qword_1EBE986D8;
  if (!qword_1EBE986D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE986D8);
  }

  return result;
}

uint64_t sub_1C12478D4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = sub_1C1265820();
      v5 = sub_1C1266140();
      *(v5 + 16) = v2;
      OUTLINED_FUNCTION_1();
      v7 = v6;
      v9 = v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v11 = *(v10 + 16);
      while (1)
      {
        --v2;
        v11(v9, v3, v4);
        if (!v2)
        {
          break;
        }

        v9 += *(v7 + 72);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v12 = sub_1C1265820();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_1C12479FC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosFeedStyle.getter();
  *a1 = v3;
  return result;
}

uint64_t PhotosItemFeedLayoutKind.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t PhotosItemsFeed.init(data:id:cols:feedLayoutKind:draggingDelegate:alignment:verticalInteritemSpacingOneColumnMultiplier:itemView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v24 = *a3;
  v17 = *(a3 + 2);
  v18 = *a4;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = swift_getKeyPath();
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  v19 = type metadata accessor for PhotosItemsFeed();
  (*(*(a13 - 8) + 32))(a9 + v19[20], a1, a13);
  *(a9 + v19[21]) = a2;
  v20 = a9 + v19[22];
  *v20 = v24;
  *(v20 + 16) = v17;
  *(a9 + v19[23]) = v18;
  result = sub_1C0F9DDE4(a5, a9 + v19[24]);
  v22 = a9 + v19[25];
  *v22 = a6;
  *(v22 + 8) = a7;
  *(v22 + 16) = a8 & 1;
  *(a9 + v19[26]) = a10;
  v23 = (a9 + v19[27]);
  *v23 = a11;
  v23[1] = a12;
  return result;
}

void sub_1C1247CD8(_BYTE *a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 8) == 1)
  {
    *a1 = v7;
  }

  else
  {

    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v7, 0);
    (*(v4 + 8))(v6, v3);
  }
}

double sub_1C1247E28()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    return *(v0 + 16);
  }

  sub_1C1266420();
  v10 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C1001C04(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

uint64_t PhotosItemsFeed.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v49 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v48 = *(a1 + 64);
  v47 = v3;
  v8 = v5;
  v46 = v5;
  v9 = v6;
  v45 = v6;
  v10 = v7;
  v44 = v7;
  v11 = type metadata accessor for PhotosItemsFeed.ItemContainerView();
  OUTLINED_FUNCTION_4_59();
  v67 = v8;
  v68 = v11;
  v69 = v9;
  v70 = v10;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for PhotosDraggableForEach();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  v12 = sub_1C1265AF0();
  OUTLINED_FUNCTION_2_64();
  v13 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  sub_1C1265AB0();
  OUTLINED_FUNCTION_8_44();
  swift_getWitnessTable();
  type metadata accessor for PhotosScrollView();
  sub_1C1263C30();
  v65 = v12;
  v66 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = MEMORY[0x1E697E5D8];
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_64();
  v61 = v12;
  v62 = swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  swift_getWitnessTable();
  v14 = sub_1C12655A0();
  OUTLINED_FUNCTION_1();
  v42 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B90);
  v19 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v41 - v26;
  v51 = v47;
  v52 = v4;
  v53 = v46;
  v54 = v49;
  v55 = v45;
  v56 = v44;
  v28 = v50;
  v57 = v48;
  v58 = v50;
  sub_1C10A7F5C();
  result = sub_1C1265590();
  v30 = (v28 + *(a1 + 88));
  v31 = v30[1];
  if (v31)
  {
    v32 = *v30;
    if (v32 != 0x8000000000000000 || v31 != -1)
    {
      v34 = v32 / v31;
      OUTLINED_FUNCTION_1_1();
      v35 = swift_getWitnessTable();
      View.photosInlinePlayback(colsPerPage:)(v34);
      (*(v42 + 8))(v18, v14);
      OUTLINED_FUNCTION_24();
      v38 = sub_1C0FDB6D4(v36, v37);
      v59 = v35;
      v60 = v38;
      OUTLINED_FUNCTION_4_0();
      v39 = swift_getWitnessTable();
      sub_1C0FDBA4C(v24, v19, v39);
      v40 = *(v21 + 8);
      v40(v24, v19);
      sub_1C0FDBA4C(v27, v19, v39);
      return (v40)(v27, v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1248474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a5;
  v49 = a8;
  v50 = a1;
  v54 = a9;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  *&v93 = a6;
  *(&v93 + 1) = a7;
  v94 = a8;
  v14 = type metadata accessor for PhotosItemsFeed.ItemContainerView();
  WitnessTable = swift_getWitnessTable();
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = v14;
  *&v93 = a6;
  *(&v93 + 1) = a7;
  v94 = WitnessTable;
  type metadata accessor for PhotosDraggableForEach();
  swift_getWitnessTable();
  v16 = sub_1C1265AF0();
  v17 = swift_getWitnessTable();
  v53 = v16;
  *&v91 = v16;
  *(&v91 + 1) = v17;
  v56 = v17;
  swift_getOpaqueTypeMetadata2();
  v18 = sub_1C1263190();
  v47 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v45 - v22;
  sub_1C1265AB0();
  swift_getWitnessTable();
  v23 = type metadata accessor for PhotosScrollView();
  v52 = v18;
  v51 = sub_1C1263C30();
  v24 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v45 - v25;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = v48;
  *&v93 = a6;
  *(&v93 + 1) = a7;
  v26 = v50;
  v94 = v49;
  v27 = type metadata accessor for PhotosItemsFeed();
  v28 = MEMORY[0x1E697E5D8];
  if (*(v26 + *(v27 + 92)) == 1)
  {
    sub_1C1248BB8(v27, &v91);
    v87 = v91;
    v88 = v92;
    v89 = v93;
    v90 = v94;
    v29 = swift_getWitnessTable();
    sub_1C0FDBA4C(&v87, v23, v29);
    v77[0] = v87;
    v77[1] = v88;
    v77[2] = v89;
    v78 = v90;
    v30 = *(v23 - 8);
    v31 = *(v30 + 8);
    v31(v77, v23);
    v79[0] = v73;
    v79[1] = v74;
    v79[2] = v75;
    v80 = v76;
    v91 = v73;
    v92 = v74;
    v93 = v75;
    LOBYTE(v94) = v76;
    sub_1C0FDBA4C(&v91, v23, v29);
    v81[0] = v91;
    v81[1] = v92;
    v81[2] = v93;
    v82 = v94;
    v32 = *(v30 + 16);
    v32(&v87, v79, v23);
    v31(v81, v23);
    v83[0] = v69;
    v83[1] = v70;
    v83[2] = v71;
    v84 = v72;
    v65 = v69;
    v66 = v70;
    v67 = v71;
    v68 = v72;
    v32(&v91, v83, v23);
    v33 = v53;
    *&v91 = v53;
    *(&v91 + 1) = v56;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v64 = v28;
    swift_getWitnessTable();
    sub_1C1112E18();
    v85[0] = v65;
    v85[1] = v66;
    v85[2] = v67;
    v86 = v68;
    v31(v85, v23);
    v87 = v69;
    v88 = v70;
    v89 = v71;
    v90 = v72;
    v31(&v87, v23);
    v91 = v73;
    v92 = v74;
    v93 = v75;
    LOBYTE(v94) = v76;
    v31(&v91, v23);
  }

  else
  {
    sub_1C1248DD8(v27, v20);
    v33 = v53;
    *&v91 = v53;
    *(&v91 + 1) = v56;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = v28;
    v34 = v52;
    v35 = swift_getWitnessTable();
    v36 = v46;
    sub_1C0FDBA4C(v20, v34, v35);
    v37 = *(v47 + 8);
    v37(v20, v34);
    sub_1C0FDBA4C(v36, v34, v35);
    swift_getWitnessTable();
    sub_1C1112D68();
    v37(v20, v34);
    v38 = v36;
    v28 = MEMORY[0x1E697E5D8];
    v37(v38, v34);
  }

  *&v91 = v33;
  *(&v91 + 1) = v56;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v28;
  v39 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v59 = v39;
  v60 = v40;
  v41 = v51;
  v42 = swift_getWitnessTable();
  v43 = v55;
  sub_1C0FDBA4C(v55, v41, v42);
  return (*(v24 + 8))(v43, v41);
}

uint64_t sub_1C1248BB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = *(a1 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C1264420();
  (*(v4 + 16))(v6, v2, a1);
  v7 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = a1[2];
  v22 = a1[3];
  v10 = v22;
  v23 = v9;
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  v12 = a1[4];
  v11 = a1[5];
  *(v8 + 4) = v12;
  *(v8 + 5) = v11;
  v13 = a1[6];
  v14 = a1[7];
  *(v8 + 6) = v13;
  *(v8 + 7) = v14;
  v15 = a1[8];
  *(v8 + 8) = v15;
  (*(v4 + 32))(&v8[v7], v6, a1);
  v17 = v22;
  v16 = v23;
  v26 = v23;
  v27 = v22;
  v28 = v12;
  v29 = v11;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v18 = type metadata accessor for PhotosItemsFeed.ItemContainerView();
  WitnessTable = swift_getWitnessTable();
  v26 = v16;
  v27 = v17;
  v28 = v12;
  v29 = v18;
  v30 = v13;
  v31 = v14;
  v32 = WitnessTable;
  type metadata accessor for PhotosDraggableForEach();
  swift_getWitnessTable();
  sub_1C1265AB0();
  swift_getWitnessTable();
  return PhotosScrollView.init(_:showsIndicators:content:)(v24, 1, sub_1C124C568, v8, v25);
}

uint64_t sub_1C1248DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1265810();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1C1265820();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v63 = *(a1 + 16);
  v11 = v63;
  v64 = v12;
  v65 = v14;
  v66 = v13;
  v54 = v13;
  v67 = v15;
  v68 = v16;
  v51 = v17;
  v69 = v17;
  v18 = type metadata accessor for PhotosItemsFeed.ItemContainerView();
  WitnessTable = swift_getWitnessTable();
  v56 = v12;
  v57 = v11;
  v63 = v11;
  v64 = v12;
  v55 = v14;
  v65 = v14;
  v66 = v18;
  v53 = v15;
  v67 = v15;
  v68 = v16;
  v52 = v16;
  v69 = WitnessTable;
  v20 = type metadata accessor for PhotosDraggableForEach();
  v21 = swift_getWitnessTable();
  v47 = v20;
  v43 = v21;
  v22 = sub_1C1265AF0();
  v49 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v45 = &v43 - v23;
  v24 = swift_getWitnessTable();
  v63 = v22;
  v64 = v24;
  v46 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v44 = &v43 - v25;
  sub_1C1249398(a1);
  *v8 = xmmword_1C12A3450;
  (*(v61 + 104))(v8, *MEMORY[0x1E697D748], v62);
  v26 = v60;
  result = sub_1C1265830();
  v28 = (v2 + *(a1 + 88));
  v29 = v28[1];
  if (v29)
  {
    v30 = *v28;
    if (v30 != 0x8000000000000000 || v29 != -1)
    {
      v62 = sub_1C12478D4(v26, v30 / v29);
      sub_1C1263AA0();
      sub_1C1249398(a1);
      MEMORY[0x1EEE9AC00](v32);
      v33 = v56;
      *(&v43 - 8) = v57;
      *(&v43 - 7) = v33;
      v34 = v54;
      *(&v43 - 6) = v55;
      *(&v43 - 5) = v34;
      v35 = v52;
      *(&v43 - 4) = v53;
      *(&v43 - 3) = v35;
      v42 = v2;
      v36 = v43;
      sub_1C1209E48();
      v41 = v36;
      v37 = v45;
      sub_1C1265AE0();
      v38 = v44;
      v39 = v46;
      sub_1C1264CD0();
      (*(v49 + 8))(v37, v22);
      sub_1C1247E28();
      v63 = v22;
      v64 = v39;
      swift_getOpaqueTypeConformance2();
      v40 = OpaqueTypeMetadata2;
      sub_1C1264FA0();
      return (*(v48 + 8))(v38, v40);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C1249398(uint64_t a1)
{
  v2 = (v1 + *(a1 + 88));
  v3 = v2[1];
  if (!v3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v4 = *v2;
  if (v4 == 0x8000000000000000 && v3 == -1)
  {
    goto LABEL_10;
  }

  if (v4 / v3 == 1)
  {
    sub_1C1247E28();
  }

  else
  {
    sub_1C1247CD8(&v6);
    sub_1C1247E28();
  }
}

uint64_t sub_1C1249444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v58 = a9;
  *&v60 = a2;
  *(&v60 + 1) = a3;
  v61 = a4;
  v62 = a5;
  v48 = a4;
  v52 = a5;
  v53 = a8;
  v63 = a6;
  v64 = a7;
  v46 = a7;
  v65 = a8;
  v17 = type metadata accessor for PhotosItemsFeed();
  v55 = *(v17 - 1);
  v57 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v44 - v18;
  v19 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v60 = a2;
  v47 = a3;
  *(&v60 + 1) = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  v22 = type metadata accessor for PhotosItemsFeed.ItemContainerView();
  v51 = v22;
  WitnessTable = swift_getWitnessTable();
  *&v60 = a2;
  *(&v60 + 1) = a3;
  v61 = a4;
  v62 = v22;
  v63 = a6;
  v64 = a7;
  v23 = a6;
  v65 = WitnessTable;
  v24 = type metadata accessor for PhotosDraggableForEach();
  v56 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v50 = &v44 - v29;
  (*(v19 + 16))(v59, a1 + v17[20], a2, v28);
  v30 = v17[22];
  v44 = *(a1 + v17[21]);
  v45 = *(a1 + v30) < 2;
  sub_1C0FDB0A8(a1 + v17[24], &v60);
  v32 = v54;
  v31 = v55;
  (*(v55 + 16))(v54, a1, v17);
  v33 = (*(v31 + 80) + 72) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v35 = v47;
  v36 = v48;
  *(v34 + 2) = a2;
  *(v34 + 3) = v35;
  v38 = v52;
  v37 = v53;
  *(v34 + 4) = v36;
  *(v34 + 5) = v38;
  *(v34 + 6) = v23;
  *(v34 + 7) = v46;
  *(v34 + 8) = v37;
  (*(v31 + 32))(&v34[v33], v32, v17);
  v39 = v44;

  sub_1C1039330(v39, v45, &v60, 0, 0, 0, sub_1C124C98C, v26, v34, a2);
  v40 = swift_getWitnessTable();
  v41 = v50;
  sub_1C0FDBA4C(v26, v24, v40);
  v42 = *(v56 + 8);
  v42(v26, v24);
  sub_1C0FDBA4C(v41, v24, v40);
  return (v42)(v41, v24);
}

uint64_t sub_1C1249874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for PhotosItemsFeed.ItemContainerView();
  (*(*(a5 - 8) + 32))(&a6[v10[19]], a3, a5);
  a6[v10[20]] = a4;
  v11 = &a6[v10[21]];
  result = swift_getKeyPath();
  *v11 = result;
  v11[8] = 0;
  return result;
}

uint64_t sub_1C1249940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v64 = a5;
  v65 = a8;
  v63 = a1;
  v59 = a9;
  v16 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C1265810();
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1C1265820();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v70 = a6;
  v71 = a7;
  v72 = a8;
  v24 = type metadata accessor for PhotosItemsFeed.ItemContainerView();
  WitnessTable = swift_getWitnessTable();
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = v24;
  v70 = a6;
  v71 = a7;
  v72 = WitnessTable;
  v26 = type metadata accessor for PhotosDraggableForEach();
  v27 = swift_getWitnessTable();
  v52 = v26;
  v28 = v27;
  v29 = sub_1C1265AB0();
  v53 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v51 = &v50 - v33;
  v54 = a2;
  v55 = a3;
  v66 = a2;
  v67 = a3;
  v56 = a4;
  v68 = a4;
  v69 = v64;
  v58 = a6;
  v70 = a6;
  v71 = a7;
  v60 = a7;
  v72 = v65;
  v34 = type metadata accessor for PhotosItemsFeed();
  v35 = v63;
  sub_1C1249398(v34);
  *v20 = xmmword_1C12A3450;
  (*(v61 + 104))(v20, *MEMORY[0x1E697D748], v62);
  result = sub_1C1265830();
  v37 = (v35 + *(v34 + 88));
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    if (v39 != 0x8000000000000000 || v38 != -1)
    {
      sub_1C12478D4(v23, v39 / v38);
      sub_1C12638E0();
      sub_1C1249398(v34);
      MEMORY[0x1EEE9AC00](v41);
      v42 = v55;
      *(&v50 - 8) = v54;
      *(&v50 - 7) = v42;
      v43 = v64;
      *(&v50 - 6) = v56;
      *(&v50 - 5) = v43;
      v44 = v60;
      *(&v50 - 4) = v58;
      *(&v50 - 3) = v44;
      v49 = v35;
      sub_1C10A7F38(v52, v28);
      v48 = v28;
      sub_1C1265AA0();
      v45 = swift_getWitnessTable();
      v46 = v51;
      sub_1C0FDBA4C(v31, v29, v45);
      v47 = *(v53 + 8);
      v47(v31, v29);
      sub_1C0FDBA4C(v46, v29, v45);
      return (v47)(v46, v29);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1249DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v56 = a1;
  v57 = a9;
  *&v59 = a2;
  *(&v59 + 1) = a3;
  v60 = a4;
  v61 = a5;
  v47 = a4;
  v51 = a5;
  v52 = a8;
  v62 = a6;
  v63 = a7;
  v45 = a7;
  v64 = a8;
  v16 = type metadata accessor for PhotosItemsFeed();
  v17 = *(v16 - 1);
  v55 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v43 - v18;
  v19 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v59 = a2;
  v46 = a3;
  *(&v59 + 1) = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v63 = a7;
  v64 = a8;
  v22 = type metadata accessor for PhotosItemsFeed.ItemContainerView();
  v50 = v22;
  WitnessTable = swift_getWitnessTable();
  *&v59 = a2;
  *(&v59 + 1) = a3;
  v60 = a4;
  v61 = v22;
  v62 = a6;
  v63 = a7;
  v23 = a6;
  v64 = WitnessTable;
  v24 = type metadata accessor for PhotosDraggableForEach();
  v54 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v49 = &v43 - v29;
  v30 = v56;
  (*(v19 + 16))(v58, v56 + v16[20], a2, v28);
  v44 = *(v30 + v16[21]);
  sub_1C0FDB0A8(v30 + v16[24], &v59);
  v31 = v53;
  (*(v17 + 16))(v53, v30, v16);
  v32 = (*(v17 + 80) + 72) & ~*(v17 + 80);
  v33 = swift_allocObject();
  v34 = v46;
  v35 = v47;
  *(v33 + 2) = a2;
  *(v33 + 3) = v34;
  v37 = v51;
  v36 = v52;
  *(v33 + 4) = v35;
  *(v33 + 5) = v37;
  *(v33 + 6) = v23;
  *(v33 + 7) = v45;
  *(v33 + 8) = v36;
  (*(v17 + 32))(&v33[v32], v31, v16);
  v38 = v44;

  sub_1C1039330(v38, 0, &v59, 0, 0, 0, sub_1C124C798, v26, v33, a2);
  v39 = swift_getWitnessTable();
  v40 = v49;
  sub_1C0FDBA4C(v26, v24, v39);
  v41 = *(v54 + 8);
  v41(v26, v24);
  sub_1C0FDBA4C(v40, v24, v39);
  return (v41)(v40, v24);
}

uint64_t sub_1C124A1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, char *a5@<X8>, uint64_t a6)
{
  v23 = a4;
  v24 = a1;
  v25 = a5;
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = a6;
  v19 = (a2 + *(type metadata accessor for PhotosItemsFeed() + 108));
  v20 = *v19;
  v21 = v19[1];
  (*(v9 + 16))(v12, v24, a3);
  sub_1C1249874(v20, v21, v12, 0, a3, v25);
}

uint64_t sub_1C124A344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v81 = a2;
  v5 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE986F0);
  swift_getTupleTypeMetadata2();
  v72 = sub_1C1265B00();
  v69[3] = swift_getWitnessTable();
  v6 = sub_1C12655A0();
  v76 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = v69 - v9;
  swift_getTupleTypeMetadata2();
  v10 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v69[2] = v10;
  v69[1] = WitnessTable;
  v12 = sub_1C12655A0();
  v73 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v71 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = v69 - v15;
  v85 = v16;
  v17 = sub_1C1263C30();
  v79 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v78 = v69 - v18;
  v19 = v5;
  v20 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v77 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v80 = (v69 - v24);
  v25 = sub_1C12637E0();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v6;
  v87 = v17;
  v29 = sub_1C1263C30();
  v83 = *(v29 - 8);
  v84 = v29;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = v69 - v32;
  v34 = v3 + *(a1 + 84);
  v35 = *v34;
  LODWORD(v34) = v34[8];
  v82 = v33;
  if (v34 == 1)
  {
    v98 = v35;
  }

  else
  {

    sub_1C1266420();
    v36 = sub_1C1264410();
    v69[0] = v25;
    v37 = v3;
    v38 = v36;
    sub_1C1262620();

    v3 = v37;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v35, 0);
    v30 = (*(v26 + 8))(v28, v69[0]);
    LOBYTE(v35) = v98;
  }

  switch(v35)
  {
    case 1:
      MEMORY[0x1EEE9AC00](v30);
      *&v69[-8] = *(a1 + 16);
      v69[-6] = *(a1 + 32);
      v69[-5] = v19;
      *&v69[-4] = *(a1 + 48);
      v47 = *(a1 + 64);
      v69[-2] = v47;
      v69[-1] = v3;
      sub_1C10A7F5C();
      v50 = v71;
      sub_1C1265590();
      v51 = v85;
      v52 = swift_getWitnessTable();
      v53 = v70;
      sub_1C0FDBA4C(v50, v51, v52);
      v80 = *(v73 + 8);
      v80(v50, v51);
      sub_1C0FDBA4C(v53, v51, v52);
      v54 = v78;
      sub_1C1112E18();
      v90 = v47;
      v91 = v52;
      v55 = v87;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v49 = v82;
      sub_1C1112D68();
      (*(v79 + 8))(v54, v55);
      v56 = v80;
      v80(v50, v51);
      v56(v53, v51);
      break;
    case 2:
      MEMORY[0x1EEE9AC00](v30);
      *&v69[-8] = *(a1 + 16);
      v69[-6] = *(a1 + 32);
      v69[-5] = v19;
      *&v69[-4] = *(a1 + 48);
      v47 = *(a1 + 64);
      v69[-2] = v47;
      v69[-1] = v3;
      sub_1C10A7F5C();
      v57 = v75;
      sub_1C1265590();
      v58 = v86;
      v59 = swift_getWitnessTable();
      v60 = v74;
      sub_1C0FDBA4C(v57, v58, v59);
      v61 = *(v76 + 8);
      v61(v57, v58);
      sub_1C0FDBA4C(v60, v58, v59);
      v62 = swift_getWitnessTable();
      v96 = v47;
      v97 = v62;
      swift_getWitnessTable();
      v49 = v82;
      sub_1C1112E18();
      v61(v57, v58);
      v61(v60, v58);
      break;
    default:
      v39 = v77;
      (*v3)(v3 + *(a1 + 76), v31);
      v40 = *(a1 + 64);
      v41 = v80;
      sub_1C0FDBA4C(v39, v19, v40);
      v76 = *(v20 + 8);
      (v76)(v39, v19);
      sub_1C0FDBA4C(v41, v19, v40);
      v42 = swift_getWitnessTable();
      v43 = v78;
      sub_1C1112D68();
      v88 = v40;
      v89 = v42;
      v44 = v87;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v45 = v82;
      sub_1C1112D68();
      v46 = v44;
      v47 = v40;
      (*(v79 + 8))(v43, v46);
      v48 = v76;
      (v76)(v39, v19);
      v48(v80, v19);
      v49 = v45;
      break;
  }

  v63 = swift_getWitnessTable();
  v94 = v47;
  v95 = v63;
  v64 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v92 = v64;
  v93 = v65;
  v66 = v84;
  v67 = swift_getWitnessTable();
  sub_1C0FDBA4C(v49, v66, v67);
  return (*(v83 + 8))(v49, v66);
}

uint64_t sub_1C124AE24@<X0>(void (**a1)(char *)@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a7;
  v28 = a8;
  v29 = a9;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  KeyPath = swift_getKeyPath();
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v22 = v28;
  v39 = a6;
  v40 = v27;
  v41 = v28;
  v23 = type metadata accessor for PhotosItemsFeed.ItemContainerView();
  (*a1)(a1 + *(v23 + 76));
  v24 = v22;
  sub_1C0FDBA4C(v17, a5, v22);
  v25 = *(v15 + 8);
  v25(v17, a5);
  v33 = KeyPath;
  v34 = 0;
  v35 = &v33;
  (*(v15 + 16))(v17, v20, a5);
  v36 = v17;
  sub_1C1058D54(KeyPath, 0);
  v32[0] = &type metadata for PhotosFeedItemSeparator;
  v32[1] = a5;
  v30 = sub_1C124C2C4();
  v31 = v24;
  sub_1C119EE80(&v35, 2, v32);

  v25(v20, a5);
  v25(v17, a5);
  return sub_1C0FA03F4(v33, v34);
}

uint64_t sub_1C124B034@<X0>(void (**a1)(char *)@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a9;
  v44 = a8;
  v41 = a6;
  v42 = a7;
  v40 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE986F0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - v24;
  v48 = a2;
  v49 = a3;
  v50 = v40;
  v51 = a5;
  v52 = v41;
  v53 = v42;
  v26 = v44;
  v54 = v44;
  v27 = type metadata accessor for PhotosItemsFeed.ItemContainerView();
  (*a1)(a1 + *(v27 + 76));
  sub_1C0FDBA4C(v22, a5, v26);
  v28 = *(v19 + 8);
  v28(v22, a5);
  sub_1C1265660();
  LOBYTE(a3) = sub_1C12644D0();
  sub_1C12628A0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE979C8) + 36)];
  *v37 = a3;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  *&v18[*(v13 + 36)] = 0xBFF0000000000000;
  (*(v19 + 16))(v22, v25, a5);
  v48 = v22;
  sub_1C124C318(v18, v15);
  v49 = v15;
  v47[0] = a5;
  v47[1] = v13;
  v45 = v44;
  v46 = sub_1C124C388();
  sub_1C119EE80(&v48, 2, v47);
  sub_1C124C46C(v18);
  v28(v25, a5);
  sub_1C124C46C(v15);
  return (v28)(v22, a5);
}

uint64_t sub_1C124B310@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  if (qword_1EDE76D00 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDE76D08;
  sub_1C12659A0();
  sub_1C1262C80();
  v10 = v32;
  v26 = v33;
  v27 = v31;
  v11 = v34;
  v24 = v36;
  v25 = v35;
  v12 = sub_1C12644D0();
  if (!v8)
  {

    sub_1C1266420();
    v13 = sub_1C1264410();
    v23 = v3;
    v14 = v13;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v7, 0);
    (*(v4 + 8))(v6, v23);
  }

  sub_1C12628A0();
  v30 = v10;
  v29 = v11;
  v28 = 0;
  v15 = v26;
  v16 = v27;
  *a1 = v9;
  *(a1 + 8) = v16;
  *(a1 + 16) = v10;
  *(a1 + 24) = v15;
  *(a1 + 32) = v11;
  v17 = v24;
  *(a1 + 40) = v25;
  *(a1 + 48) = v17;
  *(a1 + 56) = v12;
  *(a1 + 64) = v18;
  *(a1 + 72) = v19;
  *(a1 + 80) = v20;
  *(a1 + 88) = v21;
  *(a1 + 96) = 0;
}

uint64_t EnvironmentValues.visibleItemLimit.getter()
{
  sub_1C124B588();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C124B588()
{
  result = qword_1EDE81BE0;
  if (!qword_1EDE81BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE81BE0);
  }

  return result;
}

void (*EnvironmentValues.visibleItemLimit.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1C124B588();
  sub_1C12637F0();
  v4 = *(v3 + 24);
  *v3 = v3[2];
  *(v3 + 8) = v4;
  return sub_1C124B6DC;
}

void sub_1C124B6DC(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_1C1263800();

  free(v1);
}

unint64_t sub_1C124B73C()
{
  result = qword_1EBE986E0;
  if (!qword_1EBE986E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE986E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosItemFeedLayoutKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C124B884()
{
  sub_1C124BD9C(319, &qword_1EBE986E8, &type metadata for PhotosFeedStyle, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C124BD9C(319, &qword_1EDE775A0, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1C1266F10();
        if (v3 <= 0x3F)
        {
          swift_getExtendedExistentialTypeMetadata();
          sub_1C124BD9C(319, &qword_1EDE76B48, MEMORY[0x1E6981D58], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C1007F88();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C124BA20(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = ((result & 0xFFFFFFFFFFFFFFF8) + v7 + 49) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((v9 + v18) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((((((((v9 + ((v7 + 49) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C124BB94(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((((((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
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
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        *(a1 + v12) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v12) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v12) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 49) & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((((((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        *(a1 + v12) = v17;
        break;
      case 2:
        *(a1 + v12) = v17;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v12) = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1C124BD9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C124BDFC()
{
  sub_1C1007F88();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C124BD9C(319, &qword_1EBE986E8, &type metadata for PhotosFeedStyle, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C124BEC8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((v7 + 16) & ~v7) + *(*(v4 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 17;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C124C024(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((v10 + 16) & ~v10) + *(*(v6 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C124C218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C124C4D4();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C124C2C4()
{
  result = qword_1EBE986F8;
  if (!qword_1EBE986F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE986F8);
  }

  return result;
}

uint64_t sub_1C124C318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE986F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C124C388()
{
  result = qword_1EBE98700;
  if (!qword_1EBE98700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE986F0);
    sub_1C124C894(&qword_1EDE772C0, &qword_1EBE979C8, &unk_1C12C6B50, sub_1C123A140);
    sub_1C0FDB6D4(&qword_1EDE7BB68, &unk_1EBE93030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98700);
  }

  return result;
}

uint64_t sub_1C124C46C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE986F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C124C4D4()
{
  result = qword_1EBE929B0;
  if (!qword_1EBE929B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE929A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE929B0);
  }

  return result;
}

uint64_t sub_1C124C568()
{
  type metadata accessor for PhotosItemsFeed();
  OUTLINED_FUNCTION_8_38();

  return sub_1C1249940(v0, v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_26()
{
  v4 = *(v0 + 16);
  v1 = (type metadata accessor for PhotosItemsFeed() - 8);
  v2 = v0 + ((*(*v1 + 80) + 72) & ~*(*v1 + 80));
  sub_1C0FA03F4(*v2, *(v2 + 8));
  sub_1C1001C04(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  (*(*(v4 - 8) + 8))(v2 + v1[22]);

  __swift_destroy_boxed_opaque_existential_0Tm(v2 + v1[26]);

  return swift_deallocObject();
}

uint64_t sub_1C124C79C()
{
  v1 = *(v0 + 64);
  type metadata accessor for PhotosItemsFeed();
  OUTLINED_FUNCTION_8_38();
  return sub_1C124A1F4(v2, v3, v4, v5, v6, v1);
}

uint64_t sub_1C124C894(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    OUTLINED_FUNCTION_4_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C124C908()
{
  result = qword_1EDE7BE48;
  if (!qword_1EDE7BE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE98718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE48);
  }

  return result;
}

uint64_t sub_1C124C990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + *(sub_1C1265450() + 28)) = 0;
  v6 = *(*(a2 - 8) + 32);

  return v6(a3, a1, a2);
}

uint64_t StatefulPreviewWrapper.init(initialValue:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1C124C990(a1, a4, a5);
  result = type metadata accessor for StatefulPreviewWrapper();
  v9 = (a5 + *(result + 44));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_1C124CA94()
{
  sub_1C1265450();

  return sub_1C1265440();
}

uint64_t StatefulPreviewWrapper.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v19[0] = sub_1C1265640();
  v4 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  v6 = v19 - v5;
  v7 = *(a1 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  v15 = *(v2 + *(a1 + 44));
  sub_1C124CA94();
  v15(v6);
  (*(v4 + 8))(v6, v19[0]);
  v16 = *(a1 + 32);
  sub_1C0FDBA4C(v11, v7, v16);
  v17 = *(v8 + 8);
  v17(v11, v7);
  sub_1C0FDBA4C(v14, v7, v16);
  return (v17)(v14, v7);
}

unint64_t sub_1C124CD14()
{
  result = sub_1C1265450();
  if (v1 <= 0x3F)
  {
    result = sub_1C1007F88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C124CD9C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = (*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v6;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v6 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C124CEE0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(v6 - 8) + 84);
  }

  v10 = (*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((v10 + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    v18 = v10 + 8;
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if (v7 < 0x7FFFFFFF)
          {
            v20 = (&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              v20[1] = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }

          else if (v8 >= a2)
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }

          else if (v10 != -8)
          {
            v19 = ~v8 + a2;
            bzero(a1, v18);
            *a1 = v19;
          }
        }

        break;
    }
  }

  else
  {
    if (((v10 + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v10 + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_49;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t PhotosDraggingDelegate.canDragItem(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 32))())
  {
    return 1;
  }

  v7 = *(a3 + 40);

  return v7(a1, a2, a3);
}

uint64_t static PhotosShadowSpec.none.getter()
{
  if (qword_1EDE82B78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_4_60(&qword_1EDE82B80);
}

BOOL static PhotosShadowSpec.== infix(_:_:)(double *a1, double *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v6 = a2[1];
  v5 = a2[2];
  v7 = a2[3];
  v8 = sub_1C1265100();
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    return v4 == v7 && v2 == v5;
  }

  return result;
}

uint64_t View.clipShadow<A>(_:shape:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v15 = a3;
  v14 = sub_1C1262B50();
  v5 = sub_1C1263190();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = *a1;
  v13 = *(a1 + 1);
  v10 = a1[3];
  sub_1C1009334();
  sub_1C1265050();
  v18 = v9;
  v19 = v13;
  v20 = v10;
  OUTLINED_FUNCTION_2_73();
  WitnessTable = swift_getWitnessTable();
  v16 = a2;
  v17 = WitnessTable;
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  View.applyShadow<A>(_:shape:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t PhotosShadowSpec.init(color:radius:offset:)@<X0>(uint64_t result@<X0>, double a2@<X1>, char a3@<W2>, double a4@<X3>, double a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (result)
  {
    v13 = result;
  }

  else
  {
    sub_1C1265160();
    v13 = sub_1C12651E0();
  }

  v14 = a2;
  if (a3)
  {
    v14 = 20.0;
  }

  v15 = a4;
  v16 = a5;
  if (a6)
  {
    v15 = 0.0;
  }

  *a7 = v13;
  if (a6)
  {
    v16 = 8.0;
  }

  *(a7 + 8) = v14;
  *(a7 + 16) = v15;
  *(a7 + 24) = v16;
  return result;
}

uint64_t View.applyShadow<A>(_:shape:)()
{
  sub_1C1262B90();
  sub_1C1263190();
  OUTLINED_FUNCTION_0_91();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  sub_1C12659A0();
  return sub_1C1264950();
}

uint64_t PhotosShadowSpec.color.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1C124D768()
{
  result = sub_1C1265170();
  qword_1EDE82B80 = result;
  qword_1EDE82B88 = 0;
  qword_1EDE82B90 = 0;
  qword_1EDE82B98 = 0;
  return result;
}

uint64_t sub_1C124D794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v2 = sub_1C1262B90();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - v4;
  v6 = sub_1C1263190();
  v7 = *(v6 - 8);
  v8 = (MEMORY[0x1EEE9AC00])(v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  sub_1C12653A0();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264ED0();
  (*(v3 + 8))(v5, v2);
  v17[2] = WitnessTable;
  v17[3] = MEMORY[0x1E697E270];
  v14 = swift_getWitnessTable();
  sub_1C0FDBA4C(v10, v6, v14);
  v15 = *(v7 + 8);
  v15(v10, v6);
  sub_1C0FDBA4C(v12, v6, v14);
  return (v15)(v12, v6);
}

uint64_t Equatable.setIfNotEqual(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 16);
  v10(v9, v3, a2, v7);
  v11 = sub_1C1265DE0();
  v12 = *(v6 + 8);
  result = v12(v9, a2);
  if ((v11 & 1) == 0)
  {
    v12(v3, a2);
    return (v10)(v3, a1, a2);
  }

  return result;
}

uint64_t PhotosIdentical.setIfNotIdentical(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 8))();
  if ((result & 1) == 0)
  {
    v8 = *(a2 - 8);
    (*(v8 + 8))(v3, a2);
    v7 = *(v8 + 16);

    return v7(v3, a1, a2);
  }

  return result;
}

uint64_t sub_1C124DC5C()
{
  sub_1C1263AB0();
  if (sub_1C1263A90())
  {
    return 0;
  }

  sub_1C1263AA0();
  v0 = 1;
  if ((sub_1C1263A90() & 1) == 0)
  {
    sub_1C1263AC0();
    if (sub_1C1263A90())
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v0;
}

uint64_t sub_1C124DCC0()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EDE9B6C0);
  __swift_project_value_buffer(v0, qword_1EDE9B6C0);
  return sub_1C12626E0();
}

uint64_t sub_1C124DD30()
{
  sub_1C1265910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91AE8);
  sub_1C1058884();
  sub_1C1058A14();
  return sub_1C1265920();
}

uint64_t sub_1C124DE30()
{
  sub_1C1265910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE988B0);
  sub_1C1253188();
  sub_1C12532F8();
  return sub_1C1265920();
}

uint64_t sub_1C124DF30()
{
  sub_1C1265910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE988D0);
  sub_1C1252E00();
  sub_1C1253468();
  return sub_1C1265920();
}

uint64_t sub_1C124E030()
{
  sub_1C1265910();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987B0);
  sub_1C1263320();
  sub_1C12530F0();
  sub_1C1252394(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
  swift_getOpaqueTypeConformance2();
  return sub_1C1265920();
}

uint64_t sub_1C124E19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

BOOL sub_1C124E298(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void PhotosSearchSuggestionView.init(maxWidth:sections:selectedSuggestionIndex:onSuggestionTitleLeadingOffsetChange:)()
{
  OUTLINED_FUNCTION_23();
  v21 = v0;
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for PhotosOffsetReaderContainer(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  *(v11 + 80) = swift_getKeyPath();
  *(v11 + 88) = 0;
  v17 = *(type metadata accessor for PhotosSearchSuggestionView(0) + 36);
  *(v11 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  swift_storeEnumTagMultiPayload();
  v23 = 0xD000000000000029;
  v24 = 0x80000001C126DAE0;
  sub_1C1263F30();
  *&v16[*(v12 + 20)] = 0;
  sub_1C125390C();
  sub_1C1265410();
  sub_1C12522D0();
  *v11 = v9;
  *(v11 + 8) = v7 & 1;
  v19 = v21;
  v18 = v22;
  *(v11 + 16) = v5;
  *(v11 + 24) = v19;
  *(v11 + 32) = v18;
  v20 = *(v3 + 16);
  *(v11 + 40) = *v3;
  *(v11 + 56) = v20;
  *(v11 + 72) = *(v3 + 32);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C124E48C()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    j__swift_release_2();
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t PhotosSearchSuggestionView.Section.init(_:prefersFullWidth:id:title:action:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  v14 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
  v15 = (a8 + *(v14 + 32));
  *v15 = a3;
  v15[1] = a4;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6;
  return sub_1C0FE4040(a7, a8 + *(v14 + 28), &qword_1EBE987A0);
}

void PhotosSearchSuggestionView.body.getter()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v58 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97080);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987A8) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987B0);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987B8);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987C0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_34();
  v54 = v23;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987C8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_34();
  v57 = v25;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987D0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_34();
  v56 = v27;
  *v10 = sub_1C1263AB0();
  *(v10 + 1) = 0x4028000000000000;
  v10[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987D8);
  sub_1C124EC54();
  KeyPath = swift_getKeyPath();
  v29 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987E0) + 36)];
  *v29 = KeyPath;
  *(v29 + 1) = 1;
  v29[16] = 0;
  LOBYTE(KeyPath) = sub_1C1264470();
  sub_1C12628A0();
  v30 = &v10[*(v7 + 44)];
  *v30 = KeyPath;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_1C124DE30();
  sub_1C0FFC7B0(v10, &qword_1EBE987A8);
  v55 = v21;
  sub_1C124E030();
  (*(v13 + 8))(v16, v11);
  sub_1C10FD754(*(v1 + 16), v6);
  v35 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v35) == 1)
  {
    sub_1C0FFC7B0(v6, &qword_1EBE97080);
    v36 = 0.0;
    v37 = *v1;
  }

  else
  {
    v38 = v6[8];
    sub_1C12522D0();
    v37 = *v1;
    if (v38 == 1)
    {
      v39 = *(v1 + 8);
      v36 = *v1;
      goto LABEL_7;
    }

    v36 = 0.0;
  }

  v39 = 1;
LABEL_7:
  v40 = *(v1 + 8);
  sub_1C12659A0();
  v41 = v36;
  if (v39)
  {
    v41 = -INFINITY;
  }

  v42 = v37;
  if (v40)
  {
    v42 = v41;
  }

  if (v41 > v42)
  {
    sub_1C1266420();
    v43 = sub_1C1264410();
    v49 = v18;
    v44 = v43;
    sub_1C1262620();

    v18 = v49;
  }

  sub_1C1263390();
  v45 = v54;
  (*(v18 + 32))(v54, v55, v50);
  memcpy((v45 + *(v53 + 36)), v59, 0x70uLL);
  v46 = v57;
  sub_1C0FE4040(v45, v57, &qword_1EBE987C0);
  *(v46 + *(v52 + 36)) = 257;
  type metadata accessor for PhotosSearchSuggestionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0);
  v47 = v56;
  sub_1C1265440();
  sub_1C0FE4040(v46, v47, &qword_1EBE987C8);
  sub_1C124DF30();
  sub_1C0FFC7B0(v47, &qword_1EBE987D0);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C124EC54()
{
  v0 = type metadata accessor for PhotosSearchSuggestionView(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C11E44EC();
  swift_getKeyPath();
  sub_1C125390C();
  v1 = swift_allocObject();
  sub_1C12539BC();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1C1253A14;
  *(v2 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98968);
  sub_1C0FDB6D4(&qword_1EBE98970, &qword_1EBE98960);
  sub_1C1252394(&qword_1EBE98978, type metadata accessor for PhotosSearchSuggestionView.Section);
  sub_1C0FDB6D4(&qword_1EBE98980, &qword_1EBE98968);
  return sub_1C1265680();
}

uint64_t sub_1C124EEC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1C1263AB0();
  *(a4 + 8) = 0x4028000000000000;
  *(a4 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98988);
  return sub_1C124EF38(a3, a2, a1, a4 + *(v8 + 44));
}

uint64_t sub_1C124EF38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98990);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98998);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  sub_1C124F188(a2, &v24 - v18);
  v20 = *a2;
  *v13 = sub_1C12659A0();
  *(v13 + 1) = v21;
  *(v13 + 2) = 0;
  v13[24] = 1;
  *(v13 + 4) = 0x4028000000000000;
  v13[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE989A0);
  sub_1C124FE74(v20, a1, a3);
  sub_1C0FE5654(v19, v16, &qword_1EBE98998);
  sub_1C0FE5654(v13, v10, &qword_1EBE98990);
  sub_1C0FE5654(v16, a4, &qword_1EBE98998);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE989A8);
  sub_1C0FE5654(v10, a4 + *(v22 + 48), &qword_1EBE98990);
  sub_1C0FFC7B0(v13, &qword_1EBE98990);
  sub_1C0FFC7B0(v19, &qword_1EBE98998);
  sub_1C0FFC7B0(v10, &qword_1EBE98990);
  return sub_1C0FFC7B0(v16, &qword_1EBE98998);
}

uint64_t sub_1C124F188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A68);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  if (*(a1 + 24) || (v10 = type metadata accessor for PhotosSearchSuggestionView.Section(0), sub_1C0FE5654(a1 + *(v10 + 28), v9, &qword_1EBE987A0), v11 = type metadata accessor for PhotosSearchSuggestionView.Section.Action(0), v12 = 1, EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v11), sub_1C0FFC7B0(v9, &qword_1EBE987A0), EnumTagSinglePayload != 1))
  {
    *v6 = sub_1C12638E0();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A70);
    sub_1C124F7F4(a1, &v6[*(v14 + 44)]);
    v15 = sub_1C1264510();
    KeyPath = swift_getKeyPath();
    v17 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A78) + 36)];
    *v17 = KeyPath;
    v17[1] = v15;
    *&v6[*(v4 + 36)] = sub_1C1263E50();
    sub_1C0FE4040(v6, a2, &qword_1EBE98A68);
    v12 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v12, 1, v4);
}

uint64_t sub_1C124F38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE988C0) + 36);
  sub_1C12658B0();
  v5 = sub_1C1264470();
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97360) + 36)) = v5;
  sub_1C0FE5654(a1, a2, &qword_1EBE987A8);
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE988B0) + 36));
  v7 = *(sub_1C1263320() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1C12639D0();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #12.0 }

  *v6 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40);
  *&v6[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1C124F4B4()
{
  v0 = sub_1C1265290();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 20);
  v9 = *MEMORY[0x1E697F468];
  v10 = sub_1C12639D0();
  (*(*(v10 - 8) + 104))(&v6[v8], v9, v10);
  __asm { FMOV            V0.2D, #24.0 }

  *v6 = _Q0;
  sub_1C1265280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987B0);
  sub_1C12530F0();
  sub_1C1252394(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
  sub_1C1264A40();
  (*(v1 + 8))(v3, v0);
  return sub_1C12522D0();
}

double sub_1C124F6C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C12650F0();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814C8], v5);
  v8 = sub_1C1265250();
  sub_1C0FE5654(a1, a2, &qword_1EBE987D0);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE988D0) + 36);
  *v9 = v8;
  result = 12.0;
  *(v9 + 8) = xmmword_1C12C2650;
  *(v9 + 24) = 0x4000000000000000;
  return result;
}

uint64_t sub_1C124F7F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a2;
  v3 = sub_1C12632E0();
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90560);
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A80);
  v62 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - v12;
  v14 = type metadata accessor for PhotosSearchSuggestionView.Section.Action(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A88);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v69 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v53 - v20;
  v21 = *(a1 + 24);
  if (v21)
  {
    v71 = *(a1 + 16);
    v72 = v21;
    sub_1C0FDB9AC();
    v57 = v6;
    v55 = v16;

    v22 = sub_1C12648F0();
    v54 = v14;
    v24 = v23;
    v26 = v25;
    v56 = v9;
    sub_1C1264620();
    v27 = sub_1C12647B0();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = v26 & 1;
    v6 = v57;
    v35 = v24;
    v14 = v54;
    sub_1C0FDB8E8(v22, v35, v34);
    v9 = v56;

    v36 = v31 & 1;
    v66 = v29;
    v67 = v27;
    sub_1C0FDB850(v27, v29, v31 & 1);
    v65 = v33;
    v16 = v55;
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v36 = 0;
    v65 = 0;
  }

  v37 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
  sub_1C0FE5654(a1 + *(v37 + 28), v13, &qword_1EBE987A0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C0FFC7B0(v13, &qword_1EBE987A0);
    v38 = 1;
    v39 = v68;
  }

  else
  {
    sub_1C12539BC();
    v40 = &v16[*(v14 + 20)];
    v41 = *(v40 + 1);
    v71 = *v40;
    v72 = v41;
    sub_1C0FDB9AC();

    v42 = v61;
    sub_1C1265490();
    sub_1C12632D0();
    sub_1C0FDB6D4(&qword_1EBE90930, &qword_1EBE90560);
    sub_1C1252394(&qword_1EDE7BCF0, MEMORY[0x1E697C248]);
    v43 = v60;
    v44 = v64;
    v45 = v58;
    sub_1C12649F0();
    (*(v59 + 8))(v6, v45);
    (*(v63 + 8))(v42, v44);
    sub_1C12522D0();
    v39 = v68;
    (*(v62 + 32))(v68, v43, v9);
    v38 = 0;
  }

  __swift_storeEnumTagSinglePayload(v39, v38, 1, v9);
  v46 = v69;
  sub_1C0FE5654(v39, v69, &qword_1EBE98A88);
  v47 = v70;
  v49 = v66;
  v48 = v67;
  *v70 = v67;
  v47[1] = v49;
  v50 = v65;
  v47[2] = v36;
  v47[3] = v50;
  v47[4] = 0;
  *(v47 + 40) = 1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A90);
  sub_1C0FE5654(v46, v47 + *(v51 + 64), &qword_1EBE98A88);
  sub_1C0FDB860(v48, v49, v36, v50);
  sub_1C0FDB8A4(v48, v49, v36, v50);
  sub_1C0FFC7B0(v39, &qword_1EBE98A88);
  sub_1C0FFC7B0(v46, &qword_1EBE98A88);
  return sub_1C0FDB8A4(v48, v49, v36, v50);
}

uint64_t sub_1C124FE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for PhotosSearchSuggestionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C11E4730();
  swift_getKeyPath();
  sub_1C125390C();
  v7 = (v6 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  sub_1C12539BC();
  *(v8 + v7) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C1253AB0;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE989B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE989B8);
  sub_1C0FDB6D4(&qword_1EBE989C0, &qword_1EBE989B0);
  sub_1C1252394(&qword_1EBE989C8, type metadata accessor for PhotosSearchSuggestionView.Section.Item);
  sub_1C1253B7C();
  return sub_1C1265680();
}

uint64_t sub_1C12500CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE989D8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  sub_1C1250398(a2, a3, &v25 - v14);
  v16 = *MEMORY[0x1E697E6C8];
  v17 = sub_1C1263130();
  (*(*(v17 - 8) + 104))(v12, v16, v17);
  sub_1C1252394(&qword_1EDE7BF90, MEMORY[0x1E697E730]);
  result = sub_1C1265DE0();
  if (result)
  {
    v26 = a4;
    sub_1C0FDB6D4(&qword_1EBE989E0, &qword_1EBE989D8);
    v19 = a1;
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    sub_1C1264BC0();
    sub_1C0FFC7B0(v12, &qword_1EBE92FE0);
    sub_1C0FFC7B0(v15, &qword_1EBE989D8);
    v20 = sub_1C12659A0();
    v22 = v21;
    v23 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE989B8) + 36);
    sub_1C1250DA8(v26, v19, v23);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE989F0);
    v24 = (v23 + *(result + 36));
    *v24 = v20;
    v24[1] = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1250398@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A20);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v54 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A28);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  if (a1[7])
  {

    v18 = sub_1C1265320();
    v19 = v17;
    v20 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30) + 36));
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0) + 28);
    v22 = *MEMORY[0x1E69816C8];
    v23 = sub_1C1265340();
    (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
    *v20 = swift_getKeyPath();
    *v12 = v18;
    *(v12 + *(v10 + 36)) = sub_1C1263AA0();
    v17 = v19;
    sub_1C0FE4040(v12, v19, &qword_1EBE98A20);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v24, 1, v10);
  *v9 = sub_1C12638E0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A30);
  sub_1C1250910(a1, a2, &v9[*(v25 + 44)]);
  v26 = a1[5];
  v60 = v9;
  if (v26)
  {
    v69 = a1[4];
    v70 = v26;
    sub_1C0FDB9AC();

    v27 = sub_1C12648F0();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = sub_1C1263AC0();
    v35 = sub_1C1263E50();
    if (!sub_1C124E48C())
    {
      sub_1C1264530();
    }

    v57 = v27;
    v58 = v34;
    v61 = sub_1C12646B0();

    KeyPath = swift_getKeyPath();
    LOBYTE(v69) = v31 & 1;
    v56 = v31 & 1;
    v36 = v35;
    v37 = v29;
  }

  else
  {
    v57 = 0;
    v37 = 0;
    v33 = 0;
    v58 = 0;
    KeyPath = 0;
    v61 = 0;
    v36 = 0;
    v56 = 0;
  }

  v54 = v36;
  v55 = v17;
  v38 = v64;
  sub_1C0FE5654(v17, v64, &qword_1EBE98A28);
  v39 = v60;
  v40 = v63;
  sub_1C0FE5654(v60, v63, &qword_1EBE98A18);
  v41 = v38;
  v42 = v62;
  sub_1C0FE5654(v41, v62, &qword_1EBE98A28);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A38);
  sub_1C0FE5654(v40, v42 + *(v43 + 48), &qword_1EBE98A18);
  v44 = (v42 + *(v43 + 64));
  v45 = v57;
  *&v65 = v57;
  *(&v65 + 1) = v37;
  v46 = v56;
  *&v66 = v56;
  *(&v66 + 1) = v33;
  v47 = v37;
  v48 = v58;
  *&v67 = v58;
  *(&v67 + 1) = v36;
  v49 = KeyPath;
  v50 = v61;
  *&v68 = KeyPath;
  *(&v68 + 1) = v61;
  v51 = v66;
  *v44 = v65;
  v44[1] = v51;
  v52 = v68;
  v44[2] = v67;
  v44[3] = v52;
  sub_1C0FE5654(&v65, &v69, &qword_1EBE98A40);
  sub_1C0FFC7B0(v39, &qword_1EBE98A18);
  sub_1C0FFC7B0(v55, &qword_1EBE98A28);
  v69 = v45;
  v70 = v47;
  v71 = v46;
  v72 = v33;
  v73 = v48;
  v74 = v54;
  v75 = v49;
  v76 = v50;
  sub_1C0FFC7B0(&v69, &qword_1EBE98A40);
  sub_1C0FFC7B0(v40, &qword_1EBE98A18);
  return sub_1C0FFC7B0(v64, &qword_1EBE98A28);
}

uint64_t sub_1C1250910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v54 = a3;
  v4 = type metadata accessor for PhotosOffsetReaderContainer(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51[1] = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1261AD0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A48);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v53 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v51 - v14;
  v16 = type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
  (*(v7 + 16))(v9, a1 + *(v16 + 40), v6);
  v17 = sub_1C12648E0();
  v19 = v18;
  LOBYTE(v7) = v20;
  v51[0] = v21;
  LOBYTE(v9) = sub_1C12644C0();
  sub_1C12628A0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v7 & 1;
  LOBYTE(v56) = v7 & 1;
  LOBYTE(v55) = 0;
  v31 = sub_1C1263AB0();
  v32 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A50) + 36)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130) + 28);
  v34 = *MEMORY[0x1E6980FB0];
  v35 = sub_1C1264830();
  (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
  *v32 = swift_getKeyPath();
  *v15 = v17;
  *(v15 + 1) = v19;
  v15[16] = v30;
  *(v15 + 3) = v51[0];
  v15[32] = v9;
  *(v15 + 5) = v23;
  *(v15 + 6) = v25;
  *(v15 + 7) = v27;
  *(v15 + 8) = v29;
  v15[72] = 0;
  *(v15 + 10) = v31;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A58) + 36)] = 0xBFF0000000000000;
  type metadata accessor for PhotosSearchSuggestionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE958B0);
  v36 = v52;
  sub_1C1265420();
  v38 = *(v36 + 24);
  v37 = *(v36 + 32);
  v39 = &v15[*(v11 + 44)];
  sub_1C125390C();
  v40 = type metadata accessor for PhotosLeadingOffsetReaderModifier(0);
  v41 = &v39[v40[5]];
  *v41 = v38;
  *(v41 + 1) = v37;
  v42 = &v39[v40[6]];
  v55 = 0;

  sub_1C1265410();
  v43 = v57;
  *v42 = v56;
  *(v42 + 1) = v43;
  v44 = &v39[v40[7]];
  v55 = 0;
  sub_1C1265410();
  sub_1C12522D0();
  v45 = v57;
  *v44 = v56;
  *(v44 + 1) = v45;
  v46 = v40[8];
  *&v39[v46] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  swift_storeEnumTagMultiPayload();
  v47 = v53;
  sub_1C0FE5654(v15, v53, &qword_1EBE98A48);
  v48 = v54;
  sub_1C0FE5654(v47, v54, &qword_1EBE98A48);
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A60) + 48);
  *v49 = 0;
  *(v49 + 8) = 1;
  sub_1C0FFC7B0(v15, &qword_1EBE98A48);
  return sub_1C0FFC7B0(v47, &qword_1EBE98A48);
}

uint64_t sub_1C1250DA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v14 = a2;
  v15 = a3;
  v4 = type metadata accessor for PhotosSearchSuggestionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE989F8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v16 = sub_1C1265170();
  v17 = 0xC018000000000000;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98A00);
  sub_1C1253D04();
  sub_1C1264CE0();

  sub_1C125390C();
  v10 = (v6 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  sub_1C12539BC();
  *(v11 + v10) = a1;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v14;
  sub_1C1253E54();
  sub_1C1264AF0();

  return sub_1C0FFC7B0(v9, &qword_1EBE989F8);
}

uint64_t sub_1C125104C()
{
  OUTLINED_FUNCTION_18_34();
  v3 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  return v0(v3, v1 + *(v5 + 48));
}

uint64_t sub_1C12510A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_1C12656E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v15 = v2;
  v16 = v3;
  v17 = v1;
  sub_1C12656D0();
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v7, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_1C0FDBA4C(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

uint64_t sub_1C1251238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0FDBA4C(v6, v9, v10);
  sub_1C0FDBA4C(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t PhotosSearchSuggestionView.Section.id.getter()
{
  type metadata accessor for PhotosSearchSuggestionView.Section(0);

  return OUTLINED_FUNCTION_18();
}

void PhotosSearchSuggestionView.Section.Item.init(title:id:highlightInTitle:systemImage:count:matchRangeOfSearchText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  OUTLINED_FUNCTION_23();
  v68 = v25;
  v69 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v67 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987E8);
  OUTLINED_FUNCTION_15(v40);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_34();
  v64 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987F0);
  OUTLINED_FUNCTION_15(v43);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_34();
  v65 = v45;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98418);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_34();
  v63 = v47;
  v48 = sub_1C1261B50();
  v49 = OUTLINED_FUNCTION_15(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13();
  v50 = sub_1C1261AD0();
  OUTLINED_FUNCTION_0();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  v56 = v55 - v54;
  *v38 = v36;
  *(v38 + 8) = v34;
  *(v38 + 88) = v67;
  *(v38 + 96) = v32;
  v57 = v30;
  *(v38 + 16) = v30;
  *(v38 + 24) = v28;
  *(v38 + 48) = v68;
  *(v38 + 56) = v69;
  *(v38 + 32) = a21;
  *(v38 + 40) = a22;
  *(v38 + 64) = a23;
  *(v38 + 72) = a24;
  *(v38 + 80) = a25 & 1;
  v58 = *(type metadata accessor for PhotosSearchSuggestionView.Section.Item(0) + 40);

  v70 = sub_1C12651F0();

  sub_1C1261B40();
  sub_1C1261AE0();
  (*(v52 + 16))(v38 + v58, v56, v50);
  if (v28)
  {
    v71[0] = v57;
    v71[1] = v28;
    v59 = sub_1C1261E50();
    __swift_storeEnumTagSinglePayload(v64, 1, 1, v59);
    OUTLINED_FUNCTION_6_46();
    sub_1C1252394(v60, v61);
    sub_1C0FDB9AC();
    sub_1C1261BE0();
    sub_1C0FFC7B0(v64, &qword_1EBE987E8);
    if (__swift_getEnumTagSinglePayload(v65, 1, v66) != 1)
    {
      sub_1C0FE4040(v65, v63, &qword_1EBE98418);
      v71[0] = sub_1C1265230();
      sub_1C1252340();
      sub_1C1261B00();

      sub_1C0FDB6D4(&qword_1EBE98450, &qword_1EBE98418);
      v62 = sub_1C1261B10();
      sub_1C1261BB0();
      v62(v71, 0);

      sub_1C0FFC7B0(v63, &qword_1EBE98418);
      (*(v52 + 8))(v56, v50);
      goto LABEL_6;
    }

    sub_1C0FFC7B0(v65, &qword_1EBE987F0);
  }

  v71[0] = v70;
  sub_1C1252340();
  sub_1C1261B00();
  (*(v52 + 8))(v56, v50);
LABEL_6:

  OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosSearchSuggestionView.Section.Item.== infix(_:_:)()
{
  OUTLINED_FUNCTION_17_4();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (sub_1C1266D50() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 24);
  v5 = *(v0 + 24);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *(v1 + 16) == *(v0 + 16) && v4 == v5;
    if (!v6 && (sub_1C1266D50() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(v1 + 40);
  v8 = *(v0 + 40);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(v1 + 32) == *(v0 + 32) && v7 == v8;
    if (!v9 && (sub_1C1266D50() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(v1 + 56);
  v11 = *(v0 + 56);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = *(v1 + 48) == *(v0 + 48) && v10 == v11;
  if (!v12 && (sub_1C1266D50() & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  if (*(v1 + 80))
  {
    if (!*(v0 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (*(v0 + 80))
    {
      return 0;
    }

    if (*(v1 + 64) != *(v0 + 64) || *(v1 + 72) != *(v0 + 72))
    {
      return 0;
    }
  }

  v14 = *(v1 + 88) == *(v0 + 88) && *(v1 + 96) == *(v0 + 96);
  if (!v14 && (sub_1C1266D50() & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for PhotosSearchSuggestionView.Section.Item(0) + 40);

  return MEMORY[0x1EEDC2F60](v1 + v15, v0 + v15);
}

uint64_t PhotosSearchSuggestionView.Section.Item.hash(into:)()
{
  sub_1C1265EF0();
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_20_23();
  }

  else
  {
    OUTLINED_FUNCTION_46_3();
  }

  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_20_23();
  }

  else
  {
    OUTLINED_FUNCTION_46_3();
  }

  if (*(v0 + 56))
  {
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_20_23();
  }

  else
  {
    OUTLINED_FUNCTION_46_3();
  }

  if (*(v0 + 80) == 1)
  {
    OUTLINED_FUNCTION_46_3();
  }

  else
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    OUTLINED_FUNCTION_34_1();
    MEMORY[0x1C68F07E0](v2);
    MEMORY[0x1C68F07E0](v1);
  }

  sub_1C1265EF0();
  type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
  sub_1C1261AD0();
  OUTLINED_FUNCTION_6_46();
  sub_1C1252394(v3, v4);
  return sub_1C1265D30();
}

uint64_t sub_1C1251B04@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosSearchSuggestionView.Section.Item.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PhotosSearchSuggestionView.Section.Action.init(_:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1C1261E10();
  result = type metadata accessor for PhotosSearchSuggestionView.Section.Action(0);
  v11 = (a5 + *(result + 20));
  *v11 = a1;
  v11[1] = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t PhotosSearchSuggestionView.Section.Action.hash(into:)()
{
  OUTLINED_FUNCTION_23_17();
  sub_1C1261E20();
  OUTLINED_FUNCTION_2_74();
  sub_1C1252394(v0, v1);

  return sub_1C1265D30();
}

uint64_t PhotosSearchSuggestionView.Section.Action.hashValue.getter()
{
  sub_1C1266E90();
  sub_1C1261E20();
  OUTLINED_FUNCTION_2_74();
  sub_1C1252394(v0, v1);
  sub_1C1265D30();
  return sub_1C1266EE0();
}

uint64_t sub_1C1251C88()
{
  sub_1C1266E90();
  sub_1C1261E20();
  sub_1C1252394(&qword_1EBE93530, MEMORY[0x1E69695A8]);
  sub_1C1265D30();
  return sub_1C1266EE0();
}

void static PhotosSearchSuggestionView.Section.== infix(_:_:)()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_17_4();
  type metadata accessor for PhotosSearchSuggestionView.Section.Action(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987A0);
  OUTLINED_FUNCTION_15(v3);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98810);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  if ((sub_1C0FEAAB0(*v1, *v0) & 1) == 0 || *(v1 + 8) != *(v0 + 8))
  {
    goto LABEL_3;
  }

  v11 = *(v1 + 24);
  v12 = *(v0 + 24);
  if (!v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:
    v24 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
    v14 = *(v24 + 28);
    v15 = *(v7 + 48);
    sub_1C0FE5654(v1 + v14, v10, &qword_1EBE987A0);
    sub_1C0FE5654(v0 + v14, &v10[v15], &qword_1EBE987A0);
    OUTLINED_FUNCTION_29_14(v10);
    if (v13)
    {
      OUTLINED_FUNCTION_29_14(&v10[v15]);
      if (v13)
      {
        sub_1C0FFC7B0(v10, &qword_1EBE987A0);
LABEL_23:
        v18 = *(v24 + 32);
        v19 = *(v1 + v18);
        v20 = *(v1 + v18 + 8);
        v21 = (v0 + v18);
        if (v19 != *v21 || v20 != v21[1])
        {
          sub_1C1266D50();
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_1C0FE5654(v10, v6, &qword_1EBE987A0);
      OUTLINED_FUNCTION_29_14(&v10[v15]);
      if (!v16)
      {
        OUTLINED_FUNCTION_7_48();
        sub_1C12539BC();
        v17 = _s17PhotosSwiftUICore0A20SearchSuggestionViewV7SectionV6ActionV2eeoiySbAG_AGtFZ_0();
        sub_1C12522D0();
        sub_1C12522D0();
        sub_1C0FFC7B0(v10, &qword_1EBE987A0);
        if ((v17 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }

      OUTLINED_FUNCTION_8_45();
      sub_1C12522D0();
    }

    sub_1C0FFC7B0(v10, &qword_1EBE98810);
    goto LABEL_3;
  }

  if (v12)
  {
    v13 = *(v1 + 16) == *(v0 + 16) && v11 == v12;
    if (v13 || (sub_1C1266D50() & 1) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosSearchSuggestionView.Section.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_23_17();
  v3 = type metadata accessor for PhotosSearchSuggestionView.Section.Action(v2);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE987A0);
  OUTLINED_FUNCTION_15(v5);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_1C12523FC(v0, *v1);
  sub_1C1266EB0();
  if (v1[3])
  {
    OUTLINED_FUNCTION_34_1();
    sub_1C1265EF0();
  }

  else
  {
    OUTLINED_FUNCTION_46_3();
  }

  v9 = type metadata accessor for PhotosSearchSuggestionView.Section(0);
  sub_1C0FE5654(v1 + *(v9 + 28), v8, &qword_1EBE987A0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_46_3();
  }

  else
  {
    OUTLINED_FUNCTION_7_48();
    sub_1C12539BC();
    OUTLINED_FUNCTION_34_1();
    sub_1C1261E20();
    OUTLINED_FUNCTION_2_74();
    sub_1C1252394(v10, v11);
    sub_1C1265D30();
    OUTLINED_FUNCTION_8_45();
    sub_1C12522D0();
  }

  return sub_1C1265EF0();
}

uint64_t sub_1C12521B8(void (*a1)(_BYTE *))
{
  sub_1C1266E90();
  a1(v3);
  return sub_1C1266EE0();
}

uint64_t sub_1C1252220(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C1266E90();
  a4(v6);
  return sub_1C1266EE0();
}

uint64_t sub_1C1252264@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosSearchSuggestionView.Section.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C12522D0()
{
  v1 = OUTLINED_FUNCTION_23_17();
  v2(v1);
  OUTLINED_FUNCTION_4_2();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1C1252340()
{
  result = qword_1EBE987F8;
  if (!qword_1EBE987F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE987F8);
  }

  return result;
}

uint64_t sub_1C1252394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C12523FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PhotosSearchSuggestionView.Section.Item(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1C68F07E0](v8, v5);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1C125390C();
      sub_1C1265EF0();
      if (*(v7 + 3))
      {
        sub_1C1266EB0();
        sub_1C1265EF0();
      }

      else
      {
        sub_1C1266EB0();
      }

      if (*(v7 + 5))
      {
        sub_1C1266EB0();
        sub_1C1265EF0();
      }

      else
      {
        sub_1C1266EB0();
      }

      if (*(v7 + 7))
      {
        sub_1C1266EB0();
        sub_1C1265EF0();
      }

      else
      {
        sub_1C1266EB0();
      }

      if (v7[80] == 1)
      {
        sub_1C1266EB0();
      }

      else
      {
        v13 = *(v7 + 8);
        v12 = *(v7 + 9);
        sub_1C1266EB0();
        MEMORY[0x1C68F07E0](v13);
        MEMORY[0x1C68F07E0](v12);
      }

      sub_1C1265EF0();
      sub_1C1261AD0();
      sub_1C1252394(&qword_1EBE98808, MEMORY[0x1E6968848]);
      sub_1C1265D30();
      result = sub_1C12522D0();
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_1C12527A0()
{
  sub_1C0F99B60(319, &qword_1EDE7B4C0);
  if (v0 <= 0x3F)
  {
    sub_1C12529F8(319, &qword_1EBE98838, type metadata accessor for PhotosSearchSuggestionView.Section, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C1007F88();
      if (v2 <= 0x3F)
      {
        sub_1C1252994(319, &qword_1EBE94FA8, &qword_1EBE94FB0, &unk_1C12CDB30, MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1C1252994(319, &qword_1EBE98840, &qword_1EBE98848, &unk_1C12CDB38, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1C12529F8(319, &qword_1EDE77570, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1C12529F8(319, &unk_1EBE958E8, type metadata accessor for PhotosOffsetReaderContainer, MEMORY[0x1E6981790]);
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

void sub_1C1252994(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C12529F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C1252A84()
{
  sub_1C12529F8(319, &qword_1EDE76AD8, type metadata accessor for PhotosSearchSuggestionView.Section.Item, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C0F99B60(319, &qword_1EDE76AF0);
    if (v1 <= 0x3F)
    {
      sub_1C12529F8(319, qword_1EDE7A1C0, type metadata accessor for PhotosSearchSuggestionView.Section.Action, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C1252BC4()
{
  sub_1C0F99B60(319, &qword_1EDE76AF0);
  if (v0 <= 0x3F)
  {
    sub_1C12529F8(319, &qword_1EDE76910, type metadata accessor for _NSRange, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C1261AD0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1C1252CDC()
{
  result = sub_1C1261E20();
  if (v1 <= 0x3F)
  {
    result = sub_1C1007F88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C1252D68()
{
  result = qword_1EBE98850;
  if (!qword_1EBE98850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98858);
    sub_1C1252E00();
    sub_1C1253468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98850);
  }

  return result;
}

unint64_t sub_1C1252E00()
{
  result = qword_1EBE98860;
  if (!qword_1EBE98860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE987D0);
    sub_1C1252EBC();
    sub_1C1252394(&qword_1EBE95AC0, type metadata accessor for PhotosOffsetReaderContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98860);
  }

  return result;
}

unint64_t sub_1C1252EBC()
{
  result = qword_1EBE98868;
  if (!qword_1EBE98868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE987C8);
    sub_1C1252F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98868);
  }

  return result;
}

unint64_t sub_1C1252F48()
{
  result = qword_1EBE98870;
  if (!qword_1EBE98870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE987C0);
    sub_1C1252FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98870);
  }

  return result;
}

unint64_t sub_1C1252FD4()
{
  result = qword_1EBE98878;
  if (!qword_1EBE98878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE987B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE987B0);
    sub_1C1263320();
    sub_1C12530F0();
    sub_1C1252394(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98878);
  }

  return result;
}

unint64_t sub_1C12530F0()
{
  result = qword_1EBE98880;
  if (!qword_1EBE98880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE987B0);
    sub_1C1253188();
    sub_1C12532F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98880);
  }

  return result;
}

unint64_t sub_1C1253188()
{
  result = qword_1EBE98888;
  if (!qword_1EBE98888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE987A8);
    sub_1C1253214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98888);
  }

  return result;
}

unint64_t sub_1C1253214()
{
  result = qword_1EBE98890;
  if (!qword_1EBE98890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE987E0);
    sub_1C0FDB6D4(&qword_1EBE98898, &qword_1EBE988A0);
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98890);
  }

  return result;
}

unint64_t sub_1C12532F8()
{
  result = qword_1EBE988A8;
  if (!qword_1EBE988A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE988B0);
    sub_1C12533B0();
    sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE988A8);
  }

  return result;
}

unint64_t sub_1C12533B0()
{
  result = qword_1EBE988B8;
  if (!qword_1EBE988B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE988C0);
    sub_1C1253188();
    sub_1C0FDB6D4(&qword_1EBE97580, &qword_1EBE97360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE988B8);
  }

  return result;
}

unint64_t sub_1C1253468()
{
  result = qword_1EBE988C8;
  if (!qword_1EBE988C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE988D0);
    sub_1C1252E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE988C8);
  }

  return result;
}

uint64_t sub_1C12534F4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C1253564(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C12536A0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C125390C()
{
  OUTLINED_FUNCTION_17_4();
  v1(0);
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_18();
  v3(v2);
  return v0;
}

uint64_t sub_1C12539BC()
{
  OUTLINED_FUNCTION_17_4();
  v1(0);
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_18();
  v3(v2);
  return v0;
}

uint64_t sub_1C1253A14()
{
  OUTLINED_FUNCTION_18_34();
  v0 = type metadata accessor for PhotosSearchSuggestionView(0);
  OUTLINED_FUNCTION_15(v0);
  v1 = OUTLINED_FUNCTION_25_12();

  return sub_1C124EEC8(v1, v2, v3, v4);
}

uint64_t sub_1C1253AB0()
{
  OUTLINED_FUNCTION_18_34();
  type metadata accessor for PhotosSearchSuggestionView(0);
  v0 = OUTLINED_FUNCTION_25_12();

  return sub_1C12500CC(v0, v1, v2, v3, v4);
}

unint64_t sub_1C1253B7C()
{
  result = qword_1EBE989D0;
  if (!qword_1EBE989D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE989B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE989D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0);
    sub_1C0FDB6D4(&qword_1EBE989E0, &qword_1EBE989D8);
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EBE989E8, &qword_1EBE989F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE989D0);
  }

  return result;
}

unint64_t sub_1C1253D04()
{
  result = qword_1EBE98A08;
  if (!qword_1EBE98A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98A00);
    sub_1C0FDB6D4(&unk_1EDE7BB90, &qword_1EBE91358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98A08);
  }

  return result;
}

uint64_t sub_1C1253DBC()
{
  type metadata accessor for PhotosSearchSuggestionView(0);

  return sub_1C1250FE4();
}

unint64_t sub_1C1253E54()
{
  result = qword_1EBE98A10;
  if (!qword_1EBE98A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE989F8);
    sub_1C1253D04();
    sub_1C1252394(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98A10);
  }

  return result;
}

uint64_t PhotosWhatFieldChanged.init(description:view:onChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  sub_1C12540A4(sub_1C1254420, v16, a6, a7);
  v17 = type metadata accessor for PhotosWhatFieldChanged();
  (*(*(a6 - 8) + 32))(a8 + *(v17 + 36), a3, a6);
  if (a4)
  {
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;

    v19 = sub_1C125444C;
  }

  else
  {
    OUTLINED_FUNCTION_0_92();
    v18 = swift_allocObject();
    v18[2] = a6;
    v18[3] = a7;
    v18[4] = a1;
    v18[5] = a2;
    v19 = sub_1C1254440;
  }

  v20 = v19;
  result = swift_allocObject();
  *(result + 16) = v20;
  *(result + 24) = v18;
  v22 = (a8 + *(v17 + 40));
  *v22 = sub_1C11C2200;
  v22[1] = result;
  return result;
}

uint64_t sub_1C12540A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_92();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  type metadata accessor for OldValue();

  return sub_1C12628D0();
}

void sub_1C1254140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EBE8FDF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1C1262720();
  __swift_project_value_buffer(v5, qword_1EBE98A98);

  oslog = sub_1C12626F0();
  v6 = sub_1C1266430();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446722;
    if (a3)
    {
      MEMORY[0x1C68EF850](a2, a3);
      v9 = 32;
      v10 = 0xE100000000000000;
    }

    else
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = sub_1C0FA0E80(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_1C1266FF0();
    v14 = sub_1C0FA0E80(v12, v13, &v19);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0);
    sub_1C1136440();
    v15 = sub_1C1265D70();
    v17 = sub_1C0FA0E80(v15, v16, &v19);

    *(v7 + 24) = v17;
    _os_log_impl(&dword_1C0F96000, oslog, v6, "PhotosWhatFieldChanged%{public}s view:%{public}s fields:[%{public}s]", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C68F1630](v8, -1, -1);
    MEMORY[0x1C68F1630](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C12543AC()
{
  type metadata accessor for OldValue();
  sub_1C1262900();
  sub_1C12628E0();
  return v1;
}

uint64_t PhotosWhatFieldChanged.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C12543AC();
  v7 = (v3 + *(a1 + 40));
  v8 = v7[1];
  v9 = *(v6 + 16);
  *(v6 + 16) = *v7;
  *(v6 + 24) = v8;

  sub_1C0FCF004(v9);

  sub_1C12543AC();
  v10 = *(a1 + 36);
  sub_1C1254770(v3 + v10);

  v11 = *(*(*(a1 + 16) - 8) + 16);

  return v11(a2, v3 + v10);
}

void *sub_1C1254580()
{
  v1 = *(*v0 + 80);
  v2 = sub_1C1266790();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  v0[2] = 0;
  v0[3] = 0;
  v0[5] = MEMORY[0x1E69E7CC0];
  v6 = sub_1C1266780();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v1);
  (*(v3 + 32))(v6, v5, v2);
  v0[4] = v6;
  return v0;
}

uint64_t sub_1C1254694()
{
  result = *(v0 + 32);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C12546A4()
{
  if (*(v0 + 32))
  {
    sub_1C1266790();
    sub_1C1266770();
    result = *(v0 + 32);
    if (result)
    {
      sub_1C1266760();
      sub_1C0FCF004(*(v0 + 16));

      return v0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1254740()
{
  v0 = sub_1C12546A4();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

void sub_1C1254770(uint64_t a1)
{
  v2 = v1;
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(*v1 + 80);
  v5 = sub_1C1266790();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-v7];
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25[-v15];
  v17 = v2[4];
  if (!v17)
  {
    __break(1u);
  }

  (*(v6 + 16))(v8, v17, v5, v14);
  if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v9 + 32))(v16, v8, v4);
    v18 = (*(v9 + 16))(v12, a1, v4);
    MEMORY[0x1EEE9AC00](v18);
    *&v25[-32] = v4;
    *&v25[-24] = v12;
    *&v25[-16] = 3;
    sub_1C12553C8(v16, sub_1C12553A4, &v25[-48], v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v19);
    if ((v25[16] & 1) == 0)
    {
      swift_beginAccess();
      v2[5] = MEMORY[0x1E69E7CC0];

      MEMORY[0x1EEE9AC00](v20);
      *&v25[-16] = v12;
      *&v25[-8] = v2;
      sub_1C12551F0(v16, sub_1C12554A4, &v25[-32], v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v21);
      v22 = v2[2];
      if (v22)
      {
        sub_1C0FCF1B4(v2[2]);

        v22(v23);

        sub_1C0FCF004(v22);
      }
    }

    v24 = *(v9 + 8);
    v24(v16, v4);
    v24(v12, v4);
  }

  sub_1C1254EE4(v2, a1);
}

unint64_t sub_1C1254B64()
{
  type metadata accessor for OldValue();
  result = sub_1C1262900();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1C1007F88();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C1254CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22[-v14];
  if (!v16)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  sub_1C1266030();
  if (!a5)
  {
    goto LABEL_5;
  }

  v17 = sub_1C1266030();
  MEMORY[0x1EEE9AC00](v17);
  *&v22[-32] = a8;
  *&v22[-24] = v12;
  *&v22[-16] = 3;
  sub_1C12553C8(v15, sub_1C1255568, &v22[-48], a8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v18);
  v19 = *(v10 + 8);
  v19(v15, a8);
  v20 = v22[23];
  v19(v12, a8);
  return v20;
}

void sub_1C1254EE4(void *a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = sub_1C1266790();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  v10 = a1[4];
  if (v10)
  {
    (*(*(v4 - 8) + 16))(v9, a2, v4, v7);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v4);
    (*(v6 + 40))(v10, v9, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C1255018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a4;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  return sub_1C12551F0(a3, sub_1C12554C4, v10, *(v8 + 80), MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], a8);
}

uint64_t sub_1C1255100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if ((sub_1C1254CB8(a2, a3, a4, a5, a6, a7, *(*a8 + 80)) & 1) == 0)
  {
    v9 = sub_1C1265F20();
    v11 = v10;
    swift_beginAccess();
    sub_1C0FA2678();
    v12 = *(a8[5] + 16);
    sub_1C0FA329C();
    v13 = a8[5];
    *(v13 + 16) = v12 + 1;
    v14 = v13 + 16 * v12;
    *(v14 + 32) = v9;
    *(v14 + 40) = v11;
    a8[5] = v13;
    swift_endAccess();
  }

  return 1;
}

uint64_t sub_1C12551F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1C12552E4()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EBE98A98);
  __swift_project_value_buffer(v0, qword_1EBE98A98);
  return sub_1C12626E0();
}

uint64_t sub_1C1255348(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a4;
  v9[3] = a1;
  v10 = a3;
  return sub_1C12553C8(a2, sub_1C12554F8, v9, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
}

uint64_t sub_1C12553C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1C12554F8@<X0>(_BYTE *a1@<X8>)
{
  result = AGCompareValues();
  *a1 = result;
  return result;
}

uint64_t sub_1C1255538@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosTransparentHitTestingViewModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C12556AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1C12659A0();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98BB0);
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98BB8);
  v11 = a3 + *(result + 36);
  *v11 = (a2 & 1) == 0;
  *(v11 + 8) = v6;
  *(v11 + 16) = v8;
  return result;
}

unint64_t sub_1C125577C()
{
  result = qword_1EDE77418;
  if (!qword_1EDE77418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98BB8);
    sub_1C0FDB6D4(&qword_1EDE76DD8, &qword_1EBE98BB0);
    sub_1C0FDB6D4(&qword_1EDE76F28, &qword_1EBE98BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77418);
  }

  return result;
}

id sub_1C1255860()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  return [v0 init];
}

uint64_t sub_1C125589C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C12559E4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C1255900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C12559E4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C1255964()
{
  sub_1C12559E4();
  sub_1C1263BD0();
  __break(1u);
}

unint64_t sub_1C1255990()
{
  result = qword_1EDE77928[0];
  if (!qword_1EDE77928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE77928);
  }

  return result;
}

unint64_t sub_1C12559E4()
{
  result = qword_1EDE77920;
  if (!qword_1EDE77920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77920);
  }

  return result;
}

unint64_t sub_1C1255A4C()
{
  result = qword_1EDE7AB20;
  if (!qword_1EDE7AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AB20);
  }

  return result;
}

uint64_t sub_1C1255ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98BC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_1C1255B48()
{
  result = qword_1EBE98BD0;
  if (!qword_1EBE98BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98BD0);
  }

  return result;
}

id static UIMenuElement.makePhotosCollectionHeader(model:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C1255CFC();
  sub_1C0FDB0A8(a1, &v11);
  v6 = swift_allocObject();
  sub_1C0F9DDE4(&v11, v6 + 16);
  v7 = sub_1C1255D9C(sub_1C1255D94, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v14 = sub_1C1130ED4;
  v15 = v8;
  *&v11 = MEMORY[0x1E69E9820];
  *(&v11 + 1) = 1107296256;
  v12 = sub_1C10CB7AC;
  v13 = &block_descriptor_18;
  v9 = _Block_copy(&v11);

  [v7 setPrimaryActionHandler_];
  _Block_release(v9);
  return v7;
}

unint64_t sub_1C1255CFC()
{
  result = qword_1EBE98C48;
  if (!qword_1EBE98C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE98C48);
  }

  return result;
}

uint64_t sub_1C1255D40(uint64_t a1, uint64_t a2)
{
  sub_1C0FDB0A8(a2, v4);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98C58));
  return sub_1C12630B0();
}

id sub_1C1255D9C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1C108F8C4;
  v5[3] = &block_descriptor_10;
  v2 = _Block_copy(v5);
  v3 = [swift_getObjCClassFromMetadata() elementWithViewProvider_];
  _Block_release(v2);

  return v3;
}

double PhotosCollectionMenuHeaderModel.preview.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t PhotosCollectionMenuHeaderPreviewStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

unint64_t sub_1C1255F74()
{
  result = qword_1EBE98C50;
  if (!qword_1EBE98C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98C50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionMenuHeaderPreviewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C1256120@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C12638E0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98C60);
  sub_1C1256208(v1, a1 + *(v3 + 44));
  v4 = sub_1C1264460();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98C68) + 36);
  *v5 = v4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  v6 = sub_1C12644D0();
  sub_1C12628A0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98C70);
  v16 = a1 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_1C1256208@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v54 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v54);
  v4 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98C78);
  MEMORY[0x1EEE9AC00](v53);
  v6 = &v52 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98C80);
  MEMORY[0x1EEE9AC00](v56);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98C88);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 16))(&v60, v16, v17);
  if (v61)
  {
    sub_1C0F9DDE4(&v60, v63);
    v18 = __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    v19 = MEMORY[0x1EEE9AC00](v18);
    (*(v21 + 16))(&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
    v52 = sub_1C12655D0();
    sub_1C12659A0();
    sub_1C1263390();
    LOBYTE(v60) = 0;
    memcpy(&v59[6], __src, 0x70uLL);
    v22 = a1[3];
    v23 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v22);
    (*(v23 + 24))(v67, v22, v23);
    if (LOBYTE(v67[0]))
    {
      v24 = 20.0;
    }

    else
    {
      v24 = 8.0;
    }

    v25 = *(v54 + 20);
    v26 = *MEMORY[0x1E697F468];
    v27 = sub_1C12639D0();
    (*(*(v27 - 8) + 104))(v4 + v25, v26, v27);
    *v4 = v24;
    v4[1] = v24;
    v28 = &v6[*(v53 + 36)];
    sub_1C107CD70(v4, v28);
    *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40) + 36)) = 256;
    *v6 = v52;
    *(v6 + 1) = 0x3FF0000000000000;
    v6[16] = 0;
    v6[17] = 0;
    memcpy(v6 + 18, v59, 0x76uLL);
    LOBYTE(v28) = sub_1C12644C0();
    sub_1C12628A0();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_1C107CDD4(v6, v8, &qword_1EBE98C78);
    v38 = v55;
    v37 = v56;
    v39 = &v8[*(v56 + 36)];
    *v39 = v28;
    *(v39 + 1) = v30;
    *(v39 + 2) = v32;
    *(v39 + 3) = v34;
    *(v39 + 4) = v36;
    v39[40] = 0;
    sub_1C107CDD4(v8, v38, &qword_1EBE98C80);
    sub_1C107CDD4(v38, v15, &qword_1EBE98C80);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v37);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
  }

  else
  {
    sub_1C0F9E21C(&v60, &qword_1EBE98C90);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v56);
  }

  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  (*(v41 + 8))(v62, v40, v41);
  v42 = sub_1C1263AB0();
  if (qword_1EBE8FDF8 != -1)
  {
    swift_once();
  }

  memcpy(v67, &qword_1EBE98BD8, sizeof(v67));
  sub_1C0FDB0A8(v62, v63);
  v63[5] = v42;
  sub_1C0FDB260(v67, &v60);
  __swift_destroy_boxed_opaque_existential_0Tm(v62);
  memcpy(v64, v67, sizeof(v64));
  v65 = 0;
  v66 = 1;
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  (*(v44 + 32))(v43, v44);
  if (v45)
  {
    v46 = sub_1C12652F0();
  }

  else
  {
    v46 = 0;
  }

  v47 = v57;
  sub_1C1256984(v15, v57);
  sub_1C12569F4(v63, &v60);
  v48 = v58;
  sub_1C1256984(v47, v58);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98C98);
  sub_1C12569F4(&v60, v48 + v49[12]);
  v50 = v48 + v49[16];
  *v50 = 0;
  *(v50 + 8) = 1;
  *(v50 + 16) = 0xBFF0000000000000;
  *(v48 + v49[20]) = v46;
  sub_1C1256A50(v63);
  sub_1C0F9E21C(v15, &qword_1EBE98C88);

  sub_1C1256A50(&v60);
  return sub_1C0F9E21C(v47, &qword_1EBE98C88);
}

double sub_1C1256904()
{
  v0 = sub_1C1264510();
  sub_1C12645B0();
  v2 = v1;
  v3 = sub_1C12646E0();
  v4 = sub_1C1265230();
  qword_1EBE98BD8 = v0;
  qword_1EBE98BE0 = v2;
  qword_1EBE98BE8 = 0;
  unk_1EBE98BF0 = 0;
  *&result = 2;
  xmmword_1EBE98BF8 = xmmword_1C12CE110;
  qword_1EBE98C08 = 0x3FF0000000000000;
  unk_1EBE98C10 = v3;
  qword_1EBE98C18 = 0;
  byte_1EBE98C20 = 1;
  qword_1EBE98C28 = v4;
  unk_1EBE98C30 = 1;
  byte_1EBE98C38 = 0;
  qword_1EBE98C40 = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1C1256984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1256AD4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1256B58()
{
  result = qword_1EBE98CB0;
  if (!qword_1EBE98CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98CB0);
  }

  return result;
}

uint64_t PhotosReorderHandleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98CC0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v20 - v6);
  v8 = sub_1C12652F0();
  v9 = sub_1C1264530();
  KeyPath = swift_getKeyPath();
  v11 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE98CC8) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0) + 28);
  v13 = *MEMORY[0x1E69816C0];
  sub_1C1265340();
  OUTLINED_FUNCTION_3();
  (*(v14 + 104))(v11 + v12, v13);
  *v11 = swift_getKeyPath();
  *v7 = v8;
  v7[1] = KeyPath;
  v7[2] = v9;
  if (qword_1EDE7B848 != -1)
  {
    swift_once();
  }

  *(v7 + *(v4 + 36)) = qword_1EDE7B850;
  v15 = *MEMORY[0x1E697E6D0];
  v16 = sub_1C1263130();
  OUTLINED_FUNCTION_3();
  (*(v17 + 104))(v3, v15, v16);
  sub_1C1190AD4();

  result = sub_1C1265DE0();
  if (result)
  {
    sub_1C1256EB0();
    OUTLINED_FUNCTION_20_1();
    sub_1C0FDB6D4(v19, &qword_1EBE92FE0);
    sub_1C1264BC0();
    sub_1C0FD1A5C(v3, &qword_1EBE92FE0);
    return sub_1C0FD1A5C(v7, &qword_1EBE98CC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C1256EB0()
{
  result = qword_1EDE770F0;
  if (!qword_1EDE770F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98CC0);
    sub_1C1256F68();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770F0);
  }

  return result;
}

unint64_t sub_1C1256F68()
{
  result = qword_1EDE771C0;
  if (!qword_1EDE771C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE98CC8);
    sub_1C1062140();
    sub_1C0FDB6D4(&qword_1EDE76D28, &qword_1EBE933A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosReorderHandleView(_BYTE *result, int a2, int a3)
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

uint64_t PhotosObservableFace.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservableFace.init(_:)(a1);
  return v2;
}

uint64_t *PhotosObservableFace.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v19 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1C1261F60();
  (*(v10 + 16))(v13, a1, v5);
  sub_1C10342F0(v13, *v2, v2 + *(*v2 + 104));
  sub_1C12622A0();
  (*(v7 + 32))(v2 + *(*v2 + 112), v9, AssociatedTypeWitness);
  v14 = (*(*(v4 + 88) + 16))(v5);
  v16 = v15;
  (*(v10 + 8))(a1, v5);
  v17 = (v2 + *(*v2 + 120));
  *v17 = v14;
  v17[1] = v16;
  return v2;
}

uint64_t PhotosObservableFace.item.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_2_15();
  v3 = *(v2 + 80);
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_5();
  swift_beginAccess();
  swift_getKeyPath();
  sub_1C1257DD4();

  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_1C12574FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_15();
  v6 = (v2 + *(v5 + 120));
  swift_beginAccess();

  v7 = sub_1C0FA8038();

  if (v7)
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1257DD4();
  }

  else
  {
    *v6 = a1;
    v6[1] = a2;
  }
}

uint64_t sub_1C1257690(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v15 - v5;
  PhotosObservableFace.item.getter(v15 - v5);
  v7 = *(v2 + 88);
  v8 = (*(v7 + 16))(v3, v7);
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v15[4] = v3;
  v15[5] = v7;
  v16 = *(v2 + 96);
  v11 = v16;
  swift_getKeyPath();
  sub_1C1257C64();

  v17 = v1;
  v15[0] = v3;
  v15[1] = v7;
  v15[2] = v11;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C1261F50();

  v12 = (v1 + *(*v1 + 120));
  swift_beginAccess();
  v13 = *v12 == v8 && v12[1] == v10;
  if (v13 || (sub_1C1266D50() & 1) != 0)
  {
  }

  else
  {

    *v12 = v8;
    v12[1] = v10;
  }

  swift_endAccess();
  return sub_1C12582AC();
}

uint64_t PhotosObservableFace.item.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_15();
  v7 = *(v3 + 80);
  OUTLINED_FUNCTION_5();
  swift_getKeyPath();
  sub_1C1257C64();

  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 104);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a1, v1 + v5);
}

uint64_t sub_1C12579F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  v7 = swift_endAccess();
  sub_1C1257690(v7);
  return (*(v6 + 8))(a1, v5);
}

uint64_t (*sub_1C1257ADC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1257B4C;
}

uint64_t sub_1C1257B4C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C1257690(result);
  }

  return result;
}

uint64_t sub_1C1257BA4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return PhotosObservableFace.item.setter(v3);
}

uint64_t sub_1C1257C64()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_0_93();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C1257CEC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C12579F4(v3);
}

uint64_t sub_1C1257DD4()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_93();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

void (*PhotosObservableFace.item.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5();
  swift_getKeyPath();
  sub_1C1257C64();

  OUTLINED_FUNCTION_10_2();
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_93();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[5] = sub_1C1257ADC(v3);
  return sub_1C1257FF8;
}

void sub_1C1257FF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  sub_1C12582AC();

  free(v1);
}

uint64_t PhotosObservableFace.id.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_15();
  v4 = *(v3 + 112);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

uint64_t PhotosObservableFace.selectionIdentifier.getter()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_5();
  swift_getKeyPath();
  sub_1C1257C64();

  OUTLINED_FUNCTION_10_2();
  v2 = (v0 + *(v1 + 120));
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1C12581C0@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosObservableFace.selectionIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C12581EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C12574FC(v1, v2);
}

uint64_t sub_1C125822C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(*a1 + 120));
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t sub_1C12582AC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_93();
  swift_getWitnessTable();
  sub_1C1261F40();
}

uint64_t PhotosObservableFace.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104), *(*v0 + 80));
  OUTLINED_FUNCTION_10_2();
  v2 = *(v1 + 112);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_10_2();

  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 128);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t PhotosObservableFace.__deallocating_deinit()
{
  PhotosObservableFace.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C1258544(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PhotosObservableFace.item.modify(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C12585A0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1258624(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C1258660()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      AssociatedTypeWitness = sub_1C1261F70();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1C1258800()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C125883C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C125887C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1C1258918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v29 = a5;
  v30 = a2;
  v31 = a3;
  v33 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98D50);
  OUTLINED_FUNCTION_3_57();
  sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  v10 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v32 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  sub_1C12638E0();
  v34 = a4;
  v35 = v29;
  v36 = a7;
  v37 = a1;
  v38 = v30;
  v39 = v31;
  sub_1C12655B0();
  OUTLINED_FUNCTION_13_0();
  WitnessTable = swift_getWitnessTable();
  sub_1C10A0734();
  sub_1C1264EA0();
  (*(v32 + 8))(v14, v10);
  v40 = WitnessTable;
  v41 = MEMORY[0x1E697EBF8];
  OUTLINED_FUNCTION_4_0();
  v24 = swift_getWitnessTable();
  sub_1C0FDBA4C(v20, v15, v24);
  v25 = *(v17 + 8);
  v25(v20, v15);
  sub_1C0FDBA4C(v23, v15, v24);
  return (v25)(v23, v15);
}

uint64_t sub_1C1258C08(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v14 = sub_1C1265170();
  sub_1C12659A0();
  v15 = sub_1C1263390();
  v22[0] = v14;
  a2(v15);
  sub_1C0FDBA4C(v10, a4, a5);
  v16 = *(v8 + 8);
  v16(v10, a4);
  memcpy(v20, v22, sizeof(v20));
  v21[0] = v20;
  (*(v8 + 16))(v10, v13, a4);
  v21[1] = v10;
  sub_1C1258EE0(v22, __dst);
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98D50);
  v19[1] = a4;
  v18[4] = sub_1C1258F50();
  v18[5] = a5;
  sub_1C119EE80(v21, 2, v19);
  sub_1C1258FD4(v22);
  v16(v13, a4);
  v16(v10, a4);
  memcpy(__dst, v20, 0x78uLL);
  return sub_1C1258FD4(__dst);
}

uint64_t sub_1C1258EE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1258F50()
{
  result = qword_1EBE98D58;
  if (!qword_1EBE98D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98D58);
  }

  return result;
}

uint64_t sub_1C1258FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C125903C(uint64_t *a1@<X8>)
{
  v3 = sub_1C1263130();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v1;
  v7 = v1[40];
  v66 = a1;
  v65 = v7;
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = sub_1C1263AA0();
    }

    else
    {
      v8 = sub_1C1263AC0();
    }
  }

  else
  {
    v8 = sub_1C1263AB0();
  }

  v64 = v8;
  v63 = sub_1C12638E0();
  v9 = v71;
  v10 = *(v71 + 1);
  v68 = *v71;
  __dst[0] = v68;
  __dst[1] = v10;
  sub_1C0FDB9AC();

  v11 = sub_1C12648F0();
  v60 = v12;
  v61 = v11;
  v59 = v13;
  v62 = v14;
  v15 = *(v9 + 3);
  type metadata accessor for PhotosDynamicText();
  sub_1C0FD746C(v6);
  v16 = sub_1C1235200();
  (*(v4 + 8))(v6, v3);
  v17 = v15(v16);
  v18 = 0;
  v19 = *(v17 + 16);
  v58 = v17 + 32;
  v20 = *MEMORY[0x1E69DB648];
  if (v19 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  v69 = v17;
  v70 = v21 - 1;
  v22 = (v17 + 40);
  v67 = xmmword_1C12A8B40;
  while (1)
  {
    if (v70 == v18)
    {
      v18 = v70;
      goto LABEL_19;
    }

    if (v18 >= v19)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v23 = *(v22 - 1);
    v24 = *v22;
    v25 = *(v71 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93478);
    inited = swift_initStackObject();
    *(inited + 16) = v67;
    *(inited + 32) = v20;
    *(inited + 64) = sub_1C1259898();
    *(inited + 40) = v23;
    type metadata accessor for Key(0);
    sub_1C10C8A14();
    v27 = v23;

    v28 = v27;
    v29 = v20;
    v30 = sub_1C1265CE0();
    v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v32 = sub_1C12597F0(v68, v10, v30);
    [v32 boundingRectWithSize:3 options:0 context:{v25, 1.79769313e308}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [v28 lineHeight];
    v42 = v41;
    v85.origin.x = v34;
    v85.origin.y = v36;
    v85.size.width = v38;
    v85.size.height = v40;
    Height = CGRectGetHeight(v85);

    v44 = round(Height / v42);
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    if (v44 <= -9.22337204e18)
    {
      goto LABEL_23;
    }

    if (v44 >= 9.22337204e18)
    {
      goto LABEL_24;
    }

    if (v24 >= v44)
    {
      break;
    }

    ++v18;
    v19 = *(v69 + 16);
    v22 += 3;
  }

  v19 = *(v69 + 16);
LABEL_19:
  if (v18 < v19)
  {
    v45 = v58 + 24 * v18;
    v46 = *(v45 + 8);
    v47 = *(v45 + 16);
    v48 = *v45;

    v71 = v48;
    v49 = sub_1C1264710();
    KeyPath = swift_getKeyPath();
    v51 = swift_getKeyPath();
    LODWORD(v69) = v59 & 1;
    LOBYTE(v83[0]) = v59 & 1;
    v72[0] = 0;
    v70 = swift_getKeyPath();
    v53 = v60;
    v52 = v61;
    v74[0] = v61;
    v74[1] = v60;
    LOBYTE(v74[2]) = v83[0];
    v74[3] = v62;
    v74[4] = KeyPath;
    v74[5] = v49;
    v74[6] = v51;
    v74[7] = v46;
    LOBYTE(v74[8]) = v72[0];
    memcpy(v73, v74, 0x41uLL);
    v75[0] = v61;
    v75[1] = v60;
    v76 = v83[0];
    v77 = v62;
    v78 = KeyPath;
    v79 = v49;
    v80 = v51;
    v81 = v46;
    v82 = v72[0];
    LOBYTE(v51) = v69;
    sub_1C0FDB850(v61, v60, v69);

    sub_1C102EFA0(v74, __dst, &qword_1EBE98D68);
    sub_1C0F9E21C(v75, &qword_1EBE98D68);
    memcpy(v83, v73, 0x48uLL);
    v83[9] = v70;
    v83[10] = v47;
    memcpy(__dst, v73, 0x48uLL);
    __dst[9] = v70;
    __dst[10] = v47;
    sub_1C102EFA0(v83, v72, &qword_1EBE98D70);
    sub_1C0F9E21C(__dst, &qword_1EBE98D70);

    sub_1C0FDB8E8(v52, v53, v51);

    v54 = swift_getKeyPath();
    v55 = v66;
    v56 = v63;
    *v66 = v64;
    v55[1] = v56;
    memcpy(v55 + 2, v83, 0x58uLL);
    v55[13] = v54;
    *(v55 + 112) = v65;
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1C12595B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C12B36E0;
  *(v0 + 32) = OUTLINED_FUNCTION_0_94(1, xmmword_1C12B36E0);
  *(v0 + 40) = 1;
  *(v0 + 48) = 0x3FE7AE147AE147AELL;
  *(v0 + 56) = OUTLINED_FUNCTION_0_94(2, v1);
  *(v0 + 64) = 3;
  *(v0 + 72) = 0x3FE7AE147AE147AELL;
  *(v0 + 80) = OUTLINED_FUNCTION_0_94(3, v2);
  *(v0 + 88) = 4;
  *(v0 + 96) = 0x3FE7AE147AE147AELL;
  *(v0 + 104) = OUTLINED_FUNCTION_0_94(4, v3);
  *(v0 + 112) = 5;
  *(v0 + 120) = 0x3FE7AE147AE147AELL;
  return v0;
}

uint64_t type metadata accessor for PhotosDynamicText()
{
  result = qword_1EDE7B2C0;
  if (!qword_1EDE7B2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C125972C()
{
  sub_1C100D364();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

id sub_1C12597F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C1265E70();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1C10C8A14();
    v6 = sub_1C1265CC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

unint64_t sub_1C1259898()
{
  result = qword_1EDE76980;
  if (!qword_1EDE76980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE76980);
  }

  return result;
}

unint64_t sub_1C12598DC()
{
  result = qword_1EDE76BC8;
  if (!qword_1EDE76BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76BC8);
  }

  return result;
}

uint64_t View.photosInformationalPopover<A>(isPresented:wantsDynamicBackground:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22[1] = a8;
  v24 = a5;
  v23 = a4;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v9, v20, v16);
  sub_1C1259A88(v18, a1, a2, a3, v23, v24, a6, a7, a9);
}

uint64_t sub_1C1259A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v16 = type metadata accessor for PhotosInformationalPopover();
  v17 = a9 + v16[13];
  *v17 = a2;
  *(v17 + 8) = a3;
  *(v17 + 16) = a4;
  *(a9 + v16[14]) = a5;
  v18 = (a9 + v16[15]);
  *v18 = a6;
  v18[1] = a7;
  v19 = v16[16];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  return swift_storeEnumTagMultiPayload();
}

void sub_1C1259BBC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C125C9B4(319, &qword_1EDE76B80, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1C1007F88();
      if (v2 <= 0x3F)
      {
        sub_1C125C960(319, &qword_1EDE77578, MEMORY[0x1E697E730]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C1259CB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1C1263130() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_25:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = *(((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_25;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1C1259F14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C1263130() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 1;
  v16 = 8 * v15;
  if (a3 <= v10)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v10 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v10 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_46:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 < 0x7FFFFFFF)
          {
            v23 = &a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v23 + 16) = 0;
              *v23 = a2 & 0x7FFFFFFF;
              *(v23 + 8) = 0;
            }

            else
            {
              *(v23 + 8) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v22 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C125A240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v5 = sub_1C1263FA0();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = *(a1 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = *(a1 + 16);
  v10 = *(a1 + 40);
  v56 = *(&v55 + 1);
  v57 = v10;
  v11 = v10;
  v48 = v10;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DC0);
  sub_1C1263190();
  v56 = *(&v55 + 1);
  v57 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
  v60 = OpaqueTypeConformance2;
  v61 = v13;
  swift_getWitnessTable();
  v14 = type metadata accessor for PhotosInformationalPopoverContent();
  v15 = *(a1 + 32);
  WitnessTable = swift_getWitnessTable();
  v56 = v55;
  v44 = WitnessTable;
  v45 = v55;
  v57 = v14;
  v58 = v15;
  v59 = WitnessTable;
  v46 = &unk_1C12CEEBC;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &v39[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v39[-v22];
  v24 = *(a1 + 52);
  v25 = v3;
  v43 = v3;
  v26 = v3 + v24;
  v27 = *(v26 + 8);
  v42 = *v26;
  v41 = v27;
  v40 = *(v26 + 16);
  v28 = v49;
  v29 = v9;
  (*(v49 + 16))(v9, v25, a1, v21);
  v30 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *&v32 = v15;
  *(&v32 + 1) = v48;
  *(v31 + 32) = v32;
  *(v31 + 16) = v55;
  (*(v28 + 32))(v31 + v30, v29, a1);
  v33 = swift_checkMetadataState();
  v34 = v51;
  v35 = v44;
  sub_1C0FD0B20(v51);
  sub_1C0FD0B94(v42, v41, v40, v34, 4);

  (*(v52 + 8))(v34, v53);
  v56 = v55;
  v57 = v33;
  v58 = v15;
  v59 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C(v19, OpaqueTypeMetadata2, v36);
  v37 = *(v47 + 8);
  v37(v19, OpaqueTypeMetadata2);
  sub_1C0FDBA4C(v23, OpaqueTypeMetadata2, v36);
  return (v37)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1C125A738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a2;
  v39 = a4;
  v40 = a6;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v9 = type metadata accessor for PhotosInformationalPopover();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v36 = a5;
  v37 = v34 - v11;
  v43 = a3;
  v44 = a5;
  v12 = a3;
  v35 = a3;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DC0);
  v13 = sub_1C1263190();
  v43 = v12;
  v44 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
  v41 = OpaqueTypeConformance2;
  v42 = v15;
  v34[1] = v13;
  v34[0] = swift_getWitnessTable();
  v16 = type metadata accessor for PhotosInformationalPopoverContent();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v34 - v22;
  LOBYTE(v12) = *(a1 + *(v9 + 56));
  v24 = v37;
  v25 = a1;
  v26 = v9;
  (*(v10 + 16))(v37, v25, v9, v21);
  v27 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 2) = v38;
  *(v28 + 3) = v29;
  v30 = v36;
  *(v28 + 4) = v39;
  *(v28 + 5) = v30;
  (*(v10 + 32))(&v28[v27], v24, v26);
  sub_1C125AEDC(v12, sub_1C125B148, v28, v19);
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v19, v16, WitnessTable);
  v32 = *(v17 + 8);
  v32(v19, v16);
  sub_1C0FDBA4C(v23, v16, WitnessTable);
  return (v32)(v23, v16);
}

uint64_t sub_1C125AAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a1;
  v40 = a6;
  v10 = sub_1C1263130();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v33 = &OpaqueTypeMetadata2 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &OpaqueTypeMetadata2 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a3;
  v44 = a5;
  v34 = MEMORY[0x1E69812B8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &OpaqueTypeMetadata2 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DC0);
  v17 = sub_1C1263190();
  v37 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &OpaqueTypeMetadata2 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &OpaqueTypeMetadata2 - v21;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v23 = type metadata accessor for PhotosInformationalPopover();
  (*(v32 + *(v23 + 60)))();
  v24 = v33;
  sub_1C0FD746C(v33);
  sub_1C1264BB0();
  (*(v38 + 8))(v24, v39);
  (*(v36 + 8))(v14, a3);
  v43 = a3;
  v44 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = OpaqueTypeMetadata2;
  sub_1C12650A0();
  (*(v35 + 8))(v16, v26);
  v27 = sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
  v41 = OpaqueTypeConformance2;
  v42 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C(v19, v17, WitnessTable);
  v29 = *(v37 + 8);
  v29(v19, v17);
  sub_1C0FDBA4C(v22, v17, WitnessTable);
  return (v29)(v22, v17);
}

uint64_t sub_1C125AEDC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for PhotosInformationalPopoverContent();
  *(a4 + v8[9]) = a1;
  v9 = (a4 + v8[10]);
  *v9 = a2;
  v9[1] = a3;
  v10 = (a4 + v8[11]);
  result = sub_1C123122C();
  *v10 = v12;
  v10[1] = result;
  return result;
}

uint64_t objectdestroyTm_27()
{
  v6 = *(v0 + 16);
  v1 = (type metadata accessor for PhotosInformationalPopover() - 8);
  v2 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  (*(*(v6 - 8) + 8))(v2);

  v3 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263130();
    OUTLINED_FUNCTION_4_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C125B160(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for PhotosInformationalPopover() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_1C125B218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = sub_1C1263E80();
  v117 = *(v3 - 8);
  v118 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v116 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *(a1 - 8);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v112 = a1;
  v113 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v106 = *(a1 + 24);
  v104 = v7;
  sub_1C1262940();
  swift_getTupleTypeMetadata2();
  v102 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1C1262C50();
  v105 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v71 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE933F0);
  v78 = v8;
  v10 = sub_1C1263190();
  v103 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v71 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98D80);
  v75 = sub_1C1263190();
  v79 = v10;
  v12 = sub_1C1265930();
  v100 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v71 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8);
  v120 = sub_1C1263190();
  v77 = v12;
  v14 = sub_1C1265930();
  v107 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v71 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93AE8);
  v81 = v14;
  v16 = sub_1C1263190();
  v110 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v71 - v17;
  v84 = v16;
  v18 = sub_1C1263190();
  v109 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v99 = &v71 - v19;
  v87 = v18;
  v20 = sub_1C1263190();
  v108 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v71 - v21;
  v22 = swift_getWitnessTable();
  v76 = v22;
  v23 = sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
  v147 = v22;
  v148 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1C0FDB6D4(&qword_1EBE98D88, &qword_1EBE98D80);
  v145 = v24;
  v146 = v25;
  v73 = v24;
  v74 = swift_getWitnessTable();
  v26 = MEMORY[0x1E6981CD0];
  v142 = MEMORY[0x1E6981CD0];
  v143 = v74;
  v144 = v24;
  v27 = swift_getWitnessTable();
  v28 = sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8);
  v140 = v27;
  v141 = v28;
  v72 = swift_getWitnessTable();
  v137 = v26;
  v138 = v27;
  v139 = v72;
  v29 = swift_getWitnessTable();
  v80 = v29;
  v30 = sub_1C0FDB6D4(&qword_1EDE7BA88, &qword_1EBE93AE8);
  v135 = v29;
  v136 = v30;
  v83 = swift_getWitnessTable();
  v133 = v83;
  v134 = MEMORY[0x1E697E040];
  v86 = swift_getWitnessTable();
  v131 = v86;
  v132 = MEMORY[0x1E697E5D8];
  v89 = v20;
  v88 = swift_getWitnessTable();
  v129 = v20;
  v130 = v88;
  v90 = MEMORY[0x1E697D450];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = *(OpaqueTypeMetadata2 - 8);
  v91 = OpaqueTypeMetadata2;
  v92 = v32;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v82 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v85 = &v71 - v35;
  sub_1C1264440();
  v36 = v104;
  v37 = v106;
  v126 = v104;
  v127 = v106;
  v38 = v111;
  v128 = v111;
  v39 = v97;
  sub_1C1262C40();
  sub_1C12646E0();
  v40 = v95;
  v41 = v78;
  sub_1C1264E60();

  (*(v105 + 8))(v39, v41);
  v123 = v36;
  v124 = v37;
  v42 = v38;
  v125 = v38;
  v43 = v94;
  v44 = v79;
  View.onPhotosSolariumEnabled<A>(_:)(sub_1C125CA58);
  (*(v103 + 8))(v40, v44);
  v121 = v36;
  v122 = v37;
  v45 = v93;
  v46 = v77;
  View.onPhotosSolariumDisabled<A>(_:)(sub_1C125CA64);
  (*(v100 + 8))(v43, v46);
  v48 = v113;
  v47 = v114;
  v49 = v112;
  (*(v114 + 16))(v113, v42, v112);
  v50 = v47;
  v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = v36;
  *(v52 + 24) = v37;
  (*(v50 + 32))(v52 + v51, v48, v49);
  type metadata accessor for CGSize(0);
  sub_1C111A1EC();
  v53 = v96;
  v54 = v81;
  sub_1C1264C40();

  (*(v107 + 8))(v45, v54);
  v55 = (v42 + *(v49 + 44));
  v56 = *v55;
  v57 = v55[1];
  v129 = v56;
  v130 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  v58 = v84;
  sub_1C10A0734();
  v59 = v99;
  sub_1C1264E90();
  (*(v110 + 8))(v53, v58);
  sub_1C1264470();
  v60 = v98;
  v61 = v87;
  sub_1C1264FB0();
  (*(v109 + 8))(v59, v61);
  v62 = v116;
  sub_1C1263E70();
  v63 = v82;
  v64 = v88;
  v65 = v89;
  sub_1C1264E30();
  (*(v117 + 8))(v62, v118);
  (*(v108 + 8))(v60, v65);
  v129 = v65;
  v130 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v85;
  v68 = v91;
  sub_1C0FDBA4C(v63, v91, OpaqueTypeConformance2);
  v69 = *(v92 + 8);
  v69(v63, v68);
  sub_1C0FDBA4C(v67, v68, OpaqueTypeConformance2);
  return (v69)(v67, v68);
}

uint64_t sub_1C125BE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = sub_1C1262940();
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v30 = *(a2 - 8);
  v13 = v30;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v31 = &v28 - v18;
  v19 = type metadata accessor for PhotosInformationalPopoverContent();
  (*(a1 + *(v19 + 40)))();
  sub_1C0FDBA4C(v16, a2, a3);
  v33 = *(v13 + 8);
  v34 = v13 + 8;
  v33(v16, a2);
  v36 = a2;
  v37 = a3;
  v38 = a1;
  v29 = a3;
  sub_1C106C820();
  sub_1C106C824();
  v20 = v7;
  WitnessTable = swift_getWitnessTable();
  v22 = v12;
  sub_1C0FDBA4C(v9, v7, WitnessTable);
  v23 = v32;
  v24 = *(v32 + 8);
  v24(v9, v7);
  v25 = v31;
  (*(v30 + 16))(v16, v31, a2);
  v42[0] = v16;
  (*(v23 + 16))(v9, v22, v20);
  v42[1] = v9;
  v41[0] = a2;
  v41[1] = v20;
  v39 = v29;
  v40 = WitnessTable;
  sub_1C119EE80(v42, 2, v41);
  v24(v22, v20);
  v26 = v33;
  v33(v25, a2);
  v24(v9, v20);
  return v26(v16, a2);
}

uint64_t sub_1C125C1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = type metadata accessor for PhotosInformationalPopoverContent();
  (*(a1 + *(v12 + 40)))();
  sub_1C0FDBA4C(v8, a2, a3);
  v13 = *(v6 + 8);
  v13(v8, a2);
  sub_1C0FDBA4C(v11, a2, a3);
  return (v13)(v11, a2);
}

uint64_t sub_1C125C310(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98D90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - v4;
  if (*(a2 + *(type metadata accessor for PhotosInformationalPopoverContent() + 36)) == 1)
  {
    sub_1C0FD7494(v5);
  }

  else
  {
    v6 = *MEMORY[0x1E697DBA8];
    v7 = sub_1C12629F0();
    (*(*(v7 - 8) + 104))(v5, v6, v7);
  }

  v8 = sub_1C12629F0();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  sub_1C1262940();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C1262C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE933F0);
  sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
  v12[0] = WitnessTable;
  v12[1] = v10;
  swift_getWitnessTable();
  sub_1C1264D70();
  return sub_1C125CAF8(v5);
}

uint64_t sub_1C125C560()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  sub_1C1262940();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C1262C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE933F0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98D80);
  sub_1C1263190();
  sub_1C1265930();
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EBE98D88, &qword_1EBE98D80);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C1264BE0();
}

uint64_t sub_1C125C7D4()
{
  type metadata accessor for PhotosInformationalPopoverContent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  return sub_1C1265430();
}

void sub_1C125C854()
{
  sub_1C125C960(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_1C1007F88();
    if (v1 <= 0x3F)
    {
      sub_1C125C9B4(319, &qword_1EDE76CB0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C125C960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C125C9B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C125CA6C()
{
  type metadata accessor for PhotosInformationalPopoverContent();

  return sub_1C125C7D4();
}

uint64_t sub_1C125CAF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosCollectionAdditionalInfoButton.init(additionalInfo:popoverInitiallyVisible:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for PhotosCollectionAdditionalInfoButton();
  v7 = a4 + *(result + 36);
  *v7 = a2;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_1C125CC6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265440();
  return v1;
}

uint64_t PhotosCollectionAdditionalInfoButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v31 = v5 + 16;
  v33 = v7;
  v34 = v9;
  (v9)(v8, v2, a1, v6);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(v11 + 16) = v13;
  *(v11 + 24) = v12;
  v28 = v12;
  v29 = v13;
  v30 = *(v5 + 32);
  v30(v11 + v10, v8, a1);
  v35 = v13;
  v36 = v12;
  v37 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98D98);
  sub_1C125D0B8();
  v14 = v32;
  sub_1C1265480();
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98DA8) + 36)) = 1;
  v15 = v3;
  v16 = sub_1C125CC6C();
  v18 = v17;
  LOBYTE(v3) = v19;
  v34(v8, v15, a1);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = v29;
  *(v20 + 24) = v21;
  v30(v20 + v10, v8, a1);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98DB0);
  v23 = v14 + v22[13];
  *v23 = v16;
  *(v23 + 8) = v18;
  *(v23 + 16) = v3 & 1;
  *(v14 + v22[14]) = 0;
  v24 = (v14 + v22[15]);
  *v24 = sub_1C125D35C;
  v24[1] = v20;
  v25 = v22[16];
  *(v14 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C125CFC0()
{
  type metadata accessor for PhotosCollectionAdditionalInfoButton();

  return sub_1C125CF8C();
}

uint64_t sub_1C125D044@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C12652F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98D98);
  result = sub_1C1263060();
  *a1 = v2;
  return result;
}

unint64_t sub_1C125D0B8()
{
  result = qword_1EBE98DA0;
  if (!qword_1EBE98DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98D98);
    sub_1C0FDB6D4(&qword_1EDE76D78, &qword_1EBE97730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98DA0);
  }

  return result;
}

uint64_t sub_1C125D170@<X0>(uint64_t *a1@<X8>)
{
  sub_1C1262200();
  v2 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *a1 = sub_1C12655D0();
  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

uint64_t objectdestroyTm_28()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for PhotosCollectionAdditionalInfoButton() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1C125D35C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosCollectionAdditionalInfoButton();

  return sub_1C125D170(a1);
}

void sub_1C125D430()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C106B1CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_DWORD *sub_1C125D4B8(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 >= 0x7FFFFFFE)
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }

    v17 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v16 = v17 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_26;
    }
  }

  return (v16 + 1);
}

void sub_1C125D5FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = (a2 - 0x7FFFFFFF);
              v17[1] = 0;
            }

            else
            {
              v17[1] = a2;
            }
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
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t PhotosLazyHGrid.init(rows:horizontalSpacing:verticalSpacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  return result;
}

void sub_1C125D7E0()
{
  if (*(*v0 + 16))
  {
    sub_1C1106810(0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C125D824(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a1;
  for (i = (a2 + 64); ; i += 5)
  {
    if (*(i - 4) == v5)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 3) == a1[1] && *(i - 2) == a1[2];
      if (v9 || (sub_1C1266D50() & 1) != 0)
      {
        v10 = v7 == a1[3] && v8 == a1[4];
        if (v10 || (sub_1C1266D50() & 1) != 0)
        {
          break;
        }
      }
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1C125D8E8(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  for (i = (a1 + 40); *i != a3 || *(i - 1) != a2; i += 2)
  {
    if (v3 == ++result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C125D93C(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C1260534();
    v5 = v12;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 - 1;
    v8 = v6 - 1 - a1;
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 32);
    v13 = *(v9 + 16);
    sub_1C0FB9FF4((v9 + 40), v8, v9);
    *(v5 + 16) = v7;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
  }
}

void sub_1C125D9E4(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C1260548();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_1C0FCF108((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

uint64_t PhotosLazyHGrid.rows.getter()
{
  if (*(v0 + 16) <= 1)
  {
    return 1;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t static PhotosLazyHGrid.layoutProperties.getter()
{
  sub_1C12641A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  v1 = sub_1C1264420();
  *(inited + 32) = v1;
  v2 = sub_1C1264440();
  *(inited + 33) = v2;
  sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v1)
  {
    sub_1C1264430();
  }

  sub_1C1264430();
  if (sub_1C1264430() != v2)
  {
    sub_1C1264430();
  }

  return sub_1C1264190();
}

uint64_t static PhotosLazyHGrid.initialCache.getter@<X0>(int64x2_t *a1@<X8>)
{
  a1->i64[0] = 0;
  a1->i8[8] = 1;
  a1[1].i64[0] = 0;
  a1[1].i8[8] = 1;
  a1[2] = vdupq_n_s64(1uLL);
  type metadata accessor for CGPoint(0);
  sub_1C125DC48();
  a1[3].i64[0] = 0;
  a1[3].i64[1] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1C1265CE0();
  a1[4].i64[0] = result;
  a1[4].i64[1] = v2;
  a1[5].i64[0] = 30;
  return result;
}

unint64_t sub_1C125DC48()
{
  result = qword_1EBE91440;
  if (!qword_1EBE91440)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91440);
  }

  return result;
}

double PhotosLazyHGrid.sizeThatFits(proposedSize:subviews:context:cache:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1C125DD48();
  v4 = v3;
  v5 = sub_1C1264040();
  if (v2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v2;
  }

  return (v1 + v4) * ceil(v5 / v6) - v1;
}

uint64_t sub_1C125DD48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98E70);
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v34 - v1;
  v3 = sub_1C1263F00();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE98DE8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_1C1264010();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C1264030();
  v40 = *(v16 - 8);
  v41 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1264040();
  v20 = __OFSUB__(v19, 1);
  result = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    sub_1C1264050();
    sub_1C1264020();
    sub_1C1264000();
    if (__swift_getEnumTagSinglePayload(v12, 1, v3) != 1)
    {
      v22 = *(v4 + 32);
      v34 = v6;
      v22(v6, v12, v3);
      sub_1C12632F0();
      v24 = v23;
      v25 = v3;
      v37 = v4;
      v27 = v26;
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v3);
      v47 = v24 & 1;
      v46 = v27 & 1;
      sub_1C1263EE0();
      sub_1C0F9E21C(v9, qword_1EBE98DE8);
      v36 = sub_1C1263ED0();
      v35 = v28;
      v38 = *(v38 + 8);
      (v38)(v2, v39);
      sub_1C12632F0();
      v30 = v29;
      v32 = v31;
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v25);
      v45 = v30 & 1;
      v44 = v32 & 1;
      v33 = v34;
      sub_1C1263EE0();
      sub_1C0F9E21C(v9, qword_1EBE98DE8);
      sub_1C1263ED0();
      (v38)(v2, v39);
      (*(v37 + 8))(v33, v25);
    }

    (*(v42 + 8))(v15, v43);
    return (*(v40 + 8))(v18, v41);
  }

  return result;
}

uint64_t PhotosLazyHGrid.place(subviews:context:cache:in:)(uint64_t (**a1)(double, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v179 = a4;
  v198 = a1;
  v8 = sub_1C1262690();
  v9 = OUTLINED_FUNCTION_0_20(v8, &v198);
  v167 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98DD8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_6_44(v162 - v14);
  v15 = sub_1C12642B0();
  v16 = OUTLINED_FUNCTION_0_20(v15, &v206);
  v180 = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v185 = v162 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98DE0);
  v21 = OUTLINED_FUNCTION_0_20(v20, &v205);
  v176 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v162 - v23;
  v25 = sub_1C1263F00();
  v26 = OUTLINED_FUNCTION_0_20(v25, &v204);
  v175 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v184 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE98DE8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v195 = v162 - v30;
  v31 = sub_1C1264010();
  v32 = OUTLINED_FUNCTION_0_20(v31, v201);
  v172 = v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  v196 = v34;
  v35 = sub_1C1264030();
  v36 = OUTLINED_FUNCTION_0_20(v35, v202);
  v174 = v37;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_44(v38);
  v39 = sub_1C1262720();
  v40 = OUTLINED_FUNCTION_0_20(v39, &v203);
  v177 = v41;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6_44(v42);
  sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v192 = v44;
  v193 = v43;
  MEMORY[0x1EEE9AC00](*&v43);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v162 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v162 - v49;
  v51 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0));
  MEMORY[0x1EEE9AC00](*&v51);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v162 - v53;
  v56 = *v4;
  v55 = v4[1];
  v199 = *(v4 + 2);
  if (qword_1EDE83508 != -1)
  {
    swift_once();
  }

  v166 = v12;
  v170 = __swift_project_value_buffer(*&v51, qword_1EDE82FE0);
  sub_1C119ADB4(v170, v54);
  v194 = sub_1C1262680();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v194);
  v188 = v24;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C0F9E21C(v54, &qword_1EBE919B0);
    v58 = 0;
  }

  else
  {
    sub_1C1262640();
    v59 = sub_1C1262670();
    v60 = sub_1C1266510();
    if (sub_1C1266730())
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = sub_1C1262630();
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v59, v60, v62, "PhotosLazyHGrid.place", "", v61, 2u);
      MEMORY[0x1C68F1630](v61, -1, -1);
    }

    v63 = v192;
    v51 = v193;
    (*(v192 + 16))(v47, v50, COERCE_DOUBLE(*&v193));
    sub_1C12626C0();
    swift_allocObject();
    v58 = sub_1C12626B0();
    (*(v63 + 8))(v50, COERCE_DOUBLE(*&v51));
    OUTLINED_FUNCTION_18_35();
    (*(v64 + 8))(v54);
  }

  *v200 = v56;
  *&v200[1] = v55;
  v200[2] = v199;
  sub_1C125F3B8(a3, v198, a2);
  Width = *a3;
  v66 = *(a3 + 8);
  v67 = *a3;
  if (v66)
  {
    v67 = MEMORY[0x1C68EDD40]();
  }

  v68 = *(a3 + 16);
  v69 = *(a3 + 24);
  if (v69)
  {
    MEMORY[0x1C68EDD40]();
  }

  v207.origin.x = MEMORY[0x1C68EDD30]();
  MinY = CGRectGetMinY(v207);
  v208.origin.x = MEMORY[0x1C68EDD30]();
  MaxY = CGRectGetMaxY(v208);
  if (MinY > MaxY)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v5 = MaxY;
  v191 = v56;
  v183 = v55;
  v209.origin.x = MEMORY[0x1C68EDD30]();
  MinX = CGRectGetMinX(v209);
  v210.origin.x = MEMORY[0x1C68EDD30]();
  MaxX = CGRectGetMaxX(v210);
  if (MinX > MaxX)
  {
    goto LABEL_75;
  }

  v74 = MaxX;
  v197 = v58;
  *&v75 = COERCE_DOUBLE(sub_1C125FABC(0.0, INFINITY, MinY, v5));
  if (v77)
  {
  }

  v54 = v75;
  v78 = v76;
  *&v79 = COERCE_DOUBLE(sub_1C125FABC(0.0, INFINITY, MinX, v74));
  if (v81)
  {
  }

  v82 = v191;
  if (v191 >= v67)
  {
  }

  v50 = v79;
  v51 = v80;
  v83 = sub_1C1264040();
  if ((v83 & 0x8000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v84 = floor(*&v50 / (v82 + v67));
  if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v84 <= -9.22337204e18)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v84 >= 9.22337204e18)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v199 <= 1)
  {
    v85 = 1;
  }

  else
  {
    v85 = v199;
  }

  v50 = v84 * v85;
  v165 = v85;
  if ((v84 * v85) >> 64 != v50 >> 63)
  {
    goto LABEL_81;
  }

  v86 = ceil(v51 / (v82 + v67));
  if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v51 = v184;
  if (v86 <= -9.22337204e18)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v86 >= 9.22337204e18)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v164 = v86 * v165;
  if ((v86 * v165) >> 64 != v164 >> 63)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v50 < 0 || v50 >= v83)
  {
  }

  v5 = v78;
  if (qword_1EBE8FE00 != -1)
  {
LABEL_86:
    swift_once();
  }

  v87 = *&v54;
  v88 = v178;
  v89 = __swift_project_value_buffer(v178, qword_1EBE98DC0);
  (*(v177 + 16))(v182, v89, v88);
  sub_1C1264050();
  sub_1C1264020();
  v198 = (v175 + 32);
  v90 = v165;
  v175 += 8;
  v163 = (v180 + 32);
  v162[2] = v180 + 16;
  v162[1] = v180 + 8;
  v176 += 8;
  v91 = v181;
  v54 = v187;
  do
  {
    v92 = v195;
    sub_1C1264000();
    if (__swift_getEnumTagSinglePayload(v92, 1, v54) == 1)
    {
      break;
    }

    v93 = (*v198)(COERCE_DOUBLE(*&v51), v92, v54);
    if (v66)
    {
      v94 = 0.0;
    }

    else
    {
      v94 = Width;
    }

    v95 = v68;
    if (v69)
    {
      MEMORY[0x1C68EDD40](v93);
      v95 = v96 / v90;
    }

    v97 = v95 * (v50 % v165);
    v98 = v94 * (v50 / v165);
    if (v98 == 0.0)
    {
      v99 = 0.0;
      v100 = 0.0;
      v101 = 0.0;
      if (v97 == 0.0)
      {
        goto LABEL_42;
      }

LABEL_41:
      v99 = v183 * (v97 / v95);
      v100 = v101;
      goto LABEL_42;
    }

    v100 = v191 * (v98 / v94);
    v99 = 0.0;
    v101 = v100;
    if (v97 != 0.0)
    {
      goto LABEL_41;
    }

LABEL_42:
    v102 = v97 + v99;
    if (v97 + v99 < v87 || v102 > v5)
    {
      OUTLINED_FUNCTION_6_5();
      v104(*&v51, v54);
    }

    else
    {
      v105 = v98 + v100;
      sub_1C1265B40();
      LOBYTE(v200[0]) = 1;
      v201[8] = 0;
      v106 = v51;
      v107 = v188;
      v108 = v189;
      sub_1C1263EF0();
      sub_1C1263EC0();
      v109 = v190;
      v110 = __swift_getEnumTagSinglePayload(v91, 1, v190);
      if (v110 == 1)
      {
        OUTLINED_FUNCTION_6_5();
        v111(v107, v108);
        OUTLINED_FUNCTION_6_5();
        v54 = v187;
        v112(*&v106, v187);
        sub_1C0F9E21C(v91, &qword_1EBE98DD8);
        v51 = v106;
      }

      else
      {
        v113 = *v163;
        v114 = v91;
        v115 = v185;
        (*v163)(v185, v114, v109);
        sub_1C1264290();
        Width = CGRectGetWidth(v211);
        sub_1C1264290();
        Height = CGRectGetHeight(v212);
        *a3 = Width;
        *(a3 + 8) = 0;
        *(a3 + 16) = Height;
        *(a3 + 24) = 0;
        OUTLINED_FUNCTION_6_5();
        v117(v186, v115, v109);
        v118 = sub_1C1264170();
        v120 = v119;
        v121 = *v119;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v120 = v121;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C0FE4A80();
          v121 = v133;
          *v120 = v133;
        }

        v123 = *(v121 + 16);
        if (v123 >= *(v121 + 24) >> 1)
        {
          sub_1C0FE4A80();
          v121 = v134;
          *v120 = v134;
        }

        *(v121 + 16) = v123 + 1;
        v124 = v121 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v123;
        v125 = v190;
        v113(v124, v186, v190);
        v118(v200, 0);
        sub_1C126020C(v50, v105, v102);
        v126 = sub_1C12626F0();
        v127 = sub_1C1266400();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          *v128 = 0;
          _os_log_impl(&dword_1C0F96000, v126, v127, "Placed a subview", v128, 2u);
          MEMORY[0x1C68F1630](v128, -1, -1);
        }

        OUTLINED_FUNCTION_6_5();
        v129(v185, v125);
        OUTLINED_FUNCTION_6_5();
        v130(v188, v189);
        OUTLINED_FUNCTION_6_5();
        v51 = v184;
        v54 = v187;
        v131(*&v184, v187);
        v69 = 0;
        v66 = 0;
        v68 = Height;
        v91 = v181;
      }
    }

    v132 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_76;
    }

    ++v50;
  }

  while (v132 != v164);
  v136 = (*(v172 + 8))(v196, v173);
  v137 = MEMORY[0x1C68EDD30](v136);
  v138 = MEMORY[0x1C68EDD30](v137);
  MEMORY[0x1C68EDD30](v138);
  sub_1C1264180();
  if (v197)
  {
    v139 = v171;
    sub_1C119ADB4(v170, v171);
    if (__swift_getEnumTagSinglePayload(v139, 1, v194) == 1)
    {

      v140 = OUTLINED_FUNCTION_3_58();
      v141(v140);
      v142 = OUTLINED_FUNCTION_4_61();
      v143(v142);
      return sub_1C0F9E21C(v139, &qword_1EBE919B0);
    }

    v148 = sub_1C1262670();
    v149 = v169;
    sub_1C12626A0();
    v150 = sub_1C1266500();
    if (sub_1C1266730())
    {

      v151 = v166;
      sub_1C12626D0();

      v152 = v167;
      v153 = v168;
      if ((*(v167 + 88))(v151, v168) == *MEMORY[0x1E69E93E8])
      {
        v154 = "[Error] Interval already ended";
      }

      else
      {
        (*(v152 + 8))(v151, v153);
        v154 = "";
      }

      v155 = swift_slowAlloc();
      *v155 = 0;
      v156 = sub_1C1262630();
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v148, v150, v156, "PhotosLazyHGrid.place", v154, v155, 2u);
      MEMORY[0x1C68F1630](v155, -1, -1);
    }

    (*(v192 + 8))(v149, COERCE_DOUBLE(*&v193));
    v157 = OUTLINED_FUNCTION_3_58();
    v158(v157);
    v159 = OUTLINED_FUNCTION_4_61();
    v160(v159);
    OUTLINED_FUNCTION_18_35();
    v147 = *(v161 + 8);
    v146 = v139;
  }

  else
  {
    v144 = OUTLINED_FUNCTION_3_58();
    v145(v144);
    v146 = OUTLINED_FUNCTION_4_61();
  }

  return v147(v146);
}

void sub_1C125F3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v6 = sub_1C1262690();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1262650();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v61 - v21;
  v24 = *v3;
  v23 = *(v3 + 8);
  v25 = *(v3 + 16);
  if ((*(a1 + 8) & 1) == 0 && (*(a1 + 24) & 1) == 0)
  {
    v26 = *(a1 + 32);
    if (v25 <= 0)
    {
      if (v26 != 1)
      {
        goto LABEL_11;
      }
    }

    else if (v26 != v25)
    {
      goto LABEL_11;
    }

    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    if (v27 == MEMORY[0x1C68EDD40](v20) && v28 == v29)
    {
      return;
    }
  }

LABEL_11:
  if (qword_1EDE83508 != -1)
  {
    swift_once();
  }

  v68 = __swift_project_value_buffer(v17, qword_1EDE82FE0);
  sub_1C119ADB4(v68, v22);
  v31 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v22, 1, v31) == 1)
  {
    sub_1C0F9E21C(v22, &qword_1EBE919B0);
    v32 = 0;
  }

  else
  {
    v63 = a3;
    v69 = v31;
    v33 = v9;
    sub_1C1262640();
    v34 = sub_1C1262670();
    v35 = sub_1C1266510();
    if (sub_1C1266730())
    {
      v36 = swift_slowAlloc();
      v62 = v8;
      v37 = v36;
      *v36 = 0;
      v38 = sub_1C1262630();
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v34, v35, v38, "PhotosLazyHGrid.updateCache", "", v37, 2u);
      v39 = v37;
      v8 = v62;
      MEMORY[0x1C68F1630](v39, -1, -1);
    }

    v9 = v33;
    (*(v33 + 16))(v13, v16, v8);
    sub_1C12626C0();
    swift_allocObject();
    v32 = sub_1C12626B0();
    (*(v33 + 8))(v16, v8);
    v31 = v69;
    (*(*(v69 - 8) + 8))(v22, v69);
  }

  v72 = v24;
  v73 = v23;
  v74 = v25;
  v40 = sub_1C125DD48();
  if (v24 < v41)
  {
    *a1 = v41;
    *(a1 + 8) = 0;
  }

  if (v23 < v42)
  {
    *(a1 + 16) = v42;
    *(a1 + 24) = 0;
  }

  v43 = *(a1 + 32);
  if (v25 <= 0)
  {
    v25 = 1;
    if (v43 != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v43 == v25)
  {
LABEL_24:
    *(a1 + 40) = v25;
  }

LABEL_25:
  *(a1 + 32) = v25;
  *(a1 + 48) = MEMORY[0x1C68EDD40](v40);
  *(a1 + 56) = v44;
  if (qword_1EBE8FE00 != -1)
  {
    swift_once();
  }

  v45 = sub_1C1262720();
  __swift_project_value_buffer(v45, qword_1EBE98DC0);
  v46 = sub_1C12626F0();
  v47 = sub_1C12663F0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1C0F96000, v46, v47, "Updated cache", v48, 2u);
    MEMORY[0x1C68F1630](v48, -1, -1);
  }

  if (v32)
  {
    v49 = v70;
    sub_1C119ADB4(v68, v70);
    if (__swift_getEnumTagSinglePayload(v49, 1, v31) == 1)
    {

      sub_1C0F9E21C(v49, &qword_1EBE919B0);
    }

    else
    {
      v69 = v31;
      v50 = sub_1C1262670();
      v51 = v67;
      sub_1C12626A0();
      v52 = sub_1C1266500();
      if (sub_1C1266730())
      {

        v53 = v64;
        sub_1C12626D0();

        v55 = v65;
        v54 = v66;
        if ((*(v65 + 88))(v53, v66) == *MEMORY[0x1E69E93E8])
        {
          v56 = v8;
          v57 = "[Error] Interval already ended";
        }

        else
        {
          v58 = v53;
          v56 = v8;
          (*(v55 + 8))(v58, v54);
          v57 = "";
        }

        v59 = swift_slowAlloc();
        *v59 = 0;
        v60 = sub_1C1262630();
        _os_signpost_emit_with_name_impl(&dword_1C0F96000, v50, v52, v60, "PhotosLazyHGrid.updateCache", v57, v59, 2u);
        MEMORY[0x1C68F1630](v59, -1, -1);
        v8 = v56;
      }

      (*(v9 + 8))(v51, v8);
      (*(*(v69 - 8) + 8))(v49);
    }
  }
}

uint64_t sub_1C125FABC(double a1, double a2, double a3, double a4)
{
  if (a3 > a1)
  {
    a1 = a3;
  }

  if (a2 >= a4)
  {
    a2 = a4;
  }

  if (a1 >= a2)
  {
    return 0;
  }

  if (a1 <= a2)
  {
    return *&a1;
  }

  __break(1u);
  return result;
}

double sub_1C125FAFC(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) != 0 && (a5 = *(v6 + 16), a5 < 1))
  {
    v8 = 1;
  }

  else if (a5 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a5;
  }

  v9 = *v6;
  if (*(a2 + 8))
  {
    v10 = 0.0;
  }

  else
  {
    v10 = *a2;
  }

  if (*(a2 + 24))
  {
    a3.n128_u64[0] = *a2;
    MEMORY[0x1C68EDD40](a3);
  }

  v11 = v10 * (a1 / v8);
  if (v11 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v9 * (v11 / v10);
  }

  return v11 + v12;
}

void PhotosLazyHGrid.boundingRect(at:subviews:context:cache:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = a1;
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  v13 = *v4;
  v14 = *(v4 + 8);
  v15 = *(v4 + 16);
  v16 = v11;
  if (v12)
  {
    a1 = MEMORY[0x1C68EDD40]();
    if (v15 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v15;
    }

    v16 = v17 / v18;
  }

  if (v10)
  {
    v29 = v13;
    v30 = v14;
    v31 = v15;
    a1 = sub_1C125DD48();
    v20 = v19;
  }

  else
  {
    v20 = v9;
  }

  v39.origin.x = MEMORY[0x1C68EDD30](a1);
  MinX = CGRectGetMinX(v39);
  v40.origin.x = MEMORY[0x1C68EDD30]();
  MaxX = CGRectGetMaxX(v40);
  if (MinX > MaxX)
  {
    __break(1u);
  }

  else
  {
    v23 = 0.0;
    sub_1C125FABC(0.0, INFINITY, MinX, MaxX);
    v25 = v24 | (v13 >= v20);
    v26 = 0uLL;
    v27 = 0.0;
    if (!(v24 & 1 | (v13 >= v20)))
    {
      v36 = v13;
      v37 = v14;
      v38 = v15;
      v29 = v9;
      LOBYTE(v30) = v10;
      *(&v30 + 1) = *(a3 + 9);
      HIDWORD(v30) = *(a3 + 12);
      v31 = *&v11;
      v32 = v12;
      v33 = *(a3 + 25);
      v34 = *(a3 + 41);
      *v35 = *(a3 + 57);
      *&v35[15] = *(a3 + 72);
      *&v26 = sub_1C125FAFC(v7, &v29, *&v35[15], a2, 0, 1);
      *(&v26 + 1) = v28;
      v23 = v20;
      v27 = v16;
    }

    *a4 = v26;
    *(a4 + 16) = v23;
    *(a4 + 24) = v27;
    *(a4 + 32) = v25 & 1;
  }
}

void PhotosLazyHGrid.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)()
{
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  if ((v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v2 + 16) <= v0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_5_45(v4);
  sub_1C12642A0();
  sub_1C1264110();
  sub_1C125FF24(v1, v5, v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_8_46();
    v9(v8);
LABEL_10:
    OUTLINED_FUNCTION_19_24();
    return;
  }

  OUTLINED_FUNCTION_13_30();
  OUTLINED_FUNCTION_17_32();
  v10 = OUTLINED_FUNCTION_10_37();
  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_13;
  }

  if (!__OFADD__(v0, 1))
  {
    if ((v0 + 1) < v11)
    {
      v11 = v0 + 1;
    }

    v12.n128_f64[0] = OUTLINED_FUNCTION_6_47(v11);
    OUTLINED_FUNCTION_11_35(v12, v13, v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_14_28();
    v19(v18);
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1C125FF24(uint64_t a1, double a2, double a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_1C0FFE25C(a2, a3);
  if (v5)
  {
    return *(*(a1 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

void PhotosLazyHGrid.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:)()
{
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  if ((v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v2 + 16) <= v0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_5_45(v4);
  sub_1C12642A0();
  sub_1C1264110();
  sub_1C125FF24(v1, v5, v6);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_8_46();
    v9(v8);
LABEL_10:
    OUTLINED_FUNCTION_19_24();
    return;
  }

  OUTLINED_FUNCTION_13_30();
  OUTLINED_FUNCTION_17_32();
  v10 = OUTLINED_FUNCTION_10_37();
  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_13;
  }

  if (!__OFSUB__(v0, 1))
  {
    if ((v0 - 1) < v11)
    {
      v11 = v0 - 1;
    }

    v12.n128_f64[0] = OUTLINED_FUNCTION_6_47(v11);
    OUTLINED_FUNCTION_11_35(v12, v13, v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_14_28();
    v19(v18);
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

double sub_1C1260148@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  PhotosLazyHGrid.boundingRect(at:subviews:context:cache:)(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

void (*sub_1C1260198(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C12627D0();
  return sub_1C10115B8;
}

uint64_t sub_1C126020C(uint64_t a1, double a2, double a3)
{
  v7 = sub_1C125D8E8(v3[1], a2, a3);
  if ((v8 & 1) == 0)
  {
    sub_1C125D9E4(v7);
  }

  sub_1C0FE3848();
  v9 = *(v3[1] + 16);
  sub_1C0FE391C();
  v10 = v3[1];
  *(v10 + 16) = v9 + 1;
  v11 = v10 + 16 * v9;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  v3[1] = v10;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  result = sub_1C0FF8A4C(a1, a2, a3);
  *v3 = v15;
  if (v3[2] < *(v10 + 16))
  {
    sub_1C125D7E0();

    return sub_1C1033F0C(v13, v14);
  }

  return result;
}

uint64_t sub_1C1260314()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EBE98DC0);
  __swift_project_value_buffer(v0, qword_1EBE98DC0);
  return sub_1C12626E0();
}

unint64_t sub_1C1260388()
{
  result = qword_1EDE78C20[0];
  if (!qword_1EDE78C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE78C20);
  }

  return result;
}

uint64_t sub_1C12603EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_1C126042C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1260490()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_11_35(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  a5.n128_u64[0] = a1.n128_u64[0];
  a6.n128_u64[0] = a2.n128_u64[0];
  a1.n128_u64[0] = v7;
  a2.n128_u64[0] = v8;
  a3.n128_u64[0] = v9;
  a4.n128_u64[0] = v10;

  return MEMORY[0x1EEDE1FF8](a1, a2, a3, a4, a5, a6);
}

uint64_t EnvironmentValues.photosIsUsingTwoColumnShelf.getter()
{
  sub_1C12605C8();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C12605C8()
{
  result = qword_1EDE79B70[0];
  if (!qword_1EDE79B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE79B70);
  }

  return result;
}

uint64_t (*EnvironmentValues.photosIsUsingTwoColumnShelf.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C12605C8();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C12606C0;
}

BOOL sub_1C1260708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C1266E90();
  sub_1C1265EF0();
  sub_1C1266EE0();
  OUTLINED_FUNCTION_2_75();
  do
  {
    v10 = v9 & v4;
    v11 = (v5 << (v9 & v4)) & *(v3 + (((v9 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (*(a3 + 48) + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = sub_1C1266D50();
    v9 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

BOOL sub_1C12607E0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C12668B0();
  OUTLINED_FUNCTION_2_75();
  do
  {
    v8 = v7 & v3;
    v9 = (v4 << (v7 & v3)) & *(v2 + (((v7 & v3) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    sub_1C0FF4B88(*(a2 + 48) + 40 * v8, v13);
    v11 = MEMORY[0x1C68F0200](v13, a1);
    sub_1C0FD1A08(v13);
    v7 = v8 + 1;
  }

  while ((v11 & 1) == 0);
  return v10;
}

BOOL sub_1C12608A0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v28 = *a1;
  v29 = v2;
  v30 = *(a1 + 8);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v24 = v28;
  v25 = v29;
  v26 = *(&v29 + 1);
  v27 = v30;
  sub_1C1266E90();
  PhotosPrefetchable.Image.hash(into:)();
  v4 = sub_1C1266EE0();
  v5 = ~(-1 << *(a2 + 32));
  do
  {
    v6 = v4 & v5;
    v7 = (1 << (v4 & v5)) & *(a2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    v9 = *(a2 + 48) + 40 * v6;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 17);
    v14 = *(v9 + 18);
    v15 = *(v9 + 24);
    LODWORD(v9) = *(v9 + 32);
    v18[0] = v10;
    v18[1] = v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = v9;
    sub_1C1109A94();
    v16 = static PhotosPrefetchable.Image.== infix(_:_:)(v18, &v28);
    sub_1C100DC0C();
    v4 = v6 + 1;
  }

  while ((v16 & 1) == 0);
  return v8;
}

void *sub_1C12609F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1260AD8();
  v8[0] = swift_getKeyPath();
  sub_1C0FFCFE4(v8);
  memcpy(__dst, v8, sizeof(__dst));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98E80);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE98E88) + 36));
  result = memcpy(v6, __dst, 0xD1uLL);
  v6[209] = v4;
  return result;
}

BOOL sub_1C1260AD8()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);

  if ((v5 & 1) == 0)
  {
    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v7 = PhotosSelection.selectionIdentifiers.getter();

  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
  v10 = (*(v9 + 16))(v8, v9);
  LOBYTE(v8) = sub_1C1260708(v10, v11, v7);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  if (((*(v13 + 32))(v12, v13) & 1) == 0)
  {
    return 0;
  }

  if ((v5 & 1) == 0)
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v15 = PhotosSelection.selectionIdentifiers.getter();

  v16 = *(v15 + 16);

  return v16 > 1;
}

uint64_t View.photosDimmableItem(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  OUTLINED_FUNCTION_1();
  v38[0] = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v38 - v12;
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  v40 = sub_1C1263C30();
  OUTLINED_FUNCTION_1();
  v39 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v38 - v23;
  sub_1C11303FC(a1, &v44);
  if (v45[1])
  {
    sub_1C0F9DDE4(&v44, v46);
    sub_1C0FDB0A8(v46, v45);
    *&v44 = swift_getKeyPath();
    BYTE8(v44) = 0;
    MEMORY[0x1C68EE920](&v44, a2, &type metadata for PhotosDimmableItem, a3);
    sub_1C12611E0(&v44);
    v25 = sub_1C126118C();
    v42 = a3;
    v43 = v25;
    OUTLINED_FUNCTION_4_0();
    WitnessTable = swift_getWitnessTable();
    v27 = OUTLINED_FUNCTION_4_62();
    sub_1C0FDBA4C(v27, v28, WitnessTable);
    v29 = *(v16 + 8);
    v30 = OUTLINED_FUNCTION_4_62();
    v29(v30);
    sub_1C0FDBA4C(v20, v14, WitnessTable);
    OUTLINED_FUNCTION_4_62();
    sub_1C1112D68();
    v31 = OUTLINED_FUNCTION_4_62();
    v29(v31);
    (v29)(v20, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
  }

  else
  {
    sub_1C112EC70(&v44);
    sub_1C0FDBA4C(v38[1], a2, a3);
    sub_1C0FDBA4C(v13, a2, a3);
    v32 = sub_1C126118C();
    v45[9] = a3;
    v45[10] = v32;
    OUTLINED_FUNCTION_4_0();
    swift_getWitnessTable();
    sub_1C1112E18();
    v33 = *(v38[0] + 8);
    v33(v10, a2);
    v33(v13, a2);
  }

  v34 = sub_1C126118C();
  v45[7] = a3;
  v45[8] = v34;
  OUTLINED_FUNCTION_4_0();
  v45[5] = swift_getWitnessTable();
  v45[6] = a3;
  OUTLINED_FUNCTION_19_0();
  v35 = v40;
  v36 = swift_getWitnessTable();
  sub_1C0FDBA4C(v24, v35, v36);
  return (*(v39 + 8))(v24, v35);
}

unint64_t sub_1C126118C()
{
  result = qword_1EBE98E78;
  if (!qword_1EBE98E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98E78);
  }

  return result;
}

uint64_t sub_1C1261210(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1C1261250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C12612C8()
{
  result = qword_1EBE98E90;
  if (!qword_1EBE98E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98E88);
    sub_1C1261354();
    sub_1C107C3D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98E90);
  }

  return result;
}

unint64_t sub_1C1261354()
{
  result = qword_1EBE98E98;
  if (!qword_1EBE98E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE98E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE98E98);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EDE83528 == -1)
  {
    if (qword_1EDE83530)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EDE83530)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EDE83520 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EDE83514 > a3)
      {
        return 1;
      }

      if (dword_1EDE83514 >= a3)
      {
        return dword_1EDE83518 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EDE83530;
  if (qword_1EDE83530)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EDE83530 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1C68F0E30](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EDE83514, &dword_1EDE83518);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x1EEDB9528](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}